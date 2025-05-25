import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        avgKey,
        blockchainAddressKey,
        boundingBoxKey,
        completedKey,
        countKey,
        createdAtKey,
        currentPeriodPointsKey,
        descriptionKey,
        emailKey,
        endDateKey,
        endTimeKey,
        idKey,
        latitudeKey,
        longitudeKey,
        maxKey,
        maxLatitudeKey,
        maxLongitudeKey,
        minKey,
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
        rewardIdKey,
        rewardsKey,
        startDateKey,
        startTimeKey,
        statsKey,
        sumKey,
        taskTypeKey,
        titleKey,
        totalCountKey,
        totalPointsKey,
        updateAtKey,
        userIdKey;
import 'package:sky_trade/core/utils/converters/date_time_converter.dart'
    show StringDateTimeConverter;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show
        AvgEntity,
        BoundingBoxEntity,
        CountEntity,
        CurrentPeriodPointsEntity,
        DailyQuestEntity,
        DroneRushZoneEntity,
        LeaderboardInfoEntity,
        LeaderboardPositionEntity,
        MaxEntity,
        MinEntity,
        QuestLocationEntity,
        RewardInfoEntity,
        RewardsEntity,
        StatsEntity,
        SumEntity;

part 'rewards_model.g.dart';

@JsonSerializable()
final class RewardInfoModel extends RewardInfoEntity {
  const RewardInfoModel({
    required this.mStats,
    required this.mRewards,
  }) : super(
          stats: mStats,
          rewards: mRewards,
        );

  factory RewardInfoModel.fromJson(Map<String, dynamic> json) =>
      _$RewardInfoModelFromJson(json);

  @JsonKey(name: statsKey)
  final StatsModel mStats;

  @JsonKey(name: rewardsKey)
  final List<RewardsModel> mRewards;

  Map<String, dynamic> toJson() => _$RewardInfoModelToJson(this);
}

@JsonSerializable()
final class StatsModel extends StatsEntity {
  const StatsModel({
    required this.mCount,
    required this.mSum,
    required this.mAvg,
    required this.mMin,
    required this.mMax,
  }) : super(
          count: mCount,
          sum: mSum,
          avg: mAvg,
          min: mMin,
          max: mMax,
        );

  factory StatsModel.fromJson(Map<String, dynamic> json) =>
      _$StatsModelFromJson(json);

  @JsonKey(name: countKey)
  final CountModel mCount;

  @JsonKey(name: sumKey)
  final SumModel mSum;

  @JsonKey(name: avgKey)
  final AvgModel mAvg;

  @JsonKey(name: minKey)
  final MinModel mMin;

  @JsonKey(name: maxKey)
  final MaxModel mMax;

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
final class AvgModel extends AvgEntity {
  const AvgModel({
    required this.mPoint,
  }) : super(
          point: mPoint,
        );

  factory AvgModel.fromJson(Map<String, dynamic> json) =>
      _$AvgModelFromJson(json);

  @JsonKey(name: pointKey)
  final num? mPoint;

  Map<String, dynamic> toJson() => _$AvgModelToJson(this);
}

@JsonSerializable()
final class MinModel extends MinEntity {
  const MinModel({
    required this.mPoint,
  }) : super(
          point: mPoint,
        );

  factory MinModel.fromJson(Map<String, dynamic> json) =>
      _$MinModelFromJson(json);

  @JsonKey(name: pointKey)
  final num? mPoint;

  Map<String, dynamic> toJson() => _$MinModelToJson(this);
}

@JsonSerializable()
final class MaxModel extends MaxEntity {
  const MaxModel({
    required this.mPoint,
  }) : super(
          point: mPoint,
        );

  factory MaxModel.fromJson(Map<String, dynamic> json) =>
      _$MaxModelFromJson(json);

  @JsonKey(name: pointKey)
  final num? mPoint;

  Map<String, dynamic> toJson() => _$MaxModelToJson(this);
}

@JsonSerializable()
final class RewardsModel extends RewardsEntity {
  const RewardsModel({
    required this.mId,
    required this.mRewardId,
    required this.mEmail,
    required this.mUserId,
    required this.mDescription,
    required this.mTaskType,
    required this.mPoint,
    required this.mCreatedAt,
    required this.mUpdateAt,
  }) : super(
          id: mId,
          rewardId: mRewardId,
          email: mEmail,
          userId: mUserId,
          description: mDescription,
          taskType: mTaskType,
          point: mPoint,
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
        );

  factory RewardsModel.fromJson(Map<String, dynamic> json) =>
      _$RewardsModelFromJson(json);

  @JsonKey(name: idKey)
  final String mId;

  @JsonKey(name: rewardIdKey)
  final String mRewardId;

  @JsonKey(name: emailKey)
  final String mEmail;

  @JsonKey(name: userIdKey)
  final String mUserId;

  @JsonKey(name: descriptionKey)
  final String? mDescription;

  @JsonKey(name: taskTypeKey)
  final String mTaskType;

  @JsonKey(name: pointKey)
  final int? mPoint;

  @JsonKey(name: createdAtKey)
  @StringDateTimeConverter()
  final DateTime mCreatedAt;

  @JsonKey(name: updateAtKey)
  @StringDateTimeConverter()
  final DateTime mUpdateAt;

  Map<String, dynamic> toJson() => _$RewardsModelToJson(this);
}

@JsonSerializable()
final class DailyQuestModel extends DailyQuestEntity {
  const DailyQuestModel({
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

  factory DailyQuestModel.fromJson(Map<String, dynamic> json) =>
      _$DailyQuestModelFromJson(json);

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
  final String mQuestType;

  @JsonKey(name: questLocationKey)
  final QuestLocationModel? mQuestLocation;

  @JsonKey(name: completedKey)
  final bool mCompleted;

  Map<String, dynamic> toJson() => _$DailyQuestModelToJson(this);
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
final class LeaderboardInfoModel extends LeaderboardInfoEntity {
  const LeaderboardInfoModel({
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

  factory LeaderboardInfoModel.fromJson(Map<String, dynamic> json) =>
      _$LeaderboardInfoModelFromJson(json);

  @JsonKey(name: startDateKey)
  @StringDateTimeConverter()
  final DateTime mStartDate;

  @JsonKey(name: endDateKey)
  @StringDateTimeConverter()
  final DateTime mEndDate;

  @JsonKey(name: currentPeriodPointsKey)
  final List<CurrentPeriodPointsModel> mCurrentPeriodPoints;

  @JsonKey(name: totalCountKey)
  final int mTotalCount;

  Map<String, dynamic> toJson() => _$LeaderboardInfoModelToJson(this);
}

@JsonSerializable()
final class CurrentPeriodPointsModel extends CurrentPeriodPointsEntity {
  const CurrentPeriodPointsModel({
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

  factory CurrentPeriodPointsModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentPeriodPointsModelFromJson(json);

  @JsonKey(name: referralCodeKey)
  final String mReferralCode;

  @JsonKey(name: totalPointsKey)
  final int mTotalPoints;

  @JsonKey(name: rewardCountKey)
  final int mRewardCount;

  @JsonKey(name: blockchainAddressKey)
  final String mBlockchainAddress;

  Map<String, dynamic> toJson() => _$CurrentPeriodPointsModelToJson(this);
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
  final int mPosition;

  @JsonKey(name: totalCountKey)
  final int mTotalCount;

  @JsonKey(name: pageKey)
  final int mPage;

  Map<String, dynamic> toJson() => _$LeaderboardPositionModelToJson(this);
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
