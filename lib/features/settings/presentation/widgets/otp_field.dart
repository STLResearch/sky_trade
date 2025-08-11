// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

import 'package:dartz/dartz.dart' show Function1;
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
    show fiveDotNil, fourteenDotNil, three, twentyOneDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show asterisk;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

final class OtpField extends StatelessWidget {
  const OtpField({
    required this.controller,
    required this.enabled,
    required this.onChanged,
    required this.validator,
    super.key,
  });

  final TextEditingController controller;
  final bool enabled;
  final Function1<String, void> onChanged;
  final Function1<String?, String?> validator;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder<TextEditingValue>(
                valueListenable: controller,
                builder: (_, otpControllerValue, __) => Text(
                  context.localize.otp,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(
                        fontSize: fourteenDotNil,
                        height: twentyOneDotNil / fourteenDotNil,
                        color: switch (validator(
                              otpControllerValue.text,
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
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(
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
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                  color: hex222222,
                ),
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: context.localize.enterTheCodeSentToYourEmail,
              errorMaxLines: three,
            ),
            onChanged: onChanged,
            validator: validator,
          ),
        ],
      );
}
