// SPDX-License-Identifier: UNLICENSED
                            
import 'package:flutter/material.dart'
    show
        BuildContext,
        DismissDirection,
        ScaffoldMessenger,
        SnackBar,
        SnackBarBehavior,
        Text,
        TextOverflow,
        Theme;
import 'package:sky_trade/core/resources/numbers/ui.dart' show five, four;

final class AlertSnackBar {
  static void show(
    BuildContext context, {
    required String message,
  }) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            message,
            maxLines: four,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(
              context,
            ).snackBarTheme.contentTextStyle,
          ),
          behavior: SnackBarBehavior.floating,
          dismissDirection: DismissDirection.horizontal,
          duration: const Duration(
            seconds: five,
          ),
        ),
      );
  }
}
