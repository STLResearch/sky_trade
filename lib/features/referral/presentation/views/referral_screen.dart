import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart'
    show
        AlwaysScrollableScrollPhysics,
        AppBar,
        BuildContext,
        Column,
        CrossAxisAlignment,
        Curves,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        GlobalKey,
        IconButton,
        MediaQuery,
        Navigator,
        NestedScrollView,
        Offset,
        Padding,
        PageController,
        PageView,
        RefreshIndicator,
        RenderBox,
        RichText,
        Scaffold,
        ScrollController,
        SingleChildScrollView,
        SizedBox,
        SliverToBoxAdapter,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextAlign,
        TextSpan,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocProvider,
        ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hex5F95FF, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fifty,
        fiveHundred,
        fortyEightDotNil,
        fourteenDotNil,
        one,
        seventeenDotNil,
        sixteenDotNil,
        thirtyDotNil,
        thirtyTwoDotNil,
        twentyDotNil,
        twentyOneDotNil,
        twentySevenDotEightNine,
        twentySevenDotNil,
        twentySixDotNil,
        twentyTwoDotThreeOne,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_trade/core/utils/enums/ui.dart' show ReferralTab;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/earnings_report_bloc/earnings_report_bloc.dart'
    show EarningsReportBloc, EarningsReportEvent;
import 'package:sky_trade/features/referral/presentation/blocs/highlights_bloc/highlights_bloc.dart'
    show HighlightsBloc, HighlightsEvent;
import 'package:sky_trade/features/referral/presentation/blocs/leaderboard_statistics_bloc/leaderboard_statistics_bloc.dart'
    show LeaderboardStatisticsBloc, LeaderboardStatisticsEvent;
import 'package:sky_trade/features/referral/presentation/blocs/referral_history_bloc/referral_history_bloc.dart'
    show ReferralHistoryBloc, ReferralHistoryEvent;
import 'package:sky_trade/features/referral/presentation/blocs/sky_points_bloc/sky_points_bloc.dart'
    show SkyPointsBloc, SkyPointsEvent, SkyPointsState;
import 'package:sky_trade/features/referral/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';
import 'package:sky_trade/features/referral/presentation/widgets/history.dart';
import 'package:sky_trade/features/referral/presentation/widgets/leaderboard.dart';
import 'package:sky_trade/features/referral/presentation/widgets/share.dart';
import 'package:sky_trade/features/referral/presentation/widgets/sky_points_reward_details.dart';
import 'package:sky_trade/features/referral/presentation/widgets/tabs_section.dart';
import 'package:sky_trade/features/referral/presentation/widgets/the_program.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class ReferralScreen extends StatelessWidget {
  const ReferralScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<EarningsReportBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<HighlightsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<LeaderboardStatisticsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<ReferralHistoryBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<SkyPointsBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const ReferralScreenView(),
      );
}

class ReferralScreenView extends StatefulWidget {
  const ReferralScreenView({super.key});

  @override
  State<ReferralScreenView> createState() => _ReferralScreenViewState();
}

class _ReferralScreenViewState extends State<ReferralScreenView> {
  late final PageController _pageController;
  late bool _isPageAnimatingDueToTabSelection;

  late final List<GlobalKey> _tabKeys;
  late final ScrollController _tabsScrollController;

  late final ValueNotifier<ReferralTab> _selectedTabNotifier;
  late final ValueNotifier<int> _referralHistoryTablePageNumberNotifier;
  late final ValueNotifier<int> _leaderboardTablePageNumberNotifier;

  @override
  void initState() {
    _pageController = PageController()
      ..addListener(
        _pageChangeListener,
      );
    _isPageAnimatingDueToTabSelection = false;

    _tabKeys = List<GlobalKey>.generate(
      ReferralTab.values.length,
      (index) => GlobalKey(
        debugLabel: ReferralTab.values[index].name,
      ),
    );
    _tabsScrollController = ScrollController();

    _selectedTabNotifier = ValueNotifier<ReferralTab>(
      ReferralTab.theProgram,
    );
    _referralHistoryTablePageNumberNotifier = ValueNotifier<int>(
      one,
    );
    _leaderboardTablePageNumberNotifier = ValueNotifier<int>(
      one,
    );

    _maybeGetSkyPoints();

    super.initState();
  }

  void _pageChangeListener() {
    _scrollToTabAt(
      index: _selectedTabNotifier.value.index,
    );
  }

  void _scrollToTabAt({
    required int index,
  }) {
    if (_tabKeys[index].currentContext != null) {
      final renderBox =
          _tabKeys[index].currentContext!.findRenderObject()! as RenderBox;
      final position = renderBox.localToGlobal(
        Offset.zero,
      );

      final screenWidth = MediaQuery.of(
        context,
      ).size.width;

      final targetScroll = _tabsScrollController.offset +
          position.dx -
          (screenWidth / two) +
          (renderBox.size.width / two);

      _tabsScrollController.animateTo(
        targetScroll.clamp(
          _tabsScrollController.position.minScrollExtent,
          _tabsScrollController.position.maxScrollExtent,
        ),
        duration: const Duration(
          milliseconds: fifty,
        ),
        curve: Curves.easeInOut,
      );
    }
  }

  void _maybeGetSkyPoints() => context.read<SkyPointsBloc>().state.whenOrNull(
        initial: _getSkyPoints,
      );

