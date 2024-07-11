import 'package:flutter/material.dart'
    show
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
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sky_ways/core/resources/numbers.dart'
    show fifteenDotNil, tenDotNil, thirtyDotNil;
import 'package:sky_ways/core/resources/strings/routes.dart'
    show loginRoutePath;
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/core/utils/enums/ui.dart' show AuthButtonType;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_register_bloc/web_3_auth_register_bloc.dart'
    show Web3AuthRegisterBloc, Web3AuthRegisterEvent, Web3AuthRegisterState;
import 'package:sky_ways/features/web_3_auth/presentation/widgets/agreement_section.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/auth_button.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/auth_screen.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/email_field.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/footer_section.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/or_section.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/subscribe_section.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailController;
  late final ValueNotifier<bool> _subscribeToNewsletterCheckboxNotifier;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _subscribeToNewsletterCheckboxNotifier = ValueNotifier<bool>(
      false,
    );

    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _subscribeToNewsletterCheckboxNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AuthScreen(
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
            builder: (_, web3AuthRegisterState) => AuthButton(
              type: AuthButtonType.getStarted,
              enabled: web3AuthRegisterState.maybeWhen(
                registering: () => false,
                orElse: () => true,
              ),
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
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
          const SizedBox(
            height: fifteenDotNil,
          ),
          const OrSection(),
          const SizedBox(
            height: fifteenDotNil,
          ),
          BlocBuilder<Web3AuthRegisterBloc, Web3AuthRegisterState>(
            builder: (_, web3AuthRegisterState) => AuthButton(
              type: AuthButtonType.connectWithGoogle,
              enabled: web3AuthRegisterState.maybeWhen(
                registering: () => false,
                orElse: () => true,
              ),
              onPressed: () => context.read<Web3AuthRegisterBloc>().add(
                    const Web3AuthRegisterEvent.register(
                      provider: AuthProvider.google,
                    ),
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
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          AgreementSection(
            onTermsAndConditionsTap: () {},
            onPrivacyPolicyTap: () {},
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
      );
}
