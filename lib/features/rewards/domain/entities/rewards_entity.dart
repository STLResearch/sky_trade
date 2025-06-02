import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_trade/core/utils/enums/networking.dart' show QuestType;

base class RewardPointsEntity extends Equatable {
  const RewardPointsEntity({
    required this.stats,
  });

  final StatsEntity stats;

  @override
  List<Object?> get props => [
        stats,
      ];
}

base class StatsEntity extends Equatable {
  const StatsEntity({
    required this.count,
    required this.sum,
  });

  final CountEntity count;

  final SumEntity sum;

  @override
  List<Object?> get props => [
        count,
        sum,
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

base class QuestEntity extends Equatable {
  const QuestEntity({
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

  final QuestType questType;

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

base class LeaderboardPositionEntity extends Equatable {
  const LeaderboardPositionEntity({
    required this.position,
    required this.totalCount,
    required this.page,
  });

  final int? position;

  final int totalCount;

  final int? page;

  @override
  List<Object?> get props => [
        position,
        totalCount,
        page,
      ];
}

base class LeaderboardStatisticsEntity extends Equatable {
  const LeaderboardStatisticsEntity({
    required this.startDate,
    required this.endDate,
    required this.currentPeriodPoints,
    required this.totalCount,
  });

  final DateTime startDate;

  final DateTime endDate;

  final List<PeriodPointEntity> currentPeriodPoints;

  final int totalCount;

  @override
  List<Object?> get props => [
        startDate,
        endDate,
        currentPeriodPoints,
        totalCount,
      ];
}

base class PeriodPointEntity extends Equatable {
  const PeriodPointEntity({
    required this.referralCode,
    required this.totalPoints,
    required this.rewardCount,
    required this.blockchainAddress,
  });

  final String? referralCode;

  final int totalPoints;

  final int rewardCount;

  final String? blockchainAddress;

  @override
  List<Object?> get props => [
        referralCode,
        totalPoints,
        rewardCount,
        blockchainAddress,
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
