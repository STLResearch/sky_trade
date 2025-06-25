// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardPointsModel _$RewardPointsModelFromJson(Map<String, dynamic> json) =>
    RewardPointsModel(
      mStats: StatsModel.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RewardPointsModelToJson(RewardPointsModel instance) =>
    <String, dynamic>{
      'stats': instance.mStats,
    };

StatsModel _$StatsModelFromJson(Map<String, dynamic> json) => StatsModel(
      mCount: CountModel.fromJson(json['_count'] as Map<String, dynamic>),
      mSum: SumModel.fromJson(json['_sum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatsModelToJson(StatsModel instance) =>
    <String, dynamic>{
      '_count': instance.mCount,
      '_sum': instance.mSum,
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

QuestModel _$QuestModelFromJson(Map<String, dynamic> json) => QuestModel(
      mId: json['id'] as String,
      mCreatedAt:
          const StringDateTimeConverter().fromJson(json['createdAt'] as String),
      mUpdateAt:
          const StringDateTimeConverter().fromJson(json['updateAt'] as String),
      mTitle: json['title'] as String,
      mPoints: (json['points'] as num?)?.toInt(),
      mQuestDate:
          const StringDateTimeConverter().fromJson(json['questDate'] as String),
      mQuestType: $enumDecode(_$QuestTypeEnumMap, json['questType']),
      mQuestLocation: json['questLocation'] == null
          ? null
          : QuestLocationModel.fromJson(
              json['questLocation'] as Map<String, dynamic>),
      mCompleted: json['completed'] as bool,
    );

Map<String, dynamic> _$QuestModelToJson(QuestModel instance) =>
    <String, dynamic>{
      'id': instance.mId,
      'createdAt': const StringDateTimeConverter().toJson(instance.mCreatedAt),
      'updateAt': const StringDateTimeConverter().toJson(instance.mUpdateAt),
      'title': instance.mTitle,
      'points': instance.mPoints,
      'questDate': const StringDateTimeConverter().toJson(instance.mQuestDate),
      'questType': _$QuestTypeEnumMap[instance.mQuestType]!,
      'questLocation': instance.mQuestLocation,
      'completed': instance.mCompleted,
    };

const _$QuestTypeEnumMap = {
  QuestType.taskBased: 'TASK_BASED',
  QuestType.locationBased: 'LOCATION_BASED',
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

LeaderboardPositionModel _$LeaderboardPositionModelFromJson(
        Map<String, dynamic> json) =>
    LeaderboardPositionModel(
      mPosition: (json['position'] as num?)?.toInt(),
      mTotalCount: (json['totalCount'] as num).toInt(),
      mPage: (json['page'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LeaderboardPositionModelToJson(
        LeaderboardPositionModel instance) =>
    <String, dynamic>{
      'position': instance.mPosition,
      'totalCount': instance.mTotalCount,
      'page': instance.mPage,
    };

LeaderboardStatisticsModel _$LeaderboardStatisticsModelFromJson(
        Map<String, dynamic> json) =>
    LeaderboardStatisticsModel(
      mStartDate:
          const StringDateTimeConverter().fromJson(json['startDate'] as String),
      mEndDate:
          const StringDateTimeConverter().fromJson(json['endDate'] as String),
      mCurrentPeriodPoints: (json['currentPeriodPoints'] as List<dynamic>)
          .map((e) => PeriodPointModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mTotalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$LeaderboardStatisticsModelToJson(
        LeaderboardStatisticsModel instance) =>
    <String, dynamic>{
      'startDate': const StringDateTimeConverter().toJson(instance.mStartDate),
      'endDate': const StringDateTimeConverter().toJson(instance.mEndDate),
      'currentPeriodPoints': instance.mCurrentPeriodPoints,
      'totalCount': instance.mTotalCount,
    };

PeriodPointModel _$PeriodPointModelFromJson(Map<String, dynamic> json) =>
    PeriodPointModel(
      mReferralCode: json['referralCode'] as String?,
      mTotalPoints: (json['totalPoints'] as num).toInt(),
      mRewardCount: (json['rewardCount'] as num).toInt(),
      mBlockchainAddress: json['blockchainAddress'] as String?,
    );

Map<String, dynamic> _$PeriodPointModelToJson(PeriodPointModel instance) =>
    <String, dynamic>{
      'referralCode': instance.mReferralCode,
      'totalPoints': instance.mTotalPoints,
      'rewardCount': instance.mRewardCount,
      'blockchainAddress': instance.mBlockchainAddress,
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
      mLocationName: json['locationName'] as String,
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
      'locationName': instance.mLocationName,
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
