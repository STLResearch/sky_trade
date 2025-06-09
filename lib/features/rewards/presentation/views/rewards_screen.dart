// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart' show CupertinoSliverRefreshControl;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        AlwaysScrollableScrollPhysics,
        AppBar,
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Center,
        Clip,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        CustomScrollView,
        EdgeInsetsDirectional,
        Expanded,
        Flexible,
        FontWeight,
        IconButton,
        LinearGradient,
        ListView,
        MainAxisAlignment,
        MainAxisSize,
        Navigator,
        NeverScrollableScrollPhysics,
        PlaceholderAlignment,
        Positioned,
        RefreshIndicator,
        RichText,
        Row,
        SafeArea,
        Scaffold,
        SizedBox,
        SliverPadding,
        SliverToBoxAdapter,
        Stack,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextOverflow,
        TextSpan,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        WidgetSpan;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeleton, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex00FFFFFF,
        hex0653EA,
        hex0D000000,
        hex161616,
        hex1E1E1E,
        hex29FFFFFF,
        hex4040FF,
        hex40FFFFFF,
        hex626262,
        hex68DEFF,
        hex7583FF,
        hexD0EBFF,
        hexEBEBF4,
        hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotFive,
        eightDotNil,
        eighteenDotFive,
        fiftyDotNil,
        five,
        fortyDotNil,
        fortyThreeDotNil,
        four,
        fourDotNil,
        fourFiftyTwoDotNil,
        fourSeventySixDotNil,
        fourteenDotNil,
        minusNilDotOne,
        minusTenDotNil,
        nilDotNil,
        nilDotNilTwo,
        nilDotOne,
        nilDotOneSevenTwoTwo,
        nilDotThreeFiveFourEight,
        nineDotNil,
        one,
        oneDotNil,
        sixDotNil,
        sixteenDotEight,
        tenDotNil,
        thirtyTwoDotNil,
        three,
        twelveDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twentyTwoDotNil,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show
        rewardsDroneRushDetailsRoutePath,
        rewardsLeaderboardRoutePath,
        rewardsOnboardingRoutePath,
        rewardsRoutePath;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show exclamationMark, plus, whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/daily_quests_bloc/daily_quests_bloc.dart'
    show DailyQuestsBloc, DailyQuestsEvent, DailyQuestsState;
import 'package:sky_trade/features/rewards/presentation/blocs/drone_rush_zones_bloc/drone_rush_zones_bloc.dart'
    show DroneRushZonesBloc, DroneRushZonesState;
import 'package:sky_trade/features/rewards/presentation/blocs/reward_points_bloc/reward_points_bloc.dart'
    show RewardPointsBloc, RewardPointsEvent, RewardPointsState;
import 'package:sky_trade/features/rewards/presentation/blocs/show_rewards_onboarding_bloc/show_rewards_onboarding_bloc.dart'
    show
        ShowRewardsOnboardingBloc,
        ShowRewardsOnboardingEvent,
        ShowRewardsOnboardingState;
import 'package:sky_trade/features/rewards/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/card.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({
    required this.droneRushZonesBloc,
    super.key,
  });

  final DroneRushZonesBloc droneRushZonesBloc;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<DailyQuestsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<RewardPointsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<ShowRewardsOnboardingBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<DroneRushZonesBloc>.value(
            value: droneRushZonesBloc,
          ),
        ],
        child: const RewardsScreenView(),
      );
}

class RewardsScreenView extends StatefulWidget {
  const RewardsScreenView({super.key});

  @override
  State<RewardsScreenView> createState() => _RewardsScreenViewState();
}

class _RewardsScreenViewState extends State<RewardsScreenView> {
  late final ValueNotifier<bool> _showDroneRushCardNotifier;

  @override
  void initState() {
    _showDroneRushCardNotifier = ValueNotifier<bool>(
      false,
    );

    _checkDroneRushZonesStateAndMaybeSetDroneRushCardNotifierValue();

    _checkShouldShowOnboarding();

    _getRewardPoints();

    _getDailyQuests();

    super.initState();
  }

