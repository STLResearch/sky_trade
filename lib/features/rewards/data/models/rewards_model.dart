import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        blockchainAddressKey,
        boundingBoxKey,
        completedKey,
        countKey,
        createdAtKey,
        currentPeriodPointsKey,
        endDateKey,
        endTimeKey,
        idKey,
        latitudeKey,
        longitudeKey,
        maxLatitudeKey,
        maxLongitudeKey,
        minLatitudeKey,
        minLongitudeKey,
        pageKey,
        pointKey,
        pointsKey,
        positionKey,
        questDateKey,
        questLocationKey,
        questTypeKey,
        radiusKey,
        referralCodeKey,
        rewardCountKey,
        startDateKey,
        startTimeKey,
        statsKey,
        sumKey,
        titleKey,
        totalCountKey,
        totalPointsKey,
        updateAtKey;
import 'package:sky_trade/core/utils/converters/date_time_converter.dart'
    show StringDateTimeConverter;
import 'package:sky_trade/core/utils/enums/networking.dart' show QuestType;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart';

part 'rewards_model.g.dart';

@JsonSerializable()
final class RewardPointsModel extends RewardPointsEntity {
  const RewardPointsModel({
    required this.mStats,
  }) : super(
          stats: mStats,
        );

  factory RewardPointsModel.fromJson(Map<String, dynamic> json) =>
      _$RewardPointsModelFromJson(json);

  @JsonKey(name: statsKey)
  final StatsModel mStats;

  Map<String, dynamic> toJson() => _$RewardPointsModelToJson(this);
}

@JsonSerializable()
final class StatsModel extends StatsEntity {
  const StatsModel({
    required this.mCount,
    required this.mSum,
  }) : super(
          count: mCount,
          sum: mSum,
        );

  factory StatsModel.fromJson(Map<String, dynamic> json) =>
      _$StatsModelFromJson(json);

  @JsonKey(name: countKey)
  final CountModel mCount;

  @JsonKey(name: sumKey)
  final SumModel mSum;

  Map<String, dynamic> toJson() => _$StatsModelToJson(this);
}

@JsonSerializable()
final class CountModel extends CountEntity {
  const CountModel({
    required this.mPoint,
  }) : super(
          point: mPoint,
        );

  factory CountModel.fromJson(Map<String, dynamic> json) =>
      _$CountModelFromJson(json);

  @JsonKey(name: pointKey)
  final int? mPoint;

  Map<String, dynamic> toJson() => _$CountModelToJson(this);
}

@JsonSerializable()
final class SumModel extends SumEntity {
  const SumModel({
    required this.mPoint,
  }) : super(
          point: mPoint,
        );

  factory SumModel.fromJson(Map<String, dynamic> json) =>
      _$SumModelFromJson(json);

  @JsonKey(name: pointKey)
  final num? mPoint;

  Map<String, dynamic> toJson() => _$SumModelToJson(this);
}

@JsonSerializable()
final class QuestModel extends QuestEntity {
  const QuestModel({
    required this.mId,
    required this.mCreatedAt,
    required this.mUpdateAt,
    required this.mTitle,
    required this.mPoints,
    required this.mQuestDate,
    required this.mQuestType,
    required this.mQuestLocation,
    required this.mCompleted,
  }) : super(
          id: mId,
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
          title: mTitle,
          points: mPoints,
          questDate: mQuestDate,
          questType: mQuestType,
          questLocation: mQuestLocation,
          completed: mCompleted,
        );

  factory QuestModel.fromJson(Map<String, dynamic> json) =>
      _$QuestModelFromJson(json);

  @JsonKey(name: idKey)
  final String mId;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updateAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdateAt;

  @JsonKey(name: titleKey)
  final String mTitle;

  @JsonKey(name: pointsKey)
  final int? mPoints;

  @JsonKey(name: questDateKey)
  @StringDateTimeConverter()
  final DateTime mQuestDate;

  @JsonKey(name: questTypeKey)
  final QuestType mQuestType;

  @JsonKey(name: questLocationKey)
  final QuestLocationModel? mQuestLocation;

  @JsonKey(name: completedKey)
  final bool mCompleted;

  Map<String, dynamic> toJson() => _$QuestModelToJson(this);
}

@JsonSerializable()
final class QuestLocationModel extends QuestLocationEntity {
  const QuestLocationModel({
    required this.mRadius,
    required this.mLatitude,
    required this.mLongitude,
  }) : super(
          radius: mRadius,
          latitude: mLatitude,
          longitude: mLongitude,
        );

  factory QuestLocationModel.fromJson(Map<String, dynamic> json) =>
      _$QuestLocationModelFromJson(json);

  @JsonKey(name: radiusKey)
  final double mRadius;

  @JsonKey(name: latitudeKey)
  final double mLatitude;

  @JsonKey(name: longitudeKey)
  final double mLongitude;

  Map<String, dynamic> toJson() => _$QuestLocationModelToJson(this);
}

