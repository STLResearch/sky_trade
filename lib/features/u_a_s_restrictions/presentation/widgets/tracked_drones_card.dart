// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BuildContext,
        EdgeInsetsDirectional,
        Flexible,
        InkWell,
        MainAxisSize,
        Navigator,
        Padding,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextOverflow,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hexEBEBF4, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiveDotTwoNine,
        fourDotTwoThree,
        nilDotNil,
        one,
        oneDotNil,
        tenDotFive,
        tenDotFiveSeven,
        three,
        twoDotSixFour,
        zero;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show insightsRoutePath;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/drone_insights/presentation/blocs/track_drone_insights_bloc/track_drone_insights_bloc.dart'
    show TrackDroneInsightsBloc, TrackDroneInsightsState;
import 'package:sky_trade/features/u_a_s_restrictions/presentation/widgets/options_card.dart';

class TrackedDronesCard extends StatelessWidget {
  const TrackedDronesCard({super.key});

  @override
  Widget build(BuildContext context) => OptionsCard(
        backgroundColor: hexFFFFFF,
        borderRadius: fourDotTwoThree,
        child: InkWell(
          borderRadius: BorderRadius.circular(
            fourDotTwoThree,
          ),
          onTap: () => Navigator.of(
            context,
          ).pushNamed(
            insightsRoutePath,
            arguments: context.read<TrackDroneInsightsBloc>(),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: fiveDotTwoNine,
              vertical: tenDotFive,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.svgs.iconTrackedDroneBlack.svg(),
                const SizedBox(
                  width: twoDotSixFour,
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
                              switch (
                                  trackedDroneInsightsEntity.devicesObserved) {
                                zero => context.localize.no,
                                _ => trackedDroneInsightsEntity.devicesObserved
                                    .toString(),
                              } +
                              whiteSpace +
                              switch (
                                  trackedDroneInsightsEntity.devicesObserved) {
                                one => context.localize.trackedDrone,
                                _ => context.localize.trackedDrones,
                              },
                          orElse: () => BoneMock.words(
                            three,
                          ),
                        ),
                        maxLines: one,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(
                              fontSize: tenDotFiveSeven,
                              height: oneDotNil,
                              letterSpacing: nilDotNil,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
