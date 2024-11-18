import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/cache_failure.dart'
    show CacheFailure, WriteDataFailure;
import 'package:sky_trade/core/resources/numbers/ui.dart' show twentyFour;
import 'package:sky_trade/core/utils/enums/local.dart' show CacheType;
import 'package:sky_trade/features/cache_manager/domain/entities/cache_entity.dart';

abstract interface class CacheManagerRepository {
  Future<Either<CacheFailure, CacheEntity>> read({
    required String name,
    required CacheType type,
    Duration staleAfter = const Duration(
      hours: twentyFour,
    ),
  });

  Future<Either<WriteDataFailure, CacheEntity>> write({
    required String name,
    required Object content,
    required CacheType type,
  });
}
