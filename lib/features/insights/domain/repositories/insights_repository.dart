import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/insights_failure.dart'
    show InsightsFailure;
import 'package:sky_trade/features/insights/domain/entities/insights_entity.dart'
    show InsightsEntity;

abstract interface class InsightsRepository {
  Future<Either<InsightsFailure, InsightsEntity>> get insights;
}
