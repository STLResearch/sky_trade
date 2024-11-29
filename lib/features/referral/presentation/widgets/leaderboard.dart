import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        FontWeight,
        MediaQuery,
        Padding,
        RichText,
        SizedBox,
        StatelessWidget,
        Text,
        TextSpan,
        Theme,
        Widget,
        WidgetSpan;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex4285F4, hexD9D9D9, hexE9F5FE;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fortyDotNil,
        fortyNineDotNil,
        oneDotNil,
        sixtyDotNil,
        tenDotNil,
        thirtyFourDotNil,
        thirtyOneDotNil,
        thirtySixDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twentyThreeDotNil,
        twentyTwoDotFive;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard_table.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard_table.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: twentyDotNil,
          ),
          // const LeaderboardTable(
          //   leaderboardEntity: leaderboardEntity,
          // ),
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
                TextSpan(
                  text: '5,435',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: fortyDotNil,
                        height: sixtyDotNil / fortyDotNil,
                        color: hex4285F4,
                      ),
                ),
                const WidgetSpan(
                  child: SizedBox(
                    width: tenDotNil,
                  ),
                ),
                TextSpan(
                  text: context.localize.skyPoints,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: twentyFourDotNil,
                        height: thirtySixDotNil / twentyFourDotNil,
                        color: hex4285F4,
                      ),
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
          const SizedBox(
            height: fortyNineDotNil,
          ),
        ],
      );
}
