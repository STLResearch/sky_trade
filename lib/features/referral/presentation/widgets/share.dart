import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        CrossAxisAlignment,
        FontWeight,
        MainAxisAlignment,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:qr_flutter/qr_flutter.dart' show QrImageView;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        elevenDotNil,
        fiveDotNil,
        fortyNineDotNil,
        oneThirtyNineDotSixEight,
        tenDotNil,
        thirteenDotOneSix,
        thirtyFiveDotNil,
        twentyDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show comma;
import 'package:sky_trade/core/utils/enums/ui.dart'
    show SocialsSectionArrangement;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/copiable_content_card.dart';
import 'package:sky_trade/features/referral/presentation/widgets/email_field.dart';
import 'package:sky_trade/features/referral/presentation/widgets/socials_section.dart';

class Share extends StatelessWidget {
  const Share({super.key});

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
          CopiableContentCard(
            copiableContent: 'REF.23GlFa?!',
            actionText: context.localize.copyCode,
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
          CopiableContentCard(
            copiableContent: 'sky.trade/ref=glwadys',
            actionText: context.localize.copyLink,
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
              QrImageView(
                data: 'Hello :-)',
                size: oneThirtyNineDotSixEight,
                // version: ,
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
