// ignore_for_file: strict_raw_type, avoid_dynamic_calls, unnecessary_null_checks, lines_longer_than_80_chars

import 'dart:async' show StreamController, StreamSubscription;

import 'package:dartz/dartz.dart'
    show Either, Function0, Function1, Left, Right;
import 'package:dio/dio.dart' show BaseOptions, Dio, Options, Response;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_trade/core/resources/numbers/networking.dart'
    show
        requestConnectTimeoutMilliSeconds,
        requestConnectTimeoutSeconds,
        requestReceiveTimeoutSeconds,
        requestSendTimeoutSeconds;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        acceptAllHeaderValue,
        acceptHeaderKey,
        applicationJsonHeaderValue,
        bodyKey,
        contentTypeHeaderKey,
        emailAddressHeaderKey,
        radarPath,
        signAddressHeaderKey,
        signHeaderKey,
        signIssueAtHeaderKey,
        signNonceHeaderKey,
        skyTradeServerHttpBaseUrl,
        skyTradeServerSocketIOBaseUrl,
        websocketTransport;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString;
import 'package:sky_trade/core/utils/clients/signature_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState, RequestMethod;
import 'package:sky_trade/core/utils/typedefs/networking.dart'
    show SocketIOClientMessage, TerminateSocketIO;
import 'package:socket_io_client/socket_io_client.dart'
    show DartySocket, OptionBuilder, Socket, io;

final class SocketIOClient with SignatureHandler {
  factory SocketIOClient() => SocketIOClient._();

  SocketIOClient._()
      : _socket = io(
          dotenv.env[skyTradeServerSocketIOBaseUrl]! + radarPath,
          OptionBuilder()
              .setTransports([
                websocketTransport,
              ])
              .setAuth({
                signHeaderKey: emptyString,
                signIssueAtHeaderKey: emptyString,
                signNonceHeaderKey: emptyString,
                signAddressHeaderKey: emptyString,
              })
              .disableAutoConnect()
              .setTimeout(
                requestConnectTimeoutMilliSeconds,
              )
              .build(),
        );

  final Socket _socket;

  StreamController<Either<TerminateSocketIO, SocketIOClientMessage>>?
      _clientMessageStreamController;
  StreamSubscription<Either<TerminateSocketIO, SocketIOClientMessage>>?
      _clientMessageStreamSubscription;

  Future<void> listenToEvent<R>({
    required String eventName,
    required Function1<R, void> onResponse,
    Function1<ConnectionState, void>? onConnectionChanged,
    Function0<void>? onPing,
    Function0<void>? onPong,
  }) async {
    final headers = await _computeHeaders();

    _socket
      ..auth[signHeaderKey] = headers[signHeaderKey]
      ..auth[signIssueAtHeaderKey] = headers[signIssueAtHeaderKey]
      ..auth[signNonceHeaderKey] = headers[signNonceHeaderKey]
      ..auth[signAddressHeaderKey] = headers[signAddressHeaderKey]
      ..connect()
      ..on(
        eventName,
        (response) {
          onResponse(
            response as R,
          );
        },
      )
      ..onConnect(
        (_) {
          if (onConnectionChanged != null) {
            onConnectionChanged(
              ConnectionState.connected,
            );
          }

          if (_clientMessageStreamSubscription?.isPaused ?? false) {
            _clientMessageStreamSubscription?.resume();
          }

          _clientMessageStreamController ??= StreamController<
              Either<TerminateSocketIO, SocketIOClientMessage>>();
          _clientMessageStreamSubscription ??= _messageStreamSubscription;
        },
      )
      ..onConnectError(
        (s) {
          final serverDeniedConnection = !_socket.active;

          if (onConnectionChanged != null) {
            onConnectionChanged(
              switch (serverDeniedConnection) {
                true => ConnectionState.destroyed,
                false => ConnectionState.connectionError,
              },
            );
          }

          if (serverDeniedConnection) {
            _disposeSocketAndCloseMessageStream();
            return;
          }

          _maybePauseMessageStream();
        },
      )
      ..onDisconnect(
        (_) {
          if (onConnectionChanged != null) {
            onConnectionChanged(
              ConnectionState.disconnected,
            );
          }

          _maybePauseMessageStream();
        },
      )
      ..onError(
        (_) {
          if (onConnectionChanged != null) {
            onConnectionChanged(
              ConnectionState.error,
            );
          }

          _maybePauseMessageStream();
        },
      )
      ..onReconnectAttempt(
        (s) {
          if (onConnectionChanged != null) {
            onConnectionChanged(
              ConnectionState.reconnecting,
            );
          }

          _maybePauseMessageStream();
        },
      )
      ..onReconnectFailed(
        (_) {
          if (onConnectionChanged != null) {
            onConnectionChanged(
              ConnectionState.reconnectionFailed,
            );
          }

          _maybePauseMessageStream();
        },
      )
      ..onReconnectError(
        (_) {
          if (onConnectionChanged != null) {
            onConnectionChanged(
              ConnectionState.reconnectionError,
            );
          }

          _maybePauseMessageStream();
        },
      )
      ..onPing(
        (_) {
          if (onPing != null) {
            onPing();
          }
        },
      )
      ..onPong(
        (_) {
          if (onPong != null) {
            onPong();
          }
        },
      );
  }

