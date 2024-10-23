import 'package:flutter/material.dart'
    show
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        EdgeInsets,
        Expanded,
        FontWeight,
        MainAxisSize,
        Padding,
        Positioned,
        Row,
        Scaffold,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex00375A, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        oneHundredDotNil,
        seventeenDotNil,
        sixDotNil,
        thirtyDotNil,
        thirtySixDotNil,
        twentyEightDotNil,
        twentyFourDotNil,
        twentySixDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/insights/presentation/widgets/drone_time_display.dart';
import 'package:sky_trade/features/insights/presentation/widgets/graph_time_buttons.dart';
import 'package:sky_trade/features/insights/presentation/widgets/insights_graph.dart';

class InsightsScreen extends StatefulWidget {
  const InsightsScreen({super.key});

  @override
  State<InsightsScreen> createState() => _InsightsScreenState();
}

class _InsightsScreenState extends State<InsightsScreen> {
  final ValueNotifier<String> _selectedPeriodNotifier =
      ValueNotifier<String>('1 Week');

  @override
  void dispose() {
    _selectedPeriodNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: hex00375A,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                    thirtyDotNil,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Assets.svgs.chevronLeft.svg(
                            width: twentyFourDotNil,
                            height: twentyFourDotNil,
                          ),
                          const SizedBox(
                            width: sixDotNil,
                          ),
                          Text(
                            context.localize.insights,
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                  color: hexFFFFFF,
                                  fontWeight: FontWeight.w600,
                                  fontSize: twentyFourDotNil,
                                  height: thirtySixDotNil / twentyFourDotNil,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ValueListenableBuilder<String>(
                  valueListenable: _selectedPeriodNotifier,
                  builder: (context, selectedPeriod, child) {
                    return InsightsGraph(selectedPeriod: selectedPeriod);
                  },
                ),
              ),
            ],
          ),
          Positioned(
            top: oneHundredDotNil,
            left: seventeenDotNil,
            child: GraphTimeButtons(
              selectedPeriodNotifier: _selectedPeriodNotifier,
            ),
          ),
          const Positioned(
            left: twentySixDotNil,
            right: seventeenDotNil,
            bottom: twentyEightDotNil,
            child: DroneTimeDisplay(),
          ),
        ],
      ),
    );
  }
}
