// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BuildContext,
        EdgeInsetsDirectional,
        Expanded,
        MediaQuery,
        Padding,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextOverflow,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, ReadContext;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeleton, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hexB8B8B8, hexE9F5FE, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fifteenDotNil,
        fortyOneDotNil,
        fourteenDotNil,
        nineDotNil,
        one,
        sevenDotNil,
        six,
        sixteenDotNil,
        tenDotFive,
        thirtyEightDotNil,
        twentyOneDotNil,
        two;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show colon, exclamationMark, whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/referral_entity_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/highlights_bloc/highlights_bloc.dart'
    show HighlightsBloc, HighlightsState;
import 'package:sky_trade/features/referral/presentation/blocs/share_bloc/share_bloc.dart'
    show ShareBloc, ShareEvent, ShareState;
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class ShareableContentCard extends StatelessWidget {
  const ShareableContentCard({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<ShareBloc>(
        create: (_) => serviceLocator(),
        child: const ShareableContentCardView(),
      );
}

class ShareableContentCardView extends StatelessWidget {
  const ShareableContentCardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Card(
        width: MediaQuery.sizeOf(
          context,
        ).width,
        cornerRadius: eightDotNil,
        backgroundColor: hexE9F5FE,
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: sevenDotNil,
            bottom: sevenDotNil,
            start: sixteenDotNil,
            end: eightDotNil,
          ),
          child: Row(
            children: [
              Expanded(
                flex: two,
                child: BlocBuilder<HighlightsBloc, HighlightsState>(
                  builder: (_, highlightsState) => Skeletonizer(
                    effect: highlightsState.maybeWhen(
                      failedToGetHighlights: (_) => const SoldColorEffect(
                        color: hexEBEBF4,
                      ),
                      orElse: () => ShimmerEffect(
                        highlightColor: Theme.of(
                          context,
                        ).scaffoldBackgroundColor,
                      ),
                    ),
                    enabled: highlightsState.maybeWhen(
                      gotHighlights: (_) => false,
                      orElse: () => true,
                    ),
                    child: Text(
                      highlightsState.maybeWhen(
                        gotHighlights: (highlightsEntity) =>
                            highlightsEntity.referralCode,
                        orElse: () => BoneMock.chars(
                          six,
                        ),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: one,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(
                            fontSize: fourteenDotNil,
                            height: twentyOneDotNil / fourteenDotNil,
                          ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: fifteenDotNil,
              ),
              BlocBuilder<HighlightsBloc, HighlightsState>(
                builder: (_, highlightsState) => Skeletonizer(
                  effect: highlightsState.maybeWhen(
                    failedToGetHighlights: (_) => const SoldColorEffect(
                      color: hexEBEBF4,
                    ),
                    orElse: () => ShimmerEffect(
                      highlightColor: Theme.of(
                        context,
                      ).scaffoldBackgroundColor,
                    ),
                  ),
                  enabled: highlightsState.maybeWhen(
                    gotHighlights: (_) => false,
                    orElse: () => true,
                  ),
                  child: Skeleton.leaf(
                    child: BlocBuilder<ShareBloc, ShareState>(
                      builder: (_, shareState) => Card(
                        width: thirtyEightDotNil,
                        height: fortyOneDotNil,
                        cornerRadius: eightDotNil,
                        backgroundColor: shareState.maybeWhen(
                          sharing: () => hexB8B8B8,
                          orElse: () => hex0653EA,
                        ),
                        onTap: highlightsState.maybeWhen(
                          gotHighlights: (highlightsEntity) =>
                              shareState.maybeWhen(
                            sharing: () => null,
                            orElse: () => () => context.read<ShareBloc>().add(
                                  ShareEvent.share(
                                    subject: context.localize
                                        .yourExclusiveInvitationToSkyTrade,
                                    title: context.localize.skyTradeRadar,
                                    message: context.localize
                                            .joinMeOnSkyTradeRadarAndStartEarningPoints +
                                        exclamationMark +
                                        whiteSpace +
                                        context.localize.useMyCode +
                                        whiteSpace +
                                        highlightsEntity.referralCode +
                                        whiteSpace +
                                        context.localize
                                            .whenYouSignUpAndGetABonusSignUpHere +
                                        colon +
                                        whiteSpace +
                                        highlightsEntity.referralLink,
                                  ),
                                ),
                          ),
                          orElse: () => null,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                            vertical: tenDotFive,
                            horizontal: nineDotNil,
                          ),
                          child: Assets.svgs.shareReferral.svg(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
