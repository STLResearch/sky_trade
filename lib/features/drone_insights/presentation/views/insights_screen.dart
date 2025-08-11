// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart' show CupertinoSliverRefreshControl;
import 'package:flutter/material.dart'
    show
        AlwaysScrollableScrollPhysics,
        AppBar,
        BuildContext,
        Center,
        Column,
        CustomScrollView,
        Divider,
        EdgeInsetsDirectional,
        Flexible,
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
        SizedBox,
        SliverPadding,
        SliverToBoxAdapter,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocListener, BlocProvider, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex4285F4, hex838187, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        five,
        fourteenDotNil,
        oneDotNil,
        seventeen,
        sixteenDotNil,
        sixteenDotOne,
        ten,
        tenDotNil,
        thirty,
        three,
        twentyEightDotOneTwo,
        twentyOneDotNil,
        twentySevenDotEightNine,
        twentySixDotNil,
        two,
        twoDotFive,
        zero;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/drone_insights/presentation/blocs/track_drone_insights_bloc/track_drone_insights_bloc.dart'
    show
        TrackDroneInsightsBloc,
        TrackDroneInsightsEvent,
        TrackDroneInsightsState;
import 'package:sky_trade/features/drone_insights/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/drone_insights/presentation/widgets/graph_section.dart'
    show GraphSection;
import 'package:sky_trade/features/drone_insights/presentation/widgets/tracked_drone.dart';

class InsightsScreen extends StatelessWidget {
  const InsightsScreen({
    required this.trackDroneInsightsBloc,
    super.key,
  });

  final TrackDroneInsightsBloc trackDroneInsightsBloc;

  @override
  Widget build(BuildContext context) =>
      BlocProvider<TrackDroneInsightsBloc>.value(
        value: trackDroneInsightsBloc,
        child: const InsightsScreenView(),
      );
}

class InsightsScreenView extends StatelessWidget {
  const InsightsScreenView({super.key});

  Future<void> _trackDroneInsightsUsing(
    BuildContext context,
  ) async {
    context.read<TrackDroneInsightsBloc>().add(
          const TrackDroneInsightsEvent.trackInsights(),
        );
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<TrackDroneInsightsBloc, TrackDroneInsightsState>(
        listener: (_, trackDroneInsightsState) {
          trackDroneInsightsState.whenOrNull(
            failedToTrackInsights: (_) {
              AlertSnackBar.show(
                context,
                message: context.localize
                    .weCouldNotLoadYourTrackedDronesDataSwipeDownToRefresh,
              );
            },
          );
        },
        child: Scaffold(
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
          body: _buildScrollViewUsing(
            context,
          ),
        ),
      );

  Widget _buildScrollViewUsing(
    BuildContext context,
  ) =>
      switch (Platform.isIOS) {
        true => CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              CupertinoSliverRefreshControl(
                onRefresh: () => _trackDroneInsightsUsing(
                  context,
                ),
              ),
              _buildRestOfSliverContentUsing(
                context,
              ),
            ],
          ),
        false => RefreshIndicator(
            onRefresh: () => _trackDroneInsightsUsing(
              context,
            ),
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                _buildRestOfSliverContentUsing(
                  context,
                ),
              ],
            ),
          ),
      };

  Widget _buildRestOfSliverContentUsing(
    BuildContext context,
  ) =>
      SliverPadding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: twentySixDotNil,
        ),
        sliver: SliverToBoxAdapter(
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
                  Flexible(
                    flex: two,
                    child: Text(
                      context.localize.totalTrackedDrones,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(
                            fontSize: fourteenDotNil,
                            height: sixteenDotOne / fourteenDotNil,
                            color: hex4285F4,
                          ),
                    ),
                  ),
                  const SizedBox(
                    width: sixteenDotNil,
                  ),
                  Flexible(
                    child: BlocBuilder<TrackDroneInsightsBloc,
                        TrackDroneInsightsState>(
                      builder: (_, trackDroneInsightsState) => Skeletonizer(
                        effect: trackDroneInsightsState.maybeWhen(
                          failedToTrackInsights: (_) => const SoldColorEffect(
                            color: hexEBEBF4,
                          ),
                          orElse: () => ShimmerEffect(
                            highlightColor: Theme.of(
                              context,
                            ).scaffoldBackgroundColor,
                          ),
                        ),
                        enabled: trackDroneInsightsState.maybeWhen(
                          trackedInsights: (_) => false,
                          orElse: () => true,
                        ),
                        child: Text(
                          trackDroneInsightsState.maybeWhen(
                            trackedInsights: (trackedDroneInsightsEntity) =>
                                trackedDroneInsightsEntity.devicesObserved
                                    .toString(),
                            orElse: () => BoneMock.chars(
                              two,
                            ),
                          ),
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: fourteenDotNil,
                                height: twentyOneDotNil / fourteenDotNil,
                                color: hex4285F4,
                              ),
                        ),
                      ),
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
              BlocBuilder<TrackDroneInsightsBloc, TrackDroneInsightsState>(
                builder: (_, trackDroneInsightsState) =>
                    trackDroneInsightsState.maybeWhen(
                  trackedInsights: (trackedDroneInsightsEntity) =>
                      switch (trackedDroneInsightsEntity.devices.isEmpty) {
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
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                                  color: hex838187,
                                ),
                          ),
                        ),
                      ),
                    false => const SizedBox.shrink(),
                  },
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
              BlocBuilder<TrackDroneInsightsBloc, TrackDroneInsightsState>(
                builder: (_, trackDroneInsightsState) => ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  primary: false,
                  itemCount: trackDroneInsightsState.maybeWhen(
                    trackedInsights: (trackedDroneInsightsEntity) =>
                        trackedDroneInsightsEntity.devices.length,
                    orElse: () => thirty,
                  ),
                  itemBuilder: (_, index) => Skeletonizer(
                    effect: trackDroneInsightsState.maybeWhen(
                      failedToTrackInsights: (_) => const SoldColorEffect(
                        color: hexEBEBF4,
                      ),
                      orElse: () => ShimmerEffect(
                        highlightColor: Theme.of(
                          context,
                        ).scaffoldBackgroundColor,
                      ),
                    ),
                    enabled: trackDroneInsightsState.maybeWhen(
                      trackedInsights: (_) => false,
                      orElse: () => true,
                    ),
                    child: TrackedDrone(
                      macAddress: trackDroneInsightsState.maybeWhen(
                        trackedInsights: (trackedDroneInsightsEntity) =>
                            trackedDroneInsightsEntity.devices[index].remoteData
                                .connection.macAddress,
                        orElse: () => switch (index % three == zero) {
                          true => BoneMock.chars(
                              ten,
                            ),
                          false when index % five == zero => BoneMock.chars(
                              thirty,
                            ),
                          false => BoneMock.chars(
                              seventeen,
                            ),
                        },
                      ),
                      lastUpdate: trackDroneInsightsState.maybeWhen(
                        trackedInsights: (trackedDroneInsightsEntity) =>
                            trackedDroneInsightsEntity.devices[index].updatedAt,
                        orElse: DateTime.now,
                      ),
                    ),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    height: tenDotNil,
                  ),
                ),
              ),
              const SizedBox(
                height: twentySevenDotEightNine,
              ),
            ],
          ),
        ),
      );
}
