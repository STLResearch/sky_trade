// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BorderRadius,
        BorderRadiusDirectional,
        BoxDecoration,
        BuildContext,
        Column,
        Container,
        Dialog,
        EdgeInsets,
        EdgeInsetsDirectional,
        Flexible,
        FontWeight,
        InkWell,
        MainAxisAlignment,
        MainAxisSize,
        Navigator,
        RichText,
        RoundedRectangleBorder,
        Row,
        SingleChildScrollView,
        SizedBox,
        State,
        StatefulWidget,
        StatelessWidget,
        Text,
        TextAlign,
        TextSpan,
        Theme,
        Widget,
        showDialog,
        showLicensePage;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, BlocProvider, ReadContext;
import 'package:sky_trade/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_trade/core/resources/colors.dart'
    show hex00AEEF, hex222222, hex303478F5, hex74D9FF;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show
        fifteenDotNil,
        fiftyDotNil,
        fiveDotNil,
        sixDotFive,
        tenDotNil,
        thirtyDotNil,
        threeDotNil,
        twentyDotNil;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show newLine, whiteSpace;
import 'package:sky_trade/core/utils/extensions/build_context_extensions.dart';
import 'package:sky_trade/features/about/presentation/blocs/app_version_bloc/app_version_bloc.dart'
    show AppVersionBloc, AppVersionEvent, AppVersionState;

final class AboutDialog {
  static void show(
    BuildContext context,
  ) {
    showDialog<void>(
      context: context,
      builder: (_) => Dialog(
        insetPadding: const EdgeInsets.symmetric(
          horizontal: fiftyDotNil,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(
            twentyDotNil,
          ),
        ),
        child: About(
          appVersionBloc: context.read<AppVersionBloc>(),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({
    required this.appVersionBloc,
    super.key,
  });

  final AppVersionBloc appVersionBloc;

  @override
  Widget build(BuildContext context) => BlocProvider<AppVersionBloc>.value(
        value: appVersionBloc,
        child: const AboutView(),
      );
}

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  void initState() {
    _getAppVersion();

    super.initState();
  }

  void _getAppVersion() => context.read<AppVersionBloc>().add(
        const AppVersionEvent.getVersion(),
      );

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Theme.of(
            context,
          ).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(
            twentyDotNil,
          ),
        ),
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: twentyDotNil,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: tenDotNil,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<AppVersionBloc, AppVersionState>(
                    builder: (_, appVersionState) => appVersionState.maybeWhen(
                      gotVersion: (appVersionEntity) => Flexible(
                        child: Container(
                          padding: const EdgeInsetsDirectional.symmetric(
                            horizontal: sixDotFive,
                          ),
                          decoration: BoxDecoration(
                            color: hex74D9FF,
                            borderRadius: BorderRadius.circular(
                              threeDotNil,
                            ),
                          ),
                          child: Text(
                            appVersionEntity.versionName,
                            style: Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                                  color: hex222222,
                                ),
                          ),
                        ),
                      ),
                      orElse: () => const SizedBox.shrink(),
                    ),
                  ),
                  BlocBuilder<AppVersionBloc, AppVersionState>(
                    builder: (_, appVersionState) => appVersionState.maybeWhen(
                      gotVersion: (_) => const SizedBox(
                        width: twentyDotNil,
                      ),
                      orElse: () => const SizedBox.shrink(),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.of(
                      context,
                    ).pop(),
                    child: Assets.svgs.clear.svg(),
                  ),
                ],
              ),
              Assets.svgs.skyTradeRadarLogo.svg(),
              const SizedBox(
                height: twentyDotNil,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(
                    context,
                  ).pop();

                  showLicensePage(
                    context: context,
                    applicationVersion:
                        context.read<AppVersionBloc>().state.whenOrNull(
                              gotVersion: (appVersionEntity) =>
                                  appVersionEntity.versionName,
                            ),
                    applicationIcon: Assets.svgs.skyTradeRadarLogo.svg(),
                  );
                },
                child: Text(
                  context.localize.view3rdPartyLicenses,
                  style: Theme.of(
                    context,
                  ).textTheme.bodySmall?.copyWith(
                        color: hex00AEEF,
                      ),
                ),
              ),
              const SizedBox(
                height: fifteenDotNil,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: context.localize.developedBySkyTrade + newLine,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(
                            color: hex222222,
                          ),
                    ),
                    TextSpan(
                      text: context.localize.copyrightSkyTrade +
                          whiteSpace +
                          DateTime.now().year.toString(),
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: tenDotNil,
                            height: fifteenDotNil / tenDotNil,
                          ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: twentyDotNil,
              ),
              Container(
                padding: const EdgeInsetsDirectional.all(
                  tenDotNil,
                ),
                decoration: BoxDecoration(
                  color: hex303478F5,
                  borderRadius: BorderRadius.circular(
                    tenDotNil,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      context.localize.disclaimer,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: hex222222,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: fiveDotNil,
                    ),
                    Text(
                      context.localize
                          .theDroneRestrictionsAndAirspaceDataProvidedByThisAppAreForInformationalPurposesOnlyWhileWeStriveToKeepThisInformationAccurateAndUpToDateWeCannotGuaranteeItsCompletenessOrAccuracyUsersAreResponsibleForEnsuringComplianceWithAllLocalLawsAndRegulationsTheAppProvidersAssumeNoLiabilityForAnyDecisionsOrActionsTakenBasedOnTheDataPresented,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: tenDotNil,
                            height: fifteenDotNil / tenDotNil,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: thirtyDotNil,
              ),
            ],
          ),
        ),
      );
}
