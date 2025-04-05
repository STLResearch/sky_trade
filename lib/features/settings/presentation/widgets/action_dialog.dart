import 'package:flutter/material.dart'
    show
        AlertDialog,
        BuildContext,
        Text,
        TextButton,
        Theme,
        VoidCallback,
        showDialog;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

final class ActionDialog {
  static void show(
    BuildContext context, {
    required String content,
    String? title,
    VoidCallback? onActionDismissed,
    String? actionDismissText,
    VoidCallback? onActionConfirmed,
    String? actionConfirmText,
  }) {
    showDialog<void>(
      context: context,
      builder: (_) => AlertDialog.adaptive(
        title: switch (title != null) {
          true => Text(
              title!,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge,
            ),
          false => null,
        },
        content: Text(
          content,
          style: Theme.of(
            context,
          ).textTheme.bodySmall,
        ),
        actions: [
          if (onActionDismissed != null)
            TextButton(
              onPressed: onActionDismissed,
              child: Text(
                actionDismissText ?? context.localize.no,
              ),
            ),
          if (onActionConfirmed != null)
            TextButton(
              onPressed: onActionConfirmed,
              child: Text(
                actionConfirmText ?? context.localize.yes,
              ),
            ),
        ],
      ),
    );
  }
}
