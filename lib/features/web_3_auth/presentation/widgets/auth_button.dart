import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BorderSide,
        BuildContext,
        CircularProgressIndicator,
        Color,
        Colors,
        ElevatedButton,
        LayoutBuilder,
        MainAxisAlignment,
        Row,
        Size,
        SizedBox,
        Stack,
        StatelessWidget,
        Text,
        Theme,
        VoidCallback,
        Widget,
        WidgetStatePropertyAll;
import 'package:sky_ways/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_ways/core/resources/colors.dart' show hex595959, hexFFFFFF;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyFiveDotNil,
        sixteenDotNil,
        twentyFourDotNil,
        twentyTwoDotFive,
        twoDotNil;
import 'package:sky_ways/core/utils/enums/ui.dart' show AuthButtonType;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';

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
                  AuthButtonType.connectWithGoogle ||
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
                  AuthButtonType.connectWithGoogle ||
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
        AuthButtonType.connectWithGoogle => Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Assets.svgs.google.svg(
                width: twentyFourDotNil,
                height: twentyFourDotNil,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTextWith(
                    context,
                  ),
                ],
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
          AuthButtonType.connectWithGoogle =>
            context.localize.connectWithGoogle,
          AuthButtonType.moreOptions => context.localize.moreOptions,
        },
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: fifteenDotNil,
              height: twentyTwoDotFive / fifteenDotNil,
              color: switch (type) {
                AuthButtonType.getStarted => hexFFFFFF,
                AuthButtonType.connectWithGoogle ||
                AuthButtonType.moreOptions =>
                  hex595959,
              },
            ),
      );
}
