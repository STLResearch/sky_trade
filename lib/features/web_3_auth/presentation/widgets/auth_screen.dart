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
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:sky_ways/core/resources/numbers.dart'
    show fifteenDotNil, fortyDotNil, tenDotNil;
import 'package:sky_ways/core/resources/strings/asset_paths.dart'
    show skyTradeLogoAssetPath;

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
                  SvgPicture.asset(
                    skyTradeLogoAssetPath,
                  ),
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
