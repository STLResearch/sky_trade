import 'package:flutter/material.dart'
    show
        AutovalidateMode,
        BuildContext,
        Column,
        CrossAxisAlignment,
        InputDecoration,
        Row,
        SizedBox,
        StatelessWidget,
        Text,
        TextEditingController,
        TextEditingValue,
        TextFormField,
        TextInputAction,
        TextInputType,
        Theme,
        ValueListenableBuilder,
        Widget;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sky_ways/core/resources/colors.dart'
    show hex222222, hex838187, hex87878D, hexE04F64;
import 'package:sky_ways/core/resources/numbers.dart'
    show fiveDotNil, fourteenDotNil, twentyOneDotNil;
import 'package:sky_ways/core/resources/strings/regex_patterns.dart'
    show emailRegexPatternRawString;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show asterisk, whiteSpace;

final class EmailField extends StatelessWidget {
  const EmailField({
    required this.controller,
    required this.enabled,
    super.key,
  });

  final TextEditingController controller;
  final bool enabled;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder<TextEditingValue>(
                valueListenable: controller,
                builder: (_, emailControllerValue, __) => Text(
                  AppLocalizations.of(context)!.email,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: fourteenDotNil,
                        height: twentyOneDotNil / fourteenDotNil,
                        color: switch (_validateEmailUsing(
                              context,
                              email: emailControllerValue.text,
                            ) ==
                            null) {
                          true => hex838187,
                          false => hexE04F64,
                        },
                      ),
                ),
              ),
              Text(
                asterisk,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: fourteenDotNil,
                      height: twentyOneDotNil / fourteenDotNil,
                      color: hexE04F64,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: fiveDotNil,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: controller,
            enabled: enabled,
            cursorColor: hex87878D,
            cursorErrorColor: hexE04F64,
            textInputAction: TextInputAction.done,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                  color: hex222222,
                ),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: AppLocalizations.of(context)!.emailAtMailDotCom,
            ),
            validator: (value) => _validateEmailUsing(
              context,
              email: value,
            ),
          ),
        ],
      );

  String? _validateEmailUsing(
    BuildContext context, {
    String? email,
  }) =>
      switch (email?.isEmpty ?? true) {
        true => AppLocalizations.of(context)!.emailFieldCannotBeEmpty,
        false
            when email!.startsWith(
                  whiteSpace,
                ) ||
                email.endsWith(
                  whiteSpace,
                ) =>
          AppLocalizations.of(context)!.removeWhitespaces,
        false
            when !email!.contains(
              RegExp(
                emailRegexPatternRawString,
              ),
            ) =>
          AppLocalizations.of(context)!.invalidEmail,
        false => null,
      };
}
