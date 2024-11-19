import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/navigation_tab_widget.dart';

class ScreenNavigatorWidget extends StatelessWidget {
  const ScreenNavigatorWidget({
    required this.selectedTabIndex,
    required this.scrollController,
    required this.onTabSelected,
    super.key,
  });

  final int selectedTabIndex;
  final ScrollController scrollController;
  final Function1<int, void> onTabSelected;

  @override
  Widget build(BuildContext context) {
    final labels = [
      null,
      context.localize.theProgram,
      context.localize.share,
      context.localize.history,
      context.localize.leaderboard,
      null,
    ];

    return SizedBox(
      height: 47,
      child: ListView.separated(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => (labels[index] != null)
            ? NavigationTab(
                navigationLabel: labels[index]!,
                onTap: () {
                  onTabSelected.call(index);
                },
                clickState: index == selectedTabIndex,
              )
            : const SizedBox(width: 20),
        separatorBuilder: (context, index) => const SizedBox(width: 5),
      ),
    );
  }
}
