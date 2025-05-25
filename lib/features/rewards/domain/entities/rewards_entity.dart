import 'package:equatable/equatable.dart';

base class RewardInfoEntity extends Equatable {
  const RewardInfoEntity({
    required this.stats,
    required this.rewards,
  });

  final StatsEntity stats;
  final List<RewardsEntity> rewards;

  @override
  List<Object?> get props => [
        stats,
        rewards,
      ];
}

base class StatsEntity extends Equatable {
  const StatsEntity({
    required this.count,
    required this.sum,
    required this.avg,
    required this.min,
    required this.max,
  });

  final CountEntity count;
  final SumEntity sum;
  final AvgEntity avg;
  final MinEntity min;
  final MaxEntity max;

  @override
  List<Object?> get props => [
        count,
        sum,
        avg,
        min,
        max,
      ];
}

base class CountEntity extends Equatable {
  const CountEntity({
    required this.point,
  });

  final int? point;

  @override
  List<Object?> get props => [
        point,
      ];
}

base class SumEntity extends Equatable {
  const SumEntity({
    required this.point,
  });

  final num? point;

  @override
  List<Object?> get props => [
        point,
      ];
}

base class AvgEntity extends Equatable {
  const AvgEntity({
    required this.point,
  });

  final num? point;

  @override
  List<Object?> get props => [
        point,
      ];
}

base class MinEntity extends Equatable {
  const MinEntity({
    required this.point,
  });

  final num? point;

  @override
  List<Object?> get props => [
        point,
      ];
}

base class MaxEntity extends Equatable {
  const MaxEntity({
    required this.point,
  });

  final num? point;

  @override
  List<Object?> get props => [
        point,
      ];
}

base class RewardsEntity extends Equatable {
  const RewardsEntity({
    required this.id,
    required this.rewardId,
    required this.email,
    required this.userId,
    required this.description,
    required this.taskType,
    required this.point,
    required this.createdAt,
    required this.updateAt,
  });

  final String id;
  final String rewardId;
  final String email;
  final String userId;
  final String? description;
  final String taskType;
  final int? point;
  final DateTime createdAt;
  final DateTime updateAt;

  @override
  List<Object?> get props => [
        id,
        rewardId,
        email,
        userId,
        description,
        taskType,
        point,
        createdAt,
        updateAt,
      ];
}

base class DailyQuestEntity extends Equatable {
  const DailyQuestEntity({
    required this.id,
    required this.createdAt,
    required this.updateAt,
    required this.title,
    required this.points,
    required this.questDate,
    required this.questType,
    required this.questLocation,
    required this.completed,
  });

  final String id;
  final DateTime createdAt;
  final DateTime updateAt;
  final String title;
  final int? points;
  final DateTime questDate;
  final String questType;
  final QuestLocationEntity? questLocation;
  final bool completed;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        updateAt,
        title,
        points,
        questDate,
        questType,
        questLocation,
        completed,
      ];
}

base class QuestLocationEntity extends Equatable {
  const QuestLocationEntity({
    required this.radius,
    required this.latitude,
    required this.longitude,
  });

  final double radius;
  final double latitude;
  final double longitude;

  @override
  List<Object?> get props => [
        radius,
        latitude,
        longitude,
      ];
}

base class LeaderboardInfoEntity extends Equatable {
  const LeaderboardInfoEntity({
    required this.startDate,
    required this.endDate,
    required this.currentPeriodPoints,
    required this.totalCount,
  });

  final DateTime startDate;
  final DateTime endDate;
  final List<CurrentPeriodPointsEntity> currentPeriodPoints;
  final int totalCount;

  @override
  List<Object?> get props => [
        startDate,
        endDate,
        currentPeriodPoints,
        totalCount,
      ];
}

base class CurrentPeriodPointsEntity extends Equatable {
  const CurrentPeriodPointsEntity({
    required this.referralCode,
    required this.totalPoints,
    required this.rewardCount,
    required this.blockchainAddress,
  });

  final String referralCode;
  final int totalPoints;
  final int rewardCount;
  final String blockchainAddress;

  @override
  List<Object?> get props => [
        referralCode,
        totalPoints,
        rewardCount,
        blockchainAddress,
      ];
}

base class LeaderboardPositionEntity extends Equatable {
  const LeaderboardPositionEntity({
    required this.position,
    required this.totalCount,
    required this.page,
  });

  final int position;
  final int totalCount;
  final int page;

  @override
  List<Object?> get props => [
        position,
        totalCount,
        page,
      ];
}

base class DroneRushZoneEntity extends Equatable {
  const DroneRushZoneEntity({
    required this.id,
    required this.createdAt,
    required this.updateAt,
    required this.startTime,
    required this.endTime,
    required this.latitude,
    required this.longitude,
    required this.radius,
    required this.boundingBox,
  });

  final String id;
  final DateTime createdAt;
  final DateTime updateAt;
  final DateTime startTime;
  final DateTime endTime;
  final double latitude;
  final double longitude;
  final double radius;
  final BoundingBoxEntity boundingBox;

  @override
  List<Object?> get props => [
    id,
    createdAt,
    updateAt,
    startTime,
    endTime,
    latitude,
    longitude,
    radius,
    boundingBox,
  ];
}

base class BoundingBoxEntity extends Equatable {
  const BoundingBoxEntity({
    required this.minLatitude,
    required this.maxLatitude,
    required this.minLongitude,
    required this.maxLongitude,
  });

  final double minLatitude;
  final double maxLatitude;
  final double minLongitude;
  final double maxLongitude;

  @override
  List<Object?> get props => [
    minLatitude,
    maxLatitude,
    minLongitude,
    maxLongitude,
  ];
}
