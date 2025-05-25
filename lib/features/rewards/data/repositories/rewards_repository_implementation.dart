import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/rewards_failure.dart'
    show
        DailyQuestFailure,
        DroneRushZoneFailure,
        LeaderboardInfoFailure,
        LeaderboardPositionFailure,
        RewardInfoFailure;
import 'package:sky_trade/core/utils/clients/data_handler.dart'
    show DataHandler;
import 'package:sky_trade/features/rewards/data/data_sources/rewards_remote_data_source.dart'
    show RewardsRemoteDataSource;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show
        DailyQuestEntity,
        DroneRushZoneEntity,
        LeaderboardInfoEntity,
        LeaderboardPositionEntity,
        RewardInfoEntity;
import 'package:sky_trade/features/rewards/domain/repositories/rewards_repository.dart'
    show RewardsRepository;

final class RewardsRepositoryImplementation
    with DataHandler
    implements RewardsRepository {
  const RewardsRepositoryImplementation(
    RewardsRemoteDataSource rewardsRemoteDataSource,
  ) : _rewardsRemoteDataSource = rewardsRemoteDataSource;

  final RewardsRemoteDataSource _rewardsRemoteDataSource;

  @override
  Future<Either<RewardInfoFailure, RewardInfoEntity>> getRewardInfo({
    required String taskType,
  }) =>
      handleData<RewardInfoFailure, RewardInfoEntity>(
        dataSourceOperation: () => _rewardsRemoteDataSource.getRewardInfo(
          taskType: taskType,
        ),
        onSuccess: (rewardInfoEntity) => rewardInfoEntity,
        onFailure: (_) => RewardInfoFailure(),
      );

  @override
  Future<Either<DailyQuestFailure, List<DailyQuestEntity>>> get dailyQuests =>
      handleData<DailyQuestFailure, List<DailyQuestEntity>>(
        dataSourceOperation: () => _rewardsRemoteDataSource.dailyQuests,
        onSuccess: (dailyQuestsEntities) => dailyQuestsEntities,
        onFailure: (_) => DailyQuestFailure(),
      );

  @override
  Future<Either<LeaderboardInfoFailure, LeaderboardInfoEntity>>
      getCurrentLeaderboardInfo({
    required int limit,
    required int page,
    required String taskType,
  }) =>
          handleData<LeaderboardInfoFailure, LeaderboardInfoEntity>(
            dataSourceOperation: () =>
                _rewardsRemoteDataSource.getLeaderboardInfo(
              limit: limit,
              page: page,
              taskType: taskType,
            ),
            onSuccess: (leaderboardInfoEntity) => leaderboardInfoEntity,
            onFailure: (_) => LeaderboardInfoFailure(),
          );

  @override
  Future<Either<LeaderboardPositionFailure, LeaderboardPositionEntity>>
      getCurrentLeaderboardPosition({
    required int currentLimit,
    required String taskType,
  }) =>
          handleData<LeaderboardPositionFailure, LeaderboardPositionEntity>(
            dataSourceOperation: () =>
                _rewardsRemoteDataSource.getLeaderboardPosition(
              currentLimit: currentLimit,
              taskType: taskType,
            ),
            onSuccess: (leaderboardPositionEntity) => leaderboardPositionEntity,
            onFailure: (_) => LeaderboardPositionFailure(),
          );

  @override
  Future<Either<DroneRushZoneFailure, List<DroneRushZoneEntity>>>
      getDroneRushZones({
    required int page,
    required int limit,
  }) =>
          handleData<DroneRushZoneFailure, List<DroneRushZoneEntity>>(
            dataSourceOperation: () =>
                _rewardsRemoteDataSource.getDroneRushZones(
              page: page,
              limit: limit,
            ),
            onSuccess: (droneRushZoneEntities) => droneRushZoneEntities,
            onFailure: (_) => DroneRushZoneFailure(),
          );
}
