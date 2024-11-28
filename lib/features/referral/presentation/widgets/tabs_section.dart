import 'package:dartz/dartz.dart' show Function1;
import 'package:flutter/material.dart'
    show
        Axis,
        BuildContext,
        Center,
        EdgeInsetsDirectional,
        ListView,
        Padding,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_trade/core/resources/colors.dart'
    show hex1A222222, hex222222, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        five,
        fortyFourDotNil,
        one,
        seventeenDotNil,
        tenDotNil,
        twentySixDotNil,
        twentyTwoDotNil,
        two,
        zero;
import 'package:sky_trade/core/utils/enums/ui.dart' show ReferralTab;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';

class TabsSection extends StatelessWidget {
  const TabsSection({
    required this.onTabItemSelected,
    required this.selectedTabItemIndex,
    super.key,
  });

  final Function1<int, void> onTabItemSelected;
  final int selectedTabItemIndex;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: fortyFourDotNil,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: ReferralTab.values.length + two,
          itemBuilder: (_, index) => switch (index == zero || index == five) {
            true => const SizedBox(
                width: twentySixDotNil,
              ),
            false => Card(
                cornerRadius: tenDotNil,
                backgroundColor: switch (selectedTabItemIndex == index - one) {
                  true => hex222222,
                  false => hex1A222222,
                },
                onTap: () => onTabItemSelected(
                  index - one,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                      vertical: tenDotNil,
                      horizontal: fifteenDotNil,
                    ),
                    child: Text(
                      _computeLocalizedTabItemTextUsing(
                        context,
                        index: index - one,
                      ),
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(
                            fontSize: fifteenDotNil,
                            height: twentyTwoDotNil / fifteenDotNil,
                            color: switch (
                                selectedTabItemIndex == index - one) {
                              true => hexFFFFFF,
                              false => hex222222,
                            },
                          ),
                    ),
                  ),
                ),
              ),
          },
          separatorBuilder: (_, __) => const SizedBox(
            width: seventeenDotNil,
          ),
        ),
      );

  String _computeLocalizedTabItemTextUsing(
    BuildContext context, {
    required int index,
  }) =>
      switch (ReferralTab.values[index]) {
        ReferralTab.theProgram => context.localize.theProgram,
        ReferralTab.share => context.localize.share,
        ReferralTab.history => context.localize.history,
        ReferralTab.leaderboard => context.localize.leaderboard,
      };
}
