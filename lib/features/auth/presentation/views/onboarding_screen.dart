// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BuildContext,
        Center,
        Checkbox,
        CircularProgressIndicator,
        Column,
        EdgeInsetsDirectional,
        ElevatedButton,
        Flexible,
        Form,
        FormState,
        GlobalKey,
        MainAxisAlignment,
        Navigator,
        Row,
        SafeArea,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextAlign,
        TextEditingController,
        TextInputType,
        Theme,
        ValueListenableBuilder,
        ValueNotifier,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
import 'package:intl_phone_field/phone_number.dart' show PhoneNumber;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show
        CreateSkyTradeUserUnknownFailure,
        EmailReuseNotAllowedFailure,
        InvalidEmailFailure,
        WalletAlreadyExistsFailure;
import 'package:sky_trade/core/resources/colors.dart' show hex0653EA, hexFFFFFF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        six,
        sixteenDotNil,
        tenDotNil,
        thirtyDotNil,
        thirtyTwoDotThreeFive,
        twentyFourDotNil,
        twentyTwoDotFive,
        twoDotNil;
import 'package:sky_trade/core/resources/strings/routes.dart'
    show homeRoutePath;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show plus, whiteSpace;
import 'package:sky_trade/core/utils/enums/ui.dart'
    show InputFieldType, UserCategory;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/auth/presentation/blocs/create_sky_trade_user_bloc/create_sky_trade_user_bloc.dart'
    show
        CreateSkyTradeUserBloc,
        CreateSkyTradeUserEvent,
        CreateSkyTradeUserState;
import 'package:sky_trade/features/auth/presentation/blocs/email_bloc/email_bloc.dart'
    show EmailBloc, EmailEvent, EmailState;
import 'package:sky_trade/features/auth/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/features/auth/presentation/widgets/input_field.dart';
import 'package:sky_trade/features/auth/presentation/widgets/your_status.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<CreateSkyTradeUserBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<EmailBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const OnboardingScreenView(),
      );
}

class OnboardingScreenView extends StatefulWidget {
  const OnboardingScreenView({super.key});

  @override
  State<OnboardingScreenView> createState() => _OnboardingScreenViewState();
}

