//ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class ReferralCopyWidget extends StatelessWidget {
  const ReferralCopyWidget({
    required this.codeOrLink,
    required this.isCode,
    super.key,
  });

  final String codeOrLink;
  final bool isCode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: Card(
        elevation: 0,
        color: hexE9F5FE,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 17, 22, 17),
          child: Center(
            child: Row(
              children: [
                Text(
                  codeOrLink.length > 25 ? '${codeOrLink.substring(0, 25)}...' : codeOrLink,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.poppins,
                    color: hex222222,
                  ),
                ),
                const Spacer(),
                Text(
                  isCode ? context.localize.copyCode : context.localize.copyLink,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.poppins,
                    color: hex0653EA,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
