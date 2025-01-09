// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        AlwaysScrollableScrollPhysics,
        AppBar,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Column,
        Divider,
        EdgeInsetsDirectional,
        FontWeight,
        IconButton,
        ListView,
        MainAxisAlignment,
        MediaQuery,
        Navigator,
        NeverScrollableScrollPhysics,
        RefreshIndicator,
        Row,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex4285F4, hex838187;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fourteenDotNil,
        oneDotNil,
        sixteenDotNil,
        sixteenDotOne,
        tenDotNil,
        twentyEightDotOneTwo,
        twentyFourDotNil,
        twentyOneDotNil,
        twentySevenDotEightNine,
        twentySixDotNil,
        twoDotFive;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/insights/presentation/blocs/insights_bloc/insights_bloc.dart'
    show InsightsBloc, InsightsEvent, InsightsState;
import 'package:sky_trade/features/insights/presentation/widgets/graph_section.dart'
    show GraphSection;
import 'package:sky_trade/features/insights/presentation/widgets/tracked_drone.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class InsightsScreen extends StatelessWidget {
  const InsightsScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<InsightsBloc>(
        create: (_) => serviceLocator(),
        child: const InsightsScreenView(),
      );
}

class InsightsScreenView extends StatefulWidget {
  const InsightsScreenView({super.key});

  @override
  State<InsightsScreenView> createState() => _InsightsScreenViewState();
}

class _InsightsScreenViewState extends State<InsightsScreenView> {
  @override
  void initState() {
    _getInsights();

    super.initState();
  }

  void _getInsights() => context.read<InsightsBloc>().add(
        const InsightsEvent.getInsights(),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Assets.svgs.chevronLeft.svg(),
            onPressed: () => Navigator.of(
              context,
            ).pop(),
          ),
          title: Text(
            context.localize.insights,
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async => _getInsights(),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: twentySixDotNil,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: twentySevenDotEightNine,
                ),
                const GraphSection(),
                const SizedBox(
                  height: twentyEightDotOneTwo,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      context.localize.totalTrackedDrones,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: fourteenDotNil,
                            height: sixteenDotOne / fourteenDotNil,
                            color: hex4285F4,
                          ),
                    ),
                    const SizedBox(
                      width: sixteenDotNil,
                    ),
                    BlocBuilder<InsightsBloc, InsightsState>(
                      builder: (_, insightsState) => insightsState.maybeWhen(
                        gotInsights: (insightsEntity) => Text(
                          insightsEntity.devicesObserved.toString(),
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: fourteenDotNil,
                                    height: twentyOneDotNil / fourteenDotNil,
                                    color: hex4285F4,
                                  ),
                        ),
                        orElse: () => const SizedBox.shrink(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: tenDotNil,
                ),
                const Divider(
                  height: oneDotNil,
                ),
                const SizedBox(
                  height: tenDotNil,
                ),
                BlocBuilder<InsightsBloc, InsightsState>(
                  builder: (_, insightsState) => insightsState.maybeWhen(
                    gotInsights: (insightsEntity) =>
                        switch (insightsEntity.devices.isEmpty) {
                      true => SizedBox(
                          height: MediaQuery.of(
                                context,
                              ).size.height /
                              twoDotFive,
                          child: Center(
                            child: Text(
                              context.localize
                                  .thereIsNotEnoughDataToDisplayYourTotalTrackedDrones,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: hex838187,
                                  ),
                            ),
                          ),
                        ),
                      false => ListView.separated(
                          shrinkWrap: true,
                          primary: false,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: insightsEntity.devices.length,
                          itemBuilder: (_, index) => TrackedDrone(
                            macAddress: insightsEntity.devices[index].remoteData
                                .connection.macAddress,
                            lastUpdate: insightsEntity.devices[index].updatedAt,
                          ),
                          separatorBuilder: (_, __) => const SizedBox(
                            height: tenDotNil,
                          ),
                        ),
                    },
                    failedToGetInsights: (_) => SizedBox(
                      height: MediaQuery.of(
                            context,
                          ).size.height /
                          twoDotFive,
                      child: Center(
                        child: Text(
                          context.localize.weCouldNotLoadYourData,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: hex838187,
                                  ),
                        ),
                      ),
                    ),
                    orElse: () => SizedBox(
                      height: MediaQuery.of(
                            context,
                          ).size.height /
                          twoDotFive,
                      child: const Center(
                        child: SizedBox(
                          width: twentyFourDotNil,
                          height: twentyFourDotNil,
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: twentySevenDotEightNine,
                ),
              ],
            ),
          ),
        ),
      );
}
