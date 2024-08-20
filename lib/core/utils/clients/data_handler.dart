import 'package:dartz/dartz.dart'
    show Either, Function0, Function1, Left, Right;

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
    } catch (o) {
      return Left(
        onFailure(o),
      );
    }
  }
}
