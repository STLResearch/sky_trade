import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/u_a_s_restrictions_failure.dart'
    show UASRestrictionsFailure;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart';

abstract interface class UASRestrictionsRepository {
  Future<Either<UASRestrictionsFailure, List<RestrictionEntity>>>
      getRestrictionsUsing({
    required String geoHash,
  });

  Future<void> cleanUpResources();
}
