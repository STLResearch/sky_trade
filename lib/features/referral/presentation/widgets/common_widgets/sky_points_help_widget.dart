import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/common_widgets/faq_modal_bottom_sheet.dart';

class SkyPointsHelpWidget extends StatelessWidget {
  const SkyPointsHelpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
      child: SizedBox(
        height: 43,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: hex0653EA,
          ),
          onPressed: () {
            showModalBottomSheet<Placeholder>(
              context: context,
              builder: (BuildContext context) {
                return FaqModalBottomSheet();
              },
            );
          },
          child: Text(
            context.localize.howCanIEarnSkyPoints,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.poppins,
              color: hexFFFFFF,
            ),
          ),
        ),
      ),
    );
  }
}
