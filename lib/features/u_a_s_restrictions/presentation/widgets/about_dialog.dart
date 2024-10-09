import 'package:flutter/material.dart';
import 'package:sky_ways/core/assets/generated/assets.gen.dart';
import 'package:sky_ways/core/assets/generated/fonts.gen.dart';
import 'package:sky_ways/core/resources/colors.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
    eighteenDotNil,
    fifteenDotNil,
    fiveDotNil,
    nilDotOneNine,
    tenDotNil,
    thirtyDotNil,
    threeTwentyTwoDotNil,
    twelveDotNil,
    twentyDotNil,
    twentyFourDotNil,
    twoEightyTwoDotNil;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';

class AboutDialog extends StatelessWidget {
  const AboutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(twentyDotNil),
      ),
    child: SingleChildScrollView(
    child: Container(
        width: threeTwentyTwoDotNil,
        padding: const EdgeInsets.all(thirtyDotNil),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: twentyFourDotNil,
                  height: eighteenDotNil,
                  decoration: BoxDecoration(
                    color: hex74D9FF,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      context.localize.v1,
                      style: const TextStyle(
                        fontSize: twelveDotNil,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Assets.svgs.clear.svg(),
                ),
              ],
            ),
            Center(
              child: Assets.svgs.skyTradeRadarLogo.svg(),
            ),

            const SizedBox(height: tenDotNil),
            Center(
              child: Container(
                constraints: const BoxConstraints(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showLicensePage(context: context);
                      },
                      child: Text(
                        context.localize.view3rdPartyLicenses,
                        style: const TextStyle(
                          fontFamily: FontFamily.poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: twelveDotNil,
                          height: eighteenDotNil/twelveDotNil,
                          color: hex00AEEF,
                          decoration: TextDecoration.none,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: fifteenDotNil),
                     Text(
                      context.localize.developedBySkyTrade,
                      style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w400,
                        fontSize: twelveDotNil,
                        height: eighteenDotNil/twelveDotNil,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      context.localize.skyTrade2024,
                      style: const TextStyle(
                        fontFamily: FontFamily.poppins,
                        fontWeight: FontWeight.w300,
                        fontSize: tenDotNil,
                        height: fifteenDotNil/tenDotNil,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: fifteenDotNil),
            Container(
              width: twoEightyTwoDotNil,
              padding: const EdgeInsets.all(tenDotNil),
              decoration: BoxDecoration(
                color: hex3478F5.withOpacity(nilDotOneNine),
                borderRadius: BorderRadius.circular(tenDotNil),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        context.localize.disclaimer,
                        style: const TextStyle(
                          fontFamily: FontFamily.poppins,
                          fontWeight: FontWeight.w700,
                          fontSize: twelveDotNil,
                          height: eighteenDotNil/twelveDotNil,
                        ),
                      ),
                    ),
                    const SizedBox(height: fiveDotNil),
                    Center(
                      child: Text(
                        context.localize.theDroneRestrictionsAndAirspaceDataProvidedByThisAppAreForInformationalPurposesOnlyWhileWeStriveToKeepThisInformationAccurateAndUpToDateWeCannotGuaranteeItsCompletenessOrAccuracyUsersAreResponsibleForEnsuringComplianceWithAllLocalLawsAndRegulationsTheAppProvidersAssumeNoLiabilityForAnyDecisionsOrActionsTakenBasedOnTheDataPresented,
                        style: const TextStyle(
                          fontFamily: FontFamily.poppins,
                          fontWeight: FontWeight.w400,
                          fontSize: tenDotNil,
                          height: fifteenDotNil/tenDotNil,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}