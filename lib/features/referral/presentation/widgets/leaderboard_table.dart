import 'package:flutter/material.dart'
    show
        Axis,
        BoxDecoration,
        BoxShape,
        BuildContext,
        Column,
        Container,
        Divider,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        MediaQuery,
        Padding,
        PlaceholderAlignment,
        RichText,
        Row,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        TextSpan,
        TextStyle,
        Theme,
        Widget,
        WidgetSpan;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart' show hex5D7285, hexF5F5F5;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eightDotSevenSeven,
        fifteenDotNil,
        fourteenDotNil,
        nineteenDotTwo,
        one,
        oneDotNil,
        six,
        sixDotNil,
        sixteenDotEight,
        sixteenDotNil,
        tenDotNil,
        thirtyFourDotNil,
        thirtyOneDotNil,
        twelveDotNil,
        twentyFourDotNil,
        twentyThreeDotNil,
        twentyTwoDotFive;
import 'package:sky_trade/core/utils/enums/ui.dart' show Leaderboard;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';

class LeaderboardTable extends StatefulWidget {
  const LeaderboardTable({super.key});

  @override
  State<LeaderboardTable> createState() => _LeaderboardTableState();
}

class _LeaderboardTableState extends State<LeaderboardTable> {
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
                (index) => Column(
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
              Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List<Widget>.generate(
                          20,
                          (index) => _buildPageBubbleWith(
                            pageNumber: index + one,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: twentyThreeDotNil,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: context.localize.next,
                          style: const TextStyle(
                            fontFamily: FontFamily.lato,
                            fontWeight: FontWeight.w700,
                            fontSize: sixteenDotNil,
                            height: nineteenDotTwo / sixteenDotNil,
                            color: hex5D7285,
                          ),
                        ),
                        const WidgetSpan(
                          child: SizedBox(
                            width: eightDotSevenSeven,
                          ),
                          alignment: PlaceholderAlignment.middle,
                        ),
                        WidgetSpan(
                          child: Assets.svgs.nextArrow.svg(),
                          alignment: PlaceholderAlignment.middle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget _buildPageBubbleWith({
    required int pageNumber,
  }) =>
      Container(
        padding: const EdgeInsetsDirectional.symmetric(
          vertical: eightDotNil,
          horizontal: tenDotNil,
        ),
        decoration: const BoxDecoration(
          color: hex5D7285,
          shape: BoxShape.circle,
        ),
        child: Text(
          pageNumber.toString(),
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(
                fontFamily: FontFamily.lato,
                fontSize: fourteenDotNil,
                height: sixteenDotEight / fourteenDotNil,
                color: Theme.of(
                  context,
                ).scaffoldBackgroundColor,
              ),
        ),
      );
}
