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
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocProvider,
        ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show
        CheckSkyTradeUserUnknownFailure,
        CreateSkyTradeUserUnknownFailure,
        EmailReuseNotAllowedFailure,
        InvalidEmailFailure,
        InvalidSignatureFailure,
        UnauthorizedFailure,
        UserDeletedFailure,
        UserMismatchFailure,
        UserNotFoundFailure,
        WalletAlreadyExistsFailure;
import 'package:sky_trade/core/resources/colors.dart' show hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fortyDotNil,
        sixteenDotNil,
        tenDotNil,
        thirtyDotNil,
        twentyTwoDotFive,
        twoDotNil;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show skyTradePrivacyPolicyUrl, skyTradeTermsOfServiceUrl;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show homeRoutePath;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart'
    show AuthBloc, AuthEvent, AuthState;
import 'package:sky_trade/features/auth/presentation/widgets/agreement_section.dart';
import 'package:sky_trade/features/auth/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc, HandleLinkEvent;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<HandleLinkBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const GetStartedView(),
      );
}

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) => BlocListener<AuthBloc, AuthState>(
        listener: (context, authState) {
          authState.whenOrNull(
            authenticated: () {
              Navigator.of(
                context,
              ).pushReplacementNamed(
                homeRoutePath,
              );
            },
            failedToCheckSkyTradeUser: (checkSkyTradeUserFailure) {
              AlertSnackBar.show(
                context,
                message: switch (checkSkyTradeUserFailure) {
                  UserNotFoundFailure() =>
                    context.localize.accountDoesNotExistPleaseRegisterInstead,
                  UnauthorizedFailure() =>
                    context.localize.oopsSomethingWentWrongPleaseTryAgain,
                  InvalidSignatureFailure() =>
                    context.localize.oopsSomethingWentWrongPleaseTryAgain,
                  UserMismatchFailure() => context.localize
                      .loginMethodMismatchKindlySignInWithTheSameMethodYouUsedToRegister,
                  UserDeletedFailure() => context.localize
                      .accountDoesNotExistIfItPreviouslyDidItMayHaveBeenDeleted,
                  CheckSkyTradeUserUnknownFailure() =>
                    context.localize.anUnknownErrorOccurredPleaseTryAgain,
                },
              );
            },
            failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0: () {
              AlertSnackBar.show(
                context,
                message: context.localize
                    .thereIsSomethingWrongWithOurFirstAuthenticationProviderPleaseTryAgainAfterSomeTime,
              );
            },
            failedToCreateSkyTradeUser: (createSkyTradeUserFailure) {
              AlertSnackBar.show(
                context,
                message: switch (createSkyTradeUserFailure) {
                  InvalidEmailFailure() =>
                    context.localize.pleaseEnterAValidEmail,
                  WalletAlreadyExistsFailure() => context
                      .localize.thisEmailIsAlreadyLinkedToAnExistingAccount,
                  EmailReuseNotAllowedFailure() => context.localize
                      .thisEmailCannotBeUsedToCreateANewAccountPleaseUseADifferentEmail,
                  CreateSkyTradeUserUnknownFailure() =>
                    context.localize.anUnknownErrorOccurredPleaseTryAgain,
                },
              );
            },
            failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0: () {
              AlertSnackBar.show(
                context,
                message: context.localize
                    .thereIsSomethingWrongWithOurFirstAuthenticationProviderPleaseTryAgainAfterSomeTime,
              );
            },
            failedToAuthenticateUserWithAuth0: () {
              AlertSnackBar.show(
                context,
                message: context.localize.oopsWeCouldNotAuthenticateYou,
              );
            },
            failedToAuthenticateAuth0UserWithSFA: () {
              AlertSnackBar.show(
                context,
                message: context.localize
                    .thereIsSomethingWrongWithOurSecondAuthenticationProviderPleaseTryAgainAfterSomeTime,
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
                      builder: (_, authState) => ElevatedButton(
                        onPressed: authState.maybeWhen(
                          authenticated: () => null,
                          orElse: () => () => context.read<AuthBloc>().add(
                                const AuthEvent.authenticate(),
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
                            orElse: () => Text(
                              context.localize.getStarted,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontSize: fifteenDotNil,
                                    height: twentyTwoDotFive / fifteenDotNil,
                                    color: hexFFFFFF,
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
