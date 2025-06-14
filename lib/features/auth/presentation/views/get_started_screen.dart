// ignore_for_file: lines_longer_than_80_chars

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
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show
        CheckSkyTradeUserUnknownFailure,
        UserDeletedFailure,
        UserNotFoundFailure;
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
    show skyTradePrivacyPolicyUrl, skyTradeTermsOfServiceUrl;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show homeRoutePath, onboardingRoutePath;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show fullStop, whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_credentials_bloc/auth_0_credentials_bloc.dart'
    show Auth0CredentialsBloc, Auth0CredentialsEvent, Auth0CredentialsState;
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_logout_bloc/auth_0_logout_bloc.dart'
    show Auth0LogoutBloc, Auth0LogoutEvent, Auth0LogoutState;
import 'package:sky_trade/features/auth/presentation/blocs/auth_0_user_session_bloc/auth_0_user_session_bloc.dart'
    show Auth0UserSessionBloc, Auth0UserSessionEvent, Auth0UserSessionState;
import 'package:sky_trade/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    show AuthBloc, AuthEvent, AuthState;
import 'package:sky_trade/features/auth/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/features/auth/presentation/widgets/agreement_section.dart';
import 'package:sky_trade/features/auth/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/link_handler/presentation/blocs/app_link_bloc/app_link_bloc.dart'
    show AppLinkBloc, AppLinkState;
