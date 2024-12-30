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
        StatelessWidget,
        TextEditingController,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        WidgetsBinding,
        WidgetsBindingObserver;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show
        CreateSkyTradeUserUnknownFailure,
        InvalidEmailFailure,
        WalletAlreadyExistsFailure;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show fifteenDotNil, tenDotNil, thirtyDotNil;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show skyTradePrivacyPolicyUrl, skyTradeTermsOfServiceUrl;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show homeRoutePath, loginRoutePath;
import 'package:sky_trade/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_trade/core/utils/enums/ui.dart' show AuthButtonType;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/create_sky_trade_user_bloc/create_sky_trade_user_bloc.dart'
    show
        CreateSkyTradeUserBloc,
        CreateSkyTradeUserEvent,
        CreateSkyTradeUserState;
import 'package:sky_trade/features/auth/presentation/blocs/web_3_auth_capture_custom_tabs_closed_bloc/web_3_auth_capture_custom_tabs_closed_bloc.dart'
    show
        Web3AuthCaptureCustomTabsClosedBloc,
        Web3AuthCaptureCustomTabsClosedEvent;
import 'package:sky_trade/features/auth/presentation/blocs/web_3_auth_logout_bloc/web_3_auth_logout_bloc.dart'
    show Web3AuthLogoutBloc, Web3AuthLogoutEvent;
import 'package:sky_trade/features/auth/presentation/blocs/web_3_auth_register_bloc/web_3_auth_register_bloc.dart'
    show Web3AuthRegisterBloc, Web3AuthRegisterEvent, Web3AuthRegisterState;
