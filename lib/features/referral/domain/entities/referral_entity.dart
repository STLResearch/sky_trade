import 'package:equatable/equatable.dart' show Equatable;

base class SkyPointsEntity extends Equatable {
  const SkyPointsEntity({
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
    required this.sum,
  });

  final SumEntity sum;

  @override
  List<Object?> get props => [
        sum,
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

base class HighlightsEntity extends Equatable {
  const HighlightsEntity({
    required this.referralCode,
    required this.registeredFriends,
    required this.registeredAirspaces,
    required this.validatedProperties,
  });

  final String referralCode;

  final int registeredFriends;

  final int registeredAirspaces;

  final int validatedProperties;

  @override
  List<Object?> get props => [
        referralCode,
        registeredFriends,
        registeredAirspaces,
        validatedProperties,
      ];
}

base class InviteEntity extends Equatable {
  const InviteEntity({
    required this.messages,
  });

  final List<MessageEntity> messages;

  @override
  List<Object?> get props => [
        messages,
      ];
}

base class MessageEntity extends Equatable {
  const MessageEntity({
    required this.status,
    required this.customId,
    required this.to,
  });

  final String status;

  final String customId;

  final List<ToEntity> to;

  @override
  List<Object?> get props => [
        status,
        customId,
        to,
      ];
}

base class ToEntity extends Equatable {
  const ToEntity({
    required this.email,
    required this.messageUuid,
    required this.messageId,
    required this.messageHref,
  });

  final String email;

  final String messageUuid;

  final String messageId;

  final String messageHref;

  @override
  List<Object?> get props => [
        email,
        messageUuid,
        messageId,
        messageHref,
      ];
}

base class ReferralHistoryEntity extends Equatable {
  const ReferralHistoryEntity({
    required this.histories,
  });

  final List<HistoryEntity> histories;

  @override
  List<Object?> get props => [
        histories,
      ];
}

base class HistoryEntity extends Equatable {
  const HistoryEntity({
    required this.description,
    required this.amount,
    required this.balance,
    required this.date,
  });

  final String description;

  final String amount;

  final int balance;

  final String date;

  @override
  List<Object?> get props => [
        description,
        amount,
        balance,
        date,
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

  final int totalCount; // total number of rows divide by page count

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
    required this.email,
    required this.totalPoints,
    required this.rewardCount,
    required this.blockchainAddress,
  });

  final String email;

  final int totalPoints;

  final int rewardCount;

  final String blockchainAddress;

  @override
  List<Object?> get props => [
        email,
        totalPoints,
        rewardCount,
        blockchainAddress,
      ];
}

base class EarningsReportEntity extends Equatable {
  const EarningsReportEntity({
    required this.periodSummaries,
    required this.totalCount,
  });

  final List<PeriodSummaryEntity> periodSummaries;

  final int totalCount;

  @override
  List<Object?> get props => [
        periodSummaries,
        totalCount,
      ];
}

base class PeriodSummaryEntity extends Equatable {
  const PeriodSummaryEntity({
    required this.periodStartDate,
    required this.periodEndDate,
    required this.totalPoints,
  });

  final DateTime periodStartDate;

  final DateTime periodEndDate;

  final int totalPoints;

  @override
  List<Object?> get props => [
        periodStartDate,
        periodEndDate,
        totalPoints,
      ];
}
