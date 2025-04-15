import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/u_a_s_restrictions_failure.dart'
    show UASRestrictionsFailure;
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/u_a_s_restrictions/data/data_sources/u_a_s_restrictions_local_data_source.dart'
    show UASRestrictionsLocalDataSource;
import 'package:sky_trade/features/u_a_s_restrictions/data/data_sources/u_a_s_restrictions_remote_data_source.dart'
    show UASRestrictionsRemoteDataSource;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart'
    show RestrictionEntity;
import 'package:sky_trade/features/u_a_s_restrictions/domain/repositories/u_a_s_restrictions_repository.dart';

final class UASRestrictionsRepositoryImplementation
    with DataHandler
    implements UASRestrictionsRepository {
  const UASRestrictionsRepositoryImplementation({
    required UASRestrictionsLocalDataSource uASRestrictionsLocalDataSource,
    required UASRestrictionsRemoteDataSource uASRestrictionsRemoteDataSource,
  })  : _uASRestrictionsLocalDataSource = uASRestrictionsLocalDataSource,
        _uASRestrictionsRemoteDataSource = uASRestrictionsRemoteDataSource;

  final UASRestrictionsLocalDataSource _uASRestrictionsLocalDataSource;

  final UASRestrictionsRemoteDataSource _uASRestrictionsRemoteDataSource;

  @override
  Future<Either<UASRestrictionsFailure, List<RestrictionEntity>>>
      getRestrictionsUsing({
    required String geoHash,
  }) =>
          handleData<UASRestrictionsFailure, List<RestrictionEntity>>(
            dataSourceOperation: () async {
              final localDataExists = await _uASRestrictionsLocalDataSource
                  .checkForCachedRestrictionsUsing(
                geoHash: geoHash,
              );

              if (localDataExists) {
                final localDataIsStale = await _uASRestrictionsLocalDataSource
                    .checkCachedRestrictionsIsStaleUsing(
                  geoHash: geoHash,
                );

                if (localDataIsStale) {
                  return _getAndCacheRestrictionsUsing(
                    geoHash: geoHash,
                  );
                }

                return _uASRestrictionsLocalDataSource
                    .getCachedRestrictionsUsing(
                  geoHash: geoHash,
                );
              }

              return _getAndCacheRestrictionsUsing(
                geoHash: geoHash,
              );
            },
            onSuccess: (restrictionEntities) => restrictionEntities,
            onFailure: (_) => UASRestrictionsFailure(),
          );

  Future<List<RestrictionEntity>> _getAndCacheRestrictionsUsing({
    required String geoHash,
  }) async {
    final remoteData =
        await _uASRestrictionsRemoteDataSource.getRestrictionsUsing(
      geoHash: geoHash,
    );

    await _uASRestrictionsLocalDataSource.cacheRestrictionsUsing(
      geoHash: geoHash,
      data: remoteData,
    );

    return remoteData;
  }

  @override
  Future<void> cleanUpResources() =>
      _uASRestrictionsLocalDataSource.cleanUpResources();
}
