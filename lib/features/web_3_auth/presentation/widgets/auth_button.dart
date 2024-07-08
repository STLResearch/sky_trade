import 'package:flutter/material.dart'
    show
        AlignmentDirectional,
        BorderSide,
        BuildContext,
        Color,
        Colors,
        ElevatedButton,
        LayoutBuilder,
        MainAxisAlignment,
        Row,
        Size,
        Stack,
        StatelessWidget,
        Text,
        Theme,
        VoidCallback,
        Widget,
        WidgetStatePropertyAll;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:sky_ways/core/resources/colors.dart' show hex595959, hexFFFFFF;
import 'package:sky_ways/core/resources/numbers.dart'
    show fifteenDotNil, fiftyFiveDotNil, twentyFourDotNil, twentyTwoDotFive;
import 'package:sky_ways/core/resources/strings/asset_paths.dart'
    show googleAssetPath;
import 'package:sky_ways/core/utils/enums/ui.dart' show AuthButtonType;

final class AuthButton extends StatelessWidget {
  const AuthButton({
    required this.authButtonType,
    required this.onPressed,
    super.key,
  });

  final AuthButtonType authButtonType;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (_, constraints) => ElevatedButton(
          onPressed: onPressed,
          style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
                backgroundColor: switch (authButtonType) {
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
                side: switch (authButtonType) {
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
          child: switch (authButtonType) {
            AuthButtonType.getStarted ||
            AuthButtonType.moreOptions =>
              _buildTextWith(
                context,
              ),
            AuthButtonType.connectWithGoogle => Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  SvgPicture.asset(
                    googleAssetPath,
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
          },
        ),
      );

  Widget _buildTextWith(
    BuildContext context,
  ) =>
      Text(
        switch (authButtonType) {
          AuthButtonType.getStarted => AppLocalizations.of(context)!.getStarted,
          AuthButtonType.connectWithGoogle =>
            AppLocalizations.of(context)!.connectWithGoogle,
          AuthButtonType.moreOptions =>
            AppLocalizations.of(context)!.moreOptions,
        },
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: fifteenDotNil,
              height: twentyTwoDotFive / fifteenDotNil,
              color: switch (authButtonType) {
                AuthButtonType.getStarted => hexFFFFFF,
                AuthButtonType.connectWithGoogle ||
                AuthButtonType.moreOptions =>
                  hex595959,
              },
            ),
      );
}
