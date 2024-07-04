import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:sky_ways/core/resources/strings/fonts.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/email_field_widget.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/footer_widget.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/get_started_button_widget.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/logo_widget.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/more_options_media_button_widget.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/social_media_button_widget.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/sub_title_widget.dart';
import 'package:sky_ways/features/web_3_auth/presentation/widgets/title_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const LogoWidget(),
              const SizedBox(
                height: 40,
              ),
              TitleWidget(
                title: AppLocalizations.of(context)!.welcomebacktoskytrade,
              ),
              const SizedBox(
                height: 15,
              ),
              SubTitleWidget(
                title: AppLocalizations.of(context)!.login,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                AppLocalizations.of(context)!.signininfo,
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF87878D),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              const EmailFieldWidget(),
              const SizedBox(
                height: 15,
              ),
              const GetStartedButtonWidget(),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFCCCCCC),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    AppLocalizations.of(context)!.or,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: poppins,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFCCCCCC),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFCCCCCC),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SocialMediaButtonWidget(
                text: AppLocalizations.of(context)!.connectwithgoogle,
                imagePath: SvgPicture.asset(
                  'assets/images/google.svg',
                  semanticsLabel: 'Google logo',
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              MoreOptionsMediaButtonWidget(
                text: AppLocalizations.of(context)!.moreoptions,
              ),
              const SizedBox(
                height: 15,
              ),
              const FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
