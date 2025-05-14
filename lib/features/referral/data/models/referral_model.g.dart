// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SkyPointsModel _$SkyPointsModelFromJson(Map<String, dynamic> json) =>
    SkyPointsModel(
      mStats: StatsModel.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SkyPointsModelToJson(SkyPointsModel instance) =>
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

HighlightsModel _$HighlightsModelFromJson(Map<String, dynamic> json) =>
    HighlightsModel(
      mReferralCode: json['referralCode'] as String,
      mRegisteredFriends: (json['registeredFriends'] as num).toInt(),
      mRegisteredAirspaces: (json['registeredAirspaces'] as num).toInt(),
      mValidatedProperties: (json['validatedProperties'] as num).toInt(),
    );

Map<String, dynamic> _$HighlightsModelToJson(HighlightsModel instance) =>
    <String, dynamic>{
      'referralCode': instance.mReferralCode,
      'registeredFriends': instance.mRegisteredFriends,
      'registeredAirspaces': instance.mRegisteredAirspaces,
      'validatedProperties': instance.mValidatedProperties,
    };

InviteModel _$InviteModelFromJson(Map<String, dynamic> json) => InviteModel(
      mMessages: (json['Messages'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InviteModelToJson(InviteModel instance) =>
    <String, dynamic>{
      'Messages': instance.mMessages,
    };

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      mStatus: json['Status'] as String,
      mCustomId: json['CustomID'] as String,
      mTo: (json['To'] as List<dynamic>)
          .map((e) => ToModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'Status': instance.mStatus,
      'CustomID': instance.mCustomId,
      'To': instance.mTo,
    };

ToModel _$ToModelFromJson(Map<String, dynamic> json) => ToModel(
      mEmail: json['Email'] as String,
      mMessageUuid: json['MessageUUID'] as String,
      mMessageId: json['MessageID'] as String,
      mMessageHref: json['MessageHref'] as String,
    );

Map<String, dynamic> _$ToModelToJson(ToModel instance) => <String, dynamic>{
      'Email': instance.mEmail,
      'MessageUUID': instance.mMessageUuid,
      'MessageID': instance.mMessageId,
      'MessageHref': instance.mMessageHref,
    };

ReferralHistoryModel _$ReferralHistoryModelFromJson(
        Map<String, dynamic> json) =>
    ReferralHistoryModel(
      mHistories: (json['histories'] as List<dynamic>)
          .map((e) => HistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mStats: StatsModel.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReferralHistoryModelToJson(
        ReferralHistoryModel instance) =>
    <String, dynamic>{
      'histories': instance.mHistories,
      'stats': instance.mStats,
    };

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) => HistoryModel(
      mDescription: json['description'] as String,
      mAmount: json['amount'] as String,
      mBalance: (json['balance'] as num).toInt(),
      mDate: json['date'] as String,
      mPoint: (json['point'] as num).toInt(),
    );

Map<String, dynamic> _$HistoryModelToJson(HistoryModel instance) =>
    <String, dynamic>{
      'description': instance.mDescription,
      'amount': instance.mAmount,
      'balance': instance.mBalance,
      'date': instance.mDate,
      'point': instance.mPoint,
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

EarningsReportModel _$EarningsReportModelFromJson(Map<String, dynamic> json) =>
    EarningsReportModel(
      mPeriodSummaries: (json['periodSummaries'] as List<dynamic>)
          .map((e) => PeriodSummaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      mTotalCount: (json['totalCount'] as num).toInt(),
    );

Map<String, dynamic> _$EarningsReportModelToJson(
        EarningsReportModel instance) =>
    <String, dynamic>{
      'periodSummaries': instance.mPeriodSummaries,
      'totalCount': instance.mTotalCount,
    };

PeriodSummaryModel _$PeriodSummaryModelFromJson(Map<String, dynamic> json) =>
    PeriodSummaryModel(
      mPeriodStartDate: const StringDateTimeConverter()
          .fromJson(json['periodStartDate'] as String),
      mPeriodEndDate: const StringDateTimeConverter()
          .fromJson(json['periodEndDate'] as String),
      mTotalPoints: (json['totalPoints'] as num).toInt(),
    );

Map<String, dynamic> _$PeriodSummaryModelToJson(PeriodSummaryModel instance) =>
    <String, dynamic>{
      'periodStartDate':
          const StringDateTimeConverter().toJson(instance.mPeriodStartDate),
      'periodEndDate':
          const StringDateTimeConverter().toJson(instance.mPeriodEndDate),
      'totalPoints': instance.mTotalPoints,
    };
