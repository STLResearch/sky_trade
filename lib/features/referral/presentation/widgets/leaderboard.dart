import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        Divider,
        FontWeight,
        PlaceholderAlignment,
        RichText,
        SizedBox,
        StatelessWidget,
        Text,
        TextSpan,
        Theme,
        Widget,
        WidgetSpan;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/resources/colors.dart'
    show hex4285F4, hexD9D9D9, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fortyDotNil,
        fortyNineDotNil,
        oneDotNil,
        sixtyDotNil,
        tenDotNil,
        thirtySixDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twentyThreeDotNil,
        twentyTwoDotFive,
        two,
        zero;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/sky_points_bloc/sky_points_bloc.dart'
    show SkyPointsBloc, SkyPointsState;
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard_table.dart';
import 'package:sky_trade/features/referral/presentation/widgets/quarterly_reports_section.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: twentyDotNil,
          ),
          const LeaderboardTable(),
          const SizedBox(
            height: twentyThreeDotNil,
          ),
          Text(
            context.localize.yourEarnings,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          Text(
            context.localize.lifetimeEarnings,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(
                  fontSize: fifteenDotNil,
                  height: twentyTwoDotFive / fifteenDotNil,
                  color: hex4285F4,
                ),
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: BlocBuilder<SkyPointsBloc, SkyPointsState>(
                    builder: (_, skyPointsState) => Skeletonizer(
                      effect: skyPointsState.maybeWhen(
                        failedToGetSkyPoints: (_) => const SoldColorEffect(
                          color: hexEBEBF4,
                        ),
                        orElse: () => ShimmerEffect(
                          highlightColor: Theme.of(
                            context,
                          ).scaffoldBackgroundColor,
                        ),
                      ),
                      enabled: skyPointsState.maybeWhen(
                        gotSkyPoints: (_) => false,
                        orElse: () => true,
                      ),
                      child: Text(
                        skyPointsState.maybeWhen(
                          gotSkyPoints: (skyPointsEntity) =>
                              skyPointsEntity.stats.sum.point?.toString() ??
                              zero.toString(),
                          orElse: () => BoneMock.chars(
                            two,
                          ),
                        ),
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: fortyDotNil,
                              height: sixtyDotNil / fortyDotNil,
                              color: hex4285F4,
                            ),
                      ),
                    ),
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
                const WidgetSpan(
                  child: SizedBox(
                    width: tenDotNil,
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
                WidgetSpan(
                  child: Text(
                    context.localize.skyPoints,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: twentyFourDotNil,
                          height: thirtySixDotNil / twentyFourDotNil,
                          color: hex4285F4,
                        ),
                  ),
                  alignment: PlaceholderAlignment.middle,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          const Divider(
            color: hexD9D9D9,
            height: oneDotNil,
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          const QuarterlyReportsSection(),
          const SizedBox(
            height: fortyNineDotNil,
          ),
        ],
      );
}
