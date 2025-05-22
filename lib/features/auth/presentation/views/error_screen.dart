// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' show Platform;

import 'package:flutter/material.dart'
    show
        BuildContext,
        Center,
        CircularProgressIndicator,
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
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget,
        WidgetStatePropertyAll;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
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
        sixteenDotNil,
        tenDotNil,
        thirtyDotNil,
        twentyTwoDotFive,
        twoDotNil;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        appleAppStorePageLink,
        googlePlayStorePageLink,
        solanaDAppStorePageLink;
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
import 'package:sky_trade/features/link_handler/presentation/blocs/check_link_bloc/check_link_bloc.dart'
    show CheckLinkBloc, CheckLinkEvent, CheckLinkState;
import 'package:sky_trade/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc, HandleLinkEvent;
import 'package:sky_trade/features/update_manager/presentation/blocs/compatible_backend_api_version_bloc/compatible_backend_api_version_bloc.dart'
    show CompatibleBackendApiVersionBloc;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

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
          BlocProvider<CompatibleBackendApiVersionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<CheckLinkBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<HandleLinkBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: ErrorScreenView(
          reason: reason,
        ),
      );
}

class ErrorScreenView extends StatefulWidget {
  const ErrorScreenView({
    required this.reason,
    super.key,
  });

  final ErrorReason reason;

  @override
  State<ErrorScreenView> createState() => _ErrorScreenViewState();
}

class _ErrorScreenViewState extends State<ErrorScreenView> {
  @override
  void initState() {
    if (widget.reason == ErrorReason.incompatibleBackendApiVersion &&
        Platform.isAndroid) {
      _checkAppCanOpenSolanaDAppStorePageLink();
    }

    super.initState();
  }

  void _checkAppCanOpenSolanaDAppStorePageLink() =>
      context.read<CheckLinkBloc>().add(
            const CheckLinkEvent.check(
              link: solanaDAppStorePageLink,
            ),
          );

