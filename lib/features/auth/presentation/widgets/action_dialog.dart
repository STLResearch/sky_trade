import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        BuildContext,
        Column,
        CrossAxisAlignment,
        Dialog,
        EdgeInsets,
        EdgeInsetsDirectional,
        Flexible,
        MainAxisSize,
        Row,
        SingleChildScrollView,
        Size,
        SizedBox,
        Text,
        TextButton,
        Theme,
        VoidCallback,
        WidgetStatePropertyAll,
        showDialog;
import 'package:sky_trade/core/resources/colors.dart' show hex0072F0;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiftyDotNil,
        fourDotNil,
        nilDotNil,
        sixteenDotNil,
        tenDotNil,
        twelveDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

final class ActionDialog {
  static void show(
    BuildContext context, {
    required String content,
    bool? dismissible,
    String? title,
    VoidCallback? onActionDismissed,
    String? actionDismissText,
    VoidCallback? onActionConfirmed,
    String? actionConfirmText,
  }) {
    showDialog<void>(
      context: context,
      barrierDismissible: dismissible ?? true,
      builder: (_) => Dialog(
        insetPadding: const EdgeInsets.symmetric(
          horizontal: fiftyDotNil,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: sixteenDotNil,
            vertical: twelveDotNil,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Text(
                  title,
                  style: Theme.of(
                    context,
                  ).dialogTheme.titleTextStyle,
                ),
              if (title != null)
                const SizedBox(
                  height: fourDotNil,
                ),
              Text(
                content,
                style: Theme.of(
                  context,
                ).dialogTheme.contentTextStyle,
              ),
              if (onActionDismissed != null || onActionConfirmed != null)
                const SizedBox(
                  height: tenDotNil,
                ),
              if (onActionDismissed != null || onActionConfirmed != null)
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (onActionDismissed != null)
                        Flexible(
                          child: TextButton(
                            style: Theme.of(
                              context,
                            ).textButtonTheme.style?.copyWith(
                                  fixedSize: const WidgetStatePropertyAll<Size>(
                                    Size.fromHeight(
                                      sixteenDotNil,
                                    ),
                                  ),
                                ),
                            onPressed: onActionDismissed,
                            child: Text(
                              actionDismissText ?? context.localize.no,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.copyWith(
                                    fontSize: twelveDotNil,
                                    height: sixteenDotNil / twelveDotNil,
                                    letterSpacing: nilDotNil,
                                    color: hex0072F0,
                                  ),
                            ),
                          ),
                        ),
                      if (onActionConfirmed != null)
                        Flexible(
                          child: TextButton(
                            style: Theme.of(
                              context,
                            ).textButtonTheme.style?.copyWith(
                                  fixedSize: const WidgetStatePropertyAll<Size>(
                                    Size.fromHeight(
                                      sixteenDotNil,
                                    ),
                                  ),
                                ),
                            onPressed: onActionConfirmed,
                            child: Text(
                              actionConfirmText ?? context.localize.yes,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyLarge?.copyWith(
                                    fontSize: twelveDotNil,
                                    height: sixteenDotNil / twelveDotNil,
                                    letterSpacing: nilDotNil,
                                    color: hex0072F0,
                                  ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