import 'package:sky_trade/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc, HandleLinkEvent;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<Auth0LogoutBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<AuthBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<HandleLinkBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Auth0UserSessionBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Auth0CredentialsBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const GetStartedView(),
      );
}

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, authState) {
              authState.whenOrNull(
                emailVerificationSent: (email) {
                  ActionDialog.show(
                    context,
                    content: context.localize.aVerificationLinkWasSentTo +
                        whiteSpace +
                        email! +
                        fullStop +
                        whiteSpace +
                        context.localize
                            .clickOnTheLinkToProceedWithTheAuthenticationProcess,
                    dismissible: false,
                    actionConfirmText: context.localize.okay,
                    onActionConfirmed: () => Navigator.of(
                      context,
                    ).pop(),
                  );
                },
                sFAUserShouldLogout: (email) {
                  ActionDialog.show(
                    context,
                    content: context.localize
                            .anActionRequiresYourInputWeNeedToFinishLoggingYouOutOf +
                        whiteSpace +
                        email! +
                        fullStop +
                        whiteSpace +
                        context.localize
                            .thereIsNoOtherWayToProceedUnlessYouCompleteTheLogoutProcessYouWillBeAbleToLogBackInAfterwards,
                    dismissible: false,
                    actionConfirmText: context.localize.logout,
                    onActionConfirmed: () {
                      Navigator.of(
                        context,
                      ).pop();

                      context.read<Auth0LogoutBloc>().add(
                            const Auth0LogoutEvent.logout(),
                          );
                    },
                  );
                },
                unverifiedAuth0UserExists: (email) {
                  ActionDialog.show(
                    context,
                    content: context
                            .localize.youHaveAnExistingSessionWithTheEmail +
                        whiteSpace +
                        email! +
                        whiteSpace +
                        context.localize
                            .howeverThisEmailHasNotBeenVerifiedClickOnTheLinkSentToTheEmailToProceedOrLogoutInstead,
                    dismissible: false,
                    actionDismissText: context.localize.cancel,
                    onActionDismissed: () {
                      Navigator.of(
                        context,
                      ).pop();
                    },
                    actionConfirmText: context.localize.logout,
                    onActionConfirmed: () {
                      Navigator.of(
                        context,
                      ).pop();

                      context.read<Auth0LogoutBloc>().add(
                            const Auth0LogoutEvent.logout(),
                          );
                    },
                  );
                },
                authenticated: () {
                  Navigator.of(
                    context,
                  ).pushReplacementNamed(
                    homeRoutePath,
                  );
                },
                failedToCheckSkyTradeUser: (checkSkyTradeUserFailure) {
                  if (checkSkyTradeUserFailure is UserNotFoundFailure) {
                    Navigator.of(
                      context,
                    ).pushReplacementNamed(
                      onboardingRoutePath,
                    );
                  } else {
                    ActionDialog.show(
                      context,
                      content: switch (checkSkyTradeUserFailure) {
                        UserDeletedFailure() => context.localize
                            .accountDoesNotExistIfItPreviouslyDidItMayHaveBeenDeletedHoweverWeNeedYourInputToFinishOff,
                        CheckSkyTradeUserUnknownFailure() => context.localize
                            .anUnknownErrorOccurredKindlyRetryOrInvalidateYourSession,
                        _ => context.localize
                            .oopsSomethingWentWrongKindlyRetryOrInvalidateYourSession,
                      },
                      dismissible: false,
                      actionDismissText: switch (checkSkyTradeUserFailure) {
                        UserDeletedFailure() => null,
                        _ => context.localize.retry,
                      },
                      onActionDismissed: switch (checkSkyTradeUserFailure) {
                        UserDeletedFailure() => null,
                        _ => () {
                            Navigator.of(
                              context,
                            ).pop();

                            context.read<AuthBloc>().add(
                                  const AuthEvent.authenticate(),
                                );
                          },
                      },
                      actionConfirmText: switch (checkSkyTradeUserFailure) {
                        UserDeletedFailure() => context.localize.proceed,
                        _ => context.localize.invalidate,
                      },
                      onActionConfirmed: () {
                        Navigator.of(
                          context,
                        ).pop();

                        context.read<Auth0LogoutBloc>().add(
                              const Auth0LogoutEvent.logout(),
                            );
                      },
                    );
                  }
                },
                failedToAuthenticateUserWithAuth0: () {
                  AlertSnackBar.show(
                    context,
                    message: context
                        .localize.oopsWeCouldNotAuthenticateYouPleaseTryAgain,
                  );
                },
              );
            },
          ),
          BlocListener<AppLinkBloc, AppLinkState>(
            listener: (context, appLinkState) {
              appLinkState.whenOrNull(
                emailVerificationLink: () {
                  context.read<Auth0UserSessionBloc>().add(
                        const Auth0UserSessionEvent.checkUserSession(),
                      );
                },
              );
            },
          ),
          BlocListener<Auth0UserSessionBloc, Auth0UserSessionState>(
            listener: (_, auth0UserSessionState) {
              auth0UserSessionState.whenOrNull(
                existingUserSession: (auth0UserEntity) {
                  context.read<Auth0CredentialsBloc>().add(
                        Auth0CredentialsEvent.renewCredentials(
                          refreshToken: auth0UserEntity.refreshToken,
                        ),
                      );
                },
              );
            },
          ),
          BlocListener<Auth0CredentialsBloc, Auth0CredentialsState>(
            listener: (_, auth0CredentialsState) {
              auth0CredentialsState.whenOrNull(
                renewedCredentials: () {
                  context.read<AuthBloc>().add(
                        const AuthEvent.authenticate(),
                      );
                },
                failedToRenewCredentials: () {
                  AlertSnackBar.show(
                    context,
                    message: context.localize
                        .weCouldNotVerifyYourEmailPleaseEnsureThatYouHaveClickedTheCorrectLink,
                  );
                },
              );
            },
          ),
          BlocListener<Auth0LogoutBloc, Auth0LogoutState>(
            listener: (context, auth0LogoutState) {
              auth0LogoutState.whenOrNull(
                failedToLogOut: (_) {
                  AlertSnackBar.show(
                    context,
                    message: context.localize.weCouldNotLogYouOut,
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
                      context.localize.welcomeToSkyTrade,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    Text(
                      context.localize.loginOrRegister,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    Text(
                      context.localize
                          .signInOrSignUpEffortlesslyUseTheAuthenticationMethodYouChoseDuringSignUpToSignIn,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (_, authState) =>
                          BlocBuilder<Auth0LogoutBloc, Auth0LogoutState>(
                        builder: (_, auth0LogoutState) => ElevatedButton(
                          onPressed: authState.maybeWhen(
                            authenticating: () => null,
                            orElse: () => auth0LogoutState.maybeWhen(
                              loggingOut: () => null,
                              orElse: () => () => context.read<AuthBloc>().add(
                                    const AuthEvent.authenticate(),
                                  ),
                            ),
                          ),
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
                            child: authState.maybeWhen(
                              authenticating: () => const SizedBox(
                                width: sixteenDotNil,
                                height: sixteenDotNil,
                                child: CircularProgressIndicator(
                                  color: hexFFFFFF,
                                  strokeWidth: twoDotNil,
                                ),
                              ),
                              orElse: () => auth0LogoutState.maybeWhen(
                                loggingOut: () => const SizedBox(
                                  width: sixteenDotNil,
                                  height: sixteenDotNil,
                                  child: CircularProgressIndicator(
                                    color: hexFFFFFF,
                                    strokeWidth: twoDotNil,
                                  ),
                                ),
                                orElse: () => Text(
                                  context.localize.getStarted,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                        fontSize: fifteenDotNil,
                                        height:
                                            twentyTwoDotFive / fifteenDotNil,
                                        color: hexFFFFFF,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: fifteenDotNil,
                    ),
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (_, authState) => AgreementSection(
                        onTermsAndConditionsTap: () => authState.maybeWhen(
                          authenticating: () => null,
                          orElse: () => context.read<HandleLinkBloc>().add(
                                const HandleLinkEvent.handle(
                                  link: skyTradeTermsOfServiceUrl,
                                ),
                              ),
                        ),
                        onPrivacyPolicyTap: () => authState.maybeWhen(
                          authenticating: () => null,
                          orElse: () => context.read<HandleLinkBloc>().add(
                                const HandleLinkEvent.handle(
                                  link: skyTradePrivacyPolicyUrl,
                                ),
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
