// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Function1;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        AutovalidateMode,
        BuildContext,
        Column,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        Flexible,
        FormField,
        InputDecoration,
        Padding,
        Row,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        Text,
        TextEditingController,
        TextEditingValue,
        TextFormField,
        TextInputAction,
        TextInputType,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:intl_phone_field/countries.dart' show Country;
import 'package:intl_phone_field/country_picker_dialog.dart'
    show PickerDialogStyle;
import 'package:intl_phone_field/intl_phone_field.dart'
    show IconPosition, IntlPhoneField;
import 'package:sky_trade/core/resources/colors.dart'
    show hex222222, hex838187, hex87878D, hexE04F64, hexF3F3F3;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fiveDotNil,
        fourteenDotNil,
        oneDotNil,
        twentyOneDotNil,
        twentyTwoDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show asterisk, emptyString;
import 'package:sky_trade/core/utils/enums/ui.dart' show InputFieldType;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';

final class InputField<T> extends StatefulWidget {
  const InputField({
    required this.controller,
    required this.title,
    required this.required,
    required this.enabled,
    required this.filledWhenDisabled,
    required this.keyboardType,
    required this.inputFieldType,
    this.hintText,
    this.errorMaxLines,
    this.validator,
    this.onChanged,
    this.onCountryChanged,
    super.key,
  });

  final TextEditingController controller;
  final String title;
  final bool required;
  final bool enabled;
  final bool filledWhenDisabled;
  final TextInputType keyboardType;
  final InputFieldType inputFieldType;
  final String? hintText;
  final int? errorMaxLines;
  final Function1<String?, String?>? validator;
  final Function1<T, void>? onChanged;
  final Function1<Country, void>? onCountryChanged;

  @override
  State<InputField<T>> createState() => _InputFieldState<T>();
}

class _InputFieldState<T> extends State<InputField<T>> {
  late final ValueNotifier<bool> _phoneNumberValidNotifier;

  @override
  void initState() {
    _phoneNumberValidNotifier = ValueNotifier<bool>(
      true,
    );

    super.initState();
  }

