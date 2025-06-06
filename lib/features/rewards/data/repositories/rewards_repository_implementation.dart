import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/rewards_failure.dart';
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/rewards/data/data_sources/rewards_local_data_source.dart'
    show RewardsLocalDataSource;
import 'package:sky_trade/features/rewards/data/data_sources/rewards_remote_data_source.dart'
    show RewardsRemoteDataSource;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show
        DroneRushZoneEntity,
        LeaderboardPositionEntity,
        LeaderboardStatisticsEntity,
        QuestEntity,
        RewardPointsEntity;
import 'package:sky_trade/features/rewards/domain/repositories/rewards_repository.dart';

final class RewardsRepositoryImplementation
    with DataHandler
    implements RewardsRepository {
  const RewardsRepositoryImplementation({
    required RewardsLocalDataSource rewardsLocalDataSource,
    required RewardsRemoteDataSource rewardsRemoteDataSource,
  })  : _rewardsLocalDataSource = rewardsLocalDataSource,
        _rewardsRemoteDataSource = rewardsRemoteDataSource;

  final RewardsLocalDataSource _rewardsLocalDataSource;

  final RewardsRemoteDataSource _rewardsRemoteDataSource;

  @override
  Future<Either<RewardPointsFailure, RewardPointsEntity>> get rewardPoints =>
      handleData<RewardPointsFailure, RewardPointsEntity>(
        dataSourceOperation: () => _rewardsRemoteDataSource.rewardPoints,
        onSuccess: (rewardPointsEntity) => rewardPointsEntity,
        onFailure: (_) => RewardPointsFailure(),
      );

  @override
  Future<Either<QuestFailure, List<QuestEntity>>> get dailyQuests =>
      handleData<QuestFailure, List<QuestEntity>>(
        dataSourceOperation: () => _rewardsRemoteDataSource.dailyQuests,
        onSuccess: (questEntities) => questEntities,
        onFailure: (_) => QuestFailure(),
      );

  @override
  Future<Either<LeaderboardPositionFailure, LeaderboardPositionEntity>>
      getLeaderboardPositionUsing({
    required int currentLimit,
  }) =>
          handleData<LeaderboardPositionFailure, LeaderboardPositionEntity>(
            dataSourceOperation: () =>
                _rewardsRemoteDataSource.getLeaderboardPositionUsing(
              currentLimit: currentLimit,
            ),
            onSuccess: (leaderboardPositionEntity) => leaderboardPositionEntity,
            onFailure: (_) => LeaderboardPositionFailure(),
          );

  @override
  Future<Either<LeaderboardStatisticsFailure, LeaderboardStatisticsEntity>>
      getLeaderboardStatisticsOn({
    required int page,
    required int limit,
  }) =>
          handleData<LeaderboardStatisticsFailure, LeaderboardStatisticsEntity>(
            dataSourceOperation: () =>
                _rewardsRemoteDataSource.getLeaderboardStatisticsOn(
              page: page,
              limit: limit,
            ),
            onSuccess: (leaderboardStatisticsEntity) =>
                leaderboardStatisticsEntity,
            onFailure: (_) => LeaderboardStatisticsFailure(),
          );

  @override
  Future<Either<DroneRushZoneFailure, DroneRushZoneEntity?>>
      get latestDroneRushZone =>
          handleData<DroneRushZoneFailure, DroneRushZoneEntity?>(
            dataSourceOperation: () =>
                _rewardsRemoteDataSource.latestDroneRushZone,
            onSuccess: (droneRushZoneEntity) => droneRushZoneEntity,
            onFailure: (_) => DroneRushZoneFailure(),
          );

  @override
  Future<Either<DroneRushZoneFailure, List<DroneRushZoneEntity>>>
      getDroneRushZonesWithin({
    required DateTime startTime,
    required DateTime endTime,
  }) =>
          handleData<DroneRushZoneFailure, List<DroneRushZoneEntity>>(
            dataSourceOperation: () =>
                _rewardsRemoteDataSource.getDroneRushZonesWithin(
              startTime: startTime,
              endTime: endTime,
            ),
            onSuccess: (droneRushZoneEntities) => droneRushZoneEntities,
            onFailure: (_) => DroneRushZoneFailure(),
          );

  @override
  Future<bool> get showRewardsOnboarding =>
      _rewardsLocalDataSource.showRewardsOnboarding;

  @override
  Future<void> setShowRewardsOnboarding({
    required bool value,
  }) =>
      _rewardsLocalDataSource.setShowRewardsOnboarding(
        value: value,
      );
}
