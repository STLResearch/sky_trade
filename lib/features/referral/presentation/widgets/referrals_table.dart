// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' show Platform;

import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        Axis,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        Padding,
        Radius,
        RawScrollbar,
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
        Theme,
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/resources/colors.dart'
    show hex419918, hexB8CCE3, hexEBEBF4, hexF0F4FA, hexFF9D65;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eight,
        eightDotNil,
        fifteen,
        fifteenDotNil,
        fourteen,
        nilDotNil,
        one,
        oneHundredDotNil,
        seven,
        six,
        sixteenDotNil,
        sixtyDotNil,
        sixtySixDotNil,
        tenDotNil,
        thirtyDotNil,
        three,
        twelveDotNil,
        twentySevenDotNil,
        twentySixDotNil,
        twentyTwoDotFive,
        two,
        twoHundredDotNil,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show hyphen;
import 'package:sky_trade/core/utils/enums/ui.dart' show ReferralsHistory;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/referral_history_bloc/referral_history_bloc.dart'
    show ReferralHistoryBloc, ReferralHistoryEvent, ReferralHistoryState;

class ReferralsTable extends StatefulWidget {
  const ReferralsTable({
    required this.pageNumberNotifier,
    super.key,
  });

  final ValueNotifier<int> pageNumberNotifier;

  @override
  State<ReferralsTable> createState() => _ReferralsTableState();
}

