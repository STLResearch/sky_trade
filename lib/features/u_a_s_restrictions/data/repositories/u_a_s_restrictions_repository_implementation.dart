import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/core/errors/failures/u_a_s_restrictions_failure.dart'
    show UASRestrictionsFailure;
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
    UASRestrictionsRemoteDataSource uasRestrictionsRemoteDataSource,
  ) : _uasRestrictionsRemoteDataSource = uasRestrictionsRemoteDataSource;

  final UASRestrictionsRemoteDataSource _uasRestrictionsRemoteDataSource;

  @override
  Future<Either<UASRestrictionsFailure, List<RestrictionEntity>>>
      getRestrictionsWithin({
    required double southWestLatitude,
    required double southWestLongitude,
    required double northEastLatitude,
    required double northEastLongitude,
  }) =>
          handleData<UASRestrictionsFailure, List<RestrictionEntity>>(
            dataSourceOperation:
                _uasRestrictionsRemoteDataSource.getRestrictionsWithin(
              southWestLatitude: southWestLatitude,
              southWestLongitude: southWestLongitude,
              northEastLatitude: northEastLatitude,
              northEastLongitude: northEastLongitude,
            ),
            onSuccess: (restrictionsList) => restrictionsList,
            onFailure: UASRestrictionsFailure.new,
          );
}
