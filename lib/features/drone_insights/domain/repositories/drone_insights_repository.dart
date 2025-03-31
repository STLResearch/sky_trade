import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/drone_insights_failure.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show RangeFilter;
import 'package:sky_trade/features/drone_insights/domain/entities/drone_insights_entity.dart'
    show FilteredDroneInsightsEntity, TrackedDroneInsightsEntity;

abstract interface class DroneInsightsRepository {
  Future<Either<TrackedDroneInsightsFailure, TrackedDroneInsightsEntity>>
      get trackedDroneInsights;

  Future<Either<FilteredDroneInsightsFailure, FilteredDroneInsightsEntity>>
      filterDroneInsightsBy({
    required RangeFilter rangeFilter,
  });
}
