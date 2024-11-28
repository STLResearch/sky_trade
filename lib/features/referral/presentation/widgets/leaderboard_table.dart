import 'package:flutter/material.dart'
    show
        BoxDecoration,
        BoxShape,
        BuildContext,
        Column,
        Container,
        DataTable,
        Divider,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        MediaQuery,
        Padding,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex4285F4, hex5D7285, hexD9D9D9, hexE9F5FE, hexF5F5F5;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fifteenDotNil,
        oneDotNil,
        six,
        sixDotNil,
        thirtyFourDotNil,
        thirtyOneDotNil,
        twelveDotNil,
        twentyFourDotNil,
        twentyThreeDotNil,
        twentyTwoDotFive;
import 'package:sky_trade/core/utils/enums/ui.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';

import '../../domain/entities/leaderboard_entity.dart';

class LeaderboardTable extends StatelessWidget {
  const LeaderboardTable({
    required this.leaderboardEntity,
    super.key,
  });

  final LeaderboardEntity leaderboardEntity;

  @override
  Widget build(BuildContext context) => Card(
        width: MediaQuery.sizeOf(
          context,
        ).width,
        cornerRadius: eightDotNil,
        backgroundColor: Theme.of(
          context,
        ).scaffoldBackgroundColor,
        elevated: true,
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            vertical: thirtyOneDotNil,
            horizontal: thirtyFourDotNil,
          ),
          child: Column(
            children: [
              Text(
                context.localize.currentPeriodChallengeLeaderboard,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const SizedBox(
                height: twentyThreeDotNil,
              ),
              Row(
                children: List<Widget>.generate(
                  Leaderboard.values.length,
                  (index) => Expanded(
                    child: Text(
                      switch (Leaderboard.values[index]) {
                        Leaderboard.user => context.localize.user,
                        Leaderboard.balance => context.localize.balance,
                      },
                      textAlign: switch (Leaderboard.values[index]) {
                        Leaderboard.user => TextAlign.start,
                        Leaderboard.balance => TextAlign.end,
                      },
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(
                            fontSize: fifteenDotNil,
                            height: twentyTwoDotFive / fifteenDotNil,
                          ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: sixDotNil,
              ),
              ...List<Widget>.generate(
                six,
                (columnIndex) => Column(
                  children: [
                    const SizedBox(
                      height: twelveDotNil,
                    ),
                    Row(
                      children: List<Widget>.generate(
                        Leaderboard.values.length,
                        (rowIndex) => Expanded(
                          child: Text(
                            switch (Leaderboard.values[rowIndex]) {
                              Leaderboard.user => context.localize.user,
                              Leaderboard.balance => context.localize.balance,
                            },
                            textAlign: switch (Leaderboard.values[rowIndex]) {
                              Leaderboard.user => TextAlign.start,
                              Leaderboard.balance => TextAlign.end,
                            },
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                                  fontSize: fifteenDotNil,
                                  height: twentyTwoDotFive / fifteenDotNil,
                                ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: twelveDotNil,
                    ),
                    const Divider(
                      height: oneDotNil,
                      color: hexF5F5F5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
            ],
          ),
        ),
      );

  Widget _buildPageBubbleWith({
    required String pageNumber,
  }) =>
      Container(
        decoration: const BoxDecoration(
          color: hex5D7285,
          shape: BoxShape.circle,
        ),
      );
}