  Future<Map<String, dynamic>> _computeHeaders() async {
    final issuedAt = computeIssuedAt();
    final nonce = computeNonce();
    final userAddress = await computeUserAddress();
    final message = computeMessageToSignUsing(
      issuedAt: issuedAt,
      nonce: nonce,
      userAddress: userAddress,
      includeRadarNamespace: true,
    );
    final sign = await signMessage(
      message,
    );

    return {
      signHeaderKey: sign,
      signIssueAtHeaderKey: issuedAt,
      signNonceHeaderKey: nonce,
      signAddressHeaderKey: userAddress,
    };
  }

  void _maybePauseMessageStream() {
    if (_clientMessageStreamSubscription?.isPaused == false) {
      _clientMessageStreamSubscription?.pause();
    }
  }

  StreamSubscription<Either<TerminateSocketIO, SocketIOClientMessage>>?
      get _messageStreamSubscription =>
          _clientMessageStreamController?.stream.listen(
            (message) {
              message.fold(
                (terminate) async {
                  if (terminate) {
                    await _disposeSocketAndCloseMessageStream();
                  }
                },
                (socketIOClientMessage) {
                  _socket.emit(
                    socketIOClientMessage.eventName,
                    {
                      bodyKey: socketIOClientMessage.data,
                    },
                  );
                },
              );
            },
          );

  Future<void> _disposeSocketAndCloseMessageStream() async {
    _socket.dispose();

    await Future.wait<dynamic>([
      _clientMessageStreamController?.close() ?? Future.value(),
      _clientMessageStreamSubscription?.cancel() ?? Future.value(),
    ]);

    _clientMessageStreamController = null;
    _clientMessageStreamSubscription = null;
  }

  void sendDataToEvent({
    required String eventName,
    required Map<String, dynamic> data,
  }) =>
      _clientMessageStreamController?.add(
        Right(
          (
            eventName: eventName,
            data: data,
          ),
        ),
      );

  void close() => _clientMessageStreamController?.add(
        const Left(
          true,
        ),
      );
}

final class HttpClient with SignatureHandler {
  factory HttpClient() => HttpClient._();

  HttpClient._()
      : _dio = Dio(
          BaseOptions(
            baseUrl: dotenv.env[skyTradeServerHttpBaseUrl]!,
            connectTimeout: const Duration(
              seconds: requestConnectTimeoutSeconds,
            ),
            receiveTimeout: const Duration(
              seconds: requestReceiveTimeoutSeconds,
            ),
            sendTimeout: const Duration(
              seconds: requestSendTimeoutSeconds,
            ),
            headers: <String, dynamic>{
              contentTypeHeaderKey: applicationJsonHeaderValue,
              acceptHeaderKey: acceptAllHeaderValue,
            },
          ),
        );

