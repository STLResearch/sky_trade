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
import 'package:sky_trade/core/resources/colors.dart'
    show hex030229, hex5BC4FF, hex838187;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiveDotOneSeven,
        oneDotSevenTwo,
        sevenDotSevenFive,
        threeFifteenDotFourSeven;
import 'package:sky_trade/core/utils/enums/ui.dart' show Period;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/insights_entity_extensions.dart';
import 'package:sky_trade/core/utils/typedefs/ui.dart' show Chart;
import 'package:sky_trade/features/insights/domain/entities/insights_entity.dart'
    show InsightsEntity;
import 'package:syncfusion_flutter_charts/charts.dart'
    show
        CartesianSeries,
        CategoryAxis,
        NumericAxis,
        SfCartesianChart,
        SplineSeries;

class Graph extends StatelessWidget {
  const Graph({
    required this.period,
    required this.insightsEntity,
    super.key,
  });

  final Period period;
  final InsightsEntity insightsEntity;

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
              series: switch (insightsEntity.devices.isEmpty) {
                true => [],
                false => <CartesianSeries<Chart, String>>[
                    SplineSeries<Chart, String>(
                      dataSource: insightsEntity.chartObservedUASUsing(
                        context,
                        period: period,
                      ),
                      xValueMapper: (chart, _) => chart.xAxis,
                      yValueMapper: (chart, __) => chart.yAxis,
                      color: hex5BC4FF,
                      width: oneDotSevenTwo,
                    ),
                  ],
              },
            ),
          ),
          if (insightsEntity.devices.isEmpty)
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
}
