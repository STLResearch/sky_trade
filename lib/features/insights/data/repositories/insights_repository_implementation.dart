import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/insights_failure.dart'
    show InsightsFailure;
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/core/utils/clients/signature_handler.dart';
import 'package:sky_trade/features/insights/data/data_sources/insights_remote_data_source.dart'
    show InsightsRemoteDataSource;
import 'package:sky_trade/features/insights/domain/entities/insights_entity.dart'
    show InsightsEntity;
import 'package:sky_trade/features/insights/domain/repositories/insights_repository.dart';

final class InsightsRepositoryImplementation
    with DataHandler, SignatureHandler
    implements InsightsRepository {
  const InsightsRepositoryImplementation(
    InsightsRemoteDataSource insightsRemoteDataSource,
  ) : _insightsRemoteDataSource = insightsRemoteDataSource;

  final InsightsRemoteDataSource _insightsRemoteDataSource;

  @override
  Future<Either<InsightsFailure, List<InsightsEntity>>> getInsightsUsing({
    required int userId,
  }) =>
      handleData<InsightsFailure, List<InsightsEntity>>(
        dataSourceOperation: () async {
          final issuedAt = computeIssuedAt();
          final nonce = computeNonce();
          final userAddress = await computeUserAddress();
          final message = computeMessageToSignUsing(
            issuedAt: issuedAt,
            nonce: nonce,
            userAddress: userAddress,
          );
          final email = await computeUserEmail();
          final sign = await signMessage(
            message,
          );

          return _insightsRemoteDataSource.getInsightsUsing(
            userId: userId,
            signature: (
              sign: sign,
              issuedAt: issuedAt,
              nonce: nonce,
              address: userAddress,
              email: email,
            ),
          );
        },
        onSuccess: (restrictionEntities) => restrictionEntities,
        onFailure: (_) => InsightsFailure(),
      );
}
