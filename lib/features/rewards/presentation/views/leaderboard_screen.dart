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
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        CustomScrollView,
        DateUtils,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        IconButton,
        LinearGradient,
        ListView,
        MediaQuery,
        Navigator,
        NeverScrollableScrollPhysics,
        RefreshIndicator,
        Row,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        SliverPadding,
        SliverToBoxAdapter,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextAlign,
        TextOverflow,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocListener, BlocProvider, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show
        hex00FFFFFF,
        hex0D000000,
        hex161616,
        hex3478F5,
        hex40FFFFFF,
        hex80FFFFFF,
        hex989898,
        hexCC4285F4,
        hexCCA8FFFF,
        hexDAE7FF,
        hexDEDEDE,
        hexEBEBF4,
        hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteen,
        fifteenDotNil,
        fiftyDotNil,
        five,
        fortyFiveDotFive,
        four,
        fourteen,
        fourteenDotNil,
        minusNilDotOne,
        nilDotNil,
        nilDotOneSevenTwoTwo,
        nilDotThreeFiveFourEight,
        one,
        oneDotNil,
        seventeen,
        sixteen,
        sixteenDotEight,
        sixteenDotNil,
        tenDotNil,
        thirtyTwoDotNil,
        three,
        twentyDotNil,
        twentyFourDotNil,
        twentyTwoDotNil,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString, threeDots, whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/leaderboard_statistics_bloc/leaderboard_statistics_bloc.dart'
    show
        LeaderboardStatisticsBloc,
        LeaderboardStatisticsEvent,
        LeaderboardStatisticsState;
import 'package:sky_trade/features/rewards/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/card.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/leaderboard_info.dart';
import 'package:sky_trade/features/rewards/presentation/widgets/leaderboard_table_actions.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<LeaderboardStatisticsBloc>(
        create: (_) => serviceLocator(),
        child: const LeaderboardView(),
      );
}

class LeaderboardView extends StatefulWidget {
  const LeaderboardView({super.key});

  @override
  State<LeaderboardView> createState() => _LeaderboardViewState();
}

class _LeaderboardViewState extends State<LeaderboardView> {
  late final ValueNotifier<int> _pageNumberNotifier;

  @override
  void initState() {
    _pageNumberNotifier = ValueNotifier<int>(
      one,
    );

    _getLeaderboardStatistics();

    super.initState();
  }

  Future<void> _getLeaderboardStatistics() async {
    context.read<LeaderboardStatisticsBloc>().add(
          LeaderboardStatisticsEvent.getLeaderboardStatistics(
            page: _pageNumberNotifier.value,
          ),
        );
  }

  int _computeUserPositionOnLeaderboardUsing({
    required int page,
    required int position,
    required bool returnIndexPositionInstead,
  }) {
    final userPosition = fifteen - ((fifteen * page) - position);

    if (returnIndexPositionInstead) {
      return userPosition - one;
    }

    return userPosition;
  }

  int _computeLeaderboardEntryPositionUsing({
    required int currentPageNumber,
    required int currentEntryIndex,
  }) =>
      ((fifteen * currentPageNumber) - fifteen) + (currentEntryIndex + one);