  void _openLinkUsing(
    BuildContext context, {
    required String link,
  }) =>
      context.read<HandleLinkBloc>().add(
            HandleLinkEvent.handle(
              link: link,
            ),
          );

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
                      switch (widget.reason) {
                        ErrorReason
                              .deletedSkyTradeUserWithExistingAuth0Session =>
                          context.localize.thereWasOneThingYouNeededToDo,
                        ErrorReason.sessionInitializationFailure ||
                        ErrorReason.unknownError =>
                          context.localize.oopsSomethingWentWrong,
                        ErrorReason.incompatibleBackendApiVersion =>
                          context.localize.yourVersionOfThisAppIsTooOld,
                        ErrorReason.unknownNavigationRoute =>
                          context.localize.ohMyThisIsOnUs,
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
                      switch (widget.reason) {
                        ErrorReason
                              .deletedSkyTradeUserWithExistingAuth0Session =>
                          context.localize
                              .youDidNotPerformARequiredStepNecessaryToCompleteAnAction,
                        ErrorReason.sessionInitializationFailure => context
                            .localize
                            .itLooksLikeWereHavingTroubleInitializingYourSession,
                        ErrorReason.incompatibleBackendApiVersion => context
                            .localize
                            .certainThingsMayBreakDueToSignificantChangesThatHaveBeenMade,
                        ErrorReason.unknownNavigationRoute =>
                          context.localize.weTookYouToAnUnknownRoute,
                        ErrorReason.unknownError =>
                          context.localize.weAreNotSureWhatMayHaveCausedThis,
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
                      switch (widget.reason) {
                        ErrorReason
                              .deletedSkyTradeUserWithExistingAuth0Session =>
                          context.localize
                              .youDeletedAnAccountAtSomePointButDeclinedOurRequestForYouToInvalidateTheSessionInOrderToProceedKindlyAcceptTheNextDialogThatShowsUp,
                        ErrorReason.sessionInitializationFailure => context
                            .localize
                            .anUnexpectedErrorOccurredPleaseTryRefreshingThePageIfTheIssueContinuesYouMayWantToCheckYourConnectionOrTryAgainLater,
                        ErrorReason.incompatibleBackendApiVersion => context
                            .localize
                            .weEncourageYouToUpdateTheAppInOrderToKeepUsingIt,
                        ErrorReason.unknownNavigationRoute => context.localize
                            .weMustHaveDoneSomethingWrongSomewhereWeAreReallySorryAboutThatRegardlessRefreshingThisPageWillFixThis,
                        ErrorReason.unknownError => context.localize
                            .tryRefreshingThePageIfTheIssueContinuesYouMayWantToCheckYourConnectionOrTryAgainLater,
                      },
                      textAlign: TextAlign.center,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    BlocBuilder<CheckLinkBloc, CheckLinkState>(
                      builder: (_, checkLinkState) => ElevatedButton(
                        onPressed: switch (widget.reason) {
                          ErrorReason.incompatibleBackendApiVersion => switch (
                                Platform.isIOS) {
                              true => () => _openLinkUsing(
                                    context,
                                    link: appleAppStorePageLink,
                                  ),
                              false when Platform.isAndroid =>
                                checkLinkState.maybeWhen(
                                  checked: (linkEntity) =>
                                      switch (linkEntity.link) {
                                    solanaDAppStorePageLink
                                        when linkEntity.handled =>
                                      () => _openLinkUsing(
                                            context,
                                            link: linkEntity.link,
                                          ),
                                    _ => () => _openLinkUsing(
                                          context,
                                          link: googlePlayStorePageLink,
                                        ),
                                  },
                                  failedToCheck: (_) => () {
                                    Navigator.of(
                                      context,
                                    ).pushReplacementNamed(
                                      loadingRoutePath,
                                    );
                                  },
                                  orElse: () => null,
                                ),
                              false => () {
                                  Navigator.of(
                                    context,
                                  ).pushReplacementNamed(
                                    loadingRoutePath,
                                  );
                                }
                            },
                          _ => switch (widget.reason) {
                              ErrorReason
                                    .deletedSkyTradeUserWithExistingAuth0Session =>
                                () => context.read<Auth0LogoutBloc>().add(
                                      const Auth0LogoutEvent.logout(),
                                    ),
                              _ => () {
                                  Navigator.of(
                                    context,
                                  ).pushReplacementNamed(
                                    loadingRoutePath,
                                  );
                                },
                            },
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
                          child: switch (widget.reason) {
                            ErrorReason.incompatibleBackendApiVersion =>
                              switch (Platform.isIOS) {
                                true => Text(
                                    context.localize.openAppStore,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium?.copyWith(
                                          fontSize: fifteenDotNil,
                                          height:
                                              twentyTwoDotFive / fifteenDotNil,
                                          color: hexFFFFFF,
                                        ),
                                  ),
                                false when Platform.isAndroid =>
                                  checkLinkState.maybeWhen(
                                    checked: (linkEntity) => Text(
                                      switch (linkEntity.link) {
                                        solanaDAppStorePageLink
                                            when linkEntity.handled =>
                                          context.localize.openDAppStore,
                                        _ => context.localize.openPlayStore,
                                      },
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium?.copyWith(
                                            fontSize: fifteenDotNil,
                                            height: twentyTwoDotFive /
                                                fifteenDotNil,
                                            color: hexFFFFFF,
                                          ),
                                    ),
                                    failedToCheck: (_) => Text(
                                      context.localize.refreshPage,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium?.copyWith(
                                            fontSize: fifteenDotNil,
                                            height: twentyTwoDotFive /
                                                fifteenDotNil,
                                            color: hexFFFFFF,
                                          ),
                                    ),
                                    orElse: () => const SizedBox(
                                      width: sixteenDotNil,
                                      height: sixteenDotNil,
                                      child: CircularProgressIndicator(
                                        color: hexFFFFFF,
                                        strokeWidth: twoDotNil,
                                      ),
                                    ),
                                  ),
                                false => Text(
                                    context.localize.refreshPage,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodyMedium?.copyWith(
                                          fontSize: fifteenDotNil,
                                          height:
                                              twentyTwoDotFive / fifteenDotNil,
                                          color: hexFFFFFF,
                                        ),
                                  ),
                              },
                            _ => Text(
                                switch (widget.reason) {
                                  ErrorReason
                                        .deletedSkyTradeUserWithExistingAuth0Session =>
                                    context.localize.proceed,
                                  _ => context.localize.refreshPage,
                                },
                                style: Theme.of(
                                  context,
                                ).textTheme.bodyMedium?.copyWith(
                                      fontSize: fifteenDotNil,
                                      height: twentyTwoDotFive / fifteenDotNil,
                                      color: hexFFFFFF,
                                    ),
                              ),
                          },
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
