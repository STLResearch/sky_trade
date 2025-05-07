// ignore_for_file: lines_longer_than_80_chars

import 'dart:io' show Platform;

import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        ButtonStyle,
        Center,
        Color,
        Column,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        EdgeInsetsGeometry,
        ElevatedButton,
        Expanded,
        FontWeight,
        IconButton,
        Navigator,
        Padding,
        Row,
        Scaffold,
        SingleChildScrollView,
        Size,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        Switch,
        Text,
        Theme,
        Widget,
        WidgetStatePropertyAll,
        WidgetsFlutterBinding,
        showModalBottomSheet;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
import 'package:share_plus/share_plus.dart';
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/errors/failures/settings_failure.dart'
    show TrackingRequestFailure, TrackingRequestNotRequiredFailure;
import 'package:sky_trade/core/resources/colors.dart'
    show hex0653EA, hex4285F4, hex65C466, hex838187, hexE04F64, hexE9F5FE;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        eighteenDotNil,
        fortyNineDotNil,
        fourteenDotNil,
        oneDotNil,
        seventyThreeDotNil,
        sixteenDotNil,
        sixteenDotOne,
        tenDotNil,
        twentyOneDotNil;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show appleAppStorePageLink, googlePlayStorePageLink;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show TrackingTransparencyRequestStatus;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/settings/presentation/blocs/analytics_bloc/analytics_bloc.dart'
    show AnalyticsBloc, AnalyticsEvent, AnalyticsState;
import 'package:sky_trade/features/settings/presentation/blocs/request_delete_account_bloc/request_delete_account_bloc.dart'
    show RequestDeleteAccountBloc, RequestDeleteAccountEvent;
import 'package:sky_trade/features/settings/presentation/blocs/request_tracking_authorization_bloc/request_tracking_authorization_bloc.dart'
    show
        RequestTrackingAuthorizationBloc,
        RequestTrackingAuthorizationEvent,
        RequestTrackingAuthorizationState;
import 'package:sky_trade/features/settings/presentation/blocs/tracking_authorization_status_bloc/tracking_authorization_status_bloc.dart'
    show
        TrackingAuthorizationStatusBloc,
        TrackingAuthorizationStatusEvent,
        TrackingAuthorizationStatusState;
