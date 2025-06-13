import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        Expanded,
        Navigator,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextOverflow,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex1E1E1E;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotFive,
        fourDotNil,
        fourteenDotNil,
        nilDotNil,
        nineDotNil,
        one,
        thirtyTwoDotNil,
        twentyDotNil;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show rewardsLeaderboardRoutePath;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/card.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/how_it_works.dart';

class RewardsBottomSection extends StatelessWidget {
  const RewardsBottomSection({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HowItWorks(),
          const SizedBox(
            height: twentyDotNil,
          ),
          Card(
            hasBorder: true,
            cornerRadius: twentyDotNil,
            verticalPadding: eighteenDotFive,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    context.localize.viewLeaderboard,
                    maxLines: one,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(
                          fontSize: fourteenDotNil,
                          height: thirtyTwoDotNil / fourteenDotNil,
                          letterSpacing: nilDotNil,
                        ),
                  ),
                ),
                const SizedBox(
                  width: eightDotNil,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: hex1E1E1E,
                    borderRadius: BorderRadiusDirectional.circular(
                      nineDotNil,
                    ),
                  ),
                  padding: const EdgeInsetsDirectional.all(
                    fourDotNil,
                  ),
                  child: Assets.svgs.arrowRightWhite.svg(),
                ),
              ],
            ),
            onTap: () => Navigator.of(
              context,
            ).pushNamed(
              rewardsLeaderboardRoutePath,
            ),
          ),
        ],
      );
}
