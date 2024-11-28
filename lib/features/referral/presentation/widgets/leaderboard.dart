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

import '../../domain/entities/leaderboard_entity.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({super.key});

  static const leaderboardEntity = LeaderboardEntity(
    leaderboardData: <List<Map<String, String>>>[
      [
        {'name': 'Alice', 'balance': r'$500'},
        {'name': 'Bob', 'balance': r'$450'},
        {'name': 'Charlie', 'balance': r'$400'},
        {'name': 'Diana', 'balance': r'$350'},
        {'name': 'Ethan', 'balance': r'$300'},
        {'name': 'Frank', 'balance': r'$250'},
      ],
      [
        {'name': 'Grace', 'balance': r'$600'},
        {'name': 'Hank', 'balance': r'$550'},
        {'name': 'Ivy', 'balance': r'$500'},
        {'name': 'Jack', 'balance': r'$450'},
        {'name': 'Kate', 'balance': r'$400'},
        {'name': 'Leo', 'balance': r'$350'},
      ],
      [
        {'name': 'Mia', 'balance': r'$700'},
        {'name': 'Noah', 'balance': r'$650'},
        {'name': 'Olivia', 'balance': r'$600'},
        {'name': 'Paul', 'balance': r'$550'},
        {'name': 'Quinn', 'balance': r'$500'},
        {'name': 'Ryan', 'balance': r'$450'},
      ],
      [
        {'name': 'Sophia', 'balance': r'$800'},
        {'name': 'Thomas', 'balance': r'$750'},
        {'name': 'Uma', 'balance': r'$700'},
        {'name': 'Victor', 'balance': r'$650'},
        {'name': 'Wendy', 'balance': r'$600'},
        {'name': 'Xavier', 'balance': r'$550'},
      ],
      [
        {'name': 'Yara', 'balance': r'$900'},
        {'name': 'Zane', 'balance': r'$850'},
        {'name': 'Aaron', 'balance': r'$800'},
        {'name': 'Bella', 'balance': r'$750'},
        {'name': 'Caleb', 'balance': r'$700'},
        {'name': 'Daisy', 'balance': r'$650'},
      ],
      [
        {'name': 'Eli', 'balance': r'$1000'},
        {'name': 'Fiona', 'balance': r'$950'},
        {'name': 'George', 'balance': r'$900'},
        {'name': 'Holly', 'balance': r'$850'},
        {'name': 'Ian', 'balance': r'$800'},
        {'name': 'Jade', 'balance': r'$750'},
      ],
      [
        {'name': 'Kevin', 'balance': r'$1100'},
        {'name': 'Lily', 'balance': r'$1050'},
        {'name': 'Max', 'balance': r'$1000'},
        {'name': 'Nina', 'balance': r'$950'},
        {'name': 'Oscar', 'balance': r'$900'},
        {'name': 'Penny', 'balance': r'$850'},
      ],
    ],
    earningsEntity: EarningsEntity(
      lifeTimeEarningsAmount: 125345,
      quartileEarningsList: [
        QuartileEarningEntity(
          quartileName: 'Q1 2024 Earnings',
          earningsAmount: 535,
        ),
        QuartileEarningEntity(
          quartileName: 'Q2 2024 Earnings',
          earningsAmount: 123,
        ),
        QuartileEarningEntity(
          quartileName: 'Q3 2024 Earnings',
          earningsAmount: 432,
        ),
        QuartileEarningEntity(
          quartileName: 'Q4 2024 Earnings',
          earningsAmount: 112,
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: twentyDotNil,
          ),
          const LeaderboardTable(
            leaderboardEntity: leaderboardEntity,
          ),
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
