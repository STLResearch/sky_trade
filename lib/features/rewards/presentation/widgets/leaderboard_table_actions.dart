// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        Axis,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Container,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        IconButton,
        InkWell,
        Padding,
        Radius,
        RawScrollbar,
        RichText,
        RoundedRectangleBorder,
        Row,
        ScrollController,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        WidgetSpan;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show ShimmerEffect, Skeleton, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show hex1E1E1E, hex3478F5, hexB8CCE3, hexCEEAFF, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteen,
        fiveDotNil,
        fourDotNil,
        fourteenDotNil,
        nilDotNil,
        one,
        ten,
        thirteenDotFive,
        thirtyDotNil,
        twentyFourDotNil,
        twentyTwoDotNil,
        zero;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/leaderboard_statistics_bloc/leaderboard_statistics_bloc.dart'
    show
        LeaderboardStatisticsBloc,
        LeaderboardStatisticsEvent,
        LeaderboardStatisticsState;
import 'package:sky_trade/features/rewards/presentation/widgets/alert_snack_bar.dart';

class LeaderboardTableActions extends StatefulWidget {
  const LeaderboardTableActions({
    required this.pageNumberNotifier,
    super.key,
  });

  final ValueNotifier<int> pageNumberNotifier;

  @override
  State<LeaderboardTableActions> createState() =>
      _LeaderboardTableActionsState();
}

class _LeaderboardTableActionsState extends State<LeaderboardTableActions> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();

    super.initState();
  }

  void _getLeaderboardStatistics() =>
      context.read<LeaderboardStatisticsBloc>().add(
            LeaderboardStatisticsEvent.getLeaderboardStatistics(
              page: widget.pageNumberNotifier.value,
            ),
          );

  bool _checkIsFirstPage() => widget.pageNumberNotifier.value == one;

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
      (totalPageCount / fifteen).ceil();

  void _goToPreviousPage() {
    widget.pageNumberNotifier.value--;
    _getLeaderboardStatistics();
  }

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
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsetsDirectional.all(
          twentyFourDotNil,
        ),
        child: Row(
          children: [
            BlocBuilder<LeaderboardStatisticsBloc, LeaderboardStatisticsState>(
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
                          switch (
                              leaderboardStatisticsEntity.totalCount == zero) {
                        true => null,
                        false => () {
                            if (leaderboardPositionEntity == null) {
                              AlertSnackBar.show(
                                context,
                                message: context.localize
                                    .weCouldNotGetYourPositionOnTheLeaderboardTryRefreshingThePageThenTryViewingYourPositionAgain,
                              );

                              return;
                            }

                            if (leaderboardPositionEntity.position == null ||
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
                      context.localize.seeMyPosition,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: fourteenDotNil,
                            height: twentyFourDotNil / fourteenDotNil,
                            letterSpacing: nilDotNil,
                            color: leaderboardStatisticsState.maybeWhen(
                              gotLeaderboardStatistics: (
                                leaderboardStatisticsEntity,
                                _,
                              ) =>
                                  switch (
                                      leaderboardStatisticsEntity.totalCount ==
                                          zero) {
                                true => hexEBEBF4,
                                false => hex3478F5,
                              },
                              orElse: () => hexEBEBF4,
                            ),
                          ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: twentyTwoDotNil,
            ),
            BlocBuilder<LeaderboardStatisticsBloc, LeaderboardStatisticsState>(
              builder: (_, leaderboardStatisticsState) => IconButton(
                icon: Assets.svgs.previous.svg(
                  color: leaderboardStatisticsState.maybeWhen(
                    gotLeaderboardStatistics: (
                      leaderboardStatisticsEntity,
                      _,
                    ) {
                      if (leaderboardStatisticsEntity.totalCount == zero) {
                        return hexEBEBF4;
                      }

                      final isFirstPage = _checkIsFirstPage();

                      return switch (isFirstPage) {
                        true => hexEBEBF4,
                        false => null,
                      };
                    },
                    orElse: () => hexEBEBF4,
                  ),
                ),
                onPressed: leaderboardStatisticsState.maybeWhen(
                  gotLeaderboardStatistics: (
                    leaderboardStatisticsEntity,
                    _,
                  ) =>
                      switch (leaderboardStatisticsEntity.totalCount == zero) {
                    true => null,
                    false => () {
                        final isFirstPage = _checkIsFirstPage();

                        if (!isFirstPage) {
                          _goToPreviousPage();
                        }
                      },
                  },
                  orElse: () => null,
                ),
              ),
            ),
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
                          gotLeaderboardStatistics: (
                            leaderboardStatisticsEntity,
                            _,
                          ) =>
                              switch (leaderboardStatisticsEntity.totalCount ==
                                  zero) {
                            true => zero,
                            false => _computeNumberOfPagesUsing(
                                totalPageCount:
                                    leaderboardStatisticsEntity.totalCount,
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
                            gotLeaderboardStatistics: (
                              _,
                              __,
                            ) =>
                                false,
                            orElse: () => true,
                          ),
                          child: Skeleton.leaf(
                            child: ValueListenableBuilder(
                              valueListenable: widget.pageNumberNotifier,
                              builder: (
                                _,
                                pageNumberNotifierValue,
                                __,
                              ) =>
                                  InkWell(
                                customBorder: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(
                                    eightDotNil,
                                  ),
                                ),
                                child: Container(
                                  padding:
                                      const EdgeInsetsDirectional.symmetric(
                                    vertical: fiveDotNil,
                                    horizontal: thirteenDotFive,
                                  ),
                                  decoration: BoxDecoration(
                                    color: switch (index + one ==
                                        pageNumberNotifierValue) {
                                      true => hexCEEAFF,
                                      false => null,
                                    },
                                    borderRadius:
                                        BorderRadiusDirectional.circular(
                                      eightDotNil,
                                    ),
                                  ),
                                  child: Text(
                                    (index + one).toString(),
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium?.copyWith(
                                          fontFamily: FontFamily.urbanist,
                                          fontWeight: FontWeight.w600,
                                          fontSize: fourteenDotNil,
                                          height:
                                              twentyTwoDotNil / fourteenDotNil,
                                          color: switch (index + one ==
                                              pageNumberNotifierValue) {
                                            true => hex3478F5,
                                            false => hex1E1E1E,
                                          },
                                          letterSpacing: nilDotNil,
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
            BlocBuilder<LeaderboardStatisticsBloc, LeaderboardStatisticsState>(
              builder: (_, leaderboardStatisticsState) => IconButton(
                icon: Assets.svgs.next.svg(
                  color: leaderboardStatisticsState.maybeWhen(
                    gotLeaderboardStatistics: (
                      leaderboardStatisticsEntity,
                      _,
                    ) {
                      if (leaderboardStatisticsEntity.totalCount == zero) {
                        return hexEBEBF4;
                      }

                      final isLastPage = _checkIsLastPageUsing(
                        totalPageCount: leaderboardStatisticsEntity.totalCount,
                      );

                      return switch (isLastPage) {
                        true => hexEBEBF4,
                        false => null,
                      };
                    },
                    orElse: () => hexEBEBF4,
                  ),
                ),
                onPressed: leaderboardStatisticsState.maybeWhen(
                  gotLeaderboardStatistics: (
                    leaderboardStatisticsEntity,
                    _,
                  ) =>
                      switch (leaderboardStatisticsEntity.totalCount == zero) {
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
              ),
            ),
          ],
        ),
      );
}
