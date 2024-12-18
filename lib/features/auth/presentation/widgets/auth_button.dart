import 'package:flutter/material.dart'
    show
        BorderSide,
        BuildContext,
        CircularProgressIndicator,
        Color,
        Colors,
        ElevatedButton,
        Flexible,
        LayoutBuilder,
        MainAxisAlignment,
        Row,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        VoidCallback,
        Widget,
        WidgetStatePropertyAll;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hex595959, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyFiveDotNil,
        sixteenDotNil,
        twentyFourDotNil,
        twentyTwoDotFive,
        twoDotNil;
import 'package:sky_trade/core/utils/enums/ui.dart' show AuthButtonType;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

final class AuthButton extends StatelessWidget {
  const AuthButton({
    required this.type,
    required this.enabled,
    required this.indicateProgress,
    required this.onPressed,
    super.key,
  });

  final AuthButtonType type;
  final bool enabled;
  final bool indicateProgress;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (_, constraints) => ElevatedButton(
          onPressed: switch (enabled) {
            true => onPressed,
            false => null,
          },
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: switch (type) {
                  AuthButtonType.getStarted => null,
                  AuthButtonType.continueWithApple ||
                  AuthButtonType.continueWithGoogle ||
                  AuthButtonType.moreOptions =>
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
                  AuthButtonType.continueWithApple ||
                  AuthButtonType.continueWithGoogle ||
                  AuthButtonType.moreOptions =>
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
            false => _buildChildUsing(
                context,
                type: type,
              ),
          },
        ),
      );

  Widget _buildChildUsing(
    BuildContext context, {
    required AuthButtonType type,
  }) =>
      switch (type) {
        AuthButtonType.getStarted ||
        AuthButtonType.moreOptions =>
          _buildTextWith(
            context,
          ),
        AuthButtonType.continueWithApple ||
        AuthButtonType.continueWithGoogle =>
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              switch (type) {
                AuthButtonType.continueWithApple => Assets.svgs.apple.svg(
                    width: twentyFourDotNil,
                    height: twentyFourDotNil,
                  ),
                _ => Assets.svgs.google.svg(
                    width: twentyFourDotNil,
                    height: twentyFourDotNil,
                  ),
              },
              const SizedBox(
                width: fifteenDotNil,
              ),
              Flexible(
                child: _buildTextWith(
                  context,
                ),
              ),
            ],
          ),
      };

  Widget _buildTextWith(
    BuildContext context,
  ) =>
      Text(
        switch (type) {
          AuthButtonType.getStarted => context.localize.getStarted,
          AuthButtonType.continueWithApple =>
            context.localize.continueWithApple,
          AuthButtonType.continueWithGoogle =>
            context.localize.continueWithGoogle,
          AuthButtonType.moreOptions => context.localize.moreOptions,
        },
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: fifteenDotNil,
              height: twentyTwoDotFive / fifteenDotNil,
              color: switch (type) {
                AuthButtonType.getStarted => hexFFFFFF,
                AuthButtonType.continueWithApple ||
                AuthButtonType.continueWithGoogle ||
                AuthButtonType.moreOptions =>
                  hex595959,
              },
            ),
      );
}
