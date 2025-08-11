// SPDX-License-Identifier: UNLICENSED
                            
import 'dart:io' show Platform;

import 'package:flutter/material.dart'
    show
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Center,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        LinearGradient,
        ListView,
        MainAxisAlignment,
        NeverScrollableScrollPhysics,
        PlaceholderAlignment,
        RichText,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextOverflow,
        TextSpan,
        Theme,
        Widget,
        WidgetSpan;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeleton, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex00FFFFFF, hex0653EA, hex161616, hexD0EBFF, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        five,
        four,
        fourDotNil,
        fourFiftyTwoDotNil,
        fourSeventySixDotNil,
        fourteenDotNil,
        minusNilDotOne,
        nilDotNil,
        nineDotNil,
        one,
        oneDotNil,
        sixteenDotEight,
        tenDotNil,
        thirtyTwoDotNil,
        three,
        twentyDotNil,
        twentyFourDotNil,
        twentyTwoDotNil,
        two,
        zero;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show plus, whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/rewards/presentation/blocs/daily_quests_bloc/daily_quests_bloc.dart'
    show DailyQuestsBloc, DailyQuestsState;
import 'package:sky_trade/features/rewards/presentation/widgets/card.dart';

class DailyQuestsSection extends StatelessWidget {
  const DailyQuestsSection({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                  gotQuests: (questEntities) => !questEntities[index].completed,
                  orElse: () => index == zero || index == two || index == three,
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
                              failedToGetQuests: (_) => const SoldColorEffect(
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
                                  false when index == three => BoneMock.words(
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
                                    height: thirtyTwoDotNil / fourteenDotNil,
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
                                        child: Assets.svgs.questPoints.svg(),
                                        alignment: PlaceholderAlignment.middle,
                                      ),
                                      const WidgetSpan(
                                        child: SizedBox(
                                          width: fourDotNil,
                                        ),
                                        alignment: PlaceholderAlignment.middle,
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
                                              overflow: TextOverflow.ellipsis,
                                              fontSize: tenDotNil,
                                              height:
                                                  twentyTwoDotNil / tenDotNil,
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
                                          height: twentyTwoDotNil / tenDotNil,
                                          letterSpacing: nilDotNil,
                                        ),
                                  ),
                                ),
                              false => RichText(
                                  maxLines: one,
                                  text: TextSpan(
                                    children: [
                                      WidgetSpan(
                                        child: Assets.svgs.questPoints.svg(),
                                        alignment: PlaceholderAlignment.middle,
                                      ),
                                      const WidgetSpan(
                                        child: SizedBox(
                                          width: fourDotNil,
                                        ),
                                        alignment: PlaceholderAlignment.middle,
                                      ),
                                      WidgetSpan(
                                        child: Skeletonizer(
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
                                              two,
                                            ),
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
                                        ),
                                        alignment: PlaceholderAlignment.middle,
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
                              borderRadius: BorderRadiusDirectional.circular(
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
                              failedToGetQuests: (_) => const SoldColorEffect(
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
        ],
      );
}