import 'package:sky_trade/features/settings/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/features/settings/presentation/widgets/delete_account.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<AnalyticsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<RequestDeleteAccountBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<RequestTrackingAuthorizationBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<TrackingAuthorizationStatusBloc>(
            create: (_) => serviceLocator(),
          ),
        ],
        child: const SettingsView(),
      );
}

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  late bool _analyticsSwitchState;

  @override
  void initState() {
    _analyticsSwitchState = false;

    _checkAnalyticsEnabled();

    _checkTrackingAuthorizationStatus();

    super.initState();
  }

  void _checkAnalyticsEnabled() => context.read<AnalyticsBloc>().add(
        const AnalyticsEvent.isEnabled(),
      );

  void _checkTrackingAuthorizationStatus() =>
      context.read<TrackingAuthorizationStatusBloc>().add(
            const TrackingAuthorizationStatusEvent.check(),
          );

  void _toggleAnalyticsCollection() => context.read<AnalyticsBloc>().add(
        AnalyticsEvent.toggle(
          value: !_analyticsSwitchState,
        ),
      );

  Future<void> _shareApp() async {
    final appLink =
        Platform.isAndroid ? googlePlayStorePageLink : appleAppStorePageLink;

    final message = context.localize
            .heyImUsingSkyTradeRadarAndThoughtYoudLikeItCheckItOutHere +
        appLink;

    final params = ShareParams(
      text: message,
    );

    await SharePlus.instance.share(params);
  }

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<RequestTrackingAuthorizationBloc,
              RequestTrackingAuthorizationState>(
            listener: (_, requestTrackingAuthorizationState) {
              requestTrackingAuthorizationState.whenOrNull(
                maybeAuthorized: (trackingStatusEntity) {
                  if (trackingStatusEntity.status ==
                      TrackingTransparencyRequestStatus.authorized) {
                    _toggleAnalyticsCollection();
                  }
                },
                cannotAuthorize: (trackingStatusFailure) {
                  if (trackingStatusFailure
                      is TrackingRequestNotRequiredFailure) {
                    _toggleAnalyticsCollection();
                  }
                },
              );
            },
          ),
          BlocListener<AnalyticsBloc, AnalyticsState>(
            listener: (_, analyticsState) {
              analyticsState.whenOrNull(
                maybeEnabled: (enabled) {
                  _analyticsSwitchState = enabled;
                },
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Assets.svgs.chevronLeft.svg(),
              onPressed: () => Navigator.of(
                context,
              ).pop(),
            ),
            title: Text(
              context.localize.settings,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: twentyOneDotNil,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: eighteenDotNil,
                      ),
                      Text(
                        context.localize.dataCollection,
                        style: Theme.of(
                          context,
                        ).textTheme.bodySmall?.copyWith(
                              fontFamily: FontFamily.arial,
                              fontSize: fourteenDotNil,
                              height: sixteenDotOne / fourteenDotNil,
                              color: hex4285F4,
                            ),
                      ),
                      const SizedBox(
                        height: tenDotNil,
                      ),
                      const Divider(
                        height: oneDotNil,
                      ),
                      const SizedBox(
                        height: tenDotNil,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              context.localize.analytics,
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall?.copyWith(
                                    color: hex838187,
                                  ),
                            ),
                          ),
                          const SizedBox(
                            width: seventyThreeDotNil,
                          ),
                          BlocBuilder<TrackingAuthorizationStatusBloc,
                              TrackingAuthorizationStatusState>(
                            builder: (_, trackingAuthorizationStatusState) =>
                                BlocBuilder<AnalyticsBloc, AnalyticsState>(
                              builder: (__, analyticsState) => Switch(
                                activeTrackColor: hex65C466,
                                value: analyticsState.maybeWhen(
                                  maybeEnabled: (enabled) => enabled,
                                  orElse: () => false,
                                ),
                                onChanged: (_) =>
                                    trackingAuthorizationStatusState.maybeWhen(
                                  cannotAuthorize: (trackingStatusFailure) =>
                                      switch (trackingStatusFailure) {
                                    TrackingRequestFailure() => null,
                                    TrackingRequestNotRequiredFailure() =>
                                      analyticsState.maybeWhen(
                                        processing: () => null,
                                        orElse: _toggleAnalyticsCollection,
                                      ),
                                  },
                                  checking: () => null,
                                  orElse: () => analyticsState.maybeWhen(
                                    processing: () => null,
                                    orElse: () => WidgetsFlutterBinding
                                            .ensureInitialized()
                                        .addPostFrameCallback(
                                      (_) => context
                                          .read<
                                              RequestTrackingAuthorizationBloc>()
                                          .add(
                                            const RequestTrackingAuthorizationEvent
                                                .request(),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: eighteenDotNil,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: _shareApp,
                          style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              hexE9F5FE,
                            ),
                            fixedSize: WidgetStatePropertyAll<Size>(
                              Size.fromHeight(
                                fortyNineDotNil,
                              ),
                            ),
                          ),
                          child: Text(
                            context.localize.shareRadarApp,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: hex0653EA,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: sixteenDotNil,
                  end: sixteenDotNil,
                  bottom: eighteenDotNil,
                ),
                child: ElevatedButton(
                  onPressed: () => ActionDialog.show(
                    context,
                    content: context.localize
                        .aCodeWillBeSentToYourEmailAreYouSureYouWantToProceedWithThisAction,
                    onActionDismissed: () => Navigator.of(
                      context,
                    ).pop(),
                    actionDismissText: context.localize.cancel,
                    onActionConfirmed: () {
                      Navigator.of(
                        context,
                      ).pop();

                      context.read<RequestDeleteAccountBloc>().add(
                            const RequestDeleteAccountEvent.sendOtp(),
                          );

                      showModalBottomSheet<void>(
                        context: context,
                        enableDrag: false,
                        isDismissible: false,
                        builder: (_) => const DeleteAccount(),
                      );
                    },
                    actionConfirmText: context.localize.proceed,
                  ),
                  style: Theme.of(
                    context,
                  ).elevatedButtonTheme.style?.copyWith(
                        backgroundColor: const WidgetStatePropertyAll<Color>(
                          hexE04F64,
                        ),
                        padding:
                            const WidgetStatePropertyAll<EdgeInsetsGeometry>(
                          EdgeInsetsDirectional.symmetric(
                            horizontal: sixteenDotNil,
                            vertical: eightDotNil,
                          ),
                        ),
                      ),
                  child: Center(
                    child: Text(
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
            ],
          ),
        ),
      );
}
