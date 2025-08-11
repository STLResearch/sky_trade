// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter_dotenv/flutter_dotenv.dart' show dotenv;
import 'package:sky_trade/core/resources/numbers/networking.dart'
    show one, zero;
import 'package:sky_trade/core/resources/strings/networking.dart' show https;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show skyTradeServerSignUrl;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show colon, forwardSlash;
import 'package:sky_trade/core/resources/strings/ui.dart' show r;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show EarningsReportEntity, HighlightsEntity, PeriodSummaryEntity;

extension HighlightsEntityExtensions on HighlightsEntity {
  String get referralLink =>
      https +
      colon +
      forwardSlash +
      forwardSlash +
      dotenv.env[skyTradeServerSignUrl]! +
      forwardSlash +
      r +
      forwardSlash +
      referralCode;
}

extension EarningsReportEntityExtensions on EarningsReportEntity {
  int get thisYearsThirdQuarterPeriodPoints =>
      _thisYearsThirdQuarterPeriodSummary.fold(
        zero,
        (previousResult, periodSummaryEntity) =>
            previousResult + periodSummaryEntity.totalPoints,
      );

  List<PeriodSummaryEntity> get _thisYearsThirdQuarterPeriodSummary =>
      periodSummaries
          .where(
            (periodSummaryEntity) =>
                periodSummaryEntity.periodStartDate.year ==
                    DateTime.now().year &&
                periodSummaryEntity.periodEndDate.year == DateTime.now().year &&
                (periodSummaryEntity.periodStartDate.month >= DateTime.august &&
                    periodSummaryEntity.periodStartDate.month <=
                        DateTime.october) &&
                (periodSummaryEntity.periodEndDate.month >= DateTime.august &&
                    periodSummaryEntity.periodEndDate.month <=
                        DateTime.october),
          )
          .toList();

  int get thisYearsSecondQuarterPeriodPoints =>
      _thisYearsSecondQuarterPeriodSummary.fold(
        zero,
        (previousResult, periodSummaryEntity) =>
            previousResult + periodSummaryEntity.totalPoints,
      );

  List<PeriodSummaryEntity> get _thisYearsSecondQuarterPeriodSummary =>
      periodSummaries
          .where(
            (periodSummaryEntity) =>
                periodSummaryEntity.periodStartDate.year ==
                    DateTime.now().year &&
                periodSummaryEntity.periodEndDate.year == DateTime.now().year &&
                (periodSummaryEntity.periodStartDate.month >= DateTime.may &&
                    periodSummaryEntity.periodStartDate.month <=
                        DateTime.july) &&
                (periodSummaryEntity.periodEndDate.month >= DateTime.may &&
                    periodSummaryEntity.periodEndDate.month <= DateTime.july),
          )
          .toList();

  int get thisYearsFirstQuarterPeriodPoints =>
      _thisYearsFirstQuarterPeriodSummary.fold(
        zero,
        (previousResult, periodSummaryEntity) =>
            previousResult + periodSummaryEntity.totalPoints,
      );

  List<PeriodSummaryEntity> get _thisYearsFirstQuarterPeriodSummary =>
      periodSummaries
          .where(
            (periodSummaryEntity) =>
                periodSummaryEntity.periodStartDate.year ==
                    DateTime.now().year &&
                periodSummaryEntity.periodEndDate.year == DateTime.now().year &&
                (periodSummaryEntity.periodStartDate.month >=
                        DateTime.february &&
                    periodSummaryEntity.periodStartDate.month <=
                        DateTime.april) &&
                (periodSummaryEntity.periodEndDate.month >= DateTime.february &&
                    periodSummaryEntity.periodEndDate.month <= DateTime.april),
          )
          .toList();

  int get lastYearsFourthQuarterPeriodPoints =>
      _lastYearsFourthQuarterPeriodSummary.fold(
        zero,
        (previousResult, periodSummaryEntity) =>
            previousResult + periodSummaryEntity.totalPoints,
      );

  List<PeriodSummaryEntity> get _lastYearsFourthQuarterPeriodSummary =>
      periodSummaries
          .where(
            (periodSummaryEntity) =>
                (periodSummaryEntity.periodStartDate.year ==
                        DateTime.now().year - one ||
                    periodSummaryEntity.periodStartDate.year ==
                        DateTime.now().year) &&
                (periodSummaryEntity.periodEndDate.year ==
                        DateTime.now().year - one ||
                    periodSummaryEntity.periodEndDate.year ==
                        DateTime.now().year) &&
                (periodSummaryEntity.periodStartDate.month >=
                        DateTime.november &&
                    periodSummaryEntity.periodStartDate.month <=
                        DateTime.january) &&
                (periodSummaryEntity.periodEndDate.month >= DateTime.november &&
                    periodSummaryEntity.periodEndDate.month <=
                        DateTime.january),
          )
          .toList();
}
