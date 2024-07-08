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
        TextEditingController,
        ValueNotifier,
        Widget;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sky_ways/core/resources/numbers.dart'
    show fifteenDotNil, tenDotNil, thirtyDotNil;
import 'package:sky_ways/core/utils/enums/ui.dart' show AuthButtonType;
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
            child: EmailField(
              emailController: _emailController,
              enabled: true,
            ),
          ),
          const SizedBox(
            height: tenDotNil,
          ),
          SubscribeSection(
            checkboxNotifier: _subscribeToNewsletterCheckboxNotifier,
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
          AgreementSection(
            onTermsAndConditionsTap: () {},
            onPrivacyPolicyTap: () {},
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
