// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        BorderRadius,
        BoxDecoration,
        BuildContext,
        Center,
        Column,
        Container,
        Dialog,
        EdgeInsetsDirectional,
        FontWeight,
        InkWell,
        MainAxisAlignment,
        MainAxisSize,
        Navigator,
        RichText,
        Row,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        TextSpan,
        Theme,
        Widget,
        showDialog,
        showLicensePage;
import 'package:sky_ways/core/assets/generated/assets.gen.dart' show Assets;
import 'package:sky_ways/core/resources/colors.dart'
    show hex00AEEF, hex222222, hex303478F5, hex74D9FF;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eighteenDotNil,
        fifteenDotNil,
        fiveDotNil,
        tenDotNil,
        thirtyDotNil,
        threeDotNil,
        twentyDotNil,
        twentyFourDotNil;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show newLine;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';

final class AboutDialog {
  static void show(
    BuildContext context,
  ) {
    showDialog<void>(
      context: context,
      builder: (_) => const About(),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) => Dialog(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
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
                    Container(
                      width: twentyFourDotNil,
                      height: eighteenDotNil,
                      decoration: BoxDecoration(
                        color: hex74D9FF,
                        borderRadius: BorderRadius.circular(
                          threeDotNil,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          context.localize.v1,
                          style: Theme.of(
                            context,
                          ).textTheme.bodySmall?.copyWith(
                                color: hex222222,
                              ),
                        ),
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
                      applicationVersion: context.localize.v1,
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
                        text: context.localize.copyrightSkyTrade2024,
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
        ),
      );
}
