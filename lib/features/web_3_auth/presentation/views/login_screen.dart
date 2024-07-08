import 'package:flutter/material.dart'
    show
        BuildContext,
        EdgeInsetsDirectional,
        Form,
        FormState,
        GlobalKey,
        SizedBox,
        State,
        StatefulWidget,
        Text,
        TextAlign,
        TextEditingController,
        Theme,
        Widget;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sky_ways/core/resources/numbers.dart'
    show fifteenDotNil, fiveDotNil, thirtyDotNil;
import 'package:sky_ways/core/utils/enums/ui.dart' show AuthButtonType;
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
            child: EmailField(
              emailController: _emailController,
              enabled: true,
            ),
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          AuthButton(
            authButtonType: AuthButtonType.getStarted,
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                //
              }
            },
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          const OrSection(),
          const SizedBox(
            height: fifteenDotNil,
          ),
          AuthButton(
            authButtonType: AuthButtonType.connectWithGoogle,
            onPressed: () {},
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          AuthButton(
            authButtonType: AuthButtonType.moreOptions,
            onPressed: () {},
          ),
          const SizedBox(
            height: fifteenDotNil,
          ),
          FooterSection(
            text: AppLocalizations.of(context)!.dontHaveAnAccountYet,
            clickableText: AppLocalizations.of(context)!.register,
            onClickableTextTap: () {},
          ),
        ],
      );
}
