import 'package:dartz/dartz.dart' show Function1;
import 'package:flutter/material.dart'
    show
        Axis,
        BuildContext,
        Center,
        EdgeInsetsDirectional,
        GlobalKey,
        Padding,
        Row,
        ScrollController,
        SingleChildScrollView,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/colors.dart'
    show hex1A222222, hex222222, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        nilDotNil,
        seventeenDotNil,
        tenDotNil,
        twentySixDotNil,
        twentyTwoDotNil;
import 'package:sky_trade/core/utils/enums/ui.dart' show ReferralTab;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';

class TabsSection extends StatelessWidget {
  const TabsSection({
    required this.scrollController,
    required this.tabKeys,
    required this.onTabItemSelected,
    required this.selectedTab,
    super.key,
  });

  final ScrollController scrollController;
  final List<GlobalKey> tabKeys;
  final Function1<ReferralTab, void> onTabItemSelected;
  final ReferralTab selectedTab;

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List<Widget>.generate(
            ReferralTab.values.length,
            (index) => Padding(
              key: tabKeys[index],
              padding: EdgeInsetsDirectional.only(
                start: switch (ReferralTab.values[index]) {
                  ReferralTab.theProgram => twentySixDotNil,
                  ReferralTab.share ||
                  ReferralTab.history ||
                  ReferralTab.leaderboard =>
                    seventeenDotNil,
                },
                end: switch (ReferralTab.values[index]) {
                  ReferralTab.theProgram ||
                  ReferralTab.share ||
                  ReferralTab.history =>
                    nilDotNil,
                  ReferralTab.leaderboard => twentySixDotNil,
                },
              ),
              child: Card(
                cornerRadius: tenDotNil,
                backgroundColor: switch (selectedTab.index == index) {
                  true => hex222222,
                  false => hex1A222222,
                },
                onTap: () => onTabItemSelected(
                  ReferralTab.values[index],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                      vertical: tenDotNil,
                      horizontal: fifteenDotNil,
                    ),
                    child: Text(
                      switch (ReferralTab.values[index]) {
                        ReferralTab.theProgram => context.localize.theProgram,
                        ReferralTab.share => context.localize.share,
                        ReferralTab.history => context.localize.history,
                        ReferralTab.leaderboard => context.localize.leaderboard,
                      },
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(
                            fontSize: fifteenDotNil,
                            height: twentyTwoDotNil / fifteenDotNil,
                            color: switch (selectedTab.index == index) {
                              true => hexFFFFFF,
                              false => hex222222,
                            },
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
