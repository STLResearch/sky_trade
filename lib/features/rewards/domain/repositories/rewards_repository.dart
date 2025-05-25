import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/rewards_failure.dart'
    show
        DailyQuestFailure,
        DroneRushZoneFailure,
        LeaderboardInfoFailure,
        LeaderboardPositionFailure,
        RewardInfoFailure;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show
        DailyQuestEntity,
        DroneRushZoneEntity,
        LeaderboardInfoEntity,
        LeaderboardPositionEntity,
        RewardInfoEntity;

abstract interface class RewardsRepository {
  Future<Either<RewardInfoFailure, RewardInfoEntity>> getRewardInfo({
    required String taskType,
  });

  Future<Either<DailyQuestFailure, List<DailyQuestEntity>>> get dailyQuests;

  Future<Either<LeaderboardInfoFailure, LeaderboardInfoEntity>>
      getCurrentLeaderboardInfo({
    required int limit,
    required int page,
    required String taskType,
  });

  Future<Either<LeaderboardPositionFailure, LeaderboardPositionEntity>>
      getCurrentLeaderboardPosition({
    required int currentLimit,
    required String taskType,
  });

  Future<Either<DroneRushZoneFailure, List<DroneRushZoneEntity>>>
      getDroneRushZones({
    required int page,
    required int limit,
  });
}
