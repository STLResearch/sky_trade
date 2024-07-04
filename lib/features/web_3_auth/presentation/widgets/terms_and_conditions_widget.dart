import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: AppLocalizations.of(context)!.bycreatinganaccountiagreewith,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0xFF87878D),
            ),
          ),
          TextSpan(
            text: AppLocalizations.of(context)!.termsandconditions,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0xFF0653EA),
            ),
          ),
          TextSpan(
            text: AppLocalizations.of(context)!.and,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0xFF87878D),
            ),
          ),
          TextSpan(
            text: AppLocalizations.of(context)!.privacypolicy,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0xFF0653EA),
            ),
          ),
          TextSpan(
            text: AppLocalizations.of(context)!.agreement,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0xFF87878D),
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
