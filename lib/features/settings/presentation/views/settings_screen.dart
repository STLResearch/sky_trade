// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        ButtonStyle,
        Center,
        CircularProgressIndicator,
        Column,
        CrossAxisAlignment,
        Divider,
        EdgeInsetsDirectional,
        ElevatedButton,
        Expanded,
        FontStyle,
        IconButton,
        Navigator,
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
        elevenDotNil,
        fourteenDotNil,
        nilDotNil,
        nineDotNil,
        oneDotNil,
        seventyThreeDotNil,
        sixteenDotNil,
        sixteenDotOne,
        tenDotNil,
        thirteenDotFive,
        twentyOneDotNil,
        twoDotNil;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show TrackingTransparencyRequestStatus;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/settings/presentation/blocs/analytics_bloc/analytics_bloc.dart'
    show AnalyticsBloc, AnalyticsEvent, AnalyticsState;
import 'package:sky_trade/features/settings/presentation/blocs/delete_account_bloc/delete_account_bloc.dart'
    show DeleteAccountBloc, DeleteAccountEvent, DeleteAccountState;
import 'package:sky_trade/features/settings/presentation/blocs/tracking_authorization_bloc/tracking_authorization_bloc.dart'
    show
        TrackingAuthorizationBloc,
        TrackingAuthorizationEvent,
        TrackingAuthorizationState;
import 'package:sky_trade/features/settings/presentation/widgets/action_dialog.dart';
import 'package:sky_trade/features/settings/presentation/widgets/alert_snack_bar.dart';
import 'package:sky_trade/injection_container.dart' show serviceLocator;

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<AnalyticsBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<DeleteAccountBloc>(
            create: (_) => serviceLocator(),
          ),
          BlocProvider<TrackingAuthorizationBloc>(
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
          BlocListener<DeleteAccountBloc, DeleteAccountState>(
            listener: (_, deleteAccountState) {
              deleteAccountState.whenOrNull(
                failedToDeleteAccount: (_) {
                  AlertSnackBar.show(
                    context,
                    message: context.localize
                        .weCouldNotCompleteRequestingDeletionForYourAccountPleaseTryAgainLater,
                  );
                },
                deletedAccount: (_) {
                  AlertSnackBar.show(
                    context,
                    message: context.localize
                        .weSentYouAnEmailOnHowToProceedWithAccountDeletionKindlyCheckYourEmailForNextSteps,
                  );
                },
              );
            },
          ),
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
                maybeEnabled: (enabled) {
                  _analyticsSwitchState = enabled;
                },
              );
            },
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            leading: BlocBuilder<DeleteAccountBloc, DeleteAccountState>(
              builder: (context, deleteAccountState) => IconButton(
                icon: Assets.svgs.chevronLeft.svg(),
                onPressed: deleteAccountState.maybeWhen(
                  deletingAccount: () => null,
                  orElse: () => () => Navigator.of(
                        context,
                      ).pop(),
                ),
              ),
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
                            maybeEnabled: (enabled) => enabled,
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
                  height: elevenDotNil,
                ),
                Text(
                  context.localize.accountManagement,
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
                BlocBuilder<DeleteAccountBloc, DeleteAccountState>(
                  builder: (context, deleteAccountState) => ElevatedButton(
                    onPressed: deleteAccountState.maybeWhen(
                      deletingAccount: () => null,
                      orElse: () => () => ActionDialog.show(
                            context,
                            content: context.localize
                                .aConfirmationEmailWillBeSentToYourEmailAddressAreYouSureYouWantToProceedToRequestThatYourAccountBeDeleted,
                            onActionDismissed: () => Navigator.of(
                              context,
                            ).pop(),
                            actionDismissText: context.localize.cancel,
                            onActionConfirmed: () {
                              Navigator.of(
                                context,
                              ).pop();

                              context.read<DeleteAccountBloc>().add(
                                    const DeleteAccountEvent.deleteAccount(),
                                  );
                            },
                            actionConfirmText: context.localize.proceed,
                          ),
                    ),
                    style: const ButtonStyle(
                      fixedSize: WidgetStatePropertyAll<Size>(
                        Size.fromHeight(
                          nilDotNil,
                        ),
                      ),
                    ),
                    child: Center(
                      child: deleteAccountState.maybeWhen(
                        deletingAccount: () => SizedBox(
                          width: sixteenDotNil,
                          height: sixteenDotNil,
                          child: CircularProgressIndicator(
                            color: Theme.of(
                              context,
                            ).scaffoldBackgroundColor,
                            strokeWidth: twoDotNil,
                          ),
                        ),
                        orElse: () => Text(
                          context.localize.requestAccountDeletion,
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
                  height: eighteenDotNil,
                ),
              ],
            ),
          ),
        ),
      );
}
