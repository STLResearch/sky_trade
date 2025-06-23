import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BuildContext,
        Column,
        Dialog,
        EdgeInsets,
        EdgeInsetsDirectional,
        ElevatedButton,
        Expanded,
        MainAxisSize,
        Padding,
        Row,
        SingleChildScrollView,
        SizedBox,
        Text,
        TextAlign,
        Theme,
        showDialog;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hexB8B8B8, hexE04F64, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiftyDotNil,
        fourDotNil,
        nilDotNil,
        sixteenDotNil,
        sixtyDotNil,
        tenDotNil,
        twelveDotNil;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class DeleteActionDialog {
  static void show({
    required BuildContext context,
    required String text,
    required Function0<void> onDeletePressed,
    required Function0<void> onCancelPressed,
  }) {
    showDialog<void>(
      context: context,
      builder: (_) => Dialog(
        insetPadding: const EdgeInsets.symmetric(
          horizontal: fiftyDotNil,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: sixteenDotNil,
            vertical: twelveDotNil,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Assets.svgs.delete.svg(
                  width: sixtyDotNil,
                  height: sixtyDotNil,
                ),
                const SizedBox(
                  height: fourDotNil,
                ),
                Text(
                  context.localize.deleteYourAccount,
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).dialogTheme.titleTextStyle,
                ),
                const SizedBox(
                  height: fourDotNil,
                ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).dialogTheme.contentTextStyle,
                ),
                const SizedBox(
                  height: tenDotNil,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: onCancelPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: hexB8B8B8,
                        ),
                        child: Text(
                          context.localize.cancel,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                                fontSize: twelveDotNil,
                                height: sixteenDotNil / twelveDotNil,
                                letterSpacing: nilDotNil,
                                color: hexFFFFFF,
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: tenDotNil,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: onDeletePressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: hexE04F64,
                        ),
                        child: Text(
                          context.localize.delete,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                                fontSize: twelveDotNil,
                                height: sixteenDotNil / twelveDotNil,
                                letterSpacing: nilDotNil,
                                color: hexFFFFFF,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