  Future<void> _getSkyPoints() async => context.read<SkyPointsBloc>().add(
        const SkyPointsEvent.getSkyPoints(),
      );

  Future<void> _getHighlights() async => context.read<HighlightsBloc>().add(
        const HighlightsEvent.getHighlights(),
      );

  Future<void> _getReferralHistory() async =>
      context.read<ReferralHistoryBloc>().add(
            ReferralHistoryEvent.getReferralHistory(
              page: _referralHistoryTablePageNumberNotifier.value,
            ),
          );

  Future<void> _getLeaderboardStatistics() async =>
      context.read<LeaderboardStatisticsBloc>().add(
            LeaderboardStatisticsEvent.getLeaderboardStatistics(
              page: _leaderboardTablePageNumberNotifier.value,
            ),
          );

  Future<void> _getEarningsReport() async =>
      context.read<EarningsReportBloc>().add(
            const EarningsReportEvent.getEarningsReport(),
          );

  Future<void> _onRefresh() => switch (_selectedTabNotifier.value) {
        ReferralTab.theProgram => _getSkyPoints(),
        ReferralTab.share => Future.wait<void>([
            _getSkyPoints(),
            _getHighlights(),
          ]),
        ReferralTab.history => Future.wait<void>([
            _getSkyPoints(),
            _getHighlights(),
            _getReferralHistory(),
          ]),
        ReferralTab.leaderboard => Future.wait<void>([
            _getSkyPoints(),
            _getLeaderboardStatistics(),
            _getEarningsReport(),
          ]),
      };

  @override
  void dispose() {
    _pageController
      ..removeListener(
        _pageChangeListener,
      )
      ..dispose();

    _tabsScrollController.dispose();
    _selectedTabNotifier.dispose();
    _referralHistoryTablePageNumberNotifier.dispose();
    _leaderboardTablePageNumberNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<SkyPointsBloc, SkyPointsState>(
        listener: (_, skyPointsState) {
          skyPointsState.whenOrNull(
            failedToGetSkyPoints: (_) {
              AlertSnackBar.show(
                context,
                message: context.localize
                    .couldNotGetSkyPointsBalanceSwipeDownToRefreshThePage,
              );
            },
          );
        },
        child: Scaffold(
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
              ValueListenableBuilder<ReferralTab>(
                valueListenable: _selectedTabNotifier,
                builder: (_, selectedTabNotifierValue, __) => TabsSection(
                  scrollController: _tabsScrollController,
                  tabKeys: _tabKeys,
                  selectedTab: selectedTabNotifierValue,
                  onTabItemSelected: (referralTab) {
                    _isPageAnimatingDueToTabSelection = true;
                    _selectedTabNotifier.value = referralTab;
                    _pageController
                        .animateToPage(
                          referralTab.index,
                          duration: const Duration(
                            milliseconds: fiveHundred,
                          ),
                          curve: Curves.easeIn,
                        )
                        .then(
                          (_) => _isPageAnimatingDueToTabSelection = false,
                        );
                    _scrollToTabAt(
                      index: referralTab.index,
                    );
                  },
                ),
              ),
              Expanded(
                child: RefreshIndicator.adaptive(
                  notificationPredicate: (scrollNotification) =>
                      scrollNotification.depth == two,
                  onRefresh: _onRefresh,
                  child: _buildScrollView(),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _buildScrollView() => NestedScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
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
                    children: [
                      Text(
                        context.localize.skyPointsBalance,
                        textAlign: TextAlign.center,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w300,
                              fontSize: sixteenDotNil,
                              height: thirtyDotNil / sixteenDotNil,
                            ),
                      ),
                      const SizedBox(
                        height: sixteenDotNil,
                      ),
                      BlocBuilder<SkyPointsBloc, SkyPointsState>(
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
                                  (skyPointsEntity.stats.sum.point
                                          ?.toString() ??
                                      zero.toString()) +
                                  whiteSpace +
                                  context.localize.skyPoints,
                              orElse: () => BoneMock.words(
                                two,
                              ),
                            ),
                            textAlign: TextAlign.center,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: thirtyTwoDotNil,
                                  height: fortyEightDotNil / thirtyTwoDotNil,
                                  color: hex0653EA,
                                ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: sixteenDotNil,
                      ),
                      RichText(
                        text: TextSpan(
                          text: context.localize.howCanIEarnSkyPoints,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => showModalBottomSheet<void>(
                                  context: context,
                                  builder: (
                                    _,
                                  ) =>
                                      const SkyPointsRewardDetails(),
                                ),
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: fourteenDotNil,
                                height: twentyOneDotNil / fourteenDotNil,
                                color: hex5F95FF,
                              ),
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
              height: twentySevenDotNil,
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
              ReferralTab.history => History(
                  tablePageNumberNotifier:
                      _referralHistoryTablePageNumberNotifier,
                ),
              ReferralTab.leaderboard => Leaderboard(
                  tablePageNumberNotifier: _leaderboardTablePageNumberNotifier,
                ),
            },
          ),
          onPageChanged: (index) {
            if (!_isPageAnimatingDueToTabSelection) {
              _selectedTabNotifier.value = ReferralTab.values[index];
            }
          },
        ),
      );
}
