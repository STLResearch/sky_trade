import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class SkyBalanceWidget extends StatelessWidget {
  const SkyBalanceWidget({
    required this.skyBalance,
    super.key,
  });

  final int skyBalance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
      child: SizedBox(
        child: Card(
          elevation: 12,
          shadowColor: hex263A4DE9,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: hexFFFFFF,
          child:  Padding(
            padding: const EdgeInsets.fromLTRB(18, 25, 18, 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localize.skyPointsBalance,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.poppins,
                    color: hex222222,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox( height: 30,),
                Text(
                  '$skyBalance ${context.localize.skyPoints}',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    fontFamily: FontFamily.poppins,
                    color: hex4285F4,
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
