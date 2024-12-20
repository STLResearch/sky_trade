// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Column,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        Expanded,
        FontStyle,
        IconButton,
        Navigator,
        Row,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        Switch,
        Text,
        Theme,
        Widget,
        WidgetsFlutterBinding;
import 'package:flutter_bloc/flutter_bloc.dart'
    show
        BlocBuilder,
        BlocListener,
        BlocProvider,
        MultiBlocListener,
        MultiBlocProvider,
        ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/assets/generated/fonts.gen.dart';
import 'package:sky_trade/core/errors/failures/settings_failure.dart'
    show TrackingRequestFailure, TrackingRequestNotRequiredFailure;
import 'package:sky_trade/core/resources/colors.dart'
    show hex4285F4, hex65C466, hex838187, hexE04F64;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        eighteenDotNil,
        fourteenDotNil,
        nineDotNil,
        oneDotNil,
        seventyThreeDotNil,
        sixteenDotOne,
        tenDotNil,
        thirteenDotFive,
        twentyOneDotNil;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show TrackingTransparencyRequestStatus;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/settings/presentation/blocs/analytics_bloc/analytics_bloc.dart'
    show AnalyticsBloc, AnalyticsEvent, AnalyticsState;
import 'package:sky_trade/features/settings/presentation/blocs/tracking_authorization_bloc/tracking_authorization_bloc.dart'
    show
        TrackingAuthorizationBloc,
        TrackingAuthorizationEvent,
        TrackingAuthorizationState;
import 'package:sky_trade/features/settings/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<TrackingAuthorizationBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<AnalyticsBloc>(
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

    super.initState();
  }

  void _checkAnalyticsEnabled() => context.read<AnalyticsBloc>().add(
        const AnalyticsEvent.isEnabled(),
      );

  void _toggleAnalyticsCollection() => context.read<AnalyticsBloc>().add(
        AnalyticsEvent.toggle(
          value: !_analyticsSwitchState,
        ),
      );

  @override
  Widget build(BuildContext context) => MultiBlocListener(
        listeners: [
          BlocListener<TrackingAuthorizationBloc, TrackingAuthorizationState>(
            listener: (_, trackingAuthorizationState) {
              trackingAuthorizationState.whenOrNull(
                maybeAuthorizedTracking: (trackingStatusEntity) {
                  if (trackingStatusEntity.status ==
                          TrackingTransparencyRequestStatus.notYetAsked ||
                      trackingStatusEntity.status ==
                          TrackingTransparencyRequestStatus.notAuthorized) {
                    ActionDialog.show(
                      context,
                      title: context.localize.helpUsImproveYourExperience,
                      content: context.localize
                          .weWouldLikeYourPermissionToCollectDataAboutHowYouUseTheAppThisHelpsUsProvidePersonalizedFeaturesImprovePerformanceAndDevelopBetterExperiencesYouCanChooseWhetherToAllowThisInTheNextStep,
                      onActionDismissed: () => Navigator.of(
                        context,
                      ).pop(),
                      onActionConfirmed: () {
                        Navigator.of(
                          context,
                        ).pop();

                        WidgetsFlutterBinding.ensureInitialized()
                            .addPostFrameCallback(
                          (_) => context.read<TrackingAuthorizationBloc>().add(
                                const TrackingAuthorizationEvent
                                    .requestTracking(),
                              ),
                        );
                      },
                    );
                  } else if (trackingStatusEntity.status ==
                      TrackingTransparencyRequestStatus.authorized) {
                    _toggleAnalyticsCollection();
                  }
                },
                cannotAuthorizeTracking: (trackingStatusFailure) {
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
                maybeEnabled: (analyticsEntity) {
                  _analyticsSwitchState = analyticsEntity.enabled;
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
          body: SingleChildScrollView(
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            context.localize.analytics,
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                                  color: hex838187,
                                ),
                          ),
                          BlocBuilder<TrackingAuthorizationBloc,
                              TrackingAuthorizationState>(
                            builder: (context, trackingAuthorizationState) =>
                                Text(
                              trackingAuthorizationState.maybeWhen(
                                cannotAuthorizeTracking:
                                    (trackingStatusFailure) =>
                                        switch (trackingStatusFailure) {
                                  TrackingRequestFailure() => context.localize
                                      .youHaveForbiddenUsFromRequestingTrackingAuthorizationWithoutYourConsentWeWillNotKnowHowYouUseTheAppAndWeWillNotBeAbleToMakeImprovementsTailoredToYourNeedsToGrantUsTrackingAuthorizationYouWillHaveToEnableItManuallyInSettings,
                                  TrackingRequestNotRequiredFailure() => context
                                      .localize
                                      .enablingAnalyticsAllowsUsToCollectUsageDataToImproveAppPerformanceEnhanceFeaturesAndProvideABetterOverallExperienceYourDataHelpsUsUnderstandHowTheAppIsUsedSoWeCanMakeImprovementsTailoredToYourNeeds,
                                },
                                orElse: () => context.localize
                                    .enablingAnalyticsAllowsUsToCollectUsageDataToImproveAppPerformanceEnhanceFeaturesAndProvideABetterOverallExperienceYourDataHelpsUsUnderstandHowTheAppIsUsedSoWeCanMakeImprovementsTailoredToYourNeeds,
                              ),
                              style: Theme.of(
                                context,
                              ).textTheme.bodySmall?.copyWith(
                                    fontStyle: FontStyle.italic,
                                    fontSize: nineDotNil,
                                    height: thirteenDotFive / nineDotNil,
                                    color: trackingAuthorizationState.maybeWhen(
                                      cannotAuthorizeTracking:
                                          (trackingStatusFailure) =>
                                              switch (trackingStatusFailure) {
                                        TrackingRequestFailure() => hexE04F64,
                                        TrackingRequestNotRequiredFailure() =>
                                          hex838187,
                                      },
                                      orElse: () => hex838187,
                                    ),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: seventyThreeDotNil,
                    ),
                    BlocBuilder<TrackingAuthorizationBloc,
                        TrackingAuthorizationState>(
                      builder: (context, trackingAuthorizationState) =>
                          BlocBuilder<AnalyticsBloc, AnalyticsState>(
                        builder: (context, analyticsState) => Switch(
                          activeTrackColor: hex65C466,
                          value: analyticsState.maybeWhen(
                            maybeEnabled: (analyticsEntity) =>
                                analyticsEntity.enabled,
                            orElse: () => false,
                          ),
                          onChanged: (_) =>
                              trackingAuthorizationState.maybeWhen(
                            cannotAuthorizeTracking: (trackingStatusFailure) =>
                                switch (trackingStatusFailure) {
                              TrackingRequestFailure() => null,
                              TrackingRequestNotRequiredFailure() =>
                                analyticsState.maybeWhen(
                                  processing: () => null,
                                  orElse: _toggleAnalyticsCollection,
                                ),
                            },
                            processing: () => null,
                            orElse: () => analyticsState.maybeWhen(
                              processing: () => null,
                              orElse: () =>
                                  WidgetsFlutterBinding.ensureInitialized()
                                      .addPostFrameCallback(
                                (_) => context
                                    .read<TrackingAuthorizationBloc>()
                                    .add(
                                      const TrackingAuthorizationEvent
                                          .checkTrackingStatus(),
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
              ],
            ),
          ),
        ),
      );
}