class _ReferralsTableState extends State<ReferralsTable> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _maybeGetReferralHistory();

    super.initState();
  }

  void _maybeGetReferralHistory() =>
      context.read<ReferralHistoryBloc>().state.whenOrNull(
            initial: _getReferralHistory,
          );

  void _getReferralHistory() => context.read<ReferralHistoryBloc>().add(
        ReferralHistoryEvent.getReferralHistory(
          page: widget.pageNumberNotifier.value,
        ),
      );

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => RawScrollbar(
        controller: _scrollController,
        interactive: true,
        thumbVisibility: true,
        trackVisibility: false,
        thickness: eightDotNil,
        thumbColor: hexB8CCE3,
        radius: const Radius.circular(
          thirtyDotNil,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List<Widget>.generate(
                  ReferralsHistory.values.length,
                  (index) =>
                      BlocBuilder<ReferralHistoryBloc, ReferralHistoryState>(
                    builder: (_, referralHistoryState) => Padding(
                      padding: EdgeInsetsDirectional.only(
                        end: switch (ReferralsHistory.values[index]) {
                          ReferralsHistory.date ||
                          ReferralsHistory.amount ||
                          ReferralsHistory.description =>
                            sixteenDotNil,
                          ReferralsHistory.balance => nilDotNil,
                        },
                      ),
                      child: SizedBox(
                        width: switch (ReferralsHistory.values[index]) {
                          ReferralsHistory.date => oneHundredDotNil,
                          ReferralsHistory.amount => sixtySixDotNil,
                          ReferralsHistory.description => twoHundredDotNil,
                          ReferralsHistory.balance => sixtySixDotNil,
                        },
                        child: Text(
                          switch (ReferralsHistory.values[index]) {
                            ReferralsHistory.date => context.localize.date,
                            ReferralsHistory.amount => context.localize.amount,
                            ReferralsHistory.description =>
                              context.localize.description,
                            ReferralsHistory.balance =>
                              context.localize.balance,
                          },
                          textAlign: switch (ReferralsHistory.values[index]) {
                            ReferralsHistory.date ||
                            ReferralsHistory.amount ||
                            ReferralsHistory.description =>
                              TextAlign.start,
                            ReferralsHistory.balance => TextAlign.end,
                          },
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                                fontSize: fifteenDotNil,
                                height: twentyTwoDotFive / fifteenDotNil,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: twentySixDotNil,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Column(
                    children: [
                      ...List<Widget>.generate(
                        eight,
                        (index) => Column(
                          children: [
                            if (index != zero)
                              const SizedBox(
                                height: twelveDotNil,
                              ),
                            BlocBuilder<ReferralHistoryBloc,
                                ReferralHistoryState>(
                              builder: (_, referralHistoryState) => Container(
                                padding: const EdgeInsetsDirectional.all(
                                  tenDotNil,
                                ),
                                decoration: switch (index % two == zero) {
                                  true => null,
                                  false => BoxDecoration(
                                      color: referralHistoryState.maybeWhen(
                                        gotReferralHistory:
                                            (referralHistoryEntity) => switch (
                                                referralHistoryEntity
                                                    .histories.isEmpty) {
                                          true => Theme.of(
                                              context,
                                            ).scaffoldBackgroundColor,
                                          false => hexF0F4FA,
                                        },
                                        orElse: () => hexF0F4FA,
                                      ),
                                      borderRadius:
                                          BorderRadiusDirectional.circular(
                                        eightDotNil,
                                      ),
                                    ),
                                },
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List<Widget>.generate(
                                    ReferralsHistory.values.length,
                                    (rowIndex) => Padding(
                                      padding: EdgeInsetsDirectional.only(
                                        end: switch (
                                            ReferralsHistory.values[rowIndex]) {
                                          ReferralsHistory.date ||
                                          ReferralsHistory.amount ||
                                          ReferralsHistory.description =>
                                            sixteenDotNil,
                                          ReferralsHistory.balance => nilDotNil,
                                        },
                                      ),
                                      child: SizedBox(
                                        width: switch (
                                            ReferralsHistory.values[rowIndex]) {
                                          ReferralsHistory.date =>
                                            oneHundredDotNil,
                                          ReferralsHistory.amount =>
                                            sixtySixDotNil,
                                          ReferralsHistory.description =>
                                            twoHundredDotNil,
                                          ReferralsHistory.balance =>
                                            sixtySixDotNil,
                                        },
                                        child: Skeletonizer(
                                          effect:
                                              referralHistoryState.maybeWhen(
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
                                          enabled:
                                              referralHistoryState.maybeWhen(
                                            gotReferralHistory: (_) => false,
                                            orElse: () => true,
                                          ),
                                          child: Text(
                                            referralHistoryState.maybeWhen(
                                              gotReferralHistory:
                                                  (referralHistoryEntity) =>
                                                      switch (
                                                          referralHistoryEntity
                                                              .histories
                                                              .isEmpty) {
                                                false
                                                    when index <
                                                        referralHistoryEntity
                                                            .histories.length =>
                                                  switch (ReferralsHistory
                                                      .values[rowIndex]) {
                                                    ReferralsHistory.date =>
                                                      referralHistoryEntity
                                                          .histories[index]
                                                          .date,
                                                    ReferralsHistory.amount =>
                                                      referralHistoryEntity
                                                          .histories[index]
                                                          .amount,
                                                    ReferralsHistory
                                                          .description =>
                                                      referralHistoryEntity
                                                          .histories[index]
                                                          .description,
                                                    ReferralsHistory.balance =>
                                                      referralHistoryEntity
                                                          .histories[index]
                                                          .balance
                                                          .toString(),
                                                  },
                                                _ => switch (ReferralsHistory
                                                      .values[rowIndex]) {
                                                    ReferralsHistory.date =>
                                                      context.localize.date,
                                                    ReferralsHistory.amount =>
                                                      context.localize.amount,
                                                    ReferralsHistory
                                                          .description =>
                                                      context
                                                          .localize.description,
                                                    ReferralsHistory.balance =>
                                                      context.localize.balance,
                                                  },
                                              },
                                              orElse: () => BoneMock.chars(
                                                switch (ReferralsHistory
                                                    .values[rowIndex]) {
                                                  ReferralsHistory.date =>
                                                    switch (
                                                        index % two == zero) {
                                                      true => seven,
                                                      false => six,
                                                    },
                                                  ReferralsHistory.amount =>
                                                    switch (
                                                        index % two == zero) {
                                                      true => one,
                                                      false => two,
                                                    },
                                                  ReferralsHistory
                                                        .description =>
                                                    switch (
                                                        index % two == zero) {
                                                      true => fourteen,
                                                      false => fifteen,
                                                    },
                                                  ReferralsHistory.balance =>
                                                    switch (
                                                        index % two == zero) {
                                                      true => three,
                                                      false => two,
                                                    },
                                                },
                                              ),
                                            ),
                                            maxLines: one,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: switch (ReferralsHistory
                                                .values[rowIndex]) {
                                              ReferralsHistory.date ||
                                              ReferralsHistory.description =>
                                                TextAlign.start,
                                              ReferralsHistory.amount ||
                                              ReferralsHistory.balance =>
                                                TextAlign.end,
                                            },
                                            style: Theme.of(
                                              context,
                                            ).textTheme.bodySmall?.copyWith(
                                                  fontSize: fifteenDotNil,
                                                  height: twentyTwoDotFive /
                                                      fifteenDotNil,
                                                  color: referralHistoryState
                                                      .maybeWhen(
                                                    gotReferralHistory:
                                                        (referralHistoryEntity) =>
                                                            switch (
                                                                referralHistoryEntity
                                                                    .histories
                                                                    .isEmpty) {
                                                      true => Theme.of(
                                                          context,
                                                        ).scaffoldBackgroundColor,
                                                      false
                                                          when index >=
                                                                  referralHistoryEntity
                                                                      .histories
                                                                      .length &&
                                                              index % two ==
                                                                  zero =>
                                                        Theme.of(
                                                          context,
                                                        ).scaffoldBackgroundColor,
                                                      false
                                                          when index >=
                                                              referralHistoryEntity
                                                                  .histories
                                                                  .length =>
                                                        hexF0F4FA,
                                                      _
                                                          when ReferralsHistory
                                                                          .values[
                                                                      rowIndex] ==
                                                                  ReferralsHistory
                                                                      .amount &&
                                                              referralHistoryEntity
                                                                  .histories[
                                                                      index]
                                                                  .amount
                                                                  .startsWith(
                                                                hyphen,
                                                              ) =>
                                                        hexFF9D65,
                                                      _
                                                          when ReferralsHistory
                                                                      .values[
                                                                  rowIndex] ==
                                                              ReferralsHistory
                                                                  .amount =>
                                                        hex419918,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  BlocBuilder<ReferralHistoryBloc, ReferralHistoryState>(
                    builder: (_, referralHistoryState) =>
                        referralHistoryState.maybeWhen(
                      gotReferralHistory: (referralHistoryEntity) =>
                          switch (referralHistoryEntity.histories.isEmpty) {
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
              SizedBox(
                height: switch (Platform.isIOS) {
                  true => sixtyDotNil,
                  false => twentySevenDotNil,
                },
              ),
            ],
          ),
        ),
      );
}
