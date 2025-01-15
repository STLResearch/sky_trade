// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart'
    show
        Align,
        AlignmentDirectional,
        AlwaysStoppedAnimation,
        BorderRadiusDirectional,
        BoxConstraints,
        BoxDecoration,
        BuildContext,
        ButtonStyle,
        Center,
        CircularProgressIndicator,
        Color,
        Colors,
        Column,
        Container,
        Divider,
        EdgeInsetsDirectional,
        ElevatedButton,
        FontWeight,
        Form,
        FormState,
        GlobalKey,
        IconButton,
        LayoutBuilder,
        MainAxisSize,
        MediaQuery,
        Navigator,
        PlaceholderAlignment,
        Radius,
        RichText,
        SingleChildScrollView,
        Size,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextAlign,
        TextEditingController,
        TextSpan,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget,
        WidgetSpan,
        WidgetStatePropertyAll;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocProvider,
        ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/errors/failures/settings_failure.dart';
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hexE04F64, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eighteenDotNil,
        fifteenDotNil,
        fourteenDotNil,
        nilDotNil,
        oneDotNil,
        six,
        sixteenDotNil,
        thirtyDotNil,
        twentyOneDotNil,
        twoDotNil,
        zero;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show loginRoutePath;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString, whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/web_3_auth_logout_bloc/web_3_auth_logout_bloc.dart'
    show Web3AuthLogoutBloc, Web3AuthLogoutEvent;
import 'package:sky_trade/features/settings/presentation/blocs/delete_account_bloc/delete_account_bloc.dart'
    show DeleteAccountBloc, DeleteAccountEvent, DeleteAccountState;
import 'package:sky_trade/features/settings/presentation/blocs/otp_resend_timer_bloc/otp_resend_timer_bloc.dart'
    show OtpResendTimerBloc, OtpResendTimerEvent, OtpResendTimerState;
import 'package:sky_trade/features/settings/presentation/blocs/request_delete_account_bloc/request_delete_account_bloc.dart'
    show RequestDeleteAccountBloc, RequestDeleteAccountEvent;
import 'package:sky_trade/features/settings/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/features/settings/presentation/widgets/otp_field.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<Web3AuthLogoutBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<OtpResendTimerBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<DeleteAccountBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<RequestDeleteAccountBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const DeleteAccountView(),
      );
}

class DeleteAccountView extends StatefulWidget {
  const DeleteAccountView({super.key});

  @override
  State<DeleteAccountView> createState() => _DeleteAccountViewState();
}

