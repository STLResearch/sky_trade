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
import 'package:sky_trade/core/resources/colors.dart'
    show hex222222, hex838187, hex87878D, hexE04F64;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show fiveDotNil, fourteenDotNil, twentyOneDotNil;
import 'package:sky_trade/core/resources/strings/regex_patterns.dart'
    show emailRegexPatternRawString;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show asterisk, whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

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
                  context.localize.email,
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
              hintText: context.localize.emailAtMailDotCom,
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
        true => context.localize.emailFieldCannotBeEmpty,
        false
            when email!.startsWith(
                  whiteSpace,
                ) ||
                email.endsWith(
                  whiteSpace,
                ) =>
          context.localize.removeWhitespaces,
        false
            when !email!.contains(
              RegExp(
                emailRegexPatternRawString,
              ),
            ) =>
          context.localize.invalidEmail,
        false => null,
      };
}
