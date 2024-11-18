import 'package:flutter/material.dart' show BuildContext;
import 'package:intl/intl.dart' show DateFormat;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eight,
        eleven,
        fiftyNine,
        five,
        four,
        nine,
        one,
        seven,
        six,
        ten,
        three,
        twelve,
        twentyFour,
        twentyThree,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show hyphen;
import 'package:sky_trade/core/resources/strings/ui.dart' show hmma;
import 'package:sky_trade/core/utils/enums/ui.dart' show Period;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/typedefs/ui.dart' show Chart;
import 'package:sky_trade/features/insights/domain/entities/insights_entity.dart'
    show InsightsEntity;

extension InsightsEntityExtensions on InsightsEntity {
  List<Chart> chartObservedUASUsing(
    BuildContext context, {
    required Period period,
  }) =>
      switch (period) {
        Period.oneDay => _observedUASBy3HourIntervalsToday,
        Period.oneWeek => _getObservedUASByDailyIntervalsThisWeekUsing(
            context,
          ),
        Period.oneMonth => _observedUASByWeeklyIntervalsThisMonth,
        Period.oneYear => _getObservedUASByMonthlyIntervalsThisYearUsing(
            context,
          ),
      };

  List<Chart> get _observedUASBy3HourIntervalsToday {
    final now = DateTime.now();
    final beginningOfToday = DateTime(
      now.year,
      now.month,
      now.day,
    );

    final observations = <Chart>[];

    for (var hour = zero; hour < twentyFour; hour += three) {
      final startInterval = beginningOfToday.add(
        Duration(
          hours: hour,
        ),
      );

      final endInterval = startInterval.add(
        const Duration(
          hours: three,
        ),
      );

      final intervalLabel = DateFormat(
        hmma,
      ).format(
        startInterval,
      );

      final observationsWithinCurrentInterval = devices.where(
        (deviceEntity) {
          final updatedAt = deviceEntity.updatedAt;

          return (updatedAt.isAtSameMomentAs(
                    startInterval,
                  ) ||
                  updatedAt.isAfter(
                    startInterval,
                  )) &&
              (updatedAt.isBefore(
                    endInterval,
                  ) ||
                  updatedAt.isAtSameMomentAs(
                    endInterval,
                  ));
        },
      ).toList();

      observations.add(
        (
          xAxis: intervalLabel,
          yAxis: observationsWithinCurrentInterval.length,
        ),
      );
    }

    return observations;
  }

  List<Chart> _getObservedUASByDailyIntervalsThisWeekUsing(
    BuildContext context,
  ) {
    final now = DateTime.now();
    final beginningOfThisWeek = now.subtract(
      Duration(
        days: now.weekday - one,
      ),
    );

    final observations = <Chart>[];

    for (var day = zero; day < seven; day++) {
      final startInterval = DateTime(
        beginningOfThisWeek.year,
        beginningOfThisWeek.month,
        beginningOfThisWeek.day,
      ).add(
        Duration(
          days: day,
        ),
      );

      final endInterval = startInterval.add(
        const Duration(
          days: one,
        ),
      );

      final intervalLabel = switch (startInterval.weekday) {
        one => context.localize.sunday,
        two => context.localize.monday,
        three => context.localize.tuesday,
        four => context.localize.wednesday,
        five => context.localize.thursday,
        six => context.localize.friday,
        _ => context.localize.saturday,
      };

      final observationsWithinCurrentInterval = devices.where(
        (deviceEntity) {
          final updatedAt = deviceEntity.updatedAt;

          return (updatedAt.isAtSameMomentAs(
                    startInterval,
                  ) ||
                  updatedAt.isAfter(
                    startInterval,
                  )) &&
              (updatedAt.isBefore(
                    endInterval,
                  ) ||
                  updatedAt.isAtSameMomentAs(
                    endInterval,
                  ));
        },
      ).toList();

      observations.add(
        (
          xAxis: intervalLabel,
          yAxis: observationsWithinCurrentInterval.length,
        ),
      );
    }

    return observations;
  }

  List<Chart> get _observedUASByWeeklyIntervalsThisMonth {
    final now = DateTime.now();

    final endOfThisMonth = DateTime(
      now.year,
      now.month + one,
    ).subtract(
      const Duration(
        days: one,
      ),
    );
    final totalDaysThisMonth = endOfThisMonth.day;

    final observations = <Chart>[];

    for (var week = one; week <= totalDaysThisMonth; week += seven) {
      final startInterval = DateTime(
        now.year,
        now.month,
        week,
      );

      final endInterval = switch (week + six <= totalDaysThisMonth) {
        true => DateTime(
            now.year,
            now.month,
            week + six,
            twentyThree,
            fiftyNine,
            fiftyNine,
          ),
        false => endOfThisMonth,
      };

      final intervalLabel = DateFormat.MMMd().format(
            startInterval,
          ) +
          hyphen +
          DateFormat.MMMd().format(
            endInterval,
          );

      final observationsWithinCurrentInterval = devices.where(
        (deviceEntity) {
          final updatedAt = deviceEntity.updatedAt;

          return (updatedAt.isAtSameMomentAs(
                    startInterval,
                  ) ||
                  updatedAt.isAfter(
                    startInterval,
                  )) &&
              (updatedAt.isBefore(
                    endInterval,
                  ) ||
                  updatedAt.isAtSameMomentAs(
                    endInterval,
                  ));
        },
      ).toList();

      observations.add(
        (
          xAxis: intervalLabel,
          yAxis: observationsWithinCurrentInterval.length,
        ),
      );
    }

    return observations;
  }

  List<Chart> _getObservedUASByMonthlyIntervalsThisYearUsing(
    BuildContext context,
  ) {
    final now = DateTime.now();

    final observations = <Chart>[];

    for (var month = one; month <= twelve; month++) {
      final startInterval = DateTime(
        now.year,
        month,
      );

      final endInterval = switch (month < twelve) {
        true => DateTime(
            now.year,
            month + one,
          ),
        false => DateTime(
            now.year,
          ),
      };

      final intervalLabel = switch (startInterval.month) {
        one => context.localize.january,
        two => context.localize.february,
        three => context.localize.march,
        four => context.localize.april,
        five => context.localize.may,
        six => context.localize.june,
        seven => context.localize.july,
        eight => context.localize.august,
        nine => context.localize.september,
        ten => context.localize.october,
        eleven => context.localize.november,
        _ => context.localize.december,
      };

      final observationsWithinCurrentInterval = devices.where(
        (deviceEntity) {
          final updatedAt = deviceEntity.updatedAt;

          return (updatedAt.isAtSameMomentAs(
                    startInterval,
                  ) ||
                  updatedAt.isAfter(
                    startInterval,
                  )) &&
              (updatedAt.isBefore(
                    endInterval,
                  ) ||
                  updatedAt.isAtSameMomentAs(
                    endInterval,
                  ));
        },
      ).toList();

      observations.add(
        (
          xAxis: intervalLabel,
          yAxis: observationsWithinCurrentInterval.length,
        ),
      );
    }

    return observations;
  }
}
