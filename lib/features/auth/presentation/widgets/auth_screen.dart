import 'package:flutter/material.dart'
    show
        BuildContext,
        Center,
        Column,
        EdgeInsetsGeometry,
        MainAxisAlignment,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show fifteenDotNil, fortyDotNil, tenDotNil;

final class AuthScreen extends StatelessWidget {
  const AuthScreen({
    required this.title,
    required this.subtitle,
    required this.children,
    this.padding,
    super.key,
  });

  final String title;
  final String subtitle;
  final List<Widget> children;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: padding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: tenDotNil,
                  ),
                  Assets.svgs.skyTradeLogo.svg(),
                  const SizedBox(
                    height: fortyDotNil,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  ...children,
                ],
              ),
            ),
          ),
        ),
      );
}
