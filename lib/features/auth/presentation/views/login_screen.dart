// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        AppLifecycleState,
        BuildContext,
        EdgeInsetsDirectional,
        Form,
        FormState,
        GlobalKey,
        Navigator,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        TextEditingController,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        WidgetsBinding,
        WidgetsBindingObserver;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocListener, MultiBlocListener, ReadContext;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show fifteenDotNil, fiveDotNil, thirtyDotNil;
import 'package:sky_ways/core/resources/strings/routes.dart'
    show homeRoutePath, registerRoutePath;
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/core/utils/enums/ui.dart' show AuthButtonType;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_ways/features/auth/presentation/blocs/check_sky_trade_user_exists_bloc/check_sky_trade_user_exists_bloc.dart'
    show
        CheckSkyTradeUserExistsBloc,
        CheckSkyTradeUserExistsEvent,
        CheckSkyTradeUserExistsState;
import 'package:sky_ways/features/auth/presentation/blocs/web_3_auth_capture_custom_tabs_closed_bloc/web_3_auth_capture_custom_tabs_closed_bloc.dart'
    show
        Web3AuthCaptureCustomTabsClosedBloc,
        Web3AuthCaptureCustomTabsClosedEvent;
import 'package:sky_ways/features/auth/presentation/blocs/web_3_auth_login_bloc/web_3_auth_login_bloc.dart'
    show Web3AuthLoginBloc, Web3AuthLoginEvent, Web3AuthLoginState;
