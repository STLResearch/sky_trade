// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/drone_insights_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RangeFilter;
import 'package:sky_trade/features/drone_insights/data/data_sources/drone_insights_remote_data_source.dart'
    show DroneInsightsRemoteDataSource;
import 'package:sky_trade/features/drone_insights/domain/entities/drone_insights_entity.dart'
    show FilteredDroneInsightsEntity, TrackedDroneInsightsEntity;
import 'package:sky_trade/features/drone_insights/domain/repositories/drone_insights_repository.dart';

final class DroneInsightsRepositoryImplementation
    with DataHandler
    implements DroneInsightsRepository {
  const DroneInsightsRepositoryImplementation(
    DroneInsightsRemoteDataSource droneInsightsRemoteDataSource,
  ) : _droneInsightsRemoteDataSource = droneInsightsRemoteDataSource;

  final DroneInsightsRemoteDataSource _droneInsightsRemoteDataSource;

  @override
  Future<Either<TrackedDroneInsightsFailure, TrackedDroneInsightsEntity>>
      get trackedDroneInsights =>
          handleData<TrackedDroneInsightsFailure, TrackedDroneInsightsEntity>(
            dataSourceOperation: () =>
                _droneInsightsRemoteDataSource.trackedDroneInsights,
            onSuccess: (trackedDroneInsightsEntity) =>
                trackedDroneInsightsEntity,
            onFailure: (_) => TrackedDroneInsightsFailure(),
          );

  @override
  Future<Either<FilteredDroneInsightsFailure, FilteredDroneInsightsEntity>>
      filterDroneInsightsBy({
    required RangeFilter rangeFilter,
  }) =>
          handleData<FilteredDroneInsightsFailure, FilteredDroneInsightsEntity>(
            dataSourceOperation: () =>
                _droneInsightsRemoteDataSource.filterDroneInsightsBy(
              rangeFilter: rangeFilter,
            ),
            onSuccess: (filteredDroneInsightsEntity) =>
                filteredDroneInsightsEntity,
            onFailure: (_) => FilteredDroneInsightsFailure(),
          );
}
