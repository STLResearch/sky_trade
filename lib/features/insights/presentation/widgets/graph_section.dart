import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Column,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        Wrap,
        WrapAlignment,
        WrapCrossAlignment;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, ReadContext;
import 'package:sky_trade/core/resources/colors.dart' show hex838187;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show threeDotEightNine, threeFifteenDotFourSeven, twentyFourDotNil;
import 'package:sky_trade/core/utils/enums/ui.dart' show Period;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/insights/presentation/blocs/insights_bloc/insights_bloc.dart'
    show InsightsBloc, InsightsState;
import 'package:sky_trade/features/insights/presentation/widgets/filter_card.dart';
import 'package:sky_trade/features/insights/presentation/widgets/graph.dart';

class GraphSection extends StatelessWidget {
  const GraphSection({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<InsightsBloc>.value(
        value: context.read<InsightsBloc>(),
        child: const GraphSectionView(),
      );
}

class GraphSectionView extends StatefulWidget {
  const GraphSectionView({super.key});

  @override
  State<GraphSectionView> createState() => _GraphSectionViewState();
}

class _GraphSectionViewState extends State<GraphSectionView> {
  late final ValueNotifier<Period> _periodNotifier;

  @override
  void initState() {
    _periodNotifier = ValueNotifier<Period>(
      Period.oneDay,
    );

    super.initState();
  }

  @override
  void dispose() {
    _periodNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Wrap(
              alignment: WrapAlignment.end,
              runAlignment: WrapAlignment.end,
              crossAxisAlignment: WrapCrossAlignment.end,
              spacing: threeDotEightNine,
              runSpacing: threeDotEightNine,
              children: List<Widget>.generate(
                Period.values.length,
                (index) => ValueListenableBuilder<Period>(
                  valueListenable: _periodNotifier,
                  builder: (_, periodNotifierValue, __) =>
                      BlocBuilder<InsightsBloc, InsightsState>(
                    builder: (_, insightsState) => FilterCard(
                      text: _computeFilterTextUsing(
                        index,
                      ),
                      selected: periodNotifierValue == Period.values[index],
                      disabled: insightsState.maybeWhen(
                        gotInsights: (insightsEntity) =>
                            insightsEntity.devices.isEmpty,
                        orElse: () => true,
                      ),
                      onTap: () => _periodNotifier.value = Period.values[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
          ValueListenableBuilder<Period>(
            valueListenable: _periodNotifier,
            builder: (_, periodNotifierValue, __) =>
                BlocBuilder<InsightsBloc, InsightsState>(
              builder: (_, insightsState) => insightsState.maybeWhen(
                gotInsights: (insightsEntity) => Graph(
                  period: periodNotifierValue,
                  insightsEntity: insightsEntity,
                ),
                failedToGetInsights: (_) => SizedBox(
                  height: threeFifteenDotFourSeven,
                  child: Center(
                    child: Text(
                      context.localize.weCouldNotLoadTheGraph,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: hex838187,
                          ),
                    ),
                  ),
                ),
                orElse: () => SizedBox(
                  height: threeFifteenDotFourSeven,
                  child: Center(
                    child: SizedBox(
                      width: twentyFourDotNil,
                      height: twentyFourDotNil,
                      child: CircularProgressIndicator(
                        color: Theme.of(
                          context,
                        ).scaffoldBackgroundColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );

  String _computeFilterTextUsing(int index) => switch (Period.values[index]) {
        Period.oneDay => context.localize.oneDay,
        Period.oneWeek => context.localize.oneWeek,
        Period.oneMonth => context.localize.oneMonth,
        Period.oneYear => context.localize.oneYear,
      };
}
