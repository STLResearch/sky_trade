// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart'
    show
        Alignment,
        BorderRadiusDirectional,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Container,
        CrossAxisAlignment,
        EdgeInsetsDirectional,
        ExpansionTile,
        ListView,
        NeverScrollableScrollPhysics,
        Offset,
        Padding,
        SizedBox,
        StatelessWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_ways/core/resources/colors.dart'
    show hex263A4DE9, hex4285F4;
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        five,
        four,
        fourteenDotNil,
        minusTenDotNil,
        nilDotNil,
        one,
        seven,
        tenDotNil,
        thirtyDotNil,
        thirtyFourDotNil,
        three,
        twelveDotNil,
        twentyOneDotNil,
        twentyTwoDotNil,
        two,
        zero;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';

class HelpList extends StatelessWidget {
  const HelpList({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: thirtyDotNil,
        ),
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: seven,
          itemBuilder: (_, index) => Container(
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).scaffoldBackgroundColor,
              borderRadius: BorderRadiusDirectional.circular(
                eightDotNil,
              ),
              boxShadow: const [
                BoxShadow(
                  color: hex263A4DE9,
                  offset: Offset(
                    nilDotNil,
                    twelveDotNil,
                  ),
                  blurRadius: thirtyFourDotNil,
                  spreadRadius: minusTenDotNil,
                ),
              ],
            ),
            child: ExpansionTile(
              expandedAlignment: Alignment.topLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              tilePadding: const EdgeInsetsDirectional.symmetric(
                horizontal: twentyTwoDotNil,
              ),
              childrenPadding: const EdgeInsetsDirectional.only(
                start: twentyTwoDotNil,
                end: twentyTwoDotNil,
                bottom: tenDotNil,
              ),
              title: Text(
                _computeHelpItemTitleUsing(
                  context,
                  index: index,
                ),
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(
                      fontSize: fourteenDotNil,
                      height: twentyOneDotNil / fourteenDotNil,
                      color: hex4285F4,
                    ),
              ),
              children: [
                Text(
                  _computeHelpItemExpandedBodyUsing(
                    context,
                    index: index,
                  ),
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(
                        fontSize: fourteenDotNil,
                        height: twentyOneDotNil / fourteenDotNil,
                      ),
                ),
              ],
            ),
          ),
          separatorBuilder: (_, __) => const SizedBox(
            height: tenDotNil,
          ),
        ),
      );

  String _computeHelpItemTitleUsing(
    BuildContext context, {
    required int index,
  }) =>
      switch (index) {
        zero => context.localize.howCanIFindOutWhatMyPhoneIsCapableOf,
        one =>
          context.localize.theresADroneFlyingNearbyButTheAppDoesntRecognizeIt,
        two => context.localize.whatIsARemoteIdAndWhyDoINeedIt,
        three => context
            .localize.areThereAnyRestrictionsOnWhereICanUseTheDroneRadarApp,
        four => context.localize
            .whyDoesTheAppRequireAccessToMyLocationAndConnectivityServices,
        five => context.localize.whatIsARestrictedArea,
        _ => context.localize.whatAreTheRedOrangeYellowAndGreenZones,
      };

  String _computeHelpItemExpandedBodyUsing(
    BuildContext context, {
    required int index,
  }) =>
      switch (index) {
        zero => context.localize
            .toFindOutWhatYourPhoneIsCapableOfCheckTheSpecificationsOnTheManufacturersWebsiteOrTheAboutPhoneSectionInYourSettingsYouCanAlsoUseThirdPartyAppsLikeAida64OrCpuZForDetailedHardwareAndSoftwareInformationThisWillHelpYouUnderstandTheSensorsConnectivityOptionsAndOtherFeaturesAvailableOnYourDevice,
        one => context.localize
            .someDronesCannotBeTrackedByOurAppBecauseTheyLackTheNecessaryTransponderOrRemoteIdTechnologyAdditionallyCustomBuiltOrOlderModelsMightNotHaveTheStandardizedIdentificationSystemsRequiredForDetectionIfANearbyDroneIsntRecognizedCheckForSignalInterferenceOrObstructionsAndEnsureTheAppIsUpdatedAndHasTheNecessaryPermissionsEnabledOnYourPhone,
        two => context.localize
            .remoteIdIsASystemThatAllowsDronesToTransmitIdentificationAndLocationInformationToOthersSimilarToADigitalLicensePlateItEnhancesAirspaceSafetyAndSecurityByEnablingAuthoritiesToTrackAndManageDronesComplianceWithRemoteIdRegulationsIsNecessaryForLegalDroneOperationInManyCountries,
        three => context.localize
            .yesThereMayBeRestrictionsOnUsingTheDroneRadarAppInNoFlyZonesSuchAsAirportsMilitaryBasesAndOtherSensitiveAreasLocalPrivacyLawsMayAlsoLimitTheUseOfDroneDetectionTechnologyInCertainRegionsAlwaysCheckLocalRegulationsAndGuidelinesToEnsureCompliantUsage,
        four => context.localize
            .theAppRequiresAccessToYourLocationToAccuratelyDetectAndTrackDronesInYourVicinityConnectivityServicesLikeWiFiAndBluetoothHelpTheAppCommunicateWithDronesAndOtherDevicesForBetterDetectionThesePermissionsAreEssentialForProvidingAccurateAndReliableFunctionality,
        five => context.localize
            .aRestrictedAreaIsADesignatedAirspaceWhereDroneFlightsAreLimitedOrProhibitedToEnsureSafetySecurityOrEnvironmentalProtectionTheseAreasCanIncludeMilitaryZonesNoFlyZonesAroundAirportsAndGovernmentBuildingsAndProtectedEnvironmentalAreasLikeNationalParksFlyingInTheseAreasWithoutAuthorizationIsIllegalAndCanResultInPenalties,
        _ => context.localize
            .inDroneOperationsDifferentZonesIndicateVaryingLevelsOfRestrictionRedZonesAreProhibitedAreasWhereFlyingIsNotAllowedDueToSafetySecurityOrEnvironmentalConcernsOrangeZonesRequireAuthorizationFromTheFaaBeforeYouCanFlyYellowZonesAreAreasWhereFlyingIsPermittedButMayBeHazardousSoExtraCautionIsAdvisedGreenZonesAreOpenForFlyingWithoutAnySpecificRestrictionsOrAdditionalPermissions,
      };
}