@JsonSerializable()
final class LeaderboardPositionModel extends LeaderboardPositionEntity {
  const LeaderboardPositionModel({
    required this.mPosition,
    required this.mTotalCount,
    required this.mPage,
  }) : super(
          position: mPosition,
          totalCount: mTotalCount,
          page: mPage,
        );

  factory LeaderboardPositionModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardPositionModelFromJson(json);

  @JsonKey(name: positionKey)
  final int? mPosition;

  @JsonKey(name: totalCountKey)
  final int mTotalCount;

  @JsonKey(name: pageKey)
  final int? mPage;

  Map<String, dynamic> toJson() => _$LeaderboardPositionModelToJson(this);
}

@JsonSerializable()
final class LeaderboardStatisticsModel extends LeaderboardStatisticsEntity {
  const LeaderboardStatisticsModel({
    required this.mStartDate,
    required this.mEndDate,
    required this.mCurrentPeriodPoints,
    required this.mTotalCount,
  }) : super(
          startDate: mStartDate,
          endDate: mEndDate,
          currentPeriodPoints: mCurrentPeriodPoints,
          totalCount: mTotalCount,
        );

  factory LeaderboardStatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardStatisticsModelFromJson(json);

  @JsonKey(name: startDateKey)
  @StringDateTimeConverter()
  final DateTime mStartDate;

  @JsonKey(name: endDateKey)
  @StringDateTimeConverter()
  final DateTime mEndDate;

  @JsonKey(name: currentPeriodPointsKey)
  final List<PeriodPointModel> mCurrentPeriodPoints;

  @JsonKey(name: totalCountKey)
  final int mTotalCount;

  Map<String, dynamic> toJson() => _$LeaderboardStatisticsModelToJson(this);
}

@JsonSerializable()
final class PeriodPointModel extends PeriodPointEntity {
  const PeriodPointModel({
    required this.mReferralCode,
    required this.mTotalPoints,
    required this.mRewardCount,
    required this.mBlockchainAddress,
  }) : super(
          referralCode: mReferralCode,
          totalPoints: mTotalPoints,
          rewardCount: mRewardCount,
          blockchainAddress: mBlockchainAddress,
        );

  factory PeriodPointModel.fromJson(Map<String, dynamic> json) =>
      _$PeriodPointModelFromJson(json);

  @JsonKey(name: referralCodeKey)
  final String? mReferralCode;

  @JsonKey(name: totalPointsKey)
  final int mTotalPoints;

  @JsonKey(name: rewardCountKey)
  final int mRewardCount;

  @JsonKey(name: blockchainAddressKey)
  final String? mBlockchainAddress;

  Map<String, dynamic> toJson() => _$PeriodPointModelToJson(this);
}

@JsonSerializable()
final class DroneRushZoneModel extends DroneRushZoneEntity {
  const DroneRushZoneModel({
    required this.mId,
    required this.mCreatedAt,
    required this.mUpdateAt,
    required this.mStartTime,
    required this.mEndTime,
    required this.mLatitude,
    required this.mLongitude,
    required this.mRadius,
    required this.mBoundingBox,
  }) : super(
          id: mId,
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
          startTime: mStartTime,
          endTime: mEndTime,
          latitude: mLatitude,
          longitude: mLongitude,
          radius: mRadius,
          boundingBox: mBoundingBox,
        );

  factory DroneRushZoneModel.fromJson(Map<String, dynamic> json) =>
      _$DroneRushZoneModelFromJson(json);

  @JsonKey(name: idKey)
  final String mId;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updateAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdateAt;

  @JsonKey(name: startTimeKey)
  @StringDateTimeConverter()
  final DateTime mStartTime;

  @JsonKey(name: endTimeKey)
  @StringDateTimeConverter()
  final DateTime mEndTime;

  @JsonKey(name: latitudeKey)
  final double mLatitude;

  @JsonKey(name: longitudeKey)
  final double mLongitude;

  @JsonKey(name: radiusKey)
  final double mRadius;

  @JsonKey(name: boundingBoxKey)
  final BoundingBoxModel mBoundingBox;

  Map<String, dynamic> toJson() => _$DroneRushZoneModelToJson(this);
}

@JsonSerializable()
final class BoundingBoxModel extends BoundingBoxEntity {
  const BoundingBoxModel({
    required this.mMinLatitude,
    required this.mMaxLatitude,
    required this.mMinLongitude,
    required this.mMaxLongitude,
  }) : super(
          minLatitude: mMinLatitude,
          maxLatitude: mMaxLatitude,
          minLongitude: mMinLongitude,
          maxLongitude: mMaxLongitude,
        );

  factory BoundingBoxModel.fromJson(Map<String, dynamic> json) =>
      _$BoundingBoxModelFromJson(json);

  @JsonKey(name: minLatitudeKey)
  final double mMinLatitude;

  @JsonKey(name: maxLatitudeKey)
  final double mMaxLatitude;

  @JsonKey(name: minLongitudeKey)
  final double mMinLongitude;

  @JsonKey(name: maxLongitudeKey)
  final double mMaxLongitude;

  Map<String, dynamic> toJson() => _$BoundingBoxModelToJson(this);
}
