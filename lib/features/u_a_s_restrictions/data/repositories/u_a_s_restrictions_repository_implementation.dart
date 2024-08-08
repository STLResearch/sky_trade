import 'package:dart_geohash/dart_geohash.dart' show GeoHash;
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/core/errors/failures/u_a_s_restrictions_failure.dart'
    show UASRestrictionsFailure;
import 'package:sky_ways/core/resources/numbers/ui.dart' show four;
import 'package:sky_ways/core/utils/clients/data_handler.dart';
import 'package:sky_ways/features/u_a_s_restrictions/data/data_sources/u_a_s_restrictions_remote_data_source.dart'
    show UASRestrictionsRemoteDataSource;
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_ways/features/u_a_s_restrictions/domain/repositories/u_a_s_restrictions_repository.dart';

final class UASRestrictionsRepositoryImplementation
    with DataHandler
    implements UASRestrictionsRepository {
  const UASRestrictionsRepositoryImplementation(
    UASRestrictionsRemoteDataSource uASRestrictionsRemoteDataSource,
  ) : _uASRestrictionsRemoteDataSource = uASRestrictionsRemoteDataSource;

  final UASRestrictionsRemoteDataSource _uASRestrictionsRemoteDataSource;

  @override
  String geoHashForCoordinates({
    required double latitude,
    required double longitude,
  }) =>
      GeoHash.fromDecimalDegrees(
        longitude,
        latitude,
        precision: four,
      ).geohash;

  @override
  Future<Either<UASRestrictionsFailure, List<RestrictionEntity>>>
      getRestrictionsUsing({
    required String geoHash,
  }) =>
          handleData<UASRestrictionsFailure, List<RestrictionEntity>>(
            dataSourceOperation: () =>
                _uASRestrictionsRemoteDataSource.getRestrictionsUsing(
              geoHash: geoHash,
            ),
            onSuccess: (restrictionEntities) => restrictionEntities,
            onFailure: (_) => UASRestrictionsFailure(),
          );
}
