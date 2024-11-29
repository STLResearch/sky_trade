import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/referral_failure.dart';
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show
        EarningsReportEntity,
        HighlightsEntity,
        InviteEntity,
        LeaderboardStatisticsEntity,
        ReferralHistoryEntity,
        SkyPointsEntity;

abstract interface class ReferralRepository {
  Future<Either<SkyPointsFailure, SkyPointsEntity>> get skyPoints;

  Future<Either<HighlightsFailure, HighlightsEntity>> get highlights;

  Future<Either<InviteFailure, InviteEntity>> sendInviteTo({
    required String email,
  });

  Future<Either<ReferralHistoryFailure, ReferralHistoryEntity>>
      getReferralHistoryOn({
    required int page,
    required int limit,
  });

  Future<Either<LeaderboardStatisticsFailure, LeaderboardStatisticsEntity>>
      getLeaderboardStatisticsOn({
    required int page,
    required int limit,
  });

  Future<Either<EarningsReportFailure, EarningsReportEntity>>
      get earningsReport;
}
