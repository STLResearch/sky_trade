import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/referral_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/referral/data/data_sources/referral_remote_data_source.dart'
    show ReferralRemoteDataSource;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show ReferralEntity;
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

final class ReferralRepositoryImplementation
    with DataHandler
    implements ReferralRepository {
  const ReferralRepositoryImplementation(
    ReferralRemoteDataSource referralRemoteDataSource,
  ) : _referralRemoteDataSource = referralRemoteDataSource;

  final ReferralRemoteDataSource _referralRemoteDataSource;

  @override
  Future<Either<ReferralFailure, ReferralEntity>> sendReferralCodeTo({
    required String email,
  }) =>
      handleData<ReferralFailure, ReferralEntity>(
        dataSourceOperation: () => _referralRemoteDataSource.sendReferralCodeTo(
          email: email,
        ),
        onSuccess: (referralEntity) => referralEntity,
        onFailure: (_) => ReferralFailure(),
      );
}
