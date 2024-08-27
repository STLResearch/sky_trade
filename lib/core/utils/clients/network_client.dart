// ignore_for_file: strict_raw_type, avoid_dynamic_calls, unnecessary_null_checks, lines_longer_than_80_chars

import 'dart:async' show StreamController, StreamSubscription;

import 'package:dartz/dartz.dart'
    show Either, Function0, Function1, Left, Right;
import 'package:dio/dio.dart' show BaseOptions, Dio, Options, Response;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_ways/core/resources/numbers/networking.dart'
    show
        requestConnectTimeoutMilliSeconds,
        requestConnectTimeoutSeconds,
        requestReceiveTimeoutSeconds,
        requestSendTimeoutSeconds;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        acceptKey,
        acceptValue,
        authorizationKey,
        bearerValue,
        connectingEvent,
        connectionTimeoutEvent,
        contentTypeKey,
        contentTypeValue,
        reconnectingEvent,
        skyTradeServerHttpBaseUrl,
        skyTradeServerSocketIOBaseUrl,
        websocketTransport;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_ways/core/utils/enums/networking.dart'
    show ConnectionState, RequestMethod;
import 'package:sky_ways/core/utils/typedefs/networking.dart'
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

  late final Socket _socket;

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
                    socketIOClientMessage.data,
                  );
                },
              );
            },
          );

  void send({
    required String roomName,
    required Map<String, dynamic> data,
  }) =>
      _clientMessageStreamController?.add(
        Right(
          (
            roomName: roomName,
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
              contentTypeKey: contentTypeValue,
              acceptKey: acceptValue,
            },
          ),
        );

  final Dio _dio;

  Future<Response> request({
    required RequestMethod requestMethod,
    required String path,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    String? bearerToken,
  }) =>
      switch (requestMethod) {
        RequestMethod.get => _dio.get(
            path,
            data: data,
            queryParameters: queryParameters,
            options: switch (bearerToken) {
              null => null,
              _ => Options(
                  headers: <String, String>{
                    authorizationKey: bearerValue + whiteSpace + bearerToken,
                  },
                )
            },
          ),
        RequestMethod.post => _dio.post(
            path,
            data: data,
            queryParameters: queryParameters,
            options: switch (bearerToken) {
              null => null,
              _ => Options(
                  headers: <String, String>{
                    authorizationKey: bearerValue + whiteSpace + bearerToken,
                  },
                )
            },
          ),
        RequestMethod.put => _dio.put(
            path,
            data: data,
            queryParameters: queryParameters,
            options: switch (bearerToken) {
              null => null,
              _ => Options(
                  headers: <String, String>{
                    authorizationKey: bearerValue + whiteSpace + bearerToken,
                  },
                )
            },
          ),
        RequestMethod.delete => _dio.delete(
            path,
            data: data,
            queryParameters: queryParameters,
            options: switch (bearerToken) {
              null => null,
              _ => Options(
                  headers: <String, String>{
                    authorizationKey: bearerValue + whiteSpace + bearerToken,
                  },
                )
            },
          ),
      };
}
