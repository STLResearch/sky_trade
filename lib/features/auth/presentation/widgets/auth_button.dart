// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Function0;
import 'package:flutter/material.dart'
    show
        BorderSide,
        BuildContext,
        CircularProgressIndicator,
        Color,
        Colors,
        ElevatedButton,
        LayoutBuilder,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget,
        WidgetStatePropertyAll;
import 'package:sky_trade/core/resources/colors.dart' show hex595959, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyFiveDotNil,
        sixteenDotNil,
        twentyTwoDotFive,
        twoDotNil;
import 'package:sky_trade/core/utils/enums/ui.dart' show AuthButtonType;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

final class AuthButton extends StatelessWidget {
  const AuthButton({
    required this.type,
    required this.indicateProgress,
    this.onPressed,
    super.key,
  });

  final AuthButtonType type;

  final bool indicateProgress;

  final Function0<void>? onPressed;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (_, constraints) => ElevatedButton(
          onPressed: onPressed,
          style: Theme.of(
            context,
          ).elevatedButtonTheme.style?.copyWith(
                backgroundColor: switch (type) {
                  AuthButtonType.getStarted => null,
                  AuthButtonType.continueAsGuest =>
                    const WidgetStatePropertyAll<Color>(
                      Colors.transparent,
                    ),
                },
                fixedSize: WidgetStatePropertyAll<Size>(
                  Size(
                    constraints.maxWidth,
                    fiftyFiveDotNil,
                  ),
                ),
                side: switch (type) {
                  AuthButtonType.getStarted => null,
                  AuthButtonType.continueAsGuest =>
                    const WidgetStatePropertyAll<BorderSide>(
                      BorderSide(
                        color: hex595959,
                      ),
                    ),
                },
              ),
          child: switch (indicateProgress) {
            true => const SizedBox(
                width: sixteenDotNil,
                height: sixteenDotNil,
                child: CircularProgressIndicator(
                  color: hexFFFFFF,
                  strokeWidth: twoDotNil,
                ),
              ),
            false => Text(
                switch (type) {
                  AuthButtonType.getStarted => context.localize.getStarted,
                  AuthButtonType.continueAsGuest =>
                    context.localize.continueAsGuest,
                },
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(
                      fontSize: fifteenDotNil,
                      height: twentyTwoDotFive / fifteenDotNil,
                      color: switch (type) {
                        AuthButtonType.getStarted => hexFFFFFF,
                        AuthButtonType.continueAsGuest => hex595959,
                      },
                    ),
              ),
          },
        ),
      );
}
