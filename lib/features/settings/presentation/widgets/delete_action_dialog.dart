import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BorderRadius,
        BuildContext,
        Column,
        Dialog,
        EdgeInsets,
        ElevatedButton,
        Expanded,
        FontWeight,
        MainAxisSize,
        Padding,
        RoundedRectangleBorder,
        Row,
        SingleChildScrollView,
        SizedBox,
        Text,
        TextAlign,
        Theme,
        showDialog;
import 'package:sky_trade/core/assets/generated/assets.gen.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show hex222222, hex87878D, hexB8B8B8, hexE04F64, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        sixteenDotNil,
        sixtyDotNil,
        tenDotNil,
        twelveDotNil,
        twentyDotNil,
        twentyFiveDotNil;
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
          horizontal: twentyDotNil,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            fifteenDotNil,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: twentyDotNil,
            vertical: twentyFiveDotNil,
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
                  height: fifteenDotNil,
                ),
                Text(
                  context.localize.deleteYourAccount,
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: sixteenDotNil,
                        color: hex222222,
                      ),
                ),
                const SizedBox(
                  height: fifteenDotNil,
                ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: tenDotNil,
                        color: hex87878D,
                      ),
                ),
                const SizedBox(
                  height: fifteenDotNil,
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
                          ).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: twelveDotNil,
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
                          ).textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: twelveDotNil,
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
