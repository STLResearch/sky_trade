// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        AutovalidateMode,
        BuildContext,
        Center,
        CircularProgressIndicator,
        EdgeInsetsDirectional,
        Form,
        FormState,
        GlobalKey,
        InputDecoration,
        Padding,
        SizedBox,
        State,
        StatefulWidget,
        TextEditingController,
        TextFormField,
        TextInputAction,
        TextInputType,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocListener, ReadContext;
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
        threeDotNil,
        twentyFiveDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/resources/strings/regex_patterns.dart'
    show emailRegexPatternRawString;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/referral/presentation/blocs/email_bloc/email_bloc.dart'
    show EmailBloc, EmailEvent, EmailState;
import 'package:sky_trade/features/referral/presentation/blocs/invite_bloc/invite_bloc.dart'
    show InviteBloc, InviteEvent, InviteState;
import 'package:sky_trade/features/referral/presentation/widgets/card.dart';

class EmailField extends StatefulWidget {
  const EmailField({super.key});

  @override
  State<StatefulWidget> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailController;
  late final ValueNotifier<bool> _showInviteFailureMessageNotifier;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _showInviteFailureMessageNotifier = ValueNotifier<bool>(
      false,
    );

    _getEmail();

    super.initState();
  }

  void _getEmail() => context.read<EmailBloc>().add(
        const EmailEvent.getEmail(),
      );

  @override
  void dispose() {
    _emailController.dispose();
    _showInviteFailureMessageNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocListener<InviteBloc, InviteState>(
        listener: (_, inviteState) {
          inviteState.whenOrNull(
            sentInvite: (_) {
              if (_showInviteFailureMessageNotifier.value) {
                _showInviteFailureMessageNotifier.value = false;
              }
            },
            failedToSendInvite: (_) {
              if (!_showInviteFailureMessageNotifier.value) {
                _showInviteFailureMessageNotifier.value = true;
              }
            },
          );
        },
        child: Form(
          key: _formKey,
          child: BlocBuilder<InviteBloc, InviteState>(
            builder: (_, inviteState) => BlocBuilder<EmailBloc, EmailState>(
              builder: (_, emailState) => ValueListenableBuilder<bool>(
                valueListenable: _showInviteFailureMessageNotifier,
                builder: (_, showInviteFailureMessageNotifierValue, __) =>
                    TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  enabled: inviteState.maybeWhen(
                    sendingInvite: () => false,
                    orElse: () => true,
                  ),
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
                      child: inviteState.maybeWhen(
                        sendingInvite: () => const Padding(
                          padding: EdgeInsetsDirectional.all(
                            eightDotNil,
                          ),
                          child: SizedBox(
                            width: twentyFiveDotNil,
                            height: twentyFiveDotNil,
                            child: Center(
                              child: CircularProgressIndicator(
                                strokeWidth: threeDotNil,
                              ),
                            ),
                          ),
                        ),
                        orElse: () => Card(
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
                          onTap: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              context.read<InviteBloc>().add(
                                    InviteEvent.sendInvite(
                                      email: _emailController.text,
                                    ),
                                  );
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  onChanged: (_) {
                    if (showInviteFailureMessageNotifierValue) {
                      _showInviteFailureMessageNotifier.value = false;
                    }
                  },
                  validator: (value) => _validateEmailUsing(
                    context,
                    inviteFailed: showInviteFailureMessageNotifierValue,
                    suppliedEmail: value,
                    currentUserEmail: emailState.whenOrNull(
                      gotEmail: (email) => email,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  String? _validateEmailUsing(
    BuildContext context, {
    required bool inviteFailed,
    String? suppliedEmail,
    String? currentUserEmail,
  }) =>
      switch (suppliedEmail?.isEmpty ?? true) {
        true => context.localize.emailFieldCannotBeEmpty,
        false
            when suppliedEmail!.startsWith(
                  whiteSpace,
                ) ||
                suppliedEmail.endsWith(
                  whiteSpace,
                ) =>
          context.localize
              .whitespacesAreNotAllowedPleaseRemoveAnyLeadingAndOrTrailingWhitespaces,
        false
            when !suppliedEmail!.contains(
              RegExp(
                emailRegexPatternRawString,
              ),
            ) =>
          context.localize.pleaseEnterAValidEmail,
        false
            when currentUserEmail != null &&
                suppliedEmail == currentUserEmail =>
          context.localize.itDoesNotMakeSenseToSendYourselfAnInvite,
        false when inviteFailed =>
          context.localize.weCouldNotSendTheInvitePleaseTryAgain,
        false => null,
      };
}
