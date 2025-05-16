// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BuildContext,
        Center,
        Column,
        EdgeInsetsDirectional,
        ElevatedButton,
        MainAxisAlignment,
        Navigator,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        Size,
        SizedBox,
        StatelessWidget,
        TargetPlatform,
        Text,
        TextAlign,
        Theme,
        Widget,
        WidgetStatePropertyAll;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
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
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/core/resources/strings/routes.dart'
    show loadingRoutePath;
import 'package:sky_trade/core/utils/enums/ui.dart' show ErrorReason;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_logout_bloc/auth_0_logout_bloc.dart'
    show Auth0LogoutBloc, Auth0LogoutEvent, Auth0LogoutState;
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_user_session_after_account_deletion_bloc/auth_0_user_session_after_account_deletion_bloc.dart'
    show
        Auth0UserSessionAfterAccountDeletionBloc,
        Auth0UserSessionAfterAccountDeletionEvent,
        Auth0UserSessionAfterAccountDeletionState;
import 'package:sky_trade/features/auth/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;
import 'package:url_launcher/url_launcher.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    required this.reason,
    super.key,
  });

  final ErrorReason reason;

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<Auth0LogoutBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Auth0UserSessionAfterAccountDeletionBloc>(
            create: (context) => serviceLocator(),
          ),
        ],
        child: ErrorScreenView(
          reason: reason,
        ),
      );
}

class ErrorScreenView extends StatelessWidget {
  const ErrorScreenView({
    required this.reason,
    super.key,
  });

  final ErrorReason reason;

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<Auth0LogoutBloc, Auth0LogoutState>(
            listener: (context, auth0LogoutState) {
              auth0LogoutState.whenOrNull(
                loggedOut: () {
                  context.read<Auth0UserSessionAfterAccountDeletionBloc>().add(
                        const Auth0UserSessionAfterAccountDeletionEvent
                            .auth0SessionNonExistent(),
                      );
                },
                failedToLogOut: (_) {
                  AlertSnackBar.show(
                    context,
                    message: context
                        .localize.youNeedToAcceptTheDialogInOrderToProceed,
                  );
                },
              );
            },
          ),
          BlocListener<Auth0UserSessionAfterAccountDeletionBloc,
              Auth0UserSessionAfterAccountDeletionState>(
            listener: (context, auth0UserSessionAfterAccountDeletionState) {
              auth0UserSessionAfterAccountDeletionState.whenOrNull(
                nonExistentAuth0Session: () {
                  Navigator.of(
                    context,
                  ).pushReplacementNamed(
                    loadingRoutePath,
                  );
                },
              );
            },
          ),
        ],
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
                    Assets.svgs.skyTradeRadarLogo.svg(),
                    const SizedBox(
                      height: fortyDotNil,
                    ),
                    Text(
                      switch (reason) {
                        ErrorReason
                              .deletedSkyTradeUserWithExistingAuth0Session =>
                          context.localize.thereWasOneThingYouNeededToDo,
                        ErrorReason.sessionInitializationFailure =>
                          context.localize.oopsSomethingWentWrong,
                        ErrorReason.unknownNavigationRoute =>
                          context.localize.ohMyThisIsOnUs,
                        ErrorReason.upgradeRequired => context.localize
                            .updateRequired,
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    Text(
                      switch (reason) {
                        ErrorReason
                              .deletedSkyTradeUserWithExistingAuth0Session =>
                          context.localize
                              .youDidNotPerformARequiredStepNecessaryToCompleteAnAction,
                        ErrorReason.sessionInitializationFailure => context
                            .localize
                            .itLooksLikeWereHavingTroubleInitializingYourSession,
                        ErrorReason.unknownNavigationRoute =>
                          context.localize.weTookYouToAnUnknownRoute,
                        ErrorReason.upgradeRequired =>
                        Theme.of(context).platform == TargetPlatform.iOS
                            ? context.localize
                            .aNewerVersionOfTheAppIsRequiredPleaseUpdateInTheAppStore
                            : context.localize
                            .aNewerVersionOfTheAppIsRequiredPleaseUpdateInThePlayStore,
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    Text(
                      switch (reason) {
                        ErrorReason
                              .deletedSkyTradeUserWithExistingAuth0Session =>
                          context.localize
                              .youDeletedAnAccountAtSomePointButDeclinedOurRequestForYouToInvalidateTheSessionInOrderToProceedKindlyAcceptTheNextDialogThatShowsUp,
                        ErrorReason.sessionInitializationFailure => context
                            .localize
                            .anUnexpectedErrorOccurredPleaseTryRefreshingThePageIfTheIssueContinuesYouMayWantToCheckYourConnectionOrTryAgainLater,
                        ErrorReason.unknownNavigationRoute => context.localize
                            .weMustHaveDoneSomethingWrongSomewhereWeAreReallySorryAboutThatRegardlessRefreshingThisPageWillFixThis,
                        ErrorReason.upgradeRequired =>
                        Theme.of(context).platform == TargetPlatform.iOS
                            ? context.localize
                            .pleaseUpdateTheAppFromTheAppStoreToContinueUsingSkyTrade
                            : context.localize
                            .pleaseUpdateTheAppFromThePlayStoreToContinueUsingSkyTrade,
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        switch (reason) {
                          case ErrorReason
                                .deletedSkyTradeUserWithExistingAuth0Session:
                            context.read<Auth0LogoutBloc>().add(
                                  const Auth0LogoutEvent.logout(),
                                );
                          case ErrorReason.sessionInitializationFailure ||
                                ErrorReason.unknownNavigationRoute:
                            Navigator.of(
                              context,
                            ).pushReplacementNamed(
                              loadingRoutePath,
                            );
                          case ErrorReason.upgradeRequired:
                            final storeUrl =
                            Theme.of(context).platform == TargetPlatform.iOS
                                ? appStoreLink
                                : playStoreLink;
                            launchUrl(Uri.parse(storeUrl));
                        }
                      },
                      style: Theme.of(
                        context,
                      ).elevatedButtonTheme.style?.copyWith(
                            fixedSize: const WidgetStatePropertyAll<Size>(
                              Size.fromHeight(
                                fiftyFiveDotNil,
                              ),
                            ),
                          ),
                      child: Center(
                        child: Text(
                          switch (reason) {
                            ErrorReason
                                  .deletedSkyTradeUserWithExistingAuth0Session =>
                              context.localize.proceed,
                            ErrorReason.sessionInitializationFailure ||
                            ErrorReason.unknownNavigationRoute =>
                              context.localize.refreshPage,
                            ErrorReason.upgradeRequired =>
                            context.localize.updateNow,
                          },
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
        ),
      );
}
