// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BuildContext,
        Column,
        State,
        StatefulWidget,
        StatelessWidget,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        Wrap,
        WrapAlignment,
        WrapCrossAlignment;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocListener, BlocProvider, ReadContext;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show threeDotEightNine;
import 'package:sky_trade/core/utils/enums/networking.dart' show RangeFilter;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/drone_insights/presentation/blocs/filter_drone_insights_bloc/filter_drone_insights_bloc.dart'
    show
        FilterDroneInsightsBloc,
        FilterDroneInsightsEvent,
        FilterDroneInsightsState;
import 'package:sky_trade/features/drone_insights/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/drone_insights/presentation/widgets/filter_card.dart';
import 'package:sky_trade/features/drone_insights/presentation/widgets/graph.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class GraphSection extends StatelessWidget {
  const GraphSection({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<FilterDroneInsightsBloc>(
        create: (_) => serviceLocator(),
        child: const GraphSectionView(),
      );
}

class GraphSectionView extends StatefulWidget {
  const GraphSectionView({super.key});

  @override
  State<GraphSectionView> createState() => _GraphSectionViewState();
}

class _GraphSectionViewState extends State<GraphSectionView> {
  late final ValueNotifier<RangeFilter> _rangeFilterNotifier;

  @override
  void initState() {
    _rangeFilterNotifier = ValueNotifier<RangeFilter>(
      RangeFilter.oneDay,
    );

    _filterDroneInsightsBy(
      _rangeFilterNotifier.value,
    );

    super.initState();
  }

  void _filterDroneInsightsBy(
    RangeFilter rangeFilter,
  ) =>
      context.read<FilterDroneInsightsBloc>().add(
            FilterDroneInsightsEvent.filterInsights(
              rangeFilter: rangeFilter,
            ),
          );

  @override
  void dispose() {
    _rangeFilterNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<FilterDroneInsightsBloc, FilterDroneInsightsState>(
        listener: (_, filterDroneInsightsState) {
          filterDroneInsightsState.whenOrNull(
            failedToFilterInsights: (_) {
              AlertSnackBar.show(
                context,
                message: context.localize
                    .weCouldNotLoadTheGraphTapOnAnyOfTheFiltersAgainToRefreshTheGraph,
              );
            },
          );
        },
        child: Column(
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
                  RangeFilter.values.length,
                  (index) => ValueListenableBuilder<RangeFilter>(
                    valueListenable: _rangeFilterNotifier,
                    builder: (_, rangeFilterNotifierValue, __) => BlocBuilder<
                        FilterDroneInsightsBloc, FilterDroneInsightsState>(
                      builder: (_, filterDroneInsightsState) => FilterCard(
                        text: _computeFilterTextUsing(
                          index,
                        ),
                        selected: rangeFilterNotifierValue ==
                            RangeFilter.values[index],
                        disabled: filterDroneInsightsState.maybeWhen(
                          filteringInsights: () => true,
                          orElse: () => false,
                        ),
                        onTap: () {
                          _rangeFilterNotifier.value =
                              RangeFilter.values[index];

                          _filterDroneInsightsBy(
                            _rangeFilterNotifier.value,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ValueListenableBuilder<RangeFilter>(
              valueListenable: _rangeFilterNotifier,
              builder: (_, rangeFilterNotifierValue, __) => BlocBuilder<
                  FilterDroneInsightsBloc, FilterDroneInsightsState>(
                builder: (_, filterDroneInsightsState) => Graph(
                  rangeFilter: rangeFilterNotifierValue,
                  filteredDroneInsightsEntity:
                      filterDroneInsightsState.whenOrNull(
                    filteredInsights: (filteredDroneInsightsEntity) =>
                        filteredDroneInsightsEntity,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  String _computeFilterTextUsing(int index) =>
      switch (RangeFilter.values[index]) {
        RangeFilter.oneDay => context.localize.oneDay,
        RangeFilter.oneWeek => context.localize.oneWeek,
        RangeFilter.oneMonth => context.localize.oneMonth,
        RangeFilter.oneYear => context.localize.oneYear,
      };
}
