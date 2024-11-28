import 'package:flutter/material.dart'
    show
        AutovalidateMode,
        BuildContext,
        EdgeInsetsDirectional,
        InputDecoration,
        Padding,
        State,
        StatefulWidget,
        TextEditingController,
        TextFormField,
        TextInputAction,
        TextInputType,
        Theme,
        Widget;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hex222222, hex87878D, hexE04F64;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fortyOneDotNil,
        fourDotNil,
        fourteenDotNil,
        nineDotNil,
        tenDotFive,
        thirtyEightDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/resources/strings/regex_patterns.dart'
    show emailRegexPatternRawString;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';

class EmailField extends StatefulWidget {
  const EmailField({super.key});

  @override
  State<StatefulWidget> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  late final TextEditingController _emailController;

  @override
  void initState() {
    _emailController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: _emailController,
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
          hintText: context.localize.emailAddress,
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.all(
              fourDotNil,
            ),
            child: Card(
              width: thirtyEightDotNil,
              height: fortyOneDotNil,
              cornerRadius: eightDotNil,
              backgroundColor: hex0653EA,
              child: Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: nineDotNil,
                  horizontal: tenDotFive,
                ),
                child: Assets.svgs.shareInvite.svg(),
              ),
            ),
          ),
        ),
        validator: (value) => _validateEmailUsing(
          context,
          email: value,
        ),
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
