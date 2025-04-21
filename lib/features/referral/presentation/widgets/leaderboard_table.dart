// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        Axis,
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShape,
        BuildContext,
        CircleBorder,
        Column,
        Container,
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
    show hex5D7285, hexB8CCE3, hexEBEBF4, hexF5F5F5;
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
        nineteenDotTwo,
        one,
        oneDotNil,
        seventeen,
        six,
        sixDotNil,
        sixteen,
        sixteenDotEight,
        sixteenDotNil,
        ten,
        tenDotNil,
        thirtyDotNil,
        thirtyFourDotNil,
        thirtyOneDotNil,
        three,
        twelveDotNil,
        twentyFourDotNil,
        twentyThreeDotNil,
        twentyTwoDotFive,
        two,
        zero;
import 'package:sky_trade/core/utils/enums/ui.dart' show Leaderboard;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/leaderboard_statistics_bloc/leaderboard_statistics_bloc.dart'
    show
        LeaderboardStatisticsBloc,
        LeaderboardStatisticsEvent,
        LeaderboardStatisticsState;
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
                                    (leaderboardStatisticsEntity) => switch (
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
                                        gotLeaderboardStatistics: (_) => false,
                                        orElse: () => true,
                                      ),
                                      child: Text(
                                        leaderboardStatisticsState.maybeWhen(
                                          gotLeaderboardStatistics:
                                              (leaderboardStatisticsEntity) =>
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
                                                      .blockchainAddress,
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
                                            switch (
                                                Leaderboard.values[rowIndex]) {
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
                                          Leaderboard.balance => TextAlign.end,
                                        },
                                        style: Theme.of(
                                          context,
                                        ).textTheme.bodySmall?.copyWith(
                                              fontSize: fifteenDotNil,
                                              height: twentyTwoDotFive /
                                                  fifteenDotNil,
                                              color: leaderboardStatisticsState
                                                  .maybeWhen(
                                                gotLeaderboardStatistics:
                                                    (leaderboardStatisticsEntity) =>
                                                        switch (leaderboardStatisticsEntity
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
                                                orElse: () => null,
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
                                  gotLeaderboardStatistics:
                                      (leaderboardStatisticsEntity) => switch (
                                          leaderboardStatisticsEntity
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
                      gotLeaderboardStatistics: (leaderboardStatisticsEntity) =>
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
              Row(
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
                          child: Row(
                            children: List<Widget>.generate(
                              leaderboardStatisticsState.maybeWhen(
                                gotLeaderboardStatistics:
                                    (leaderboardStatisticsEntity) => switch (
                                        leaderboardStatisticsEntity
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
                                  gotLeaderboardStatistics: (_) => false,
                                  orElse: () => true,
                                ),
                                child: Skeleton.leaf(
                                  child: ValueListenableBuilder(
                                    valueListenable: widget.pageNumberNotifier,
                                    builder: (_, pageNumberNotifierValue, __) =>
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
                                                color: switch (index + one ==
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
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: twentyThreeDotNil,
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
                            ) =>
                                switch (
                                    leaderboardStatisticsEntity.totalCount ==
                                        zero) {
                              true => null,
                              false => () {
                                  final isLastPage = _checkIsLastPageUsing(
                                    totalPageCount:
                                        leaderboardStatisticsEntity.totalCount,
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
                                    color: leaderboardStatisticsState.maybeWhen(
                                      gotLeaderboardStatistics: (
                                        leaderboardStatisticsEntity,
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
                                  color: leaderboardStatisticsState.maybeWhen(
                                    gotLeaderboardStatistics: (
                                      leaderboardStatisticsEntity,
                                    ) {
                                      if (leaderboardStatisticsEntity
                                              .totalCount ==
                                          zero) {
                                        return hexEBEBF4;
                                      }

                                      final isLastPage = _checkIsLastPageUsing(
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
        ),
      );
}
