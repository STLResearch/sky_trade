import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Color(0xFFCCCCCC),
        ),
        const SizedBox(
          height: 15,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: AppLocalizations.of(context)!.alreadyhaveanaccount,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF87878D),
                ),
              ),
              TextSpan(
                text: AppLocalizations.of(context)!.login,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0653EA),
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Add your navigation or registration logic here
                  },
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
