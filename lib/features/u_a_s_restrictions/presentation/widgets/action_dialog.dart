import 'package:flutter/material.dart'
    show
        AlertDialog,
        BuildContext,
        Text,
        TextButton,
        Theme,
        VoidCallback,
        showDialog;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';

final class ActionDialog {
  static void show(
    BuildContext context, {
    required String content,
    String? title,
    VoidCallback? onActionDismissed,
    VoidCallback? onActionConfirmed,
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
                context.localize.no,
              ),
            ),
          if (onActionConfirmed != null)
            TextButton(
              onPressed: onActionConfirmed,
              child: Text(
                context.localize.yes,
              ),
            ),
        ],
      ),
    );
  }
}
