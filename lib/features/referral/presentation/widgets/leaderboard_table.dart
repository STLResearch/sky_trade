// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' show Platform;

import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        Axis,
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShape,
        BuildContext,
        CircleBorder,
        Column,
        Container,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        InkWell,
        MediaQuery,
        Padding,
        Radius,
        RawScrollbar,
        RichText,
        RoundedRectangleBorder,
        Row,
        ScrollController,
        SingleChildScrollView,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        TextOverflow,
        TextStyle,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        WidgetSpan;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeleton, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show hex4285F4, hex5D7285, hexB8CCE3, hexEBEBF4, hexF5F5F5;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eightDotSevenSeven,
        fifteen,
        fifteenDotNil,
        five,
        four,
        fourDotNil,
        fourteen,
        fourteenDotNil,
        nilDotNil,
        nineteenDotTwo,
        one,
        oneDotNil,
        seventeen,
        six,
        sixDotFive,
        sixDotNil,
        sixteen,
        sixteenDotEight,
        sixteenDotNil,
        ten,
        tenDotNil,
        thirtyDotNil,
        thirtyFourDotFive,
        thirtyFourDotNil,
        thirtyOneDotNil,
        three,
        twelveDotNil,
        twentyFourDotNil,
        twentyThreeDotNil,
        twentyTwoDotFive,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show threeDots;
import 'package:sky_trade/core/utils/enums/ui.dart' show Leaderboard;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/leaderboard_statistics_bloc/leaderboard_statistics_bloc.dart'
    show
        LeaderboardStatisticsBloc,
        LeaderboardStatisticsEvent,
        LeaderboardStatisticsState;
import 'package:sky_trade/features/referral/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';

class LeaderboardTable extends StatefulWidget {
  const LeaderboardTable({
    required this.pageNumberNotifier,
    super.key,
  });

  final ValueNotifier<int> pageNumberNotifier;

  @override
  State<LeaderboardTable> createState() => _LeaderboardTableState();
}

