import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/core/errors/failures/u_a_s_restrictions_failure.dart'
    show UASRestrictionsFailure;
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart';

abstract interface class UASRestrictionsRepository {
  Future<Either<UASRestrictionsFailure, List<RestrictionEntity>>>
      getRestrictionsWithin({
    required double southWestLatitude,
    required double southWestLongitude,
    required double northEastLatitude,
    required double northEastLongitude,
  });
}
