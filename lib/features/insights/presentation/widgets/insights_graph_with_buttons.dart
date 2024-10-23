import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        StatelessWidget,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:sky_trade/features/insights/presentation/widgets/graph_time_buttons.dart';
import 'package:sky_trade/features/insights/presentation/widgets/insights_graph.dart';

class InsightsGraphWithButtons extends StatelessWidget {
  InsightsGraphWithButtons({super.key});

  final ValueNotifier<String> _selectedPeriodNotifier =
      ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GraphTimeButtons(selectedPeriodNotifier: _selectedPeriodNotifier),
        ValueListenableBuilder<String>(
          valueListenable: _selectedPeriodNotifier,
          builder: (context, selectedPeriod, child) {
            return InsightsGraph(selectedPeriod: selectedPeriod);
          },
        ),
      ],
    );
  }
}