class _DeleteAccountViewState extends State<DeleteAccountView> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _otpController;
  late final ValueNotifier<String> _deleteAccountErrorMessageNotifier;
  late bool _showErrorMessage;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _otpController = TextEditingController();
    _deleteAccountErrorMessageNotifier = ValueNotifier<String>(
      emptyString,
    );
    _showErrorMessage = false;

    _startOtpResendTimerCountdown();

    super.initState();
  }

  void _startOtpResendTimerCountdown() =>
      context.read<OtpResendTimerBloc>().add(
            const OtpResendTimerEvent.countdown(),
          );

  @override
  void dispose() {
    _otpController.dispose();
    _deleteAccountErrorMessageNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocListener<DeleteAccountBloc, DeleteAccountState>(
        listener: (context, deleteAccountState) {
          deleteAccountState.whenOrNull(
            failedToDeleteAccount: (deleteAccountFailure) {
              _showErrorMessage = true;
              _deleteAccountErrorMessageNotifier.value =
                  switch (deleteAccountFailure) {
                InvalidCodeFailure() =>
                  context.localize.theCodeYouEnteredDoesNotMatchWhatWeSentYou,
                DeleteAccountUnknownFailure() => context
                    .localize.weCouldNotDeleteYourAccountPleaseTryAgainLater,
              };
            },
            deletedAccount: (_) {
              Navigator.of(
                context,
              )
                ..pop()
                ..pop();

              context.read<Web3AuthLogoutBloc>().add(
                    const Web3AuthLogoutEvent.logout(),
                  );

              Navigator.of(context).pushReplacementNamed(
                loginRoutePath,
              );
            },
          );
        },
        child: LayoutBuilder(
          builder: (context, boxConstraints) => SingleChildScrollView(
            child: Container(
              padding: EdgeInsetsDirectional.only(
                start: sixteenDotNil,
                end: sixteenDotNil,
                bottom: MediaQuery.viewInsetsOf(
                  context,
                ).bottom,
              ),
              constraints: BoxConstraints(
                minWidth: boxConstraints.maxWidth,
              ),
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).scaffoldBackgroundColor,
                borderRadius: const BorderRadiusDirectional.vertical(
                  top: Radius.circular(
                    thirtyDotNil,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: BlocBuilder<DeleteAccountBloc, DeleteAccountState>(
                      builder: (context, deleteAccountState) => IconButton(
                        onPressed: deleteAccountState.maybeWhen(
                          deletingAccount: () => null,
                          orElse: () => () => Navigator.of(
                                context,
                              ).pop(),
                        ),
                        icon: Assets.svgs.clear.svg(),
                      ),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: BlocBuilder<DeleteAccountBloc, DeleteAccountState>(
                      builder: (_, deleteAccountState) =>
                          ValueListenableBuilder(
                        valueListenable: _deleteAccountErrorMessageNotifier,
                        builder: (
                          context,
                          deleteAccountErrorMessageNotifierValue,
                          __,
                        ) =>
                            OtpField(
                          controller: _otpController,
                          enabled: deleteAccountState.maybeWhen(
                            deletingAccount: () => false,
                            orElse: () => true,
                          ),
                          onChanged: (_) => _showErrorMessage = false,
                          validator: (value) =>
                              switch (value?.isEmpty ?? true) {
                            true => context.localize.otpFieldCannotBeEmpty,
                            false
                                when value!.startsWith(
                                      whiteSpace,
                                    ) ||
                                    value.endsWith(
                                      whiteSpace,
                                    ) =>
                              context.localize
                                  .whitespacesAreNotAllowedPleaseRemoveAnyLeadingAndOrTrailingWhitespaces,
                            false when (value?.length ?? zero) != six =>
                              context.localize.pleaseSpecifyAValidOtp,
                            false when _showErrorMessage =>
                              deleteAccountErrorMessageNotifierValue,
                            false => null,
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  BlocBuilder<DeleteAccountBloc, DeleteAccountState>(
                    builder: (context, deleteAccountState) => ElevatedButton(
                      onPressed: deleteAccountState.maybeWhen(
                        deletingAccount: () => null,
                        orElse: () => () {
                          if (_formKey.currentState?.validate() ?? false) {
                            ActionDialog.show(
                              context,
                              content: context.localize
                                  .youAreAboutToDeleteYourAccountPleaseBeCertainThatThisIsWhatYouWantAsThisActionCannotBeReversed,
                              onActionDismissed: () => Navigator.of(
                                context,
                              ).pop(),
                              onActionConfirmed: () {
                                Navigator.of(
                                  context,
                                ).pop();

                                context.read<DeleteAccountBloc>().add(
                                      DeleteAccountEvent.deleteAccount(
                                        otp: _otpController.text,
                                      ),
                                    );
                              },
                            );
                          }
                        },
                      ),
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll<Color>(
                          hexE04F64,
                        ),
                        fixedSize: WidgetStatePropertyAll<Size>(
                          Size.fromHeight(
                            nilDotNil,
                          ),
                        ),
                      ),
                      child: Center(
                        child: deleteAccountState.maybeWhen(
                          deletingAccount: () => const SizedBox(
                            width: sixteenDotNil,
                            height: sixteenDotNil,
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.transparent,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                hexFFFFFF,
                              ),
                              strokeWidth: twoDotNil,
                            ),
                          ),
                          orElse: () => Text(
                            context.localize.deleteAccount,
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                                  color: Theme.of(
                                    context,
                                  ).scaffoldBackgroundColor,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  const Divider(
                    height: oneDotNil,
                  ),
                  const SizedBox(
                    height: fifteenDotNil,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: context.localize.didNotReceiveAnyCode,
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(
                                fontSize: fourteenDotNil,
                                height: twentyOneDotNil / fourteenDotNil,
                              ),
                        ),
                        const TextSpan(
                          text: whiteSpace,
                        ),
                        WidgetSpan(
                          child: BlocBuilder<DeleteAccountBloc,
                              DeleteAccountState>(
                            builder: (context, deleteAccountState) =>
                                BlocBuilder<OtpResendTimerBloc,
                                    OtpResendTimerState>(
                              builder: (context, otpResendTimerState) =>
                                  RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text: otpResendTimerState.maybeWhen(
                                    ticked: (
                                      minutesLeft,
                                      secondsLeft,
                                    ) =>
                                        context.localize.resendOtpIn +
                                        whiteSpace +
                                        switch (minutesLeft == zero) {
                                          true => emptyString,
                                          false => minutesLeft.toString() +
                                              context.localize.m +
                                              whiteSpace,
                                        } +
                                        switch (secondsLeft == zero) {
                                          true => emptyString,
                                          false => secondsLeft.toString() +
                                              context.localize.s,
                                        },
                                    orElse: () => context.localize.resendOtp,
                                  ),
                                  style: otpResendTimerState.maybeWhen(
                                    ticked: (_, __) => Theme.of(
                                      context,
                                    ).textTheme.bodySmall?.copyWith(
                                          fontSize: fourteenDotNil,
                                          height:
                                              twentyOneDotNil / fourteenDotNil,
                                        ),
                                    orElse: () => Theme.of(
                                      context,
                                    ).textTheme.bodySmall?.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: fourteenDotNil,
                                          height:
                                              twentyOneDotNil / fourteenDotNil,
                                          color: hex0653EA,
                                        ),
                                  ),
                                  recognizer: otpResendTimerState.maybeWhen(
                                    ticked: (_, __) => null,
                                    orElse: () => deleteAccountState.maybeWhen(
                                      deletingAccount: () => null,
                                      orElse: () => TapGestureRecognizer()
                                        ..onTap = () {
                                          context
                                              .read<RequestDeleteAccountBloc>()
                                              .add(
                                                const RequestDeleteAccountEvent
                                                    .sendOtp(),
                                              );

                                          context
                                              .read<OtpResendTimerBloc>()
                                              .add(
                                                const OtpResendTimerEvent
                                                    .countdown(),
                                              );
                                        },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          alignment: PlaceholderAlignment.middle,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: eighteenDotNil,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
