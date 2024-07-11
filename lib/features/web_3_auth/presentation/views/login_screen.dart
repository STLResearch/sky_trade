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
        Text,
        TextAlign,
        TextEditingController,
        Theme,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, ReadContext;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sky_ways/core/resources/numbers.dart'
    show fifteenDotNil, fiveDotNil, thirtyDotNil;
import 'package:sky_ways/core/resources/strings/routes.dart'
    show registerRoutePath;
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/core/utils/enums/ui.dart' show AuthButtonType;
import 'package:sky_ways/features/web_3_auth/presentation/blocs/web_3_auth_login_bloc/web_3_auth_login_bloc.dart'
    show Web3AuthLoginBloc, Web3AuthLoginEvent, Web3AuthLoginState;
import 'package:sky_ways/features/web_3_auth/presentation/widgets/auth_button.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/auth_screen.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/email_field.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/footer_section.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/or_section.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailController;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AuthScreen(
        title: AppLocalizations.of(context)!.welcomeBackToSkyTrade,
        subtitle: AppLocalizations.of(context)!.login,
        padding: const EdgeInsetsDirectional.all(
          thirtyDotNil,
        ),
        children: [
          Text(
            AppLocalizations.of(context)!.signInEffortlessly,
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
            builder: (_, web3AuthLoginState) => AuthButton(
              type: AuthButtonType.getStarted,
              enabled: web3AuthLoginState.maybeWhen(
                loggingIn: () => false,
                orElse: () => true,
              ),
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
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
          const SizedBox(
            height: fifteenDotNil,
          ),
          const OrSection(),
          const SizedBox(
            height: fifteenDotNil,
          ),
          BlocBuilder<Web3AuthLoginBloc, Web3AuthLoginState>(
            builder: (_, web3AuthLoginState) => AuthButton(
              type: AuthButtonType.connectWithGoogle,
              enabled: web3AuthLoginState.maybeWhen(
                loggingIn: () => false,
                orElse: () => true,
              ),
              onPressed: () => context.read<Web3AuthLoginBloc>().add(
                    const Web3AuthLoginEvent.login(
                      provider: AuthProvider.google,
                    ),
                  ),
            ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          BlocBuilder<Web3AuthLoginBloc, Web3AuthLoginState>(
            builder: (_, web3AuthLoginState) => AuthButton(
              type: AuthButtonType.moreOptions,
              enabled: web3AuthLoginState.maybeWhen(
                loggingIn: () => false,
                orElse: () => true,
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          BlocBuilder<Web3AuthLoginBloc, Web3AuthLoginState>(
            builder: (_, web3AuthLoginState) => FooterSection(
              text: AppLocalizations.of(context)!.dontHaveAnAccountYet,
              clickableText: AppLocalizations.of(context)!.register,
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
      );
}
