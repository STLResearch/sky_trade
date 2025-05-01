// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BuildContext,
        Center,
        Column,
        EdgeInsetsDirectional,
        ElevatedButton,
        LayoutBuilder,
        MainAxisAlignment,
        Navigator,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        Size,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget,
        WidgetStatePropertyAll;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart' show hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyFiveDotNil,
        fortyDotNil,
        tenDotNil,
        thirtyDotNil,
        twentyTwoDotFive;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show loadingRoutePath;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

class NoInternetConnectionScreen extends StatelessWidget {
  const NoInternetConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsetsDirectional.all(
                thirtyDotNil,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: tenDotNil,
                  ),
                  Assets.svgs.skyTradeRadarLogo.svg(),
                  const SizedBox(
                    height: fortyDotNil,
                  ),
                  Text(
                    context.localize.oopsSomethingWentWrong,
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  Text(
                    context.localize
                        .itLooksLikeYouDontHaveAnActiveInternetConnection,
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  Text(
                    context.localize
                        .yourInternetConnectionMayBePoorOrYouAreProbablyJustOutOfCoveragePleaseCheckYourConnectionOrTryAgain,
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  LayoutBuilder(
                    builder: (_, constraints) => ElevatedButton(
                      onPressed: () => Navigator.of(
                        context,
                      ).pushReplacementNamed(
                        loadingRoutePath,
                      ),
                      style: Theme.of(
                        context,
                      ).elevatedButtonTheme.style?.copyWith(
                            fixedSize: WidgetStatePropertyAll<Size>(
                              Size(
                                constraints.maxWidth,
                                fiftyFiveDotNil,
                              ),
                            ),
                          ),
                      child: Text(
                        context.localize.refreshPage,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(
                              fontSize: fifteenDotNil,
                              height: twentyTwoDotFive / fifteenDotNil,
                              color: hexFFFFFF,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