  void _checkDroneRushZonesStateAndMaybeSetDroneRushCardNotifierValue() {
    context.read<DroneRushZonesBloc>().state.whenOrNull(
      gotOngoingDroneRushZones: (_) {
        _showDroneRushCardNotifier.value = true;
      },
    );
  }

  void _checkShouldShowOnboarding() =>
      context.read<ShowRewardsOnboardingBloc>().add(
            const ShowRewardsOnboardingEvent.checkShouldShowOnboarding(),
          );

  Future<void> _getRewardPoints() async => context.read<RewardPointsBloc>().add(
        const RewardPointsEvent.getPoints(),
      );

  Future<void> _getDailyQuests() async => context.read<DailyQuestsBloc>().add(
        const DailyQuestsEvent.getQuests(),
      );

  Future<void> _onRefresh() => Future.wait<void>([
        _getRewardPoints(),
        _getDailyQuests(),
      ]);

  @override
  void dispose() {
    _showDroneRushCardNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<ShowRewardsOnboardingBloc, ShowRewardsOnboardingState>(
            listener: (_, showRewardsOnboardingState) {
              showRewardsOnboardingState.whenOrNull(
                shouldShow: () {
                  Navigator.of(
                    context,
                  ).pushNamed(
                    rewardsOnboardingRoutePath,
                  );
                },
              );
            },
          ),
          BlocListener<RewardPointsBloc, RewardPointsState>(
            listener: (_, rewardPointsState) {
              rewardPointsState.whenOrNull(
                failedToGetPoints: (_) {
                  AlertSnackBar.show(
                    context,
                    message: context
                        .localize.couldNotGetPointsSwipeDownToRefreshThePage,
                  );
                },
              );
            },
          ),
          BlocListener<DailyQuestsBloc, DailyQuestsState>(
            listener: (_, dailyQuestsState) {
              dailyQuestsState.whenOrNull(
                failedToGetQuests: (_) {
                  AlertSnackBar.show(
                    context,
                    message: context.localize
                        .couldNotGetDailyQuestsSwipeDownToRefreshThePage,
                  );
                },
              );
            },
          ),
          BlocListener<DroneRushZonesBloc, DroneRushZonesState>(
            listener: (_, droneRushZonesState) {
              droneRushZonesState.whenOrNull(
                noLatestDroneRushZone: () {
                  _showDroneRushCardNotifier.value = false;
                },
                noOngoingDroneRushZone: () {
                  _showDroneRushCardNotifier.value = false;
                },
                gotOngoingDroneRushZones: (_) {
                  _showDroneRushCardNotifier.value = true;
                },
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Assets.svgs.chevronLeftAlt.svg(),
              onPressed: () => Navigator.of(
                context,
              ).pop(),
            ),
            title: Text(
              context.localize.pointsProgram,
              style: Theme.of(
                context,
              ).appBarTheme.titleTextStyle?.copyWith(
                    fontFamily: FontFamily.chakraPetch,
                    fontSize: thirtyTwoDotNil,
                    height: thirtyTwoDotNil / thirtyTwoDotNil,
                    letterSpacing: nilDotNil,
                  ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: nilDotNil,
          ),
          extendBodyBehindAppBar: true,
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [
                  hex4040FF,
                  hex68DEFF,
                  hexFFFFFF,
                ],
                stops: [
                  nilDotNilTwo,
                  nilDotOneSevenTwoTwo,
                  nilDotThreeFiveFourEight,
                ],
              ),
            ),
            child: SafeArea(
              child: _buildScrollView(),
            ),
          ),
        ),
      );

  Widget _buildScrollView() => switch (Platform.isIOS) {
        true => CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              CupertinoSliverRefreshControl(
                onRefresh: _onRefresh,
              ),
              _buildRestOfSliverContent(),
            ],
          ),
        false => RefreshIndicator(
            onRefresh: _onRefresh,
            child: CustomScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              slivers: [
                _buildRestOfSliverContent(),
              ],
            ),
          ),
      };

  Widget _buildRestOfSliverContent() => SliverPadding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: twentyFourDotNil,
        ),
        sliver: SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: AlignmentDirectional.center,
                child: Text(
                  context.localize.completeTasksToEarnSkyPoints,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: fourteenDotNil,
                        height: twentyTwoDotNil / fourteenDotNil,
                        color: hexFFFFFF,
                        letterSpacing: nilDotNil,
                      ),
                ),
              ),
              const SizedBox(
                height: fortyDotNil,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                    vertical: eightDotFive,
                    horizontal: twentyFourDotNil,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(
                      fiftyDotNil,
                    ),
                    gradient: const LinearGradient(
                      colors: [
                        hex40FFFFFF,
                        hex29FFFFFF,
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: hex0D000000,
                        blurRadius: twentyDotNil,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Assets.svgs.totalPoints.svg(),
                      const SizedBox(
                        width: eightDotNil,
                      ),
                      Flexible(
                        child: BlocBuilder<RewardPointsBloc, RewardPointsState>(
                          builder: (_, rewardPointsState) => Skeletonizer(
                            effect: rewardPointsState.maybeWhen(
                              failedToGetPoints: (_) => const SoldColorEffect(
                                color: hexEBEBF4,
                              ),
                              orElse: () => ShimmerEffect(
                                highlightColor: Theme.of(
                                  context,
                                ).scaffoldBackgroundColor,
                              ),
                            ),
                            enabled: rewardPointsState.maybeWhen(
                              gotPoints: (_) => false,
                              orElse: () => true,
                            ),
                            child: Text(
                              rewardPointsState.maybeWhen(
                                gotPoints: (rewardPointsEntity) =>
                                    rewardPointsEntity.stats.sum.point
                                        ?.toString() ??
                                    zero.toString(),
                                orElse: () => BoneMock.chars(
                                  two,
                                ),
                              ),
                              maxLines: one,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.copyWith(
                                    fontSize: twentyFourDotNil,
                                    height: oneDotNil,
                                    letterSpacing: nilDotNil,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: fortyDotNil,
              ),
              ValueListenableBuilder<bool>(
                valueListenable: _showDroneRushCardNotifier,
                builder: (_, showDroneRushCardNotifierValue, __) =>
                    switch (showDroneRushCardNotifierValue) {
                  true => Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Card(
                          hasBorder: false,
                          backgroundColor: hexFFFFFF,
                          cornerRadius: twentyDotNil,
                          verticalPadding: nilDotNil,
                          horizontalPadding: fourteenDotNil,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      context.localize.droneRush,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyLarge?.copyWith(
                                            fontFamily: FontFamily.chakraPetch,
                                            fontWeight: FontWeight.w600,
                                            fontSize: twentyDotNil,
                                            height: oneDotNil,
                                            letterSpacing: minusNilDotOne,
                                            color: hex161616,
                                          ),
                                    ),
                                    const SizedBox(
                                      height: fourDotNil,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: context.localize.earn +
                                                whiteSpace,
                                            style: Theme.of(
                                              context,
                                            ).textTheme.bodySmall?.copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: twelveDotNil,
                                                  height: oneDotNil,
                                                  letterSpacing: nilDotNil,
                                                  color: hex626262,
                                                ),
                                          ),
                                          TextSpan(
                                            text: context.localize.morePoints,
                                            style: Theme.of(
                                              context,
                                            ).textTheme.bodySmall?.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: twelveDotNil,
                                                  height: oneDotNil,
                                                  letterSpacing: nilDotNil,
                                                  color: hex626262,
                                                ),
                                          ),
                                          TextSpan(
                                            text: whiteSpace +
                                                context.localize
                                                    .forTrackingDronesInHighlightedZonesDuringThisLimitedTimeEvent +
                                                exclamationMark,
                                            style: Theme.of(
                                              context,
                                            ).textTheme.bodySmall?.copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: twelveDotNil,
                                                  height: oneDotNil,
                                                  letterSpacing: nilDotNil,
                                                  color: hex626262,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: eightDotNil,
                              ),
                              Assets.pngs.droneRush.image(),
                            ],
                          ),
                          onTap: () => Navigator.of(
                            context,
                          ).pushNamed(
                            rewardsDroneRushDetailsRoutePath,
                            arguments: rewardsRoutePath,
                          ),
                        ),
                        Positioned(
                          top: minusTenDotNil,
                          child: Container(
                            padding: const EdgeInsetsDirectional.symmetric(
                              horizontal: eightDotNil,
                              vertical: fourDotNil,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(
                                sixDotNil,
                              ),
                              gradient: const LinearGradient(
                                begin: AlignmentDirectional.topEnd,
                                end: AlignmentDirectional.bottomEnd,
                                colors: [
                                  hex7583FF,
                                  hex68DEFF,
                                ],
                              ),
                            ),
                            child: Text(
                              context.localize.specialEvent,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: tenDotNil,
                                    height: oneDotNil,
                                    letterSpacing: nilDotOne,
                                    color: hexFFFFFF,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  false => const SizedBox.shrink(),
                },
              ),
              const SizedBox(
                height: twentyDotNil,
              ),
              Text(
                context.localize.dailyQuests,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: twentyDotNil,
                      height: oneDotNil,
                      letterSpacing: minusNilDotOne,
                      color: hex161616,
                    ),
              ),
              const SizedBox(
                height: twentyDotNil,
              ),
              BlocBuilder<DailyQuestsBloc, DailyQuestsState>(
                builder: (_, dailyQuestsState) => dailyQuestsState.maybeWhen(
                  gotQuests: (questEntities) => switch (questEntities.isEmpty) {
                    true => SizedBox(
                        height: switch (Platform.isIOS) {
                          true => fourFiftyTwoDotNil,
                          false => fourSeventySixDotNil,
                        },
                        child: Center(
                          child: Text(
                            context.localize.thereAreNoQuestsAtThisTime,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                                  fontSize: sixteenDotEight,
                                  height: oneDotNil,
                                  letterSpacing: minusNilDotOne,
                                  color: hex161616,
                                ),
                          ),
                        ),
                      ),
                    false => const SizedBox.shrink(),
                  },
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
              BlocBuilder<DailyQuestsBloc, DailyQuestsState>(
                builder: (_, dailyQuestsState) => ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: dailyQuestsState.maybeWhen(
                    gotQuests: (questEntities) => questEntities.length,
                    orElse: () => five,
                  ),
                  itemBuilder: (_, index) => Card(
                    hasBorder: dailyQuestsState.maybeWhen(
                      gotQuests: (questEntities) =>
                          !questEntities[index].completed,
                      orElse: () =>
                          index == zero || index == two || index == three,
                    ),
                    gradient: dailyQuestsState.maybeWhen(
                      gotQuests: (questEntities) =>
                          switch (questEntities[index].completed) {
                        true => const LinearGradient(
                            colors: [
                              hexD0EBFF,
                              hex00FFFFFF,
                            ],
                          ),
                        false => null,
                      },
                      orElse: () => null,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Skeletonizer(
                                effect: dailyQuestsState.maybeWhen(
                                  failedToGetQuests: (_) =>
                                      const SoldColorEffect(
                                    color: hexEBEBF4,
                                  ),
                                  orElse: () => ShimmerEffect(
                                    highlightColor: Theme.of(
                                      context,
                                    ).scaffoldBackgroundColor,
                                  ),
                                ),
                                enabled: dailyQuestsState.maybeWhen(
                                  gotQuests: (_) => false,
                                  orElse: () => true,
                                ),
                                child: Text(
                                  dailyQuestsState.maybeWhen(
                                    gotQuests: (questEntities) =>
                                        questEntities[index].title,
                                    orElse: () => switch (index == one) {
                                      true => BoneMock.words(
                                          five,
                                        ),
                                      false when index == three =>
                                        BoneMock.words(
                                          four,
                                        ),
                                      false => BoneMock.words(
                                          three,
                                        ),
                                    },
                                  ),
                                  maxLines: one,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyLarge?.copyWith(
                                        fontSize: fourteenDotNil,
                                        height:
                                            thirtyTwoDotNil / fourteenDotNil,
                                        letterSpacing: nilDotNil,
                                      ),
                                ),
                              ),
                              const SizedBox(
                                height: fourDotNil,
                              ),
                              dailyQuestsState.maybeWhen(
                                gotQuests: (questEntities) =>
                                    switch (questEntities[index].completed) {
                                  true => Text(
                                      context.localize.claim +
                                          whiteSpace +
                                          plus +
                                          (questEntities[index]
                                                  .points
                                                  ?.toString() ??
                                              zero.toString()) +
                                          whiteSpace +
                                          context.localize.points,
                                      maxLines: one,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium?.copyWith(
                                            fontSize: tenDotNil,
                                            height: twentyTwoDotNil / tenDotNil,
                                            letterSpacing: nilDotNil,
                                          ),
                                    ),
                                  false => RichText(
                                      maxLines: one,
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child:
                                                Assets.svgs.questPoints.svg(),
                                            alignment:
                                                PlaceholderAlignment.middle,
                                          ),
                                          const WidgetSpan(
                                            child: SizedBox(
                                              width: fourDotNil,
                                            ),
                                            alignment:
                                                PlaceholderAlignment.middle,
                                          ),
                                          TextSpan(
                                            text: plus +
                                                (questEntities[index]
                                                        .points
                                                        ?.toString() ??
                                                    zero.toString()) +
                                                whiteSpace +
                                                context.localize.points,
                                            style: Theme.of(
                                              context,
                                            ).textTheme.bodyMedium?.copyWith(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  fontSize: tenDotNil,
                                                  height: twentyTwoDotNil /
                                                      tenDotNil,
                                                  letterSpacing: nilDotNil,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                },
                                orElse: () =>
                                    switch (index == one || index == four) {
                                  true => Skeletonizer(
                                      effect: dailyQuestsState.maybeWhen(
                                        failedToGetQuests: (_) =>
                                            const SoldColorEffect(
                                          color: hexEBEBF4,
                                        ),
                                        orElse: () => ShimmerEffect(
                                          highlightColor: Theme.of(
                                            context,
                                          ).scaffoldBackgroundColor,
                                        ),
                                      ),
                                      enabled: dailyQuestsState.maybeWhen(
                                        gotQuests: (_) => false,
                                        orElse: () => true,
                                      ),
                                      child: Text(
                                        BoneMock.words(
                                          three,
                                        ),
                                        maxLines: one,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodyMedium?.copyWith(
                                              fontSize: tenDotNil,
                                              height:
                                                  twentyTwoDotNil / tenDotNil,
                                              letterSpacing: nilDotNil,
                                            ),
                                      ),
                                    ),
                                  false => RichText(
                                      maxLines: one,
                                      text: TextSpan(
                                        children: [
                                          WidgetSpan(
                                            child:
                                                Assets.svgs.questPoints.svg(),
                                            alignment:
                                                PlaceholderAlignment.middle,
                                          ),
                                          const WidgetSpan(
                                            child: SizedBox(
                                              width: fourDotNil,
                                            ),
                                            alignment:
                                                PlaceholderAlignment.middle,
                                          ),
                                          WidgetSpan(
                                            child: Skeletonizer(
                                              effect:
                                                  dailyQuestsState.maybeWhen(
                                                failedToGetQuests: (_) =>
                                                    const SoldColorEffect(
                                                  color: hexEBEBF4,
                                                ),
                                                orElse: () => ShimmerEffect(
                                                  highlightColor: Theme.of(
                                                    context,
                                                  ).scaffoldBackgroundColor,
                                                ),
                                              ),
                                              enabled:
                                                  dailyQuestsState.maybeWhen(
                                                gotQuests: (_) => false,
                                                orElse: () => true,
                                              ),
                                              child: Text(
                                                BoneMock.words(
                                                  two,
                                                ),
                                                style: Theme.of(
                                                  context,
                                                )
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      fontSize: tenDotNil,
                                                      height: twentyTwoDotNil /
                                                          tenDotNil,
                                                      letterSpacing: nilDotNil,
                                                    ),
                                              ),
                                            ),
                                            alignment:
                                                PlaceholderAlignment.middle,
                                          ),
                                        ],
                                      ),
                                    ),
                                },
                              ),
                            ],
                          ),
                        ),
                        dailyQuestsState.maybeWhen(
                          gotQuests: (questEntities) =>
                              switch (questEntities[index].completed) {
                            true => const SizedBox(
                                width: eightDotNil,
                              ),
                            false => const SizedBox.shrink(),
                          },
                          orElse: () => switch (index == one || index == four) {
                            true => const SizedBox(
                                width: eightDotNil,
                              ),
                            false => const SizedBox.shrink(),
                          },
                        ),
                        dailyQuestsState.maybeWhen(
                          gotQuests: (questEntities) =>
                              switch (questEntities[index].completed) {
                            true => Container(
                                decoration: BoxDecoration(
                                  color: hex0653EA,
                                  borderRadius:
                                      BorderRadiusDirectional.circular(
                                    nineDotNil,
                                  ),
                                ),
                                padding: const EdgeInsetsDirectional.all(
                                  fourDotNil,
                                ),
                                child: Assets.svgs.check.svg(),
                              ),
                            false => const SizedBox.shrink(),
                          },
                          orElse: () => switch (index == one || index == four) {
                            true => Skeletonizer(
                                effect: dailyQuestsState.maybeWhen(
                                  failedToGetQuests: (_) =>
                                      const SoldColorEffect(
                                    color: hexEBEBF4,
                                  ),
                                  orElse: () => ShimmerEffect(
                                    highlightColor: Theme.of(
                                      context,
                                    ).scaffoldBackgroundColor,
                                  ),
                                ),
                                enabled: dailyQuestsState.maybeWhen(
                                  gotQuests: (_) => false,
                                  orElse: () => true,
                                ),
                                child: Skeleton.leaf(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: hex0653EA,
                                      borderRadius:
                                          BorderRadiusDirectional.circular(
                                        nineDotNil,
                                      ),
                                    ),
                                    padding: const EdgeInsetsDirectional.all(
                                      fourDotNil,
                                    ),
                                    child: Assets.svgs.check.svg(),
                                  ),
                                ),
                              ),
                            false => const SizedBox.shrink(),
                          },
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    height: twentyFourDotNil,
                  ),
                ),
              ),
              const SizedBox(
                height: twentyDotNil,
              ),
              Text(
                context.localize.howItWorks,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: twentyDotNil,
                      height: oneDotNil,
                      letterSpacing: minusNilDotOne,
                      color: hex161616,
                    ),
              ),
              const SizedBox(
                height: eightDotNil,
              ),
              Text(
                context.localize
                    .earn25PointsForEveryVerifiedDroneObservationCompleteDailyQuestsToEarnBonusPointsAndClimbTheRanksTheMoreYouContributeTheMoreTouLevelUp,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w300,
                      fontSize: fourteenDotNil,
                      height: twentyTwoDotNil / fourteenDotNil,
                      letterSpacing: nilDotNil,
                      color: hex626262,
                    ),
              ),
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
              const SizedBox(
                height: fortyThreeDotNil,
              ),
            ],
          ),
        ),
      );
}