import 'package:sky_ways/features/auth/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_ways/features/auth/presentation/widgets/auth_button.dart';
import 'package:sky_ways/features/auth/presentation/widgets/auth_screen.dart';
import 'package:sky_ways/features/auth/presentation/widgets/email_field.dart';
import 'package:sky_ways/features/auth/presentation/widgets/footer_section.dart';
import 'package:sky_ways/features/auth/presentation/widgets/or_section.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with WidgetsBindingObserver {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailController;
  late final ValueNotifier<AuthButtonType?>
      _authButtonTypeToIndicateProgressNotifier;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _authButtonTypeToIndicateProgressNotifier = ValueNotifier<AuthButtonType?>(
      null,
    );

    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _authButtonTypeToIndicateProgressNotifier.dispose();

    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      context.read<Web3AuthCaptureCustomTabsClosedBloc>().add(
            const Web3AuthCaptureCustomTabsClosedEvent
                .captureWhenCustomTabsClosed(),
          );
    }
  }

  void _removeProgressIndicatorFromAuthButtonAndAlertUserWith({
    required String message,
  }) {
    _removeProgressIndicatorFromAuthButton();

    AlertSnackBar.show(
      context,
      message: message,
    );
  }

  void _removeProgressIndicatorFromAuthButton() {
    _authButtonTypeToIndicateProgressNotifier.value = null;
  }

  void _logout() {}

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<Web3AuthLoginBloc, Web3AuthLoginState>(
            listener: (_, web3AuthLoginState) {
              web3AuthLoginState.whenOrNull(
                failedToLogIn: (_) {
                  _removeProgressIndicatorFromAuthButtonAndAlertUserWith(
                    message: context.localize.weCouldNotLogYouInPleaseTryAgain,
                  );
                },
                loggedIn: (_) {
                  context.read<CheckSkyTradeUserExistsBloc>().add(
                        const CheckSkyTradeUserExistsEvent.checkUserExists(),
                      );
                },
              );
            },
          ),
          BlocListener<CheckSkyTradeUserExistsBloc,
              CheckSkyTradeUserExistsState>(
            listener: (_, checkSkyTradeUserExistsState) {
              checkSkyTradeUserExistsState.whenOrNull(
                userExists: (_) {
                  _removeProgressIndicatorFromAuthButton();

                  Navigator.of(context).pushReplacementNamed(
                    homeRoutePath,
                  );
                },
                userUnauthorized: () {
                  _removeProgressIndicatorFromAuthButtonAndAlertUserWith(
                    message:
                        context.localize.youAreNotAuthorizedToPerformThisAction,
                  );

                  _logout();
                },
                userSignatureInvalid: () {
                  _removeProgressIndicatorFromAuthButtonAndAlertUserWith(
                    message:
                        context.localize.computedSignatureCredentialIsInvalid,
                  );

                  _logout();
                },
                userDoesNotExist: () {
                  _removeProgressIndicatorFromAuthButtonAndAlertUserWith(
                    message: context
                        .localize.accountDoesNotExistPleaseRegisterInstead,
                  );

                  _logout();
                },
                failedToCheckUser: (_) {
                  _removeProgressIndicatorFromAuthButtonAndAlertUserWith(
                    message: context.localize
                        .weCouldNotVerifyTheExistenceOfYourAccountPleaseTryAgain,
                  );

                  _logout();
                },
              );
            },
          ),
        ],
        child: AuthScreen(
          title: context.localize.welcomeBackToSkyTrade,
          subtitle: context.localize.login,
          padding: const EdgeInsetsDirectional.all(
            thirtyDotNil,
          ),
          children: [
            Text(
              context.localize.signInEffortlessly,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: fiveDotNil,
            ),
            Form(
              key: _formKey,
              child: BlocBuilder<Web3AuthLoginBloc, Web3AuthLoginState>(
                builder: (_, web3AuthLoginState) => EmailField(
                  controller: _emailController,
                  enabled: web3AuthLoginState.maybeWhen(
                    loggingIn: () => false,
                    orElse: () => true,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: fifteenDotNil,
            ),
            BlocBuilder<Web3AuthLoginBloc, Web3AuthLoginState>(
              builder: (_, web3AuthLoginState) =>
                  ValueListenableBuilder<AuthButtonType?>(
                valueListenable: _authButtonTypeToIndicateProgressNotifier,
                builder: (
                  _,
                  authButtonTypeToIndicateProgressNotifierValue,
                  __,
                ) =>
                    AuthButton(
                  type: AuthButtonType.getStarted,
                  enabled: web3AuthLoginState.maybeWhen(
                    loggingIn: () => false,
                    orElse: () => true,
                  ),
                  indicateProgress:
                      authButtonTypeToIndicateProgressNotifierValue ==
                          AuthButtonType.getStarted,
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      _authButtonTypeToIndicateProgressNotifier.value =
                          AuthButtonType.getStarted;

                      context.read<Web3AuthLoginBloc>().add(
                            Web3AuthLoginEvent.login(
                              provider: AuthProvider.emailPasswordless,
                              credential: _emailController.text,
                            ),
                          );
                    }
                  },
                ),
              ),
            ),
            const SizedBox(
              height: fifteenDotNil,
            ),
            const OrSection(),
            const SizedBox(
              height: fifteenDotNil,
            ),
            BlocBuilder<Web3AuthLoginBloc, Web3AuthLoginState>(
              builder: (_, web3AuthLoginState) =>
                  ValueListenableBuilder<AuthButtonType?>(
                valueListenable: _authButtonTypeToIndicateProgressNotifier,
                builder: (
                  _,
                  authButtonTypeToIndicateProgressNotifierValue,
                  __,
                ) =>
                    AuthButton(
                  type: AuthButtonType.connectWithGoogle,
                  enabled: web3AuthLoginState.maybeWhen(
                    loggingIn: () => false,
                    orElse: () => true,
                  ),
                  indicateProgress:
                      authButtonTypeToIndicateProgressNotifierValue ==
                          AuthButtonType.connectWithGoogle,
                  onPressed: () {
                    _authButtonTypeToIndicateProgressNotifier.value =
                        AuthButtonType.connectWithGoogle;

                    context.read<Web3AuthLoginBloc>().add(
                          const Web3AuthLoginEvent.login(
                            provider: AuthProvider.google,
                          ),
                        );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: fifteenDotNil,
            ),
            BlocBuilder<Web3AuthLoginBloc, Web3AuthLoginState>(
              builder: (_, web3AuthLoginState) => FooterSection(
                text: context.localize.dontHaveAnAccountYet,
                clickableText: context.localize.register,
                clickableTextEnabled: web3AuthLoginState.maybeWhen(
                  loggingIn: () => false,
                  orElse: () => true,
                ),
                onClickableTextTap: () =>
                    Navigator.of(context).pushReplacementNamed(
                  registerRoutePath,
                ), // => context.go(location),
              ),
            ),
          ],
        ),
      );
}
