import 'dart:math' show Random;

import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        Container,
        EdgeInsets,
        FontWeight,
        Radius,
        StatelessWidget,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/colors.dart' show hex030229;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiftyTwoDotFourOne,
        fiveDotOneSeven,
        fourDotThreeOne,
        nilDotNil,
        sevenDotSevenFive,
        threeFifteenDotNil,
        twentyFourDotNil,
        twentySixDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class InsightsGraph extends StatelessWidget {
  const InsightsGraph({required this.selectedPeriod, super.key});

  final String selectedPeriod;

  @override
  Widget build(BuildContext context) {
    final chartData = _getChartData(context, selectedPeriod);

    return Center(
      child: Container(
        margin: const EdgeInsets.only(
          top: fiftyTwoDotFourOne,
          left: twentySixDotNil,
          right: twentyFourDotNil,
          bottom: threeFifteenDotNil,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              fourDotThreeOne,
            ),
          ),
        ),
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(
            labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex030229,
                  fontWeight: FontWeight.w400,
                  fontSize: fiveDotOneSeven,
                  height: sevenDotSevenFive / fiveDotOneSeven,
                ),
            majorGridLines: const MajorGridLines(
              width: nilDotNil,
            ),
          ),
          primaryYAxis: NumericAxis(
            labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex030229,
                  fontWeight: FontWeight.w400,
                  fontSize: fiveDotOneSeven,
                  height: sevenDotSevenFive / fiveDotOneSeven,
                ),
          ),
          series: <CartesianSeries>[
            SplineSeries<ChartData, String>(
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
            )
          ],
        ),
      ),
    );
  }

  List<ChartData> _getChartData(BuildContext context, String period) {
    if (period == context.localize.oneDay) {
      return _getDayData(context);
    } else if (period == context.localize.oneWeek) {
      return _getWeekData(context);
    } else if (period == context.localize.oneMonth) {
      return _getMonthData(context);
    } else if (period == context.localize.oneYear) {
      return _getYearData(context);
    } else {
      return _getWeekData(context); // Default to week data
    }
  }

  List<ChartData> _getDayData(BuildContext context) {
    return List.generate(
      24,
      (index) => ChartData('$index:00', Random().nextDouble() * 50),
    );
  }

  List<ChartData> _getWeekData(BuildContext context) {
    final days = <String>[
      context.localize.monday,
      context.localize.tuesday,
      context.localize.wednesday,
      context.localize.thursday,
      context.localize.friday,
      context.localize.saturday,
      context.localize.sunday,
    ];
    return [
      ChartData(days[0], 35),
      ChartData(days[1], 13),
      ChartData(days[2], 34),
      ChartData(days[3], 27),
      ChartData(days[4], 40),
      ChartData(days[5], 30),
      ChartData(days[6], 22),
    ];
  }

  List<ChartData> _getMonthData(BuildContext context) {
    return List.generate(
      30,
      (index) => ChartData('${index + 1}', Random().nextDouble() * 50),
    );
  }

  List<ChartData> _getYearData(BuildContext context) {
    final months = [
      context.localize.jan,
      context.localize.feb,
      context.localize.mar,
      context.localize.apr,
      context.localize.may,
      context.localize.jun,
      context.localize.jul,
      context.localize.aug,
      context.localize.sep,
      context.localize.oct,
      context.localize.nov,
      context.localize.dec,
    ];
    return months
        .map((month) => ChartData(month, Random().nextDouble() * 50))
        .toList();
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double? y;
}
