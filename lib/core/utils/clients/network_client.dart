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
        connectingEvent,
        connectionTimeoutEvent,
        contentTypeHeaderKey,
        headersKey,
        reconnectingEvent,
        skyTradeServerHttpBaseUrl,
        skyTradeServerSocketIOBaseUrl,
        websocketTransport;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState, RequestMethod;
import 'package:sky_trade/core/utils/typedefs/networking.dart'
    show SocketIOClientMessage, TerminateSocketIO;
import 'package:socket_io_client/socket_io_client.dart'
    show DartySocket, OptionBuilder, Socket, io;

final class SocketIOClient {
  factory SocketIOClient() => SocketIOClient._();

  SocketIOClient._()
      : _socket = io(
          dotenv.env[skyTradeServerSocketIOBaseUrl]!,
          OptionBuilder()
              .setTransports([
                websocketTransport,
              ])
              .disableAutoConnect()
              .disableReconnection()
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

            _clientMessageStreamController ??= StreamController<
                Either<TerminateSocketIO, SocketIOClientMessage>>();
            _clientMessageStreamSubscription ??= _messageStreamSubscription;
          },
        )
        ..onConnectError(
          (_) {
            if (onConnectionChanged != null) {
              onConnectionChanged(
                ConnectionState.connectionError,
              );
            }
          },
        )
        ..on(
          connectionTimeoutEvent,
          (_) {
            if (onConnectionChanged != null) {
              onConnectionChanged(
                ConnectionState.connectionTimeout,
              );
            }
          },
        )
        ..on(
          connectingEvent,
          (_) {
            if (onConnectionChanged != null) {
              onConnectionChanged(
                ConnectionState.connecting,
              );
            }
          },
        )
        ..onDisconnect(
          (_) async {
            if (onConnectionChanged != null) {
              onConnectionChanged(
                ConnectionState.disconnected,
              );
            }

            await Future.wait<dynamic>([
              _clientMessageStreamController?.close() ?? Future.value(),
              _clientMessageStreamSubscription?.cancel() ?? Future.value(),
            ]);

            _clientMessageStreamController = null;
            _clientMessageStreamSubscription = null;

            _socket.dispose();
          },
        )
        ..onError(
          (_) {
            if (onConnectionChanged != null) {
              onConnectionChanged(
                ConnectionState.error,
              );
            }
          },
        )
        ..onReconnect(
          (_) async {
            _socket.dispose();
          },
        )
        ..onReconnectAttempt(
          (_) {
            _socket.dispose();
          },
        )
        ..onReconnectFailed(
          (_) {
            _socket.dispose();
          },
        )
        ..onReconnectError(
          (_) {
            _socket.dispose();
          },
        )
        ..on(
          reconnectingEvent,
          (_) {
            _socket.dispose();
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

  StreamSubscription<Either<TerminateSocketIO, SocketIOClientMessage>>?
      get _messageStreamSubscription =>
          _clientMessageStreamController?.stream.listen(
            (message) {
              message.fold(
                (terminate) {
                  if (terminate) _socket.dispose();
                },
                (socketIOClientMessage) {
                  _socket.emit(
                    socketIOClientMessage.roomName,
                    {
                      headersKey: socketIOClientMessage.headers,
                      bodyKey: socketIOClientMessage.data,
                    },
                  );
                },
              );
            },
          );

  void send({
    required String roomName,
    required Map<String, dynamic> data,
    required Map<String, dynamic> headers,
  }) =>
      _clientMessageStreamController?.add(
        Right(
          (
            roomName: roomName,
            headers: headers,
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

final class HttpClient {
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
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    String? bearerToken,
  }) =>
      switch (requestMethod) {
        RequestMethod.get => _dio.get(
            switch (overrideBaseUrl != null) {
              true => overrideBaseUrl! + path,
              false => path,
            },
            data: data,
            queryParameters: queryParameters,
            options: switch (headers) {
              null => null,
              _ => Options(
                  headers: headers,
                )
            },
          ),
        RequestMethod.post => _dio.post(
            switch (overrideBaseUrl != null) {
              true => overrideBaseUrl! + path,
              false => path,
            },
            data: data,
            queryParameters: queryParameters,
            options: switch (headers) {
              null => null,
              _ => Options(
                  headers: headers,
                )
            },
          ),
        RequestMethod.put => _dio.put(
            switch (overrideBaseUrl != null) {
              true => overrideBaseUrl! + path,
              false => path,
            },
            data: data,
            queryParameters: queryParameters,
            options: switch (headers) {
              null => null,
              _ => Options(
                  headers: headers,
                )
            },
          ),
        RequestMethod.delete => _dio.delete(
            switch (overrideBaseUrl != null) {
              true => overrideBaseUrl! + path,
              false => path,
            },
            data: data,
            queryParameters: queryParameters,
            options: switch (headers) {
              null => null,
              _ => Options(
                  headers: headers,
                )
            },
          ),
      };
}
