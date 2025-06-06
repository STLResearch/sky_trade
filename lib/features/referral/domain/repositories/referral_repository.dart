import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/referral_failure.dart';
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show
        EarningsReportEntity,
        HighlightsEntity,
        InviteEntity,
        LeaderboardPositionEntity,
        LeaderboardStatisticsEntity,
        ReferralHistoryEntity,
        ShareEntity,
        SkyPointsEntity;

abstract interface class ReferralRepository {
  Future<Either<SkyPointsFailure, SkyPointsEntity>> get skyPoints;

  Future<Either<HighlightsFailure, HighlightsEntity>> get highlights;

  Future<Either<ShareFailure, ShareEntity>> share({
    required String subject,
    required String title,
    required String message,
  });

  Future<Either<InviteFailure, InviteEntity>> sendInviteTo({
    required String email,
  });

  Future<Either<ReferralHistoryFailure, ReferralHistoryEntity>>
      getReferralHistoryOn({
    required int page,
    required int limit,
  });

  Future<Either<LeaderboardPositionFailure, LeaderboardPositionEntity>>
      getLeaderboardPositionUsing({
    required int currentLimit,
  });

  Future<Either<LeaderboardStatisticsFailure, LeaderboardStatisticsEntity>>
      getLeaderboardStatisticsOn({
    required int page,
    required int limit,
  });

  Future<Either<EarningsReportFailure, EarningsReportEntity>>
      get earningsReport;

  Future<void> copyReferralCodeOrLinkToClipboard({
    required String data,
  });

  Future<String?> get userEmail;
}
