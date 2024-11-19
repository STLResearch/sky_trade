import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart';
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    required this.showDisabledColor,
    required this.onPressed,
    super.key,
  });

  final bool showDisabledColor;
  final Function0<void> onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
      onPressed: onPressed,
      child: Opacity(
        opacity: showDisabledColor ? 0.5 : 1,
        child: Row(
          children: [
            Text(
              '${context.localize.next}  ',
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.poppins,
                color: hex5D7285,
              ),
            ),
            Assets.svgs.nextArrow.svg(),
          ],
        ),
      ),
    );
  }
}
