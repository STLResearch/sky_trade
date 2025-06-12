import 'package:flutter/material.dart'
    show
        AlertDialog,
        BuildContext,
        EdgeInsets,
        EdgeInsetsDirectional,
        FontWeight,
        MainAxisAlignment,
        Padding,
        Row,
        SizedBox,
        Text,
        TextButton,
        Theme,
        VoidCallback,
        showDialog;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show hex0072F0, hex222222, hex686868;
import 'package:sky_trade/core/resources/numbers/ui.dart' show
    fifteenDotNil,
    fourteenDotNil,
    nilDotNil,
    sixteenDotNil,
    tenDotNil,
    thirteenDotNil,
    twelveDotNil,
    twentyDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

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
        contentPadding: const EdgeInsetsDirectional.only(
          start: sixteenDotNil,
          top: twelveDotNil,
          end: sixteenDotNil,
          bottom: tenDotNil,
        ),
        title: switch (title != null) {
          true => Padding(
              padding: const EdgeInsets.only(
                bottom: tenDotNil,
              ),
              child: Text(
                title!,
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(
                      fontFamily: FontFamily.roboto,
                      fontSize: fifteenDotNil,
                      fontWeight: FontWeight.w400,
                      height: twentyDotNil / fourteenDotNil,
                      letterSpacing: nilDotNil,
                      color: hex222222,
                    ),
              ),
            ),
          false => null,
        },
        content: Text(
          content,
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(
                fontFamily: FontFamily.roboto,
                fontSize: thirteenDotNil,
                fontWeight: FontWeight.w400,
                height: twentyDotNil / fourteenDotNil,
                letterSpacing: nilDotNil,
                color: hex686868,
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: sixteenDotNil,
              end: sixteenDotNil,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (onActionDismissed != null) ...[
                  TextButton(
                    onPressed: onActionDismissed,
                    child: Text(
                      context.localize.no,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w500,
                            height: sixteenDotNil / twelveDotNil,
                            letterSpacing: nilDotNil,
                            color: hex0072F0,
                          ),
                    ),
                  ),
                  const SizedBox(
                    width: tenDotNil,
                  ),
                ],
                if (onActionConfirmed != null)
                  TextButton(
                    onPressed: onActionConfirmed,
                    child: Text(
                      context.localize.yes,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(
                            fontFamily: FontFamily.poppins,
                            fontWeight: FontWeight.w500,
                            height: sixteenDotNil / twelveDotNil,
                            letterSpacing: nilDotNil,
                            color: hex0072F0,
                          ),
                    ),
                  ),
              ],
            ),
          ),
        ],
        actionsPadding: EdgeInsetsDirectional.zero,
      ),
    );
  }
}
