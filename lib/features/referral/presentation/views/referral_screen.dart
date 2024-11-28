import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        ButtonStyle,
        Center,
        Column,
        CrossAxisAlignment,
        Curves,
        EdgeInsetsDirectional,
        ElevatedButton,
        Expanded,
        IconButton,
        MediaQuery,
        Navigator,
        NestedScrollView,
        Padding,
        PageController,
        PageView,
        Scaffold,
        ScrollController,
        SingleChildScrollView,
        Size,
        SizedBox,
        SliverToBoxAdapter,
        State,
        StatefulWidget,
        Text,
        Theme,
        Widget,
        WidgetStatePropertyAll,
        showModalBottomSheet;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex4285F4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fiveHundred,
        fortyEightDotNil,
        fortyThreeDotNil,
        fourteenDotNil,
        seventeenDotNil,
        thirtyTwoDotNil,
        twentyDotNil,
        twentyOneDotEightFive,
        twentyOneDotNil,
        twentySevenDotEightNine,
        twentySixDotNil,
        twentyTwoDotThreeOne,
        zero;
import 'package:sky_trade/core/utils/enums/ui.dart' show ReferralTab;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';
import 'package:sky_trade/features/referral/presentation/widgets/history.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard.dart';
import 'package:sky_trade/features/referral/presentation/widgets/share.dart';
import 'package:sky_trade/features/referral/presentation/widgets/sky_points_reward_details.dart';
import 'package:sky_trade/features/referral/presentation/widgets/tabs_section.dart';
import 'package:sky_trade/features/referral/presentation/widgets/the_program.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  late final PageController _pageController;
  late final ScrollController _tabsScrollController;

  @override
  void initState() {
    _pageController = PageController();
    _tabsScrollController = ScrollController();

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tabsScrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Assets.svgs.chevronLeft.svg(),
            onPressed: () => Navigator.of(
              context,
            ).pop(),
          ),
          title: Text(
            context.localize.referralProgram,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: eighteenDotNil,
            ),
            TabsSection(
              selectedTabItemIndex: zero,
              onTabItemSelected: (tabItemIndex) {
                _pageController.animateToPage(
                  tabItemIndex,
                  duration: const Duration(
                    milliseconds: fiveHundred,
                  ),
                  curve: Curves.easeIn,
                );
              },
            ),
            Expanded(
              child: NestedScrollView(
                headerSliverBuilder: (_, __) => [
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: twentyDotNil,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: twentySixDotNil,
                      ),
                      child: Card(
                        width: MediaQuery.sizeOf(
                          context,
                        ).width,
                        cornerRadius: eightDotNil,
                        backgroundColor: Theme.of(
                          context,
                        ).scaffoldBackgroundColor,
                        elevated: true,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(
                            top: twentySevenDotEightNine,
                            bottom: twentyTwoDotThreeOne,
                            start: seventeenDotNil,
                            end: seventeenDotNil,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                context.localize.skyPointsBalance,
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyLarge,
                              ),
                              const SizedBox(
                                height: twentyOneDotEightFive,
                              ),
                              Text(
                                '50 SKY Points',
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyLarge?.copyWith(
                                      fontSize: thirtyTwoDotNil,
                                      height:
                                          fortyEightDotNil / thirtyTwoDotNil,
                                      color: hex4285F4,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: fourteenDotNil,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: twentySixDotNil,
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          fixedSize: WidgetStatePropertyAll<Size>(
                            Size(
                              MediaQuery.sizeOf(
                                context,
                              ).width,
                              fortyThreeDotNil,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            context.localize.howCanIEarnSkyPoints,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                                  fontSize: fourteenDotNil,
                                  height: twentyOneDotNil / fourteenDotNil,
                                  color: Theme.of(
                                    context,
                                  ).scaffoldBackgroundColor,
                                ),
                          ),
                        ),
                        onPressed: () => showModalBottomSheet<void>(
                          context: context,
                          builder: (_) => const SkyPointsRewardDetails(),
                        ),
                      ),
                    ),
                  ),
                ],
                body: PageView.builder(
                  controller: _pageController,
                  itemCount: ReferralTab.values.length,
                  itemBuilder: (_, index) => SingleChildScrollView(
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: twentySixDotNil,
                    ),
                    child: switch (ReferralTab.values[index]) {
                      ReferralTab.theProgram => const TheProgram(),
                      ReferralTab.share => const Share(),
                      ReferralTab.history => const History(),
                      ReferralTab.leaderboard => const Leaderboard(),
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
