import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        FontWeight,
        RichText,
        SizedBox,
        StatelessWidget,
        TextAlign,
        TextSpan,
        Theme,
        VoidCallback,
        Widget;
import 'package:sky_ways/core/resources/colors.dart' show hex0653EA;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show fifteenDotNil, fourteenDotNil, twentyOneDotNil;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_ways/features/auth/presentation/widgets/section_divider.dart';
import 'package:sky_ways/features/auth/presentation/widgets/spannable_text.dart';

final class FooterSection extends StatelessWidget {
  const FooterSection({
    required this.text,
    required this.clickableText,
    required this.clickableTextEnabled,
    required this.onClickableTextTap,
    super.key,
  });

  final String text;
  final String clickableText;
  final bool clickableTextEnabled;
  final VoidCallback onClickableTextTap;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SectionDivider(
            fillWidth: false,
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          RichText(
            text: TextSpan(
              children: [
                SpannableText.buildWith(
                  context,
                  text: text + whiteSpace,
                  textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: fourteenDotNil,
                        height: twentyOneDotNil / fourteenDotNil,
                      ),
                ),
                SpannableText.buildWith(
                  context,
                  text: clickableText,
                  onTap: switch (clickableTextEnabled) {
                    true => onClickableTextTap,
                    false => null,
                  },
                  textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: fourteenDotNil,
                        height: twentyOneDotNil / fourteenDotNil,
                        color: hex0653EA,
                      ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );
}
