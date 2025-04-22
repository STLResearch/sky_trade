import 'package:flutter/material.dart'
    show
        Axis,
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShape,
        BuildContext,
        CircleBorder,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
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
        TextStyle,
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
    show hex5D7285, hexB8CCE3, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eight,
        eightDotNil,
        eightDotSevenSeven,
        fifteenDotNil,
        fortyNineDotNil,
        fourDotNil,
        fourteenDotNil,
        nineteenDotTwo,
        one,
        sixteenDotEight,
        sixteenDotNil,
        ten,
        tenDotNil,
        thirtyDotNil,
        twentyDotNil,
        twentyEightDotNil,
        twentyFourDotNil,
        twentyThreeDotNil,
        zero;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/referral_history_bloc/referral_history_bloc.dart'
    show ReferralHistoryBloc, ReferralHistoryEvent, ReferralHistoryState;
import 'package:sky_trade/features/referral/presentation/widgets/highlights_section.dart';
import 'package:sky_trade/features/referral/presentation/widgets/referrals_table.dart';

class History extends StatefulWidget {
  const History({
    required this.tablePageNumberNotifier,
    super.key,
  });

  final ValueNotifier<int> tablePageNumberNotifier;

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();

    super.initState();
  }

  void _getReferralHistory() => context.read<ReferralHistoryBloc>().add(
        ReferralHistoryEvent.getReferralHistory(
          page: widget.tablePageNumberNotifier.value,
        ),
      );

  bool _checkIsLastPageUsing({
    required int totalPageCount,
  }) {
    final numberOfPages = _computeNumberOfPagesUsing(
      totalPageCount: totalPageCount,
    );

    final isLastPage = widget.tablePageNumberNotifier.value == numberOfPages;

    return isLastPage;
  }

  int _computeNumberOfPagesUsing({
    required int totalPageCount,
  }) =>
      (totalPageCount / eight).ceil();

  void _goToNextPage() {
    widget.tablePageNumberNotifier.value++;
    _getReferralHistory();
  }

  void _goToPage({
    required int number,
  }) {
    widget.tablePageNumberNotifier.value = number;
    _getReferralHistory();
  }

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: twentyDotNil,
          ),
          Text(
            context.localize.yourReferrals,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          const HighlightsSection(),
          const SizedBox(
            height: twentyEightDotNil,
          ),
          ReferralsTable(
            pageNumberNotifier: widget.tablePageNumberNotifier,
          ),
          const SizedBox(
            height: twentyFourDotNil,
          ),
          Row(
            children: [
              Expanded(
                child: BlocBuilder<ReferralHistoryBloc, ReferralHistoryState>(
                  builder: (_, referralHistoryState) => RawScrollbar(
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
                          referralHistoryState.maybeWhen(
                            gotReferralHistory: (referralHistoryEntity) =>
                                switch (
                                    referralHistoryEntity.stats.count.point ==
                                        zero) {
                              true => zero,
                              false => _computeNumberOfPagesUsing(
                                  totalPageCount:
                                      referralHistoryEntity.stats.count.point,
                                ),
                            },
                            orElse: () => ten,
                          ),
                          (index) => Skeletonizer(
                            effect: referralHistoryState.maybeWhen(
                              failedToGetReferralHistory: (_) =>
                                  const SoldColorEffect(
                                color: hexEBEBF4,
                              ),
                              orElse: () => ShimmerEffect(
                                highlightColor: Theme.of(
                                  context,
                                ).scaffoldBackgroundColor,
                              ),
                            ),
                            enabled: referralHistoryState.maybeWhen(
                              gotReferralHistory: (_) => false,
                              orElse: () => true,
                            ),
                            child: Skeleton.leaf(
                              child: ValueListenableBuilder(
                                valueListenable: widget.tablePageNumberNotifier,
                                builder: (
                                  _,
                                  pageNumberNotifierValue,
                                  __,
                                ) =>
                                    InkWell(
                                  customBorder: const CircleBorder(),
                                  child: Container(
                                    padding:
                                        const EdgeInsetsDirectional.symmetric(
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
              BlocBuilder<ReferralHistoryBloc, ReferralHistoryState>(
                builder: (_, referralHistoryState) => RichText(
                  text: WidgetSpan(
                    child: InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(
                          eightDotNil,
                        ),
                      ),
                      onTap: referralHistoryState.maybeWhen(
                        gotReferralHistory: (
                          referralHistoryEntity,
                        ) =>
                            switch (referralHistoryEntity.stats.count.point ==
                                zero) {
                          true => null,
                          false => () {
                              final isLastPage = _checkIsLastPageUsing(
                                totalPageCount:
                                    referralHistoryEntity.stats.count.point,
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
                                color: referralHistoryState.maybeWhen(
                                  gotReferralHistory: (
                                    referralHistoryEntity,
                                  ) {
                                    if (referralHistoryEntity
                                            .stats.count.point ==
                                        zero) {
                                      return hexEBEBF4;
                                    }

                                    final isLastPage = _checkIsLastPageUsing(
                                      totalPageCount: referralHistoryEntity
                                          .stats.count.point,
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
                              color: referralHistoryState.maybeWhen(
                                gotReferralHistory: (
                                  referralHistoryEntity,
                                ) {
                                  if (referralHistoryEntity.stats.count.point ==
                                      zero) {
                                    return hexEBEBF4;
                                  }

                                  final isLastPage = _checkIsLastPageUsing(
                                    totalPageCount:
                                        referralHistoryEntity.stats.count.point,
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
          const SizedBox(
            height: fortyNineDotNil,
          ),
        ],
      );
}