  @override
  void dispose() {
    _phoneNumberValidNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ValueListenableBuilder<TextEditingValue>(
                valueListenable: widget.controller,
                builder: (_, textEditingValue, __) =>
                    ValueListenableBuilder<bool>(
                  valueListenable: _phoneNumberValidNotifier,
                  builder: (___, phoneNumberValidNotifierValue, ____) =>
                      Flexible(
                    child: Text(
                      widget.title,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: fourteenDotNil,
                            height: twentyOneDotNil / fourteenDotNil,
                            color: switch (widget.inputFieldType) {
                              InputFieldType.phoneInput => switch (
                                    phoneNumberValidNotifierValue) {
                                  true => hex838187,
                                  false => hexE04F64,
                                },
                              InputFieldType.textInput => switch (
                                    widget.validator?.call(
                                          textEditingValue.text,
                                        ) ==
                                        null) {
                                  true => hex838187,
                                  false => hexE04F64,
                                },
                            },
                          ),
                    ),
                  ),
                ),
              ),
              if (widget.required)
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
          switch (widget.inputFieldType) {
            InputFieldType.textInput => TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: widget.controller,
                enabled: widget.enabled,
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
                keyboardType: widget.keyboardType,
                decoration: InputDecoration(
                  errorMaxLines: widget.errorMaxLines,
                  hintText: widget.hintText,
                  filled: widget.filledWhenDisabled && !widget.enabled,
                  fillColor: switch (widget.enabled) {
                    false when widget.filledWhenDisabled => hexF3F3F3,
                    _ => null,
                  },
                ),
                validator: widget.validator,
                onChanged: (value) => widget.onChanged?.call(
                  value as T,
                ),
              ),
            InputFieldType.phoneInput => FormField<String>(
                initialValue: emptyString,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                builder: (field) => Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    IntlPhoneField(
                      controller: widget.controller,
                      enabled: widget.enabled,
                      cursorColor: hex87878D,
                      textInputAction: TextInputAction.done,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontSize: fourteenDotNil,
                            height: twentyOneDotNil / fourteenDotNil,
                            color: hex222222,
                          ),
                      dropdownTextStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontSize: fourteenDotNil,
                                height: twentyOneDotNil / fourteenDotNil,
                                color: hex222222,
                              ),
                      keyboardType: widget.keyboardType,
                      decoration: InputDecoration(
                        filled: widget.filledWhenDisabled && !widget.enabled,
                        fillColor: switch (widget.enabled) {
                          false when widget.filledWhenDisabled => hexF3F3F3,
                          _ => null,
                        },
                      ),
                      dropdownIconPosition: IconPosition.trailing,
                      invalidNumberMessage: context.localize.invalidPhoneNumber,
                      pickerDialogStyle: PickerDialogStyle(
                        backgroundColor: Theme.of(
                          context,
                        ).scaffoldBackgroundColor,
                        countryCodeStyle:
                            Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontSize: fourteenDotNil,
                                  height: twentyOneDotNil / fourteenDotNil,
                                  color: hex222222,
                                ),
                        countryNameStyle:
                            Theme.of(context).textTheme.bodySmall?.copyWith(
                                  fontSize: fourteenDotNil,
                                  height: twentyOneDotNil / fourteenDotNil,
                                  color: hex222222,
                                ),
                        listTileDivider: const Divider(
                          height: oneDotNil,
                        ),
                        searchFieldCursorColor: hex87878D,
                        searchFieldInputDecoration: InputDecoration(
                          hintText: context.localize.searchCountryOrCountryCode,
                          contentPadding: Theme.of(
                            context,
                          ).inputDecorationTheme.contentPadding,
                          border: Theme.of(
                            context,
                          ).inputDecorationTheme.border,
                          enabledBorder: Theme.of(
                            context,
                          ).inputDecorationTheme.enabledBorder,
                          focusedBorder: Theme.of(
                            context,
                          ).inputDecorationTheme.focusedBorder,
                          hintStyle: Theme.of(
                            context,
                          ).inputDecorationTheme.hintStyle,
                          labelStyle:
                              Theme.of(context).inputDecorationTheme.labelStyle,
                        ),
                      ),
                      flagsButtonPadding: const EdgeInsetsDirectional.only(
                        start: twentyTwoDotNil,
                      ),
                      validator: (phoneNumber) {
                        if (phoneNumber?.number.isEmpty ?? true) {
                          _phoneNumberValidNotifier.value = false;

                          return context.localize.phoneNumberCannotBeEmpty;
                        }

                        try {
                          final validPhoneNumber =
                              phoneNumber?.isValidNumber() ?? false;

                          _phoneNumberValidNotifier.value = validPhoneNumber;

                          if (validPhoneNumber) {
                            return null;
                          }

                          return context.localize.invalidPhoneNumber;
                        } catch (_) {
                          _phoneNumberValidNotifier.value = false;
                          return context.localize.invalidPhoneNumber;
                        }
                      },
                      onChanged: (phoneNumber) {
                        field.didChange(
                          phoneNumber.completeNumber,
                        );

                        widget.onChanged?.call(
                          phoneNumber as T,
                        );
                      },
                      onCountryChanged: widget.onCountryChanged,
                    ),
                    switch (field.hasError) {
                      true => const SizedBox(
                          height: fiveDotNil,
                        ),
                      false => const SizedBox.shrink(),
                    },
                    switch (field.hasError) {
                      true => Align(
                          alignment: AlignmentDirectional.topStart,
                          child: Padding(
                            padding: const EdgeInsetsDirectional.only(
                              start: twentyTwoDotNil,
                            ),
                            child: Text(
                              field.errorText ??
                                  context.localize.phoneNumberCannotBeEmpty,
                              style: Theme.of(
                                context,
                              ).inputDecorationTheme.errorStyle,
                            ),
                          ),
                        ),
                      false => const SizedBox.shrink(),
                    },
                  ],
                ),
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    _phoneNumberValidNotifier.value = false;

                    return context.localize.phoneNumberCannotBeEmpty;
                  }

                  return null;
                },
              ),
          },
        ],
      );
}
