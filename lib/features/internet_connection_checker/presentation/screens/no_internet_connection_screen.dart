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
import 'package:flutter_bloc/flutter_bloc.dart' show BlocListener, ReadContext;
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
import 'package:sky_trade/core/resources/strings/routes.dart' show baseRoutePath;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/internet_connection_checker/presentation/blocs/internet_connection_checker_bloc/internet_connection_checker_bloc.dart'
    show
        InternetConnectionCheckerBloc,
        InternetConnectionCheckerEvent,
        InternetConnectionCheckerState;

class NoInternetConnectionScreen extends StatelessWidget {
  const NoInternetConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocListener<
          InternetConnectionCheckerBloc, InternetConnectionCheckerState>(
        listener: (_, internetConnectionCheckerState) {
          internetConnectionCheckerState.whenOrNull(
            hasActiveInternetConnection: () {
              Navigator.of(context).pushReplacementNamed(
                baseRoutePath,
              );
            },
          );
        },
        child: Scaffold(
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
                    Assets.svgs.skyTradeLogo.svg(),
                    const SizedBox(
                      height: fortyDotNil,
                    ),
                    Text(
                      context.localize.oopsSomethingWentWrong,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    Text(
                      context.localize
                          .itLooksLikeWereHavingTroubleInitializingYourSession,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    Text(
                      context.localize
                          .anUnexpectedErrorOccurredPleaseTryRefreshingThePageIfTheIssueContinuesYouMayWantToCheckYourConnectionOrTryAgainLater,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    LayoutBuilder(
                      builder: (_, constraints) => ElevatedButton(
                        onPressed: () =>
                            context.read<InternetConnectionCheckerBloc>().add(
                                  const InternetConnectionCheckerEvent
                                      .checkActiveInternetConnection(),
                                ),
                        style: Theme.of(context)
                            .elevatedButtonTheme
                            .style
                            ?.copyWith(
                              fixedSize: WidgetStatePropertyAll<Size>(
                                Size(
                                  constraints.maxWidth,
                                  fiftyFiveDotNil,
                                ),
                              ),
                            ),
                        child: Text(
                          context.localize.refreshPage,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
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
        ),
      );
}