  @override
  void dispose() {
    _pageNumberNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<LeaderboardStatisticsBloc, LeaderboardStatisticsState>(
        listener: (_, leaderboardStatisticsState) {
          leaderboardStatisticsState.whenOrNull(
            failedToGetLeaderboardStatistics: (_) {
              AlertSnackBar.show(
                context,
                message: context.localize
                    .couldNotGetLeaderboardStatisticsSwipeDownToRefreshThePage,
              );
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Assets.svgs.chevronLeftBlack.svg(),
              onPressed: () => Navigator.of(
                context,
              ).pop(),
            ),
            actionsPadding: const EdgeInsetsDirectional.symmetric(
              horizontal: twentyFourDotNil,
            ),
            actions: [
              IconButton(
                icon: Assets.svgs.helpCircleLarge.svg(),
                onPressed: () => showModalBottomSheet<void>(
                  context: context,
                  builder: (_) => const LeaderboardInfo(),
                ),
              ),
            ],
            title: Text(
              context.localize.leaderboard,
              style: Theme.of(
                context,
              ).appBarTheme.titleTextStyle?.copyWith(
                    color: hex161616,
                    fontSize: twentyDotNil,
                    height: oneDotNil,
                    letterSpacing: minusNilDotOne,
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
                begin: AlignmentDirectional.centerStart,
                end: AlignmentDirectional.centerEnd,
                colors: [
                  hexFFFFFF,
                  hexCCA8FFFF,
                  hexCC4285F4,
                ],
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [
                    hex00FFFFFF,
                    hexFFFFFF,
                  ],
                  stops: [
                    nilDotOneSevenTwoTwo,
                    nilDotThreeFiveFourEight,
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _buildScrollView(),
                    ),
                    LeaderboardTableActions(
                      pageNumberNotifier: _pageNumberNotifier,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget _buildScrollView() => switch (Platform.isIOS) {
        true => CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              CupertinoSliverRefreshControl(
                onRefresh: _getLeaderboardStatistics,
              ),
              _buildRestOfSliverContent(),
            ],
          ),
        false => RefreshIndicator(
            onRefresh: _getLeaderboardStatistics,
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
                  context.localize.topTrackersThisPeriod,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: fourteenDotNil,
                        height: twentyTwoDotNil / fourteenDotNil,
                        letterSpacing: nilDotNil,
                      ),
                ),
              ),
              const SizedBox(
                height: sixteenDotNil,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                    vertical: eightDotNil,
                    horizontal: sixteenDotNil,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(
                      fiftyDotNil,
                    ),
                    gradient: const LinearGradient(
                      colors: [
                        hex80FFFFFF,
                        hex40FFFFFF,
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: hex0D000000,
                        blurRadius: twentyDotNil,
                      ),
                    ],
                  ),
                  child: Text(
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
                ),
              ),
              const SizedBox(
                height: fortyFiveDotFive,
              ),
              BlocBuilder<LeaderboardStatisticsBloc,
                  LeaderboardStatisticsState>(
                builder: (_, leaderboardStatisticsState) =>
                    leaderboardStatisticsState.maybeWhen(
                  gotLeaderboardStatistics: (leaderboardStatisticsEntity, __) =>
                      switch (leaderboardStatisticsEntity
                          .currentPeriodPoints.isEmpty) {
                    true => SingleChildScrollView(
                        child: SizedBox(
                          height: MediaQuery.sizeOf(
                            context,
                          ).width,
                          child: Center(
                            child: Text(
                              context.localize.thereIsNothingToShowHere,
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
                      ),
                    false => const SizedBox.shrink(),
                  },
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
              BlocBuilder<LeaderboardStatisticsBloc,
                  LeaderboardStatisticsState>(
                builder: (_, leaderboardStatisticsState) => ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: leaderboardStatisticsState.maybeWhen(
                    gotLeaderboardStatistics: (
                      leaderboardStatisticsEntity,
                      __,
                    ) =>
                        leaderboardStatisticsEntity.currentPeriodPoints.length,
                    orElse: () => fifteen,
                  ),
                  itemBuilder: (_, index) => ValueListenableBuilder(
                    valueListenable: _pageNumberNotifier,
                    builder: (
                      _,
                      pageNumberNotifierValue,
                      __,
                    ) =>
                        Card(
                      hasBorder: false,
                      backgroundColor: leaderboardStatisticsState.maybeWhen(
                        gotLeaderboardStatistics: (
                          leaderboardStatisticsEntity,
                          leaderboardPositionEntity,
                        ) =>
                            switch (leaderboardPositionEntity != null &&
                                leaderboardPositionEntity.position != null &&
                                leaderboardPositionEntity.page != null &&
                                _computeUserPositionOnLeaderboardUsing(
                                      page: leaderboardPositionEntity.page!,
                                      position:
                                          leaderboardPositionEntity.position!,
                                      returnIndexPositionInstead: false,
                                    ) >=
                                    one &&
                                _computeUserPositionOnLeaderboardUsing(
                                      page: leaderboardPositionEntity.page!,
                                      position:
                                          leaderboardPositionEntity.position!,
                                      returnIndexPositionInstead: false,
                                    ) <=
                                    fifteen) {
                          true
                              when pageNumberNotifierValue ==
                                      leaderboardPositionEntity!.page &&
                                  index ==
                                      _computeUserPositionOnLeaderboardUsing(
                                        page: leaderboardPositionEntity.page!,
                                        position:
                                            leaderboardPositionEntity.position!,
                                        returnIndexPositionInstead: true,
                                      ) &&
                                  _computeUserPositionOnLeaderboardUsing(
                                        page: leaderboardPositionEntity.page!,
                                        position:
                                            leaderboardPositionEntity.position!,
                                        returnIndexPositionInstead: true,
                                      ) <
                                      leaderboardStatisticsEntity
                                          .currentPeriodPoints.length =>
                            hexFFFFFF,
                          _ => null,
                        },
                        orElse: () => null,
                      ),
                      cornerRadius: fifteenDotNil,
                      verticalPadding: sixteenDotNil,
                      child: Row(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: leaderboardStatisticsState.maybeWhen(
                                    gotLeaderboardStatistics: (
                                      leaderboardStatisticsEntity,
                                      leaderboardPositionEntity,
                                    ) =>
                                        switch (leaderboardPositionEntity !=
                                                null &&
                                            leaderboardPositionEntity
                                                    .position !=
                                                null &&
                                            leaderboardPositionEntity.page !=
                                                null &&
                                            _computeUserPositionOnLeaderboardUsing(
                                                  page:
                                                      leaderboardPositionEntity
                                                          .page!,
                                                  position:
                                                      leaderboardPositionEntity
                                                          .position!,
                                                  returnIndexPositionInstead:
                                                      false,
                                                ) >=
                                                one &&
                                            _computeUserPositionOnLeaderboardUsing(
                                                  page:
                                                      leaderboardPositionEntity
                                                          .page!,
                                                  position:
                                                      leaderboardPositionEntity
                                                          .position!,
                                                  returnIndexPositionInstead:
                                                      false,
                                                ) <=
                                                fifteen) {
                                      true
                                          when pageNumberNotifierValue ==
                                                  leaderboardPositionEntity!
                                                      .page &&
                                              index ==
                                                  _computeUserPositionOnLeaderboardUsing(
                                                    page:
                                                        leaderboardPositionEntity
                                                            .page!,
                                                    position:
                                                        leaderboardPositionEntity
                                                            .position!,
                                                    returnIndexPositionInstead:
                                                        true,
                                                  ) &&
                                              _computeUserPositionOnLeaderboardUsing(
                                                    page:
                                                        leaderboardPositionEntity
                                                            .page!,
                                                    position:
                                                        leaderboardPositionEntity
                                                            .position!,
                                                    returnIndexPositionInstead:
                                                        true,
                                                  ) <
                                                  leaderboardStatisticsEntity
                                                      .currentPeriodPoints
                                                      .length =>
                                        hexDAE7FF,
                                      _ => switch (
                                            pageNumberNotifierValue == one &&
                                                (index == zero ||
                                                    index == one ||
                                                    index == two)) {
                                          true => hex3478F5,
                                          false => hexDEDEDE,
                                        },
                                    },
                                    orElse: () => switch (
                                        pageNumberNotifierValue == one &&
                                            (index == zero ||
                                                index == one ||
                                                index == two)) {
                                      true => hex3478F5,
                                      false => hexDEDEDE,
                                    },
                                  ),
                                  borderRadius:
                                      BorderRadiusDirectional.circular(
                                    eightDotNil,
                                  ),
                                ),
                                padding: const EdgeInsetsDirectional.symmetric(
                                  horizontal: eightDotNil,
                                  vertical: oneDotNil,
                                ),
                                child: Text(
                                  _computeLeaderboardEntryPositionUsing(
                                    currentPageNumber: pageNumberNotifierValue,
                                    currentEntryIndex: index,
                                  ).toString(),
                                  maxLines: one,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyMedium?.copyWith(
                                        fontFamily: FontFamily.urbanist,
                                        fontWeight: FontWeight.w600,
                                        fontSize: fourteenDotNil,
                                        height:
                                            twentyTwoDotNil / fourteenDotNil,
                                        color: leaderboardStatisticsState
                                            .maybeWhen(
                                          gotLeaderboardStatistics: (
                                            leaderboardStatisticsEntity,
                                            leaderboardPositionEntity,
                                          ) =>
                                              switch (leaderboardPositionEntity !=
                                                      null &&
                                                  leaderboardPositionEntity
                                                          .position !=
                                                      null &&
                                                  leaderboardPositionEntity
                                                          .page !=
                                                      null &&
                                                  _computeUserPositionOnLeaderboardUsing(
                                                        page:
                                                            leaderboardPositionEntity
                                                                .page!,
                                                        position:
                                                            leaderboardPositionEntity
                                                                .position!,
                                                        returnIndexPositionInstead:
                                                            false,
                                                      ) >=
                                                      one &&
                                                  _computeUserPositionOnLeaderboardUsing(
                                                        page:
                                                            leaderboardPositionEntity
                                                                .page!,
                                                        position:
                                                            leaderboardPositionEntity
                                                                .position!,
                                                        returnIndexPositionInstead:
                                                            false,
                                                      ) <=
                                                      fifteen) {
                                            true
                                                when pageNumberNotifierValue ==
                                                        leaderboardPositionEntity!
                                                            .page &&
                                                    index ==
                                                        _computeUserPositionOnLeaderboardUsing(
                                                          page:
                                                              leaderboardPositionEntity
                                                                  .page!,
                                                          position:
                                                              leaderboardPositionEntity
                                                                  .position!,
                                                          returnIndexPositionInstead:
                                                              true,
                                                        ) &&
                                                    _computeUserPositionOnLeaderboardUsing(
                                                          page:
                                                              leaderboardPositionEntity
                                                                  .page!,
                                                          position:
                                                              leaderboardPositionEntity
                                                                  .position!,
                                                          returnIndexPositionInstead:
                                                              true,
                                                        ) <
                                                        leaderboardStatisticsEntity
                                                            .currentPeriodPoints
                                                            .length =>
                                              hex3478F5,
                                            _ => switch (
                                                  pageNumberNotifierValue ==
                                                          one &&
                                                      (index == zero ||
                                                          index == one ||
                                                          index == two)) {
                                                true => hexFFFFFF,
                                                false => hex989898,
                                              },
                                          },
                                          orElse: () => switch (
                                              pageNumberNotifierValue == one &&
                                                  (index == zero ||
                                                      index == one ||
                                                      index == two)) {
                                            true => hexFFFFFF,
                                            false => hex989898,
                                          },
                                        ),
                                        letterSpacing: nilDotNil,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: eightDotNil,
                          ),
                          Expanded(
                            flex: five,
                            child: Skeletonizer(
                              effect: leaderboardStatisticsState.maybeWhen(
                                failedToGetLeaderboardStatistics: (_) =>
                                    const SoldColorEffect(
                                  color: hexEBEBF4,
                                ),
                                orElse: () => ShimmerEffect(
                                  highlightColor: Theme.of(
                                    context,
                                  ).scaffoldBackgroundColor,
                                ),
                              ),
                              enabled: leaderboardStatisticsState.maybeWhen(
                                gotLeaderboardStatistics: (_, __) => false,
                                orElse: () => true,
                              ),
                              child: Text(
                                leaderboardStatisticsState.maybeWhen(
                                  gotLeaderboardStatistics: (
                                    leaderboardStatisticsEntity,
                                    _,
                                  ) =>
                                      leaderboardStatisticsEntity
                                          .currentPeriodPoints[index]
                                          .blockchainAddress ??
                                      threeDots,
                                  orElse: () => BoneMock.chars(
                                    switch (index) {
                                      zero => fourteen,
                                      five => sixteen,
                                      _ => switch (index % two == zero) {
                                          true => fifteen,
                                          false => seventeen,
                                        },
                                    },
                                  ),
                                ),
                                maxLines: one,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyLarge?.copyWith(
                                      fontSize: fourteenDotNil,
                                      height: thirtyTwoDotNil / fourteenDotNil,
                                      letterSpacing: nilDotNil,
                                      color:
                                          leaderboardStatisticsState.maybeWhen(
                                        gotLeaderboardStatistics: (
                                          leaderboardStatisticsEntity,
                                          leaderboardPositionEntity,
                                        ) =>
                                            switch (leaderboardPositionEntity !=
                                                    null &&
                                                leaderboardPositionEntity
                                                        .position !=
                                                    null &&
                                                leaderboardPositionEntity
                                                        .page !=
                                                    null &&
                                                _computeUserPositionOnLeaderboardUsing(
                                                      page:
                                                          leaderboardPositionEntity
                                                              .page!,
                                                      position:
                                                          leaderboardPositionEntity
                                                              .position!,
                                                      returnIndexPositionInstead:
                                                          false,
                                                    ) >=
                                                    one &&
                                                _computeUserPositionOnLeaderboardUsing(
                                                      page:
                                                          leaderboardPositionEntity
                                                              .page!,
                                                      position:
                                                          leaderboardPositionEntity
                                                              .position!,
                                                      returnIndexPositionInstead:
                                                          false,
                                                    ) <=
                                                    fifteen) {
                                          true
                                              when pageNumberNotifierValue ==
                                                      leaderboardPositionEntity!
                                                          .page &&
                                                  index ==
                                                      _computeUserPositionOnLeaderboardUsing(
                                                        page:
                                                            leaderboardPositionEntity
                                                                .page!,
                                                        position:
                                                            leaderboardPositionEntity
                                                                .position!,
                                                        returnIndexPositionInstead:
                                                            true,
                                                      ) &&
                                                  _computeUserPositionOnLeaderboardUsing(
                                                        page:
                                                            leaderboardPositionEntity
                                                                .page!,
                                                        position:
                                                            leaderboardPositionEntity
                                                                .position!,
                                                        returnIndexPositionInstead:
                                                            true,
                                                      ) <
                                                      leaderboardStatisticsEntity
                                                          .currentPeriodPoints
                                                          .length =>
                                            hex3478F5,
                                          _ => null,
                                        },
                                        orElse: () => null,
                                      ),
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: eightDotNil,
                          ),
                          Expanded(
                            flex: two,
                            child: Skeletonizer(
                              effect: leaderboardStatisticsState.maybeWhen(
                                failedToGetLeaderboardStatistics: (_) =>
                                    const SoldColorEffect(
                                  color: hexEBEBF4,
                                ),
                                orElse: () => ShimmerEffect(
                                  highlightColor: Theme.of(
                                    context,
                                  ).scaffoldBackgroundColor,
                                ),
                              ),
                              enabled: leaderboardStatisticsState.maybeWhen(
                                gotLeaderboardStatistics: (_, __) => false,
                                orElse: () => true,
                              ),
                              child: Text(
                                leaderboardStatisticsState.maybeWhen(
                                  gotLeaderboardStatistics: (
                                    leaderboardStatisticsEntity,
                                    _,
                                  ) =>
                                      switch (pageNumberNotifierValue == one &&
                                          index == zero) {
                                        true => context.localize.crownEmoji +
                                            whiteSpace,
                                        false => emptyString,
                                      } +
                                      leaderboardStatisticsEntity
                                          .currentPeriodPoints[index]
                                          .totalPoints
                                          .toString(),
                                  orElse: () => BoneMock.chars(
                                    switch (index) {
                                      zero => five,
                                      five => three,
                                      _ => switch (index % two == zero) {
                                          true => four,
                                          false => two,
                                        },
                                    },
                                  ),
                                ),
                                maxLines: one,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.end,
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium?.copyWith(
                                      fontFamily: FontFamily.lato,
                                      fontWeight:
                                          leaderboardStatisticsState.maybeWhen(
                                        gotLeaderboardStatistics: (
                                          leaderboardStatisticsEntity,
                                          leaderboardPositionEntity,
                                        ) =>
                                            switch (leaderboardPositionEntity !=
                                                    null &&
                                                leaderboardPositionEntity
                                                        .position !=
                                                    null &&
                                                leaderboardPositionEntity
                                                        .page !=
                                                    null &&
                                                _computeUserPositionOnLeaderboardUsing(
                                                      page:
                                                          leaderboardPositionEntity
                                                              .page!,
                                                      position:
                                                          leaderboardPositionEntity
                                                              .position!,
                                                      returnIndexPositionInstead:
                                                          false,
                                                    ) >=
                                                    one &&
                                                _computeUserPositionOnLeaderboardUsing(
                                                      page:
                                                          leaderboardPositionEntity
                                                              .page!,
                                                      position:
                                                          leaderboardPositionEntity
                                                              .position!,
                                                      returnIndexPositionInstead:
                                                          false,
                                                    ) <=
                                                    fifteen) {
                                          true
                                              when pageNumberNotifierValue ==
                                                      leaderboardPositionEntity!
                                                          .page &&
                                                  index ==
                                                      _computeUserPositionOnLeaderboardUsing(
                                                        page:
                                                            leaderboardPositionEntity
                                                                .page!,
                                                        position:
                                                            leaderboardPositionEntity
                                                                .position!,
                                                        returnIndexPositionInstead:
                                                            true,
                                                      ) &&
                                                  _computeUserPositionOnLeaderboardUsing(
                                                        page:
                                                            leaderboardPositionEntity
                                                                .page!,
                                                        position:
                                                            leaderboardPositionEntity
                                                                .position!,
                                                        returnIndexPositionInstead:
                                                            true,
                                                      ) <
                                                      leaderboardStatisticsEntity
                                                          .currentPeriodPoints
                                                          .length =>
                                            FontWeight.w400,
                                          _ => FontWeight.w700,
                                        },
                                        orElse: () => FontWeight.w700,
                                      ),
                                      height: oneDotNil,
                                      letterSpacing: nilDotNil,
                                      color:
                                          leaderboardStatisticsState.maybeWhen(
                                        gotLeaderboardStatistics: (
                                          leaderboardStatisticsEntity,
                                          leaderboardPositionEntity,
                                        ) =>
                                            switch (leaderboardPositionEntity !=
                                                    null &&
                                                leaderboardPositionEntity
                                                        .position !=
                                                    null &&
                                                leaderboardPositionEntity
                                                        .page !=
                                                    null &&
                                                _computeUserPositionOnLeaderboardUsing(
                                                      page:
                                                          leaderboardPositionEntity
                                                              .page!,
                                                      position:
                                                          leaderboardPositionEntity
                                                              .position!,
                                                      returnIndexPositionInstead:
                                                          false,
                                                    ) >=
                                                    one &&
                                                _computeUserPositionOnLeaderboardUsing(
                                                      page:
                                                          leaderboardPositionEntity
                                                              .page!,
                                                      position:
                                                          leaderboardPositionEntity
                                                              .position!,
                                                      returnIndexPositionInstead:
                                                          false,
                                                    ) <=
                                                    fifteen) {
                                          true
                                              when pageNumberNotifierValue ==
                                                      leaderboardPositionEntity!
                                                          .page &&
                                                  index ==
                                                      _computeUserPositionOnLeaderboardUsing(
                                                        page:
                                                            leaderboardPositionEntity
                                                                .page!,
                                                        position:
                                                            leaderboardPositionEntity
                                                                .position!,
                                                        returnIndexPositionInstead:
                                                            true,
                                                      ) &&
                                                  _computeUserPositionOnLeaderboardUsing(
                                                        page:
                                                            leaderboardPositionEntity
                                                                .page!,
                                                        position:
                                                            leaderboardPositionEntity
                                                                .position!,
                                                        returnIndexPositionInstead:
                                                            true,
                                                      ) <
                                                      leaderboardStatisticsEntity
                                                          .currentPeriodPoints
                                                          .length =>
                                            hex3478F5,
                                          _ => null,
                                        },
                                        orElse: () => null,
                                      ),
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: fourteenDotNil,
              ),
            ],
          ),
        ),
      );
}
