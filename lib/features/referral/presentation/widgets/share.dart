import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        CrossAxisAlignment,
        EdgeInsets,
        EdgeInsetsDirectional,
        Expanded,
        FontWeight,
        Padding,
        Row,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:share_plus/share_plus.dart';
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeleton, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hex838187, hexE9F5FE, hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        elevenDotNil,
        fortyDotNil,
        fortyNineDotNil,
        fourDotNil,
        nineDotNil,
        six,
        sixteenDotNil,
        tenDotFive,
        tenDotNil,
        thirtyEightDotNil,
        thirtyFiveDotNil,
        twentyDotNil,
        twentyFourDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show comma;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/referral_entity_extensions.dart'
    show HighlightsEntityExtensions;
import 'package:sky_trade/features/referral/presentation/blocs/highlights_bloc/highlights_bloc.dart'
    show HighlightsBloc, HighlightsEvent, HighlightsState;
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';
import 'package:sky_trade/features/referral/presentation/widgets/email_field.dart'
    show EmailField;

class Share extends StatefulWidget {
  const Share({super.key});

  @override
  State<Share> createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  void initState() {
    _maybeGetHighlights();

    super.initState();
  }

  void _maybeGetHighlights() => context.read<HighlightsBloc>().state.whenOrNull(
        initial: _getHighlights,
      );

  void _getHighlights() => context.read<HighlightsBloc>().add(
        const HighlightsEvent.getHighlights(),
      );

  Future<void> _shareReferral(String referralCode, String referralLink) async {
    final message =
        context.localize.joinMeOnSkyTradeRadarAndStartEarningPointsUseMyCode +
            referralCode +
            context.localize.whenYouSignUpAndGetABonusSignUpHere +
            referralLink;

    final params = ShareParams(
      text: message,
    );

    await SharePlus.instance.share(params);
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: twentyDotNil,
          ),
          Text(
            context.localize.shareTheReferralLinkOrCode,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: sixteenDotNil,
                ),
          ),
          const SizedBox(
            height: twentyFourDotNil,
          ),
          Text(
            context.localize.code,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex838187,
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: twentyFourDotNil,
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
              child: Container(
                decoration: BoxDecoration(
                  color: hexE9F5FE,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(
                          eightDotNil,
                        ),
                        child: Text(
                          highlightsState.maybeWhen(
                            gotHighlights: (highlightsEntity) =>
                                highlightsEntity.referralCode,
                            orElse: () => BoneMock.chars(six),
                          ),
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: sixteenDotNil,
                              ),
                        ),
                      ),
                    ),
                    highlightsState.maybeWhen(
                      gotHighlights: (highlightsEntity) => Padding(
                        padding: const EdgeInsets.all(eightDotNil),
                        child: Card(
                          width: thirtyEightDotNil,
                          height: fortyDotNil,
                          cornerRadius: eightDotNil,
                          backgroundColor: hex0653EA,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.symmetric(
                              vertical: nineDotNil,
                              horizontal: tenDotFive,
                            ),
                            child: Assets.svgs.shareReferral.svg(),
                          ),
                          onTap: () => _shareReferral(
                            highlightsEntity.referralCode,
                            highlightsEntity.referralLink,
                          ),
                        ),
                      ),
                      orElse: () => Padding(
                        padding: const EdgeInsets.all(fourDotNil),
                        child: Skeleton.leaf(
                          child: Container(
                            width: thirtyEightDotNil,
                            height: fortyDotNil,
                            decoration: BoxDecoration(
                              color: hexEBEBF4,
                              borderRadius: BorderRadius.circular(eightDotNil),
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
          const SizedBox(
            height: tenDotNil,
          ),
          const SizedBox(
            height: thirtyFiveDotNil,
          ),
          Text(
            context.localize.inviteYourFriends + comma,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: sixteenDotNil,
                ),
          ),
          const SizedBox(
            height: elevenDotNil,
          ),
          const EmailField(),
          const SizedBox(
            height: thirtyFiveDotNil,
          ),
          Text(
            context.localize.shareYourUniqueQrCode,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
          ),
          const SizedBox(
            height: fortyNineDotNil,
          ),
        ],
      );
}
