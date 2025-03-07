import 'dart:async' show StreamController, StreamSubscription;

import 'package:dartz/dartz.dart'
    show Either, Function0, Function1, Left, Right;
import 'package:sky_trade/core/utils/clients/app_logger.dart' show AppLogger;
import 'package:sky_trade/core/utils/enums/local.dart' show LogLevel;

mixin class DataHandler {
  Future<Either<L, R>> handleData<L, R>({
    required Function0<Future<R>> dataSourceOperation,
    required Function1<R, R> onSuccess,
    required Function1<Object, L> onFailure,
  }) async {
    try {
      final result = await dataSourceOperation();

      return Right(
        onSuccess(
          result,
        ),
      );
    } catch (e) {
      AppLogger.log(
        message: e.toString(),
        logLevel: LogLevel.error,
      );

      return Left(
        onFailure(
          e,
        ),
      );
    }
  }

  Stream<Either<L, R>> transformData<L, T, R>({
    required Function0<Stream<T>> sourceStream,
    required Function1<T, R> onData,
    required Function0<L> onError,
    Function0<void>? onCancel,
  }) {
    late final StreamController<Either<L, R>> streamController;
    late final StreamSubscription<T> streamSubscription;

    streamController = StreamController<Either<L, R>>(
      onListen: () {
        streamSubscription = sourceStream().listen(
          (result) => streamController.add(
            Right(
              onData(
                result,
              ),
            ),
          ),
          onError: (_) => streamController.add(
            Left(
              onError(),
            ),
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
