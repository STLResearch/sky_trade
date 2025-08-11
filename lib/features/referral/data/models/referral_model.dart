// SPDX-License-Identifier: UNLICENSED
                            
import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        amountKey,
        balanceKey,
        blockchainAddressKey,
        countKey,
        currentPeriodPointsKey,
        customIdKey,
        dateKey,
        descriptionKey,
        emailAltKey,
        endDateKey,
        historiesKey,
        messageHrefKey,
        messageIdKey,
        messageUuidKey,
        messagesKey,
        pageKey,
        periodEndDateKey,
        periodStartDateKey,
        periodSummariesKey,
        pointKey,
        positionKey,
        referralCodeKey,
        registeredAirspacesKey,
        registeredFriendsKey,
        rewardCountKey,
        startDateKey,
        statsKey,
        statusAltKey,
        sumKey,
        toAltKey,
        totalCountKey,
        totalPointsKey,
        validatedPropertiesKey;
import 'package:sky_trade/core/utils/converters/date_time_converter.dart'
    show StringDateTimeConverter;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart';

part 'referral_model.g.dart';

@JsonSerializable()
final class SkyPointsModel extends SkyPointsEntity {
  const SkyPointsModel({
    required this.mStats,
  }) : super(
          stats: mStats,
        );

  factory SkyPointsModel.fromJson(Map<String, dynamic> json) =>
      _$SkyPointsModelFromJson(json);

  @JsonKey(name: statsKey)
  final StatsModel mStats;

  Map<String, dynamic> toJson() => _$SkyPointsModelToJson(this);
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
final class HighlightsModel extends HighlightsEntity {
  const HighlightsModel({
    required this.mReferralCode,
    required this.mRegisteredFriends,
    required this.mRegisteredAirspaces,
    required this.mValidatedProperties,
  }) : super(
          referralCode: mReferralCode,
          registeredFriends: mRegisteredFriends,
          registeredAirspaces: mRegisteredAirspaces,
          validatedProperties: mValidatedProperties,
        );

  factory HighlightsModel.fromJson(Map<String, dynamic> json) =>
      _$HighlightsModelFromJson(json);

  @JsonKey(name: referralCodeKey)
  final String mReferralCode;

  @JsonKey(name: registeredFriendsKey)
  final int mRegisteredFriends;

  @JsonKey(name: registeredAirspacesKey)
  final int mRegisteredAirspaces;

  @JsonKey(name: validatedPropertiesKey)
  final int mValidatedProperties;

  Map<String, dynamic> toJson() => _$HighlightsModelToJson(this);
}

@JsonSerializable()
final class InviteModel extends InviteEntity {
  const InviteModel({
    required this.mMessages,
  }) : super(
          messages: mMessages,
        );

  factory InviteModel.fromJson(Map<String, dynamic> json) =>
      _$InviteModelFromJson(json);

  @JsonKey(name: messagesKey)
  final List<MessageModel> mMessages;

  Map<String, dynamic> toJson() => _$InviteModelToJson(this);
}

@JsonSerializable()
final class MessageModel extends MessageEntity {
  const MessageModel({
    required this.mStatus,
    required this.mCustomId,
    required this.mTo,
  }) : super(
          status: mStatus,
          customId: mCustomId,
          to: mTo,
        );

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  @JsonKey(name: statusAltKey)
  final String mStatus;

  @JsonKey(name: customIdKey)
  final String mCustomId;

  @JsonKey(name: toAltKey)
  final List<ToModel> mTo;

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}

@JsonSerializable()
final class ToModel extends ToEntity {
  const ToModel({
    required this.mEmail,
    required this.mMessageUuid,
    required this.mMessageId,
    required this.mMessageHref,
  }) : super(
          email: mEmail,
          messageUuid: mMessageUuid,
          messageId: mMessageId,
          messageHref: mMessageHref,
        );

  factory ToModel.fromJson(Map<String, dynamic> json) =>
      _$ToModelFromJson(json);

  @JsonKey(name: emailAltKey)
  final String mEmail;

  @JsonKey(name: messageUuidKey)
  final String mMessageUuid;

  @JsonKey(name: messageIdKey)
  final String mMessageId;

  @JsonKey(name: messageHrefKey)
  final String mMessageHref;

  Map<String, dynamic> toJson() => _$ToModelToJson(this);
}

@JsonSerializable()
final class ReferralHistoryModel extends ReferralHistoryEntity {
  const ReferralHistoryModel({
    required this.mHistories,
    required this.mStats,
  }) : super(
          histories: mHistories,
          stats: mStats,
        );

  factory ReferralHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$ReferralHistoryModelFromJson(json);

  @JsonKey(name: historiesKey)
  final List<HistoryModel> mHistories;

  @JsonKey(name: statsKey)
  final StatsModel mStats;

  Map<String, dynamic> toJson() => _$ReferralHistoryModelToJson(this);
}

@JsonSerializable()
final class HistoryModel extends HistoryEntity {
  const HistoryModel({
    required this.mDescription,
    required this.mAmount,
    required this.mBalance,
    required this.mDate,
    required this.mPoint,
  }) : super(
          description: mDescription,
          amount: mAmount,
          balance: mBalance,
          date: mDate,
          point: mPoint,
        );

  factory HistoryModel.fromJson(Map<String, dynamic> json) =>
      _$HistoryModelFromJson(json);

  @JsonKey(name: descriptionKey)
  final String mDescription;

  @JsonKey(name: amountKey)
  final String mAmount;

  @JsonKey(name: balanceKey)
  final int mBalance;

  @JsonKey(name: dateKey)
  final String mDate;

  @JsonKey(name: pointKey)
  final int mPoint;

  Map<String, dynamic> toJson() => _$HistoryModelToJson(this);
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
final class EarningsReportModel extends EarningsReportEntity {
  const EarningsReportModel({
    required this.mPeriodSummaries,
    required this.mTotalCount,
  }) : super(
          periodSummaries: mPeriodSummaries,
          totalCount: mTotalCount,
        );

  factory EarningsReportModel.fromJson(Map<String, dynamic> json) =>
      _$EarningsReportModelFromJson(json);

  @JsonKey(name: periodSummariesKey)
  final List<PeriodSummaryModel> mPeriodSummaries;

  @JsonKey(name: totalCountKey)
  final int mTotalCount;

  Map<String, dynamic> toJson() => _$EarningsReportModelToJson(this);
}

@JsonSerializable()
final class PeriodSummaryModel extends PeriodSummaryEntity {
  const PeriodSummaryModel({
    required this.mPeriodStartDate,
    required this.mPeriodEndDate,
    required this.mTotalPoints,
  }) : super(
          periodStartDate: mPeriodStartDate,
          periodEndDate: mPeriodEndDate,
          totalPoints: mTotalPoints,
        );

  factory PeriodSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$PeriodSummaryModelFromJson(json);

  @JsonKey(name: periodStartDateKey)
  @StringDateTimeConverter()
  final DateTime mPeriodStartDate;

  @JsonKey(name: periodEndDateKey)
  @StringDateTimeConverter()
  final DateTime mPeriodEndDate;

  @JsonKey(name: totalPointsKey)
  final int mTotalPoints;

  Map<String, dynamic> toJson() => _$PeriodSummaryModelToJson(this);
}
