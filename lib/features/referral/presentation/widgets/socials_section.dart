import 'package:dartz/dartz.dart' show Function1;
import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        EdgeInsetsDirectional,
        MainAxisAlignment,
        Padding,
        Row,
        SizedBox,
        StatelessWidget,
        Widget;
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hexE9F5FE;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        elevenDotNil,
        fortyNineDotNil,
        fortySixDotNil,
        fourteenDotFive,
        fourteenDotNil,
        nilDotNil,
        thirteenDotNil,
        two;
import 'package:sky_trade/core/utils/enums/ui.dart'
    show Socials, SocialsSectionArrangement;
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';

class SocialsSection extends StatelessWidget {
  const SocialsSection({
    required this.socialsSectionArrangement,
    required this.onSocialsItemTap,
    super.key,
  });

  final SocialsSectionArrangement socialsSectionArrangement;
  final Function1<Socials, void> onSocialsItemTap;

  @override
  Widget build(BuildContext context) => switch (socialsSectionArrangement) {
        SocialsSectionArrangement.flat => _buildFlatArrangementOfSocials(),
        SocialsSectionArrangement.cube => _buildCubeArrangementOfSocials(),
      };

  Widget _buildFlatArrangementOfSocials() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List<Widget>.generate(
          Socials.values.length,
          (index) => _buildSocialsCardUsing(
            socialsIndex: index,
          ),
        ),
      );

  Widget _buildCubeArrangementOfSocials() => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              two,
              (index) => Padding(
                padding: EdgeInsetsDirectional.only(
                  end: switch (Socials.values[index]) {
                    Socials.facebook => fourteenDotNil,
                    _ => nilDotNil,
                  },
                ),
                child: _buildSocialsCardUsing(
                  socialsIndex: index,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: elevenDotNil,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              two,
              (index) => Padding(
                padding: EdgeInsetsDirectional.only(
                  end: switch (Socials.values[index + two]) {
                    Socials.google => fourteenDotNil,
                    _ => nilDotNil,
                  },
                ),
                child: _buildSocialsCardUsing(
                  socialsIndex: index + two,
                ),
              ),
            ),
          ),
        ],
      );

  Widget _buildSocialsCardUsing({
    required int socialsIndex,
  }) =>
      Card(
        width: fortySixDotNil,
        height: fortyNineDotNil,
        cornerRadius: eightDotNil,
        backgroundColor: hexE9F5FE,
        onTap: () => onSocialsItemTap(
          Socials.values[socialsIndex],
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            vertical: fourteenDotFive,
            horizontal: thirteenDotNil,
          ),
          child: _buildSocialsIconUsing(
            index: socialsIndex,
          ),
        ),
      );

  SvgPicture _buildSocialsIconUsing({
    required int index,
  }) =>
      switch (Socials.values[index]) {
        Socials.facebook => Assets.svgs.referralFacebook.svg(),
        Socials.linkedIn => Assets.svgs.referralLinkedIn.svg(),
        Socials.google => Assets.svgs.referralGoogle.svg(),
        Socials.x => Assets.svgs.referralX.svg(),
      };
}
