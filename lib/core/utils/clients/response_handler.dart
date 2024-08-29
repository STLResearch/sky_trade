// ignore_for_file: strict_raw_type

import 'dart:async' show StreamController, StreamSubscription;

import 'package:dartz/dartz.dart' show Function0, Function1;
import 'package:dio/dio.dart' show Response;
import 'package:sky_ways/core/resources/numbers/networking.dart'
    show createdStatusCode, okayStatusCode;

mixin class ResponseHandler {
  Future<S> handleResponse<E extends Exception, T, S>({
    required Future<Response> requestInitiator,
    required Function1<T, S> onSuccess,
    required Function1<Object, E> onError,
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
    } catch (e) {
      throw onError(
        e,
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
