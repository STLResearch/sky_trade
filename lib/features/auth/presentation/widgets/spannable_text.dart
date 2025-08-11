// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart'
    show BuildContext, TextSpan, TextStyle, Theme, VoidCallback;

final class SpannableText {
  static TextSpan buildWith(
    BuildContext context, {
    required String text,
    VoidCallback? onTap,
    TextStyle? textStyle,
  }) =>
      TextSpan(
        text: text,
        style: textStyle ??
            Theme.of(
              context,
            ).textTheme.bodySmall,
        recognizer: switch (onTap == null) {
          true => null,
          false => TapGestureRecognizer()..onTap = onTap,
        },
      );
}
