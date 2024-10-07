import 'package:flutter/material.dart'
    show
        BorderRadius,
        BuildContext,
        Card,
        EdgeInsets,
        ExpansionTile,
        ListTile,
        ListView,
        Padding,
        Radius,
        RoundedRectangleBorder,
        State,
        StatefulWidget,
        Text,
        Theme,
        Widget;
import 'package:sky_ways/core/resources/colors.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart'
    show
        eightDotNil,
        fiveDotNil,
        fourteenDotNil,
        tenDotNil,
        twentyOneDotNil,
        twentyTwoDotNil;
import 'package:sky_ways/core/utils/extensions/build_context_extensions.dart';

class HelpList extends StatefulWidget {
  const HelpList({super.key});

  @override
  State<StatefulWidget> createState() => _HelpList();
}

class _HelpList extends State<HelpList> {
  List<Item> _data = [];

  @override
  Widget build(BuildContext context) {
    if (_data.isEmpty) {
      _data = [
        Item(
          headerValue: Text(
            context.localize.howCanIFindOutWhatMyPhoneIsCapableOf,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex4285F4,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
          expandedValue: Text(
            context.localize
                .toFindOutWhatYourPhoneIsCapableOfCheckTheSpecificationsOnTheManufacturersWebsiteOrTheAboutPhoneSectionInYourSettingsYouCanAlsoUseThirdPartyAppsLikeAida64OrCpuZForDetailedHardwareAndSoftwareInformationThisWillHelpYouUnderstandTheSensorsConnectivityOptionsAndOtherFeaturesAvailableOnYourDevice,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex222222,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
        ),
        Item(
          headerValue: Text(
            context.localize.theresADroneFlyingNearbyButTheAppDoesntRecognizeIt,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex4285F4,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
          expandedValue: Text(
            context.localize
                .someDronesCannotBeTrackedByOurAppBecauseTheyLackTheNecessaryTransponderOrRemoteIdTechnologyAdditionallyCustomBuiltOrOlderModelsMightNotHaveTheStandardizedIdentificationSystemsRequiredForDetectionIfANearbyDroneIsntRecognizedCheckForSignalInterferenceOrObstructionsAndEnsureTheAppIsUpdatedAndHasTheNecessaryPermissionsEnabledOnYourPhone,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex222222,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
        ),
        Item(
          headerValue: Text(
            context.localize.whatIsARemoteIdAndWhyDoINeedIt,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex4285F4,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
          expandedValue: Text(
            context.localize
                .remoteIdIsASystemThatAllowsDronesToTransmitIdentificationAndLocationInformationToOthersSimilarToADigitalLicensePlateItEnhancesAirspaceSafetyAndSecurityByEnablingAuthoritiesToTrackAndManageDronesComplianceWithRemoteIdRegulationsIsNecessaryForLegalDroneOperationInManyCountries,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex222222,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
        ),
        Item(
          headerValue: Text(
            context
                .localize.areThereAnyRestrictionsOnWhereICanUseTheDroneRadarApp,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex4285F4,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
          expandedValue: Text(
            context.localize
                .yesThereMayBeRestrictionsOnUsingTheDroneRadarAppInNoFlyZonesSuchAsAirportsMilitaryBasesAndOtherSensitiveAreasLocalPrivacyLawsMayAlsoLimitTheUseOfDroneDetectionTechnologyInCertainRegionsAlwaysCheckLocalRegulationsAndGuidelinesToEnsureCompliantUsage,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex222222,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
        ),
        Item(
          headerValue: Text(
            context.localize
                .whyDoesTheAppRequireAccessToMyLocationAndConnectivityServices,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex4285F4,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
          expandedValue: Text(
            context.localize
                .theAppRequiresAccessToYourLocationToAccuratelyDetectAndTrackDronesInYourVicinityConnectivityServicesLikeWiFiAndBluetoothHelpTheAppCommunicateWithDronesAndOtherDevicesForBetterDetectionThesePermissionsAreEssentialForProvidingAccurateAndReliableFunctionality,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex222222,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
        ),
        Item(
          headerValue: Text(
            context.localize.whatIsARestrictedArea,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex4285F4,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
          expandedValue: Text(
            context.localize
                .aRestrictedAreaIsADesignatedAirspaceWhereDroneFlightsAreLimitedOrProhibitedToEnsureSafetySecurityOrEnvironmentalProtectionTheseAreasCanIncludeMilitaryZonesNoFlyZonesAroundAirportsAndGovernmentBuildingsAndProtectedEnvironmentalAreasLikeNationalParksFlyingInTheseAreasWithoutAuthorizationIsIllegalAndCanResultInPenalties,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex222222,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
        ),
        Item(
          headerValue: Text(
            context.localize.whatAreTheRedOrangeYellowAndGreenZones,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex4285F4,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
          expandedValue: Text(
            context.localize
                .inDroneOperationsDifferentZonesIndicateVaryingLevelsOfRestrictionRedZonesAreProhibitedAreasWhereFlyingIsNotAllowedDueToSafetySecurityOrEnvironmentalConcernsOrangeZonesRequireAuthorizationFromTheFaaBeforeYouCanFlyYellowZonesAreAreasWhereFlyingIsPermittedButMayBeHazardousSoExtraCautionIsAdvisedGreenZonesAreOpenForFlyingWithoutAnySpecificRestrictionsOrAdditionalPermissions,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: hex222222,
                  fontSize: fourteenDotNil,
                  height: twentyOneDotNil / fourteenDotNil,
                ),
          ),
        ),
      ];
    }

    return ListView(
      children: _data.map((Item item) {
        return Card(
          color: hexFFFFFF,
          margin: const EdgeInsets.all(fiveDotNil),
          elevation: fiveDotNil,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(eightDotNil),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: twentyTwoDotNil,
              vertical: tenDotNil,
            ),
            child: ExpansionTile(
              title: item.headerValue,
              children: [
                ListTile(
                  title: item.expandedValue,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
  });

  Widget expandedValue;
  Widget headerValue;
}
