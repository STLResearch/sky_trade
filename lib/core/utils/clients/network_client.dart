// ignore_for_file: strict_raw_type

import 'package:dio/dio.dart' show BaseOptions, Dio, Options, Response;
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_ways/core/resources/numbers/networking.dart'
    show
        requestConnectTimeoutSeconds,
        requestReceiveTimeoutSeconds,
        requestSendTimeoutSeconds;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        acceptKey,
        acceptValue,
        authorizationKey,
        bearerValue,
        contentTypeKey,
        contentTypeValue,
        skyTradeServerHttpBaseUrl,
        skyTradeServerWebSocketBaseUrl;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_ways/core/utils/enums/networking.dart' show RequestMethod;
import 'package:web_socket_client/web_socket_client.dart' show WebSocket;

final class WebSocketClient {
  factory WebSocketClient() => WebSocketClient._();

  WebSocketClient._()
      : _webSocket = WebSocket(
          Uri.parse(
            dotenv.env[skyTradeServerWebSocketBaseUrl]!,
          ),
          timeout: const Duration(
            seconds: requestConnectTimeoutSeconds,
          ),
        );

  final WebSocket _webSocket;

  Stream get messages => _webSocket.messages;

  void send<T>(
    T message,
  ) {
    _webSocket.send(
      message,
    );
  }

  void close() {
    _webSocket.close();
  }
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
