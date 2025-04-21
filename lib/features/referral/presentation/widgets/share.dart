import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        FontWeight,
        MainAxisAlignment,
        Row,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:qr_flutter/qr_flutter.dart' show QrImageView;
import 'package:skeletonizer/skeletonizer.dart'
    show BoneMock, ShimmerEffect, Skeletonizer, SoldColorEffect;
import 'package:sky_trade/core/resources/colors.dart' show hexEBEBF4;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        elevenDotNil,
        five,
        fiveDotNil,
        fortyNineDotNil,
        four,
        oneThirtyNineDotSixEight,
        six,
        tenDotNil,
        thirteenDotOneSix,
        thirtyFiveDotNil,
        twentyDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show comma;
import 'package:sky_trade/core/utils/enums/ui.dart'
    show SocialsSectionArrangement;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/core/utils/extensions/referral_entity_extensions.dart'
    show HighlightsEntityExtensions;
import 'package:sky_trade/features/referral/presentation/blocs/highlights_bloc/highlights_bloc.dart'
    show HighlightsBloc, HighlightsEvent, HighlightsState;
import 'package:sky_trade/features/referral/presentation/blocs/referral_code_bloc/referral_code_bloc.dart'
    show ReferralCodeBloc, ReferralCodeEvent;
import 'package:sky_trade/features/referral/presentation/blocs/referral_link_bloc/referral_link_bloc.dart'
    show ReferralLinkBloc, ReferralLinkEvent;
import 'package:sky_trade/features/referral/presentation/widgets/copiable_content_card.dart';
import 'package:sky_trade/features/referral/presentation/widgets/email_field.dart'
    show EmailField;
import 'package:sky_trade/features/referral/presentation/widgets/socials_section.dart';

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
                ),
          ),
          const SizedBox(
            height: tenDotNil,
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
              child: CopiableContentCard(
                copiableContent: highlightsState.maybeWhen(
                  gotHighlights: (highlightsEntity) =>
                      highlightsEntity.referralCode,
                  orElse: () => BoneMock.chars(
                    six,
                  ),
                ),
                actionText: context.localize.copyCode,
                onActionTap: highlightsState.maybeWhen(
                  gotHighlights: (highlightsEntity) =>
                      () => context.read<ReferralCodeBloc>().add(
                            ReferralCodeEvent.copyCode(
                              code: highlightsEntity.referralCode,
                            ),
                          ),
                  orElse: () => null,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: fiveDotNil,
          ),
          SocialsSection(
            socialsSectionArrangement: SocialsSectionArrangement.flat,
            onSocialsItemTap: (socials) {},
          ),
          const SizedBox(
            height: fiveDotNil,
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
              child: CopiableContentCard(
                copiableContent: highlightsState.maybeWhen(
                  gotHighlights: (highlightsEntity) =>
                      highlightsEntity.referralLink,
                  orElse: () => BoneMock.words(
                    five,
                  ),
                ),
                actionText: context.localize.copyLink,
                onActionTap: highlightsState.maybeWhen(
                  gotHighlights: (highlightsEntity) =>
                      () => context.read<ReferralLinkBloc>().add(
                            ReferralLinkEvent.copyLink(
                              link: highlightsEntity.referralLink,
                            ),
                          ),
                  orElse: () => null,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: fiveDotNil,
          ),
          SocialsSection(
            socialsSectionArrangement: SocialsSectionArrangement.flat,
            onSocialsItemTap: (socials) {},
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
            height: elevenDotNil,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<HighlightsBloc, HighlightsState>(
                builder: (_, highlightsState) => QrImageView(
                  data: highlightsState.maybeWhen(
                    gotHighlights: (highlightsEntity) =>
                        highlightsEntity.referralLink,
                    orElse: () => BoneMock.words(
                      four,
                    ),
                  ),
                  size: oneThirtyNineDotSixEight,
                ),
              ),
              const SizedBox(
                width: thirteenDotOneSix,
              ),
              SocialsSection(
                socialsSectionArrangement: SocialsSectionArrangement.cube,
                onSocialsItemTap: (socials) {},
              ),
            ],
          ),
          const SizedBox(
            height: fortyNineDotNil,
          ),
        ],
      );
}