import 'package:sky_trade/features/auth/presentation/widgets/agreement_section.dart';
import 'package:sky_trade/features/auth/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/auth/presentation/widgets/auth_button.dart';
import 'package:sky_trade/features/auth/presentation/widgets/auth_screen.dart';
import 'package:sky_trade/features/auth/presentation/widgets/email_field.dart';
import 'package:sky_trade/features/auth/presentation/widgets/footer_section.dart';
import 'package:sky_trade/features/auth/presentation/widgets/or_section.dart';
import 'package:sky_trade/features/auth/presentation/widgets/subscribe_section.dart';
import 'package:sky_trade/features/link_handler/presentation/blocs/handle_link_bloc/handle_link_bloc.dart'
    show HandleLinkBloc, HandleLinkEvent;
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<CreateSkyTradeUserBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Web3AuthCaptureCustomTabsClosedBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Web3AuthRegisterBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<Web3AuthLogoutBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const RegisterView(),
      );
}

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView>
    with WidgetsBindingObserver {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailController;
  late final ValueNotifier<bool> _subscribeToNewsletterCheckboxNotifier;
  late final ValueNotifier<AuthButtonType?>
      _authButtonTypeToIndicateProgressNotifier;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _subscribeToNewsletterCheckboxNotifier = ValueNotifier<bool>(
      true,
    );
    _authButtonTypeToIndicateProgressNotifier = ValueNotifier<AuthButtonType?>(
      null,
    );

    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _subscribeToNewsletterCheckboxNotifier.dispose();
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

  void _logout() {
    context.read<Web3AuthLogoutBloc>().add(
          const Web3AuthLogoutEvent.logout(),
        );
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<Web3AuthRegisterBloc, Web3AuthRegisterState>(
            listener: (_, web3AuthRegisterState) {
              web3AuthRegisterState.whenOrNull(
                failedToRegister: (_) {
                  _removeProgressIndicatorFromAuthButtonAndAlertUserWith(
                    message: context
                        .localize.weCouldNotRegisterYourAccountPleaseTryAgain,
                  );
                },
                registered: (_) {
                  context.read<CreateSkyTradeUserBloc>().add(
                        CreateSkyTradeUserEvent.createUser(
                          subscribeToNewsletter:
                              _subscribeToNewsletterCheckboxNotifier.value,
                        ),
                      );
                },
              );
            },
          ),
          BlocListener<CreateSkyTradeUserBloc, CreateSkyTradeUserState>(
            listener: (_, createSkyTradeUserState) {
              createSkyTradeUserState.whenOrNull(
                createdUser: (_) {
                  _removeProgressIndicatorFromAuthButton();

                  Navigator.of(context).pushReplacementNamed(
                    homeRoutePath,
                  );
                },
                failedToCreateUser: (createSkyTradeUserFailure) {
                  _removeProgressIndicatorFromAuthButtonAndAlertUserWith(
                    message: switch (createSkyTradeUserFailure) {
                      InvalidEmailFailure() =>
                        context.localize.pleaseEnterAValidEmail,
                      WalletAlreadyExistsFailure() => context
                          .localize.thisEmailIsAlreadyLinkedToAnExistingAccount,
                      CreateSkyTradeUserUnknownFailure() =>
                        context.localize.anUnknownErrorOccurredPleaseTryAgain,
                    },
                  );

                  _logout();
                },
              );
            },
          ),
        ],
        child: AuthScreen(
          title: context.localize.welcomeToSkyTrade,
          subtitle: context.localize.register,
          padding: const EdgeInsetsDirectional.all(
            thirtyDotNil,
          ),
          children: [
            Form(
              key: _formKey,
              child: BlocBuilder<Web3AuthRegisterBloc, Web3AuthRegisterState>(
                builder: (_, web3AuthRegisterState) => EmailField(
                  controller: _emailController,
                  enabled: web3AuthRegisterState.maybeWhen(
                    registering: () => false,
                    orElse: () => true,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: tenDotNil,
            ),
            BlocBuilder<Web3AuthRegisterBloc, Web3AuthRegisterState>(
              builder: (_, web3AuthRegisterState) => SubscribeSection(
                checkboxNotifier: _subscribeToNewsletterCheckboxNotifier,
                checkboxEnabled: web3AuthRegisterState.maybeWhen(
                  registering: () => false,
                  orElse: () => true,
                ),
              ),
            ),
            const SizedBox(
              height: fifteenDotNil,
            ),
            BlocBuilder<Web3AuthRegisterBloc, Web3AuthRegisterState>(
              builder: (_, web3AuthRegisterState) =>
                  ValueListenableBuilder<AuthButtonType?>(
                valueListenable: _authButtonTypeToIndicateProgressNotifier,
                builder: (
                  _,
                  authButtonTypeToIndicateProgressNotifierValue,
                  __,
                ) =>
                    AuthButton(
                  type: AuthButtonType.getStarted,
                  enabled: web3AuthRegisterState.maybeWhen(
                    registering: () => false,
                    orElse: () => true,
                  ),
                  indicateProgress:
                      authButtonTypeToIndicateProgressNotifierValue ==
                          AuthButtonType.getStarted,
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      _authButtonTypeToIndicateProgressNotifier.value =
                          AuthButtonType.getStarted;

                      context.read<Web3AuthRegisterBloc>().add(
                            Web3AuthRegisterEvent.register(
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
            BlocBuilder<Web3AuthRegisterBloc, Web3AuthRegisterState>(
              builder: (_, web3AuthRegisterState) =>
                  ValueListenableBuilder<AuthButtonType?>(
                valueListenable: _authButtonTypeToIndicateProgressNotifier,
                builder: (
                  _,
                  authButtonTypeToIndicateProgressNotifierValue,
                  __,
                ) =>
                    AuthButton(
                  type: AuthButtonType.continueWithGoogle,
                  enabled: web3AuthRegisterState.maybeWhen(
                    registering: () => false,
                    orElse: () => true,
                  ),
                  indicateProgress:
                      authButtonTypeToIndicateProgressNotifierValue ==
                          AuthButtonType.continueWithGoogle,
                  onPressed: () {
                    _authButtonTypeToIndicateProgressNotifier.value =
                        AuthButtonType.continueWithGoogle;

                    context.read<Web3AuthRegisterBloc>().add(
                          const Web3AuthRegisterEvent.register(
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
            BlocBuilder<Web3AuthRegisterBloc, Web3AuthRegisterState>(
              builder: (_, web3AuthRegisterState) =>
                  ValueListenableBuilder<AuthButtonType?>(
                valueListenable: _authButtonTypeToIndicateProgressNotifier,
                builder: (
                  _,
                  authButtonTypeToIndicateProgressNotifierValue,
                  __,
                ) =>
                    AuthButton(
                  type: AuthButtonType.continueWithApple,
                  enabled: web3AuthRegisterState.maybeWhen(
                    registering: () => false,
                    orElse: () => true,
                  ),
                  indicateProgress:
                      authButtonTypeToIndicateProgressNotifierValue ==
                          AuthButtonType.continueWithApple,
                  onPressed: () {
                    _authButtonTypeToIndicateProgressNotifier.value =
                        AuthButtonType.continueWithApple;

                    context.read<Web3AuthRegisterBloc>().add(
                          const Web3AuthRegisterEvent.register(
                            provider: AuthProvider.apple,
                          ),
                        );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: fifteenDotNil,
            ),
            AgreementSection(
              onTermsAndConditionsTap: () => context.read<HandleLinkBloc>().add(
                    const HandleLinkEvent.handle(
                      link: skyTradeTermsOfServiceUrl,
                    ),
                  ),
              onPrivacyPolicyTap: () => context.read<HandleLinkBloc>().add(
                    const HandleLinkEvent.handle(
                      link: skyTradePrivacyPolicyUrl,
                    ),
                  ),
            ),
            const SizedBox(
              height: fifteenDotNil,
            ),
            BlocBuilder<Web3AuthRegisterBloc, Web3AuthRegisterState>(
              builder: (_, web3AuthRegisterState) => FooterSection(
                text: context.localize.alreadyHaveAnAccount,
                clickableText: context.localize.login,
                clickableTextEnabled: web3AuthRegisterState.maybeWhen(
                  registering: () => false,
                  orElse: () => true,
                ),
                onClickableTextTap: () =>
                    Navigator.of(context).pushReplacementNamed(
                  loginRoutePath,
                ),
              ),
            ),
          ],
        ),
      );
}
