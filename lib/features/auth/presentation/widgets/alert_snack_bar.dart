import 'package:flutter/material.dart'
    show
        BuildContext,
        DismissDirection,
        ScaffoldMessenger,
        SnackBar,
        SnackBarAction,
        SnackBarBehavior,
        Text,
        TextOverflow,
        Theme,
        VoidCallback;
import 'package:sky_trade/core/resources/numbers/ui.dart' show five, four;

final class AlertSnackBar {
  static void show(
    BuildContext context, {
    required String message,
    String? actionText,
    VoidCallback? onActionTap,
    int? dismissDurationSeconds,
  }) {
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            message,
            maxLines: four,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).snackBarTheme.contentTextStyle,
          ),
          behavior: SnackBarBehavior.floating,
          dismissDirection: DismissDirection.horizontal,
          duration: Duration(
            seconds: dismissDurationSeconds ?? five,
          ),
          action: switch (actionText != null && onActionTap != null) {
            true => SnackBarAction(
                label: actionText!,
                onPressed: onActionTap!,
              ),
            false => null,
          },
        ),
      );
  }
}