class _LeaderboardTableState extends State<LeaderboardTable> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _maybeGetLeaderboardStatistics();

    super.initState();
  }

  void _maybeGetLeaderboardStatistics() =>
      context.read<LeaderboardStatisticsBloc>().state.whenOrNull(
            initial: _getLeaderboardStatistics,
          );

  void _getLeaderboardStatistics() =>
      context.read<LeaderboardStatisticsBloc>().add(
            LeaderboardStatisticsEvent.getLeaderboardStatistics(
              page: widget.pageNumberNotifier.value,
            ),
          );

  bool _checkIsLastPageUsing({
    required int totalPageCount,
  }) {
    final numberOfPages = _computeNumberOfPagesUsing(
      totalPageCount: totalPageCount,
    );

    final isLastPage = widget.pageNumberNotifier.value == numberOfPages;

    return isLastPage;
  }

  int _computeNumberOfPagesUsing({
    required int totalPageCount,
  }) =>
      (totalPageCount / six).ceil();

  void _goToNextPage() {
    widget.pageNumberNotifier.value++;
    _getLeaderboardStatistics();
  }

  void _goToPage({
    required int number,
  }) {
    widget.pageNumberNotifier.value = number;
    _getLeaderboardStatistics();
  }

  int _computeUserPositionOnLeaderboardUsing({
    required int page,
    required int position,
    required bool returnIndexPositionInstead,
  }) {
    final userPosition = six - ((six * page) - position);

    if (returnIndexPositionInstead) {
      return userPosition - one;
    }

    return userPosition;
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

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
          padding: EdgeInsetsDirectional.only(
            top: thirtyOneDotNil,
            bottom: switch (Platform.isIOS) {
              true => nilDotNil,
              false => thirtyOneDotNil,
            },
            start: thirtyFourDotNil,
            end: thirtyFourDotNil,
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
                    flex: switch (Leaderboard.values[index]) {
                      Leaderboard.user => three,
                      Leaderboard.balance => one,
                    },
                    child: BlocBuilder<LeaderboardStatisticsBloc,
                        LeaderboardStatisticsState>(
                      builder: (_, leaderboardStatisticsState) => Text(
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
                              color: leaderboardStatisticsState.maybeWhen(
                                gotLeaderboardStatistics:
                                    (leaderboardStatisticsEntity, _) => switch (
                                        leaderboardStatisticsEntity
                                            .currentPeriodPoints.isEmpty) {
                                  true => Theme.of(
                                      context,
                                    ).scaffoldBackgroundColor,
                                  false => null,
                                },
                                orElse: () => null,
                              ),
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: sixDotNil,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Column(
                    children: [
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
                                  flex: switch (Leaderboard.values[rowIndex]) {
                                    Leaderboard.user => three,
                                    Leaderboard.balance => one,
                                  },
                                  child: BlocBuilder<LeaderboardStatisticsBloc,
                                      LeaderboardStatisticsState>(
                                    builder: (_, leaderboardStatisticsState) =>
                                        Skeletonizer(
                                      effect:
                                          leaderboardStatisticsState.maybeWhen(
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
                                      enabled:
                                          leaderboardStatisticsState.maybeWhen(
                                        gotLeaderboardStatistics: (_, __) =>
                                            false,
                                        orElse: () => true,
                                      ),
                                      child: ValueListenableBuilder(
                                        valueListenable:
                                            widget.pageNumberNotifier,
                                        builder: (
                                          _,
                                          pageNumberNotifierValue,
                                          __,
                                        ) =>
                                            Text(
                                          leaderboardStatisticsState.maybeWhen(
                                            gotLeaderboardStatistics: (
                                              leaderboardStatisticsEntity,
                                              _,
                                            ) =>
                                                switch (
                                                    leaderboardStatisticsEntity
                                                        .currentPeriodPoints
                                                        .isEmpty) {
                                              false
                                                  when index <
                                                      leaderboardStatisticsEntity
                                                          .currentPeriodPoints
                                                          .length =>
                                                switch (Leaderboard
                                                    .values[rowIndex]) {
                                                  Leaderboard.user =>
                                                    leaderboardStatisticsEntity
                                                            .currentPeriodPoints[
                                                                index]
                                                            .blockchainAddress ??
                                                        threeDots,
                                                  Leaderboard.balance =>
                                                    leaderboardStatisticsEntity
                                                        .currentPeriodPoints[
                                                            index]
                                                        .totalPoints
                                                        .toString(),
                                                },
                                              _ => switch (Leaderboard
                                                    .values[rowIndex]) {
                                                  Leaderboard.user =>
                                                    context.localize.user,
                                                  Leaderboard.balance =>
                                                    context.localize.balance,
                                                },
                                            },
                                            orElse: () => BoneMock.chars(
                                              switch (Leaderboard
                                                  .values[rowIndex]) {
                                                Leaderboard.user => switch (
                                                      index) {
                                                    zero => fourteen,
                                                    two => sixteen,
                                                    _ => switch (
                                                          index % two == zero) {
                                                        true => fifteen,
                                                        false => seventeen,
                                                      },
                                                  },
                                                Leaderboard.balance => switch (
                                                      index) {
                                                    zero => five,
                                                    two => three,
                                                    _ => switch (
                                                          index % two == zero) {
                                                        true => four,
                                                        false => two,
                                                      },
                                                  },
                                              },
                                            ),
                                          ),
                                          maxLines: one,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: switch (
                                              Leaderboard.values[rowIndex]) {
                                            Leaderboard.user => TextAlign.start,
                                            Leaderboard.balance =>
                                              TextAlign.end,
                                          },
                                          style: Theme.of(
                                            context,
                                          ).textTheme.bodySmall?.copyWith(
                                                fontSize: fifteenDotNil,
                                                height: twentyTwoDotFive /
                                                    fifteenDotNil,
                                                fontWeight:
                                                    leaderboardStatisticsState
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
                                                              six) {
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
                                                      FontWeight.w700,
                                                    _ => null,
                                                  },
                                                  orElse: () => null,
                                                ),
                                                color:
                                                    leaderboardStatisticsState
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
                                                              six) {
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
                                                      hex4285F4,
                                                    _ => switch (
                                                          leaderboardStatisticsEntity
                                                              .currentPeriodPoints
                                                              .isEmpty) {
                                                        true ||
                                                        false
                                                            when index >=
                                                                leaderboardStatisticsEntity
                                                                    .currentPeriodPoints
                                                                    .length =>
                                                          Theme.of(
                                                            context,
                                                          ).scaffoldBackgroundColor,
                                                        _ => null,
                                                      },
                                                  },
                                                  orElse: () => null,
                                                ),
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: twelveDotNil,
                            ),
                            BlocBuilder<LeaderboardStatisticsBloc,
                                LeaderboardStatisticsState>(
                              builder: (_, leaderboardStatisticsState) =>
                                  Divider(
                                height: oneDotNil,
                                color: leaderboardStatisticsState.maybeWhen(
                                  gotLeaderboardStatistics: (
                                    leaderboardStatisticsEntity,
                                    _,
                                  ) =>
                                      switch (leaderboardStatisticsEntity
                                          .currentPeriodPoints.isEmpty) {
                                    true => Theme.of(
                                        context,
                                      ).scaffoldBackgroundColor,
                                    false => hexF5F5F5,
                                  },
                                  orElse: () => hexF5F5F5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  BlocBuilder<LeaderboardStatisticsBloc,
                      LeaderboardStatisticsState>(
                    builder: (_, leaderboardStatisticsState) =>
                        leaderboardStatisticsState.maybeWhen(
                      gotLeaderboardStatistics: (
                        leaderboardStatisticsEntity,
                        _,
                      ) =>
                          switch (leaderboardStatisticsEntity
                              .currentPeriodPoints.isEmpty) {
                        true => Text(
                            context.localize.thereIsNothingToShowHere,
                            style: Theme.of(
                              context,
                            ).textTheme.bodyLarge?.copyWith(
                                  fontSize: fifteenDotNil,
                                  height: twentyTwoDotFive / fifteenDotNil,
                                ),
                          ),
                        false => const SizedBox.shrink(),
                      },
                      orElse: () => const SizedBox.shrink(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: BlocBuilder<LeaderboardStatisticsBloc,
                    LeaderboardStatisticsState>(
                  builder: (_, leaderboardStatisticsState) => RichText(
                    text: WidgetSpan(
                      child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(
                            eightDotNil,
                          ),
                        ),
                        onTap: leaderboardStatisticsState.maybeWhen(
                          gotLeaderboardStatistics: (
                            leaderboardStatisticsEntity,
                            leaderboardPositionEntity,
                          ) =>
                              switch (leaderboardStatisticsEntity.totalCount ==
                                  zero) {
                            true => null,
                            false => () {
                                if (leaderboardPositionEntity == null) {
                                  AlertSnackBar.show(
                                    context,
                                    message: context.localize
                                        .weCouldNotGetYourPositionOnTheLeaderboardTryRefreshingTheLeaderboardTableOrTheEntirePageThenTryViewingYourPositionAgain,
                                  );

                                  return;
                                }

                                if (leaderboardPositionEntity.position ==
                                        null ||
                                    leaderboardPositionEntity.page == null) {
                                  AlertSnackBar.show(
                                    context,
                                    message: context.localize
                                        .youHaveNotEarnedAnyPointsWithinTheCurrentPeriod,
                                  );

                                  return;
                                }

                                final totalNumberOfPages =
                                    _computeNumberOfPagesUsing(
                                  totalPageCount:
                                      leaderboardStatisticsEntity.totalCount,
                                );

                                if (leaderboardPositionEntity.page! > zero &&
                                    leaderboardPositionEntity.page! <=
                                        totalNumberOfPages) {
                                  _goToPage(
                                    number: leaderboardPositionEntity.page!,
                                  );

                                  return;
                                }

                                AlertSnackBar.show(
                                  context,
                                  message: context.localize
                                      .thereWasAnErrorComputingYourPositionOnTheLeaderboard,
                                );
                              },
                          },
                          orElse: () => null,
                        ),
                        child: Text(
                          context.localize.viewMyPosition,
                          style: TextStyle(
                            fontFamily: FontFamily.lato,
                            fontWeight: FontWeight.w700,
                            fontSize: sixteenDotNil,
                            height: nineteenDotTwo / sixteenDotNil,
                            color: leaderboardStatisticsState.maybeWhen(
                              gotLeaderboardStatistics: (
                                leaderboardStatisticsEntity,
                                _,
                              ) =>
                                  switch (
                                      leaderboardStatisticsEntity.totalCount ==
                                          zero) {
                                true => hexEBEBF4,
                                false => hex4285F4,
                              },
                              orElse: () => hexEBEBF4,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: twentyFourDotNil,
              ),
              Row(
                crossAxisAlignment: switch (Platform.isIOS) {
                  true => CrossAxisAlignment.start,
                  false => CrossAxisAlignment.center,
                },
                children: [
                  Expanded(
                    child: BlocBuilder<LeaderboardStatisticsBloc,
                        LeaderboardStatisticsState>(
                      builder: (_, leaderboardStatisticsState) => RawScrollbar(
                        controller: _scrollController,
                        interactive: false,
                        thumbVisibility: false,
                        trackVisibility: false,
                        thickness: fourDotNil,
                        thumbColor: hexB8CCE3,
                        radius: const Radius.circular(
                          thirtyDotNil,
                        ),
                        child: SingleChildScrollView(
                          padding: const EdgeInsetsDirectional.symmetric(
                            vertical: eightDotNil,
                          ),
                          scrollDirection: Axis.horizontal,
                          controller: _scrollController,
                          child: Column(
                            children: [
                              Row(
                                children: List<Widget>.generate(
                                  leaderboardStatisticsState.maybeWhen(
                                    gotLeaderboardStatistics: (
                                      leaderboardStatisticsEntity,
                                      _,
                                    ) =>
                                        switch (leaderboardStatisticsEntity
                                                .totalCount ==
                                            zero) {
                                      true => zero,
                                      false => _computeNumberOfPagesUsing(
                                          totalPageCount:
                                              leaderboardStatisticsEntity
                                                  .totalCount,
                                        ),
                                    },
                                    orElse: () => ten,
                                  ),
                                  (index) => Skeletonizer(
                                    effect:
                                        leaderboardStatisticsState.maybeWhen(
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
                                    enabled:
                                        leaderboardStatisticsState.maybeWhen(
                                      gotLeaderboardStatistics: (
                                        _,
                                        __,
                                      ) =>
                                          false,
                                      orElse: () => true,
                                    ),
                                    child: Skeleton.leaf(
                                      child: ValueListenableBuilder(
                                        valueListenable:
                                            widget.pageNumberNotifier,
                                        builder: (
                                          _,
                                          pageNumberNotifierValue,
                                          __,
                                        ) =>
                                            InkWell(
                                          customBorder: const CircleBorder(),
                                          child: Container(
                                            padding: const EdgeInsetsDirectional
                                                .symmetric(
                                              vertical: eightDotNil,
                                              horizontal: tenDotNil,
                                            ),
                                            decoration: BoxDecoration(
                                              color: switch (index + one ==
                                                  pageNumberNotifierValue) {
                                                true => hex5D7285,
                                                false => null,
                                              },
                                              shape: BoxShape.circle,
                                            ),
                                            child: Text(
                                              (index + one).toString(),
                                              style: Theme.of(
                                                context,
                                              ).textTheme.bodySmall?.copyWith(
                                                    fontFamily: FontFamily.lato,
                                                    fontSize: fourteenDotNil,
                                                    height: sixteenDotEight /
                                                        fourteenDotNil,
                                                    color: switch (index +
                                                            one ==
                                                        pageNumberNotifierValue) {
                                                      true => Theme.of(
                                                          context,
                                                        ).scaffoldBackgroundColor,
                                                      false => hex5D7285,
                                                    },
                                                  ),
                                            ),
                                          ),
                                          onTap: () {
                                            _goToPage(
                                              number: index + one,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              if (Platform.isIOS)
                                const SizedBox(
                                  height: thirtyFourDotFive,
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: twentyThreeDotNil,
                  ),
                  Column(
                    children: [
                      if (Platform.isIOS)
                        const SizedBox(
                          height: sixDotFive,
                        ),
                      BlocBuilder<LeaderboardStatisticsBloc,
                          LeaderboardStatisticsState>(
                        builder: (_, leaderboardStatisticsState) => RichText(
                          text: WidgetSpan(
                            child: InkWell(
                              customBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.circular(
                                  eightDotNil,
                                ),
                              ),
                              onTap: leaderboardStatisticsState.maybeWhen(
                                gotLeaderboardStatistics: (
                                  leaderboardStatisticsEntity,
                                  _,
                                ) =>
                                    switch (leaderboardStatisticsEntity
                                            .totalCount ==
                                        zero) {
                                  true => null,
                                  false => () {
                                      final isLastPage = _checkIsLastPageUsing(
                                        totalPageCount:
                                            leaderboardStatisticsEntity
                                                .totalCount,
                                      );

                                      if (!isLastPage) {
                                        _goToNextPage();
                                      }
                                    },
                                },
                                orElse: () => null,
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.all(
                                  eightDotNil,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      context.localize.next,
                                      style: TextStyle(
                                        fontFamily: FontFamily.lato,
                                        fontWeight: FontWeight.w700,
                                        fontSize: sixteenDotNil,
                                        height: nineteenDotTwo / sixteenDotNil,
                                        color: leaderboardStatisticsState
                                            .maybeWhen(
                                          gotLeaderboardStatistics: (
                                            leaderboardStatisticsEntity,
                                            _,
                                          ) {
                                            if (leaderboardStatisticsEntity
                                                    .totalCount ==
                                                zero) {
                                              return hexEBEBF4;
                                            }

                                            final isLastPage =
                                                _checkIsLastPageUsing(
                                              totalPageCount:
                                                  leaderboardStatisticsEntity
                                                      .totalCount,
                                            );

                                            return switch (isLastPage) {
                                              true => hexEBEBF4,
                                              false => hex5D7285,
                                            };
                                          },
                                          orElse: () => hexEBEBF4,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: eightDotSevenSeven,
                                    ),
                                    Assets.svgs.nextArrow.svg(
                                      color:
                                          leaderboardStatisticsState.maybeWhen(
                                        gotLeaderboardStatistics: (
                                          leaderboardStatisticsEntity,
                                          _,
                                        ) {
                                          if (leaderboardStatisticsEntity
                                                  .totalCount ==
                                              zero) {
                                            return hexEBEBF4;
                                          }

                                          final isLastPage =
                                              _checkIsLastPageUsing(
                                            totalPageCount:
                                                leaderboardStatisticsEntity
                                                    .totalCount,
                                          );

                                          return switch (isLastPage) {
                                            true => hexEBEBF4,
                                            false => hex5D7285,
                                          };
                                        },
                                        orElse: () => hexEBEBF4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
