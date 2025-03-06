// ignore_for_file: strict_raw_type

import 'dart:async' show StreamController, StreamSubscription;
import 'dart:convert' show jsonDecode;

import 'package:dartz/dartz.dart' show Function0, Function1;
import 'package:dio/dio.dart' show DioException, DioExceptionType, Response;
import 'package:sky_trade/core/resources/numbers/networking.dart'
    show createdStatusCode, okayStatusCode;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show dataKey, messageKey;
import 'package:sky_trade/core/utils/clients/logger.dart'
    show ConsoleLogger, SentryLogger;
import 'package:sky_trade/core/utils/enums/local.dart';

mixin class ResponseHandler {
  Future<S> handleResponse<E extends Exception, T, S>({
    required Future<Response> requestInitiator,
    required Function1<T, S> onSuccess,
    required Function1<Object, E> onError,
  }) async {
    try {
      final response = await requestInitiator;

      dynamic maybeJson = response.data;

      if (maybeJson is String) {
        maybeJson = jsonDecode(
          maybeJson,
        );
      }

      return switch (response.statusCode) {
        createdStatusCode || okayStatusCode => onSuccess(
            maybeJson as T,
          ),
        _ => throw Exception(),
      };
    } catch (e) {
      String? message;

      if (e is DioException && e.type == DioExceptionType.badResponse) {
        final data = e.response?.data;

        final dataContainsMessage = data != null &&
            data is Map<String, dynamic> &&
            data.containsKey(
              dataKey,
            ) &&
            data[dataKey] is Map<String, dynamic> &&
            (data[dataKey] as Map<String, dynamic>).containsKey(
              messageKey,
            ) &&
            (data[dataKey] as Map<String, dynamic>)[messageKey] is String;

        if (dataContainsMessage) {
          message =
              (data[dataKey] as Map<String, dynamic>)[messageKey] as String;
        }
      }

      ConsoleLogger.log(
        message: message ?? e.toString(),
        logType: LogType.error,
      );

      await SentryLogger.recordException(
        message ?? e,
      );

      throw onError(
        message ?? e,
      );
    }
  }

  Stream<S> transformResponse<E extends Exception, T, S>({
    required Function0<Stream<T>> source,
    required Function1<T, S> onData,
    required Function0<E> onError,
    Function0<void>? onCancel,
  }) {
    late final StreamController<S> streamController;
    late final StreamSubscription<T> streamSubscription;

    streamController = StreamController<S>(
      onListen: () {
        streamSubscription = source().listen(
          (result) => streamController.add(
            onData(
              result,
            ),
          ),
          onError: (_) => streamController.addError(
            onError(),
          ),
        );
      },
      onCancel: () {
        if (onCancel != null) onCancel();

        streamController.close();
        streamSubscription.cancel();
      },
    );

    return streamController.stream;
  }
}
