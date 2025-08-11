// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BuildContext,
        ColoredBox,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:intl/intl.dart' show DateFormat;
import 'package:sky_trade/core/resources/colors.dart'
    show hex030229, hex5BC4FF, hex838187;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiveDotOneSeven,
        oneDotSevenTwo,
        sevenDotSevenFive,
        threeFifteenDotFourSeven,
        zero;
import 'package:sky_trade/core/resources/strings/ui.dart' show hmma;
import 'package:sky_trade/core/utils/enums/networking.dart' show RangeFilter;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/typedefs/ui.dart' show Chart;
import 'package:sky_trade/features/drone_insights/domain/entities/drone_insights_entity.dart'
    show FilteredDroneInsightsEntity;
import 'package:syncfusion_flutter_charts/charts.dart'
    show
        CartesianSeries,
        CategoryAxis,
        NumericAxis,
        SfCartesianChart,
        SplineSeries;

class Graph extends StatelessWidget {
  const Graph({
    required this.rangeFilter,
    this.filteredDroneInsightsEntity,
    super.key,
  });

  final RangeFilter rangeFilter;
  final FilteredDroneInsightsEntity? filteredDroneInsightsEntity;

  @override
  Widget build(BuildContext context) => Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            height: threeFifteenDotFourSeven,
            child: SfCartesianChart(
              primaryXAxis: CategoryAxis(
                labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: fiveDotOneSeven,
                      height: sevenDotSevenFive / fiveDotOneSeven,
                      color: hex030229,
                    ),
              ),
              primaryYAxis: NumericAxis(
                labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: fiveDotOneSeven,
                      height: sevenDotSevenFive / fiveDotOneSeven,
                      color: hex030229,
                    ),
              ),
              series: switch (
                  filteredDroneInsightsEntity?.intervals.isEmpty ?? true) {
                true => [],
                false => <CartesianSeries<Chart, String>>[
                    SplineSeries<Chart, String>(
                      dataSource: chartObservedDrones(),
                      xValueMapper: (chart, _) => chart.xAxis,
                      yValueMapper: (chart, _) => chart.yAxis,
                      color: hex5BC4FF,
                      width: oneDotSevenTwo,
                    ),
                  ],
              },
            ),
          ),
          if (filteredDroneInsightsEntity?.intervals.isEmpty ?? false)
            ColoredBox(
              color: Theme.of(
                context,
              ).scaffoldBackgroundColor,
              child: Text(
                context.localize.thereIsNotEnoughDataToPlotTheGraph,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: hex838187,
                    ),
              ),
            ),
        ],
      );

  List<Chart> chartObservedDrones() {
    final observations = <Chart>[];

    final intervals = filteredDroneInsightsEntity?.intervals;

    if (intervals == null) {
      return observations;
    }

    for (var interval = zero; interval < intervals.length; interval++) {
      final label = switch (rangeFilter) {
        RangeFilter.oneDay => DateFormat(
            hmma,
          ).format(
            intervals[interval].from,
          ),
        RangeFilter.oneWeek => DateFormat.EEEE().format(
            intervals[interval].from,
          ),
        RangeFilter.oneMonth => DateFormat.MMMMd().format(
            intervals[interval].from,
          ),
        RangeFilter.oneYear => DateFormat.MMM().format(
            intervals[interval].from,
          ),
      };

      observations.add(
        (
          xAxis: label,
          yAxis: intervals[interval].value,
        ),
      );
    }

    return observations;
  }
}
