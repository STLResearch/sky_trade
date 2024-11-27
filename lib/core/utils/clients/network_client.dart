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
        headersKey,
        signAddressHeaderKey,
        signHeaderKey,
        signIssueAtHeaderKey,
        signNonceHeaderKey,
        skyTradeServerHttpBaseUrl,
        skyTradeServerSocketIOBaseUrl,
        websocketTransport;
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
          dotenv.env[skyTradeServerSocketIOBaseUrl]!,
          OptionBuilder()
              .setTransports([
                websocketTransport,
              ])
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

  Future<void> handshake<R>({
    required String eventName,
    required Function1<R, void> onResponse,
    Function1<ConnectionState, void>? onConnectionChanged,
    Function0<void>? onPing,
    Function0<void>? onPong,
  }) async =>
      _socket
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
          (_) {
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

            _pauseMessageStream();
          },
        )
        ..onDisconnect(
          (_) {
            if (onConnectionChanged != null) {
              onConnectionChanged(
                ConnectionState.disconnected,
              );
            }

            _pauseMessageStream();
          },
        )
        ..onError(
          (_) {
            if (onConnectionChanged != null) {
              onConnectionChanged(
                ConnectionState.error,
              );
            }

            _pauseMessageStream();
          },
        )
        ..onReconnectAttempt(
          (_) {
            if (onConnectionChanged != null) {
              onConnectionChanged(
                ConnectionState.reconnecting,
              );
            }

            _pauseMessageStream();
          },
        )
        ..onReconnectFailed(
          (_) {
            if (onConnectionChanged != null) {
              onConnectionChanged(
                ConnectionState.reconnectionFailed,
              );
            }

            _pauseMessageStream();
          },
        )
        ..onReconnectError(
          (_) {
            if (onConnectionChanged != null) {
              onConnectionChanged(
                ConnectionState.reconnectionError,
              );
            }

            _pauseMessageStream();
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

  void _pauseMessageStream() {
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
                    socketIOClientMessage.roomName,
                    {
                      if (socketIOClientMessage.headers != null)
                        headersKey: socketIOClientMessage.headers,
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

  Future<void> send({
    required String roomName,
    required Map<String, dynamic> data,
    bool? includeSignature,
  }) async =>
      _clientMessageStreamController?.add(
        Right(
          (
            roomName: roomName,
            headers: await _computeHeadersUsing(
              includeSignature: includeSignature,
            ),
            data: data,
          ),
        ),
      );

  Future<Map<String, dynamic>?> _computeHeadersUsing({
    required bool? includeSignature,
  }) async {
    final issuedAt = computeIssuedAt();
    final nonce = computeNonce();
    final userAddress = await computeUserAddress();
    final message = computeMessageToSignUsing(
      issuedAt: issuedAt,
      nonce: nonce,
      userAddress: userAddress,
      useOldUri: true,
    );
    final email = await computeUserEmail();
    final sign = await signMessage(
      message,
    );

    return switch (includeSignature) {
      != null && true => {
          signHeaderKey: sign,
          signIssueAtHeaderKey: issuedAt,
          signNonceHeaderKey: nonce,
          signAddressHeaderKey: userAddress,
          if (email != null) emailAddressHeaderKey: email,
        },
      _ => null,
    };
  }

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
    String? overrideBaseUrl,
    bool? includeSignature,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? bearerToken,
  }) async =>
      switch (requestMethod) {
        RequestMethod.get => _dio.get(
            _computePathUsing(
              path: path,
              overrideBaseUrl: overrideBaseUrl,
            ),
            data: data,
            queryParameters: queryParameters,
            options: await _computeHeaderOptionsUsing(
              path: path,
              includeSignature: includeSignature,
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
            options: await _computeHeaderOptionsUsing(
              path: path,
              includeSignature: includeSignature,
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
            options: await _computeHeaderOptionsUsing(
              path: path,
              includeSignature: includeSignature,
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
            options: await _computeHeaderOptionsUsing(
              path: path,
              includeSignature: includeSignature,
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

  Future<Options?> _computeHeaderOptionsUsing({
    required String path,
    required bool? includeSignature,
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
    );
    final email = await computeUserEmail();
    final sign = await signMessage(
      message,
    );

    return switch (headers) {
      _ when includeSignature != null && includeSignature => Options(
          headers: {
            signHeaderKey: sign,
            signIssueAtHeaderKey: issuedAt,
            signNonceHeaderKey: nonce,
            signAddressHeaderKey: userAddress,
            if (email != null) emailAddressHeaderKey: email,
            if (headers != null) ...headers,
          },
        ),
      _ => Options(
          headers: headers,
        )
    };
  }
}
