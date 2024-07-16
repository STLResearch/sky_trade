import 'package:flutter/material.dart'
    show
        BuildContext,
        RichText,
        StatelessWidget,
        TextAlign,
        TextSpan,
        Theme,
        VoidCallback,
        Widget;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sky_ways/core/resources/colors.dart' show hex0653EA, hex0754E9;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_ways/features/web_3_auth/presentation/widgets/spannable_text.dart';

final class AgreementSection extends StatelessWidget {
  const AgreementSection({
    required this.onTermsAndConditionsTap,
    required this.onPrivacyPolicyTap,
    super.key,
  });

  final VoidCallback onTermsAndConditionsTap;
  final VoidCallback onPrivacyPolicyTap;

  @override
  Widget build(BuildContext context) => RichText(
        text: TextSpan(
          children: [
            SpannableText.buildWith(
              context,
              text:
                  AppLocalizations.of(context)!.byCreatingAnAccountIAgreeWith +
                      whiteSpace,
            ),
            SpannableText.buildWith(
              context,
              text: AppLocalizations.of(context)!.termsAndConditions,
              onTap: onTermsAndConditionsTap,
              textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: hex0653EA,
                  ),
            ),
            SpannableText.buildWith(
              context,
              text: whiteSpace + AppLocalizations.of(context)!.and + whiteSpace,
            ),
            SpannableText.buildWith(
              context,
              text: AppLocalizations.of(context)!.privacyPolicy,
              onTap: onPrivacyPolicyTap,
              textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: hex0754E9,
                  ),
            ),
            SpannableText.buildWith(
              context,
              text: whiteSpace + AppLocalizations.of(context)!.agreement,
            ),
          ],
        ),
        textAlign: TextAlign.center,
      );
}