  final Dio _dio;

  Future<Response> request({
    required RequestMethod requestMethod,
    required String path,
    required bool includeSignature,
    String? overrideBaseUrl,
    Duration? overrideSendTimeout,
    Duration? overrideReceiveTimeout,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) async =>
      switch (requestMethod) {
        RequestMethod.get => _dio.get(
            _computePathUsing(
              path: path,
              overrideBaseUrl: overrideBaseUrl,
            ),
            data: data,
            queryParameters: queryParameters,
            options: await _computeRequestOptionsUsing(
              path: path,
              includeSignature: includeSignature,
              overrideSendTimeout: overrideSendTimeout,
              overrideReceiveTimeout: overrideReceiveTimeout,
              queryParameters: queryParameters,
              headers: headers,
            ),
          ),
        RequestMethod.post => _dio.post(
            _computePathUsing(
              path: path,
              overrideBaseUrl: overrideBaseUrl,
            ),
            data: data,
            queryParameters: queryParameters,
            options: await _computeRequestOptionsUsing(
              path: path,
              includeSignature: includeSignature,
              overrideSendTimeout: overrideSendTimeout,
              overrideReceiveTimeout: overrideReceiveTimeout,
              queryParameters: queryParameters,
              headers: headers,
            ),
          ),
        RequestMethod.put => _dio.put(
            _computePathUsing(
              path: path,
              overrideBaseUrl: overrideBaseUrl,
            ),
            data: data,
            queryParameters: queryParameters,
            options: await _computeRequestOptionsUsing(
              path: path,
              includeSignature: includeSignature,
              overrideSendTimeout: overrideSendTimeout,
              overrideReceiveTimeout: overrideReceiveTimeout,
              queryParameters: queryParameters,
              headers: headers,
            ),
          ),
        RequestMethod.delete => _dio.delete(
            _computePathUsing(
              path: path,
              overrideBaseUrl: overrideBaseUrl,
            ),
            data: data,
            queryParameters: queryParameters,
            options: await _computeRequestOptionsUsing(
              path: path,
              includeSignature: includeSignature,
              overrideSendTimeout: overrideSendTimeout,
              overrideReceiveTimeout: overrideReceiveTimeout,
              queryParameters: queryParameters,
              headers: headers,
            ),
          ),
      };

  String _computePathUsing({
    required String path,
    required String? overrideBaseUrl,
  }) =>
      switch (overrideBaseUrl != null) {
        true => overrideBaseUrl! + path,
        false => path,
      };

  Future<Options?> _computeRequestOptionsUsing({
    required String path,
    required bool includeSignature,
    required Duration? overrideSendTimeout,
    required Duration? overrideReceiveTimeout,
    required Map<String, dynamic>? queryParameters,
    required Map<String, dynamic>? headers,
  }) async {
    final issuedAt = computeIssuedAt();
    final nonce = computeNonce();
    final userAddress = await computeUserAddress();
    final message = computeMessageToSignUsing(
      issuedAt: issuedAt,
      nonce: nonce,
      userAddress: userAddress,
      path: path,
      queryParameters: queryParameters,
    );
    final email = await computeUserEmail();
    final sign = await signMessage(
      message,
    );

    return switch (headers) {
      _ when includeSignature => Options(
          headers: {
            signHeaderKey: sign,
            signIssueAtHeaderKey: issuedAt,
            signNonceHeaderKey: nonce,
            signAddressHeaderKey: userAddress,
            if (email != null) emailAddressHeaderKey: email,
            if (headers != null) ...headers,
          },
          sendTimeout: overrideSendTimeout,
          receiveTimeout: overrideReceiveTimeout,
        ),
      _ => Options(
          headers: headers,
          sendTimeout: overrideSendTimeout,
          receiveTimeout: overrideReceiveTimeout,
        )
    };
  }
}