class _OnboardingScreenViewState extends State<OnboardingScreenView> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController _emailController;
  String? _phoneCountryCode;
  late final TextEditingController _phoneNumberController;
  late final TextEditingController _referralCodeController;
  late final ValueNotifier<UserCategory?> _userCategoryNotifier;
  late final ValueNotifier<bool> _subscribeToNewsletterNotifier;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _referralCodeController = TextEditingController();
    _userCategoryNotifier = ValueNotifier<UserCategory?>(
      null,
    );
    _subscribeToNewsletterNotifier = ValueNotifier<bool>(
      true,
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
    _phoneNumberController.dispose();
    _referralCodeController.dispose();
    _userCategoryNotifier.dispose();
    _subscribeToNewsletterNotifier.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<CreateSkyTradeUserBloc, CreateSkyTradeUserState>(
            listener: (_, createSkyTradeUserState) {
              createSkyTradeUserState.whenOrNull(
                failedToCreateUser: (createSkyTradeUserFailure) {
                  AlertSnackBar.show(
                    context,
                    message: switch (createSkyTradeUserFailure) {
                      InvalidEmailFailure() =>
                        context.localize.pleaseEnterAValidEmail,
                      WalletAlreadyExistsFailure() => context
                          .localize.thisEmailIsAlreadyLinkedToAnExistingAccount,
                      EmailReuseNotAllowedFailure() => context.localize
                          .thisEmailCannotBeUsedToCreateANewAccountPleaseUseADifferentEmail,
                      CreateSkyTradeUserUnknownFailure() =>
                        context.localize.anUnknownErrorOccurredPleaseTryAgain,
                    },
                  );
                },
                createdUser: (_) {
                  Navigator.of(
                    context,
                  ).pushReplacementNamed(
                    homeRoutePath,
                  );
                },
              );
            },
          ),
          BlocListener<EmailBloc, EmailState>(
            listener: (_, emailState) {
              emailState.whenOrNull(
                gotEmail: (email) {
                  _emailController.text = email;
                },
              );
            },
          ),
        ],
        child: Scaffold(
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsetsDirectional.all(
                  thirtyDotNil,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: tenDotNil,
                    ),
                    Assets.svgs.skyTradeRadarLogo.svg(),
                    const SizedBox(
                      height: thirtyTwoDotThreeFive,
                    ),
                    Text(
                      context.localize.welcomeToSkyTrade,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(
                      height: twentyFourDotNil,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          InputField<String>(
                            controller: _emailController,
                            title: context.localize.email,
                            required: false,
                            enabled: false,
                            filledWhenDisabled: true,
                            keyboardType: TextInputType.emailAddress,
                            inputFieldType: InputFieldType.textInput,
                            hintText: context.localize.emailAtMailDotCom,
                          ),
                          const SizedBox(
                            height: twentyFourDotNil,
                          ),
                          BlocBuilder<CreateSkyTradeUserBloc,
                              CreateSkyTradeUserState>(
                            builder: (_, createSkyTradeUserState) =>
                                InputField<PhoneNumber>(
                              controller: _phoneNumberController,
                              title: context.localize.phone,
                              required: true,
                              enabled: createSkyTradeUserState.maybeWhen(
                                creatingUser: () => false,
                                orElse: () => true,
                              ),
                              filledWhenDisabled: false,
                              keyboardType: TextInputType.phone,
                              inputFieldType: InputFieldType.phoneInput,
                              onChanged: (phoneNumber) =>
                                  _phoneCountryCode = phoneNumber.countryCode,
                              onCountryChanged: (country) =>
                                  _phoneCountryCode = plus + country.dialCode,
                            ),
                          ),
                          const SizedBox(
                            height: twentyFourDotNil,
                          ),
                          BlocBuilder<CreateSkyTradeUserBloc,
                              CreateSkyTradeUserState>(
                            builder: (_, createSkyTradeUserState) => YourStatus(
                              enabled: createSkyTradeUserState.maybeWhen(
                                creatingUser: () => false,
                                orElse: () => true,
                              ),
                              onChanged: (userCategory) =>
                                  _userCategoryNotifier.value = userCategory,
                            ),
                          ),
                          const SizedBox(
                            height: twentyFourDotNil,
                          ),
                          BlocBuilder<CreateSkyTradeUserBloc,
                              CreateSkyTradeUserState>(
                            builder: (_, createSkyTradeUserState) =>
                                InputField<String>(
                              controller: _referralCodeController,
                              title: context.localize.referralCode,
                              required: false,
                              enabled: createSkyTradeUserState.maybeWhen(
                                creatingUser: () => false,
                                orElse: () => true,
                              ),
                              filledWhenDisabled: false,
                              keyboardType: TextInputType.emailAddress,
                              inputFieldType: InputFieldType.textInput,
                              hintText: context.localize.enterReferralCode,
                              validator: (value) =>
                                  switch (value?.isNotEmpty ?? false) {
                                true
                                    when value!.startsWith(
                                          whiteSpace,
                                        ) ||
                                        value.endsWith(
                                          whiteSpace,
                                        ) =>
                                  context.localize.removeWhitespaces,
                                true when value!.length < six => context
                                    .localize
                                    .referralCodeTooShortSkyTradeReferralCodeIsSixCharactersLong,
                                true when value!.length > six => context
                                    .localize
                                    .referralCodeTooLongSkyTradeReferralCodeIsSixCharactersLong,
                                _ => null,
                              },
                            ),
                          ),
                          const SizedBox(
                            height: twentyFourDotNil,
                          ),
                          BlocBuilder<CreateSkyTradeUserBloc,
                              CreateSkyTradeUserState>(
                            builder: (_, createSkyTradeUserState) => Row(
                              children: [
                                ValueListenableBuilder<bool>(
                                  valueListenable:
                                      _subscribeToNewsletterNotifier,
                                  builder: (
                                    _,
                                    subscribeToNewsletterNotifierValue,
                                    __,
                                  ) =>
                                      Checkbox(
                                    activeColor: hex0653EA,
                                    value: subscribeToNewsletterNotifierValue,
                                    onChanged:
                                        createSkyTradeUserState.maybeWhen(
                                      creatingUser: () => null,
                                      orElse: () => (value) =>
                                          _subscribeToNewsletterNotifier.value =
                                              value ?? false,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    context.localize.subscribeToNewsletter,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: twentyFourDotNil,
                          ),
                          BlocBuilder<CreateSkyTradeUserBloc,
                              CreateSkyTradeUserState>(
                            builder: (_, createSkyTradeUserState) =>
                                ElevatedButton(
                              onPressed: createSkyTradeUserState.maybeWhen(
                                creatingUser: () => null,
                                orElse: () => () {
                                  if (_formKey.currentState?.validate() ??
                                      false) {
                                    context.read<CreateSkyTradeUserBloc>().add(
                                          CreateSkyTradeUserEvent.createUser(
                                            phoneNumber: _phoneCountryCode! +
                                                _phoneNumberController.text,
                                            userCategory:
                                                _userCategoryNotifier.value!,
                                            referralCode:
                                                _referralCodeController.text,
                                            subscribeToNewsletter:
                                                _subscribeToNewsletterNotifier
                                                    .value,
                                          ),
                                        );
                                  }
                                },
                              ),
                              child: Center(
                                child: createSkyTradeUserState.maybeWhen(
                                  creatingUser: () => const SizedBox(
                                    width: sixteenDotNil,
                                    height: sixteenDotNil,
                                    child: CircularProgressIndicator(
                                      color: hexFFFFFF,
                                      strokeWidth: twoDotNil,
                                    ),
                                  ),
                                  orElse: () => Text(
                                    context.localize.submit,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontSize: fifteenDotNil,
                                          height:
                                              twentyTwoDotFive / fifteenDotNil,
                                          color: hexFFFFFF,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: tenDotNil,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
