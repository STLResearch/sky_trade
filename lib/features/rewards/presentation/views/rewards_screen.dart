// SPDX-License-Identifier: UNLICENSED
                            
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
        Clip,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        CustomScrollView,
        DateUtils,
        EdgeInsetsDirectional,
        Expanded,
        Flexible,
        FontWeight,
        IconButton,
        LinearGradient,
        MainAxisAlignment,
        MainAxisSize,
        Navigator,
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
        TextAlign,
        TextOverflow,
        TextSpan,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex0D000000,
        hex161616,
        hex29FFFFFF,
        hex4040FF,
        hex40FFFFFF,
        hex626262,
        hex68DEFF,
        hex7583FF,
        hexEBEBF4,
        hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotFive,
        eightDotNil,
        fiftyDotNil,
        fortyDotNil,
        fortyThreeDotNil,
        fourDotNil,
        fourteenDotNil,
        minusNilDotOne,
        minusTenDotNil,
        nilDotNil,
        nilDotNilTwo,
        nilDotOne,
        nilDotOneSevenTwoTwo,
        nilDotThreeFiveFourEight,
        one,
        oneDotNil,
        sixDotNil,
        tenDotNil,
        thirtyTwoDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFourDotNil,
        twentyTwoDotNil,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show
        rewardsDroneRushDetailsRoutePath,
        rewardsOnboardingRoutePath,
        rewardsRoutePath;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show exclamationMark, whiteSpace;
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
import 'package:sky_trade/features/rewards/presentation/widgets/daily_quests_section.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/rewards_bottom_section.dart';
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Assets.svgs.totalPoints.svg(),
                          const SizedBox(
                            width: eightDotNil,
                          ),
                          Flexible(
                            child: BlocBuilder<RewardPointsBloc,
                                RewardPointsState>(
                              builder: (_, rewardPointsState) => Skeletonizer(
                                effect: rewardPointsState.maybeWhen(
                                  failedToGetPoints: (_) =>
                                      const SoldColorEffect(
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
                      const SizedBox(
                        height: fourDotNil,
                      ),
                      Text(
                        (DateUtils.getDaysInMonth(
                                      DateTime.now().year,
                                      DateTime.now().month,
                                    ) -
                                    DateTime.now().day)
                                .toString() +
                            whiteSpace +
                            context.localize.daysLeft,
                        maxLines: one,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(
                              fontSize: tenDotNil,
                              height: oneDotNil,
                              letterSpacing: nilDotNil,
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
                            arguments: {
                              rewardsRoutePath,
                              context.read<DroneRushZonesBloc>(),
                            },
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
              const DailyQuestsSection(),
              const SizedBox(
                height: twentyDotNil,
              ),
              const RewardsBottomSection(),
              const SizedBox(
                height: fortyThreeDotNil,
              ),
            ],
          ),
        ),
      );
}
