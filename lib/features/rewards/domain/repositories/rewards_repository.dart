import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/rewards_failure.dart';
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show
        DroneRushZoneEntity,
        LeaderboardPositionEntity,
        LeaderboardStatisticsEntity,
        QuestEntity,
        RewardPointsEntity;

abstract interface class RewardsRepository {
  Future<Either<RewardPointsFailure, RewardPointsEntity>> get rewardPoints;

  Future<Either<QuestFailure, List<QuestEntity>>> get dailyQuests;

  Future<Either<LeaderboardPositionFailure, LeaderboardPositionEntity>>
      getLeaderboardPositionUsing({
    required int currentLimit,
  });

  Future<Either<LeaderboardStatisticsFailure, LeaderboardStatisticsEntity>>
      getLeaderboardStatisticsOn({
    required int page,
    required int limit,
  });

  Future<Either<DroneRushZoneFailure, DroneRushZoneEntity?>>
      get latestDroneRushZone;

  Future<Either<DroneRushZoneFailure, List<DroneRushZoneEntity>>>
      getDroneRushZonesWithin({
    required DateTime startTime,
    required DateTime endTime,
  });

  Future<bool> get showRewardsOnboarding;

  Future<void> setShowRewardsOnboarding({
    required bool value,
  });
}
