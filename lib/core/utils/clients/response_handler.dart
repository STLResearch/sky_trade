import 'dart:convert';

import 'package:dartz/dartz.dart' show Function0, Function1;
import 'package:dio/dio.dart' show Response;
import 'package:sky_ways/core/resources/numbers/networking.dart'
    show createdStatusCode, okayStatusCode;

mixin class ResponseHandler {
  Future<S?> handleResponse<E extends Exception, T, S>({
    required Future<Response> requestInitiator,
    required Function1<T, S> onSuccess,
    required Function0<void> onError,
  }) async {
    try {
      final response = await requestInitiator;

      final data = response.data as T;

      return switch (response.statusCode) {
        createdStatusCode || okayStatusCode => onSuccess(
            data,
          ),
        _ => throw Exception(),
      };
    } catch (_) {
      onError();
    }

    return null;
  }
}
