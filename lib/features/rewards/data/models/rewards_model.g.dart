// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardInfoModel _$RewardInfoModelFromJson(Map<String, dynamic> json) =>
    RewardInfoModel(
      mStats: StatsModel.fromJson(json['stats'] as Map<String, dynamic>),
      mRewards: (json['rewards'] as List<dynamic>)
          .map((e) => RewardsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RewardInfoModelToJson(RewardInfoModel instance) =>
    <String, dynamic>{
      'stats': instance.mStats,
      'rewards': instance.mRewards,
    };

StatsModel _$StatsModelFromJson(Map<String, dynamic> json) => StatsModel(
      mCount: CountModel.fromJson(json['_count'] as Map<String, dynamic>),
      mSum: SumModel.fromJson(json['_sum'] as Map<String, dynamic>),
      mAvg: AvgModel.fromJson(json['_avg'] as Map<String, dynamic>),
      mMin: MinModel.fromJson(json['_min'] as Map<String, dynamic>),
      mMax: MaxModel.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatsModelToJson(StatsModel instance) =>
    <String, dynamic>{
      '_count': instance.mCount,
      '_sum': instance.mSum,
      '_avg': instance.mAvg,
      '_min': instance.mMin,
      '_max': instance.mMax,
    };

CountModel _$CountModelFromJson(Map<String, dynamic> json) => CountModel(
      mPoint: (json['point'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CountModelToJson(CountModel instance) =>
    <String, dynamic>{
      'point': instance.mPoint,
    };

SumModel _$SumModelFromJson(Map<String, dynamic> json) => SumModel(
      mPoint: json['point'] as num?,
    );

Map<String, dynamic> _$SumModelToJson(SumModel instance) => <String, dynamic>{
      'point': instance.mPoint,
    };

AvgModel _$AvgModelFromJson(Map<String, dynamic> json) => AvgModel(
      mPoint: json['point'] as num?,
    );

Map<String, dynamic> _$AvgModelToJson(AvgModel instance) => <String, dynamic>{
      'point': instance.mPoint,
    };

MinModel _$MinModelFromJson(Map<String, dynamic> json) => MinModel(
      mPoint: json['point'] as num?,
    );

Map<String, dynamic> _$MinModelToJson(MinModel instance) => <String, dynamic>{
      'point': instance.mPoint,
    };

MaxModel _$MaxModelFromJson(Map<String, dynamic> json) => MaxModel(
      mPoint: json['point'] as num?,
    );

Map<String, dynamic> _$MaxModelToJson(MaxModel instance) => <String, dynamic>{
      'point': instance.mPoint,
    };

RewardsModel _$RewardsModelFromJson(Map<String, dynamic> json) => RewardsModel(
      mId: json['id'] as String,
      mRewardId: json['rewardId'] as String,
      mEmail: json['email'] as String,
      mUserId: json['userId'] as String,
      mDescription: json['description'] as String?,
      mTaskType: json['taskType'] as String,
      mPoint: (json['point'] as num?)?.toInt(),
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
    );

Map<String, dynamic> _$RewardsModelToJson(RewardsModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'rewardId': instance.mRewardId,
      'email': instance.mEmail,
      'userId': instance.mUserId,
      'description': instance.mDescription,
      'taskType': instance.mTaskType,
      'point': instance.mPoint,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
    };

DailyQuestModel _$DailyQuestModelFromJson(Map<String, dynamic> json) =>
    DailyQuestModel(
      mId: json['id'] as String,
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mTitle: json['title'] as String,
      mPoints: (json['points'] as num?)?.toInt(),
      mQuestDate:
          const StringDateTimeConverter().fromJson(json['questDate'] as String),
      mQuestType: json['questType'] as String,
      mQuestLocation: json['questLocation'] == null
          ? null
          : QuestLocationModel.fromJson(
              json['questLocation'] as Map<String, dynamic>),
      mCompleted: json['completed'] as bool,
    );

Map<String, dynamic> _$DailyQuestModelToJson(DailyQuestModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
      'title': instance.mTitle,
      'points': instance.mPoints,
      'questDate': const StringDateTimeConverter().toJson(instance.mQuestDate),
      'questType': instance.mQuestType,
      'questLocation': instance.mQuestLocation,
      'completed': instance.mCompleted,
    };

QuestLocationModel _$QuestLocationModelFromJson(Map<String, dynamic> json) =>
    QuestLocationModel(
      mRadius: (json['radius'] as num).toDouble(),
      mLatitude: (json['latitude'] as num).toDouble(),
      mLongitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$QuestLocationModelToJson(QuestLocationModel instance) =>
    <String, dynamic>{
      'radius': instance.mRadius,
      'latitude': instance.mLatitude,
      'longitude': instance.mLongitude,
    };

LeaderboardInfoModel _$LeaderboardInfoModelFromJson(
        Map<String, dynamic> json) =>
    LeaderboardInfoModel(
      mStartDate:
          const StringDateTimeConverter().fromJson(json['startDate'] as String),
      mEndDate:
          const StringDateTimeConverter().fromJson(json['endDate'] as String),
      mCurrentPeriodPoints: (json['currentPeriodPoints'] as List<dynamic>)
          .map((e) =>
              CurrentPeriodPointsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mTotalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$LeaderboardInfoModelToJson(
        LeaderboardInfoModel instance) =>
    <String, dynamic>{
      'startDate': const StringDateTimeConverter().toJson(instance.mStartDate),
      'endDate': const StringDateTimeConverter().toJson(instance.mEndDate),
      'currentPeriodPoints': instance.mCurrentPeriodPoints,
      'totalCount': instance.mTotalCount,
    };

CurrentPeriodPointsModel _$CurrentPeriodPointsModelFromJson(
        Map<String, dynamic> json) =>
    CurrentPeriodPointsModel(
      mReferralCode: json['referralCode'] as String,
      mTotalPoints: (json['totalPoints'] as num).toInt(),
      mRewardCount: (json['rewardCount'] as num).toInt(),
      mBlockchainAddress: json['blockchainAddress'] as String,
    );

Map<String, dynamic> _$CurrentPeriodPointsModelToJson(
        CurrentPeriodPointsModel instance) =>
    <String, dynamic>{
      'referralCode': instance.mReferralCode,
      'totalPoints': instance.mTotalPoints,
      'rewardCount': instance.mRewardCount,
      'blockchainAddress': instance.mBlockchainAddress,
    };

LeaderboardPositionModel _$LeaderboardPositionModelFromJson(
        Map<String, dynamic> json) =>
    LeaderboardPositionModel(
      mPosition: (json['position'] as num).toInt(),
      mTotalCount: (json['totalCount'] as num).toInt(),
      mPage: (json['page'] as num).toInt(),
    );

Map<String, dynamic> _$LeaderboardPositionModelToJson(
        LeaderboardPositionModel instance) =>
    <String, dynamic>{
      'position': instance.mPosition,
      'totalCount': instance.mTotalCount,
      'page': instance.mPage,
    };

DroneRushZoneModel _$DroneRushZoneModelFromJson(Map<String, dynamic> json) =>
    DroneRushZoneModel(
      mId: json['id'] as String,
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mStartTime:
          const StringDateTimeConverter().fromJson(json['startTime'] as String),
      mEndTime:
          const StringDateTimeConverter().fromJson(json['endTime'] as String),
      mLatitude: (json['latitude'] as num).toDouble(),
      mLongitude: (json['longitude'] as num).toDouble(),
      mRadius: (json['radius'] as num).toDouble(),
      mBoundingBox: BoundingBoxModel.fromJson(
          json['boundingBox'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DroneRushZoneModelToJson(DroneRushZoneModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
      'startTime': const StringDateTimeConverter().toJson(instance.mStartTime),
      'endTime': const StringDateTimeConverter().toJson(instance.mEndTime),
      'latitude': instance.mLatitude,
      'longitude': instance.mLongitude,
      'radius': instance.mRadius,
      'boundingBox': instance.mBoundingBox,
    };

BoundingBoxModel _$BoundingBoxModelFromJson(Map<String, dynamic> json) =>
    BoundingBoxModel(
      mMinLatitude: (json['minLatitude'] as num).toDouble(),
      mMaxLatitude: (json['maxLatitude'] as num).toDouble(),
      mMinLongitude: (json['minLongitude'] as num).toDouble(),
      mMaxLongitude: (json['maxLongitude'] as num).toDouble(),
    );

Map<String, dynamic> _$BoundingBoxModelToJson(BoundingBoxModel instance) =>
    <String, dynamic>{
      'minLatitude': instance.mMinLatitude,
      'maxLatitude': instance.mMaxLatitude,
      'minLongitude': instance.mMinLongitude,
      'maxLongitude': instance.mMaxLongitude,
    };
