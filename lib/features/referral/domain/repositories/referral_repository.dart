import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/referral_failure.dart';
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show ReferralEntity;

abstract interface class ReferralRepository {
  Future<Either<ReferralFailure, ReferralEntity>> sendReferralCodeTo({
    required String email,
  });
}
