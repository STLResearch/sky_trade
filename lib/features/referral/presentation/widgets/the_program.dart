// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BoxDecoration,
        BoxShape,
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        MediaQuery,
        Padding,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex4285F4, hexE9F5FE;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotFive,
        eighteenDotNil,
        fifteenDotNil,
        fiveDotNil,
        fortyNineDotNil,
        fourteenDotNil,
        sixteenDotNil,
        sixtyThreeDotNil,
        thirtyFiveDotNil,
        three,
        twentyDotNil,
        twentyOneDotNil,
        twentySevenDotNil;
import 'package:sky_trade/core/utils/enums/ui.dart' show Tips;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';

class TheProgram extends StatelessWidget {
  const TheProgram({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: twentyDotNil,
          ),
          Text(
            context.localize.shareAndEarn,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: thirtyFiveDotNil,
          ),
          ...List<Widget>.generate(
            three,
            (index) => Column(
              children: [
                switch (Tips.values[index]) {
                  Tips.share => const SizedBox.shrink(),
                  Tips.registerAndClaim || Tips.earn => const SizedBox(
                      height: sixteenDotNil,
                    ),
                },
                Card(
                  width: MediaQuery.sizeOf(
                    context,
                  ).width,
                  cornerRadius: eightDotNil,
                  backgroundColor: Theme.of(
                    context,
                  ).scaffoldBackgroundColor,
                  elevated: true,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(
                      fifteenDotNil,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                width: sixtyThreeDotNil,
                                height: sixtyThreeDotNil,
                                padding: const EdgeInsetsDirectional.all(
                                  eighteenDotFive,
                                ),
                                decoration: const BoxDecoration(
                                  color: hexE9F5FE,
                                  shape: BoxShape.circle,
                                ),
                                child: _buildTipIconUsing(
                                  index: index,
                                ),
                              ),
                              const SizedBox(
                                height: fiveDotNil,
                              ),
                              Text(
                                _computeLocalizedTipTitleUsing(
                                  context,
                                  index: index,
                                ),
                                textAlign: TextAlign.center,
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: eighteenDotNil,
                                      height:
                                          twentySevenDotNil / eighteenDotNil,
                                      color: hex4285F4,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: fifteenDotNil,
                        ),
                        Expanded(
                          flex: three,
                          child: Text(
                            _computeLocalizedTipContentUsing(
                              context,
                              index: index,
                            ),
                            style: Theme.of(
                              context,
                            ).textTheme.bodyMedium?.copyWith(
                                  fontSize: fourteenDotNil,
                                  height: twentyOneDotNil / fourteenDotNil,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                switch (Tips.values[index]) {
                  Tips.share || Tips.registerAndClaim => const SizedBox(
                      height: sixteenDotNil,
                    ),
                  Tips.earn => const SizedBox.shrink(),
                },
                switch (Tips.values[index]) {
                  Tips.share ||
                  Tips.registerAndClaim =>
                    Assets.svgs.dottedLine.svg(),
                  Tips.earn => const SizedBox(
                      height: fortyNineDotNil,
                    ),
                },
              ],
            ),
          ),
        ],
      );

  SvgPicture _buildTipIconUsing({
    required int index,
  }) =>
      switch (Tips.values[index]) {
        Tips.share => Assets.svgs.share.svg(),
        Tips.registerAndClaim => Assets.svgs.earth.svg(),
        Tips.earn => Assets.svgs.referralGift.svg(),
      };

  String _computeLocalizedTipTitleUsing(
    BuildContext context, {
    required int index,
  }) =>
      switch (Tips.values[index]) {
        Tips.share => context.localize.share,
        Tips.registerAndClaim => context.localize.registerAndClaim,
        Tips.earn => context.localize.earn,
      };

  String _computeLocalizedTipContentUsing(
    BuildContext context, {
    required int index,
  }) =>
      switch (Tips.values[index]) {
        Tips.share => context.localize
            .sendYourInviteLinkOrCodeToYourFriendsAndExplainToThemHowCoolSkyTradeIs,
        Tips.registerAndClaim => context.localize
            .letThemRegisterAndClaimTheirAirspacesUsingYourReferralLinkOrCode,
        Tips.earn =>
          context.localize.youAndYourFriendsAreRewardedWith50CreditsAndMore,
      };
}
