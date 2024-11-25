import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/insights_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/insights/data/data_sources/insights_remote_data_source.dart'
    show InsightsRemoteDataSource;
import 'package:sky_trade/features/insights/domain/entities/insights_entity.dart'
    show InsightsEntity;
import 'package:sky_trade/features/insights/domain/repositories/insights_repository.dart';

final class InsightsRepositoryImplementation
    with DataHandler
    implements InsightsRepository {
  const InsightsRepositoryImplementation(
    InsightsRemoteDataSource insightsRemoteDataSource,
  ) : _insightsRemoteDataSource = insightsRemoteDataSource;

  final InsightsRemoteDataSource _insightsRemoteDataSource;

  @override
  Future<Either<InsightsFailure, InsightsEntity>> get insights =>
      handleData<InsightsFailure, InsightsEntity>(
        dataSourceOperation: () => _insightsRemoteDataSource.insights,
        onSuccess: (insightsEntity) => insightsEntity,
        onFailure: (_) => InsightsFailure(),
      );
}
