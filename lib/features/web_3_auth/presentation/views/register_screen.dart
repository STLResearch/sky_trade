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
        TextEditingController,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        WidgetsBinding,
        WidgetsBindingObserver;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocListener, ReadContext;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show fifteenDotNil, tenDotNil, thirtyDotNil;
import 'package:sky_ways/core/resources/strings/routes.dart'
    show homeRoutePath, loginRoutePath;
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/core/utils/enums/ui.dart' show AuthButtonType;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_capture_custom_tabs_closed_bloc/web_3_auth_capture_custom_tabs_closed_bloc.dart'
    show
        Web3AuthCaptureCustomTabsClosedBloc,
        Web3AuthCaptureCustomTabsClosedEvent;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_register_bloc/web_3_auth_register_bloc.dart'
    show Web3AuthRegisterBloc, Web3AuthRegisterEvent, Web3AuthRegisterState;
import 'package:sky_ways/features/web_3_auth/presentation/widgets/agreement_section.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/auth_button.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/auth_screen.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/email_field.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/footer_section.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/or_section.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/subscribe_section.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
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
      false,
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

  Future<void> _launchTermsOfService() async {
    final url = Uri.parse('https://docs.sky.trade/terms.htm');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> _launchPrivacyPolicy() async {
    final url = Uri.parse('https://docs.sky.trade/privacy.htm');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<Web3AuthRegisterBloc, Web3AuthRegisterState>(
        listener: (_, web3AuthRegisterState) {
          web3AuthRegisterState.maybeWhen(
            failedToRegister: (_) {
              _authButtonTypeToIndicateProgressNotifier.value = null;

              AlertSnackBar.show(
                context,
                message: AppLocalizations.of(context)!
                    .weCouldNotRegisterYourAccountPleaseTryAgain,
              );
            },
            registered: (_) {
              _authButtonTypeToIndicateProgressNotifier.value = null;

              Navigator.of(context).pushReplacementNamed(
                homeRoutePath,
              );
            },
            orElse: () {},
          );
        },
        child: AuthScreen(
          title: AppLocalizations.of(context)!.welcomeToSkyTrade,
          subtitle: AppLocalizations.of(context)!.register,
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
                  type: AuthButtonType.connectWithGoogle,
                  enabled: web3AuthRegisterState.maybeWhen(
                    registering: () => false,
                    orElse: () => true,
                  ),
                  indicateProgress:
                      authButtonTypeToIndicateProgressNotifierValue ==
                          AuthButtonType.connectWithGoogle,
                  onPressed: () {
                    _authButtonTypeToIndicateProgressNotifier.value =
                        AuthButtonType.connectWithGoogle;

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
              builder: (_, web3AuthRegisterState) => AuthButton(
                type: AuthButtonType.moreOptions,
                enabled: web3AuthRegisterState.maybeWhen(
                  registering: () => false,
                  orElse: () => true,
                ),
                indicateProgress: false,
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: fifteenDotNil,
            ),
            AgreementSection(
              onTermsAndConditionsTap: _launchTermsOfService,
              onPrivacyPolicyTap: _launchPrivacyPolicy,
            ),
            const SizedBox(
              height: fifteenDotNil,
            ),
            BlocBuilder<Web3AuthRegisterBloc, Web3AuthRegisterState>(
              builder: (_, web3AuthRegisterState) => FooterSection(
                text: AppLocalizations.of(context)!.alreadyHaveAnAccount,
                clickableText: AppLocalizations.of(context)!.login,
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
