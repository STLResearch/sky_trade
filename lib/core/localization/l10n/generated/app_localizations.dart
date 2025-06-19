import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @flight.
  ///
  /// In en, this message translates to:
  /// **'Flight'**
  String get flight;

  /// No description provided for @map.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get map;

  /// No description provided for @weather.
  ///
  /// In en, this message translates to:
  /// **'Weather'**
  String get weather;

  /// No description provided for @community.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get community;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @loginOrRegister.
  ///
  /// In en, this message translates to:
  /// **'Login or register'**
  String get loginOrRegister;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @pleaseEnterAValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get pleaseEnterAValidEmail;

  /// No description provided for @emailFieldCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Email field cannot be empty'**
  String get emailFieldCannotBeEmpty;

  /// No description provided for @signInOrSignUpEffortlesslyUseTheAuthenticationMethodYouChoseDuringSignUpToSignIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in or sign up effortlessly. Use the authentication method you chose during sign up to sign in.'**
  String
      get signInOrSignUpEffortlesslyUseTheAuthenticationMethodYouChoseDuringSignUpToSignIn;

  /// No description provided for @whitespacesAreNotAllowedPleaseRemoveAnyLeadingAndOrTrailingWhitespaces.
  ///
  /// In en, this message translates to:
  /// **'Whitespaces are not allowed. Please remove any leading and/or trailing whitespaces'**
  String
      get whitespacesAreNotAllowedPleaseRemoveAnyLeadingAndOrTrailingWhitespaces;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get getStarted;

  /// No description provided for @welcomeToSkyTrade.
  ///
  /// In en, this message translates to:
  /// **'Welcome to SkyTrade'**
  String get welcomeToSkyTrade;

  /// No description provided for @byContinuingWithSkyTradeIAgreeWithThe.
  ///
  /// In en, this message translates to:
  /// **'By continuing with SkyTrade I agree with the'**
  String get byContinuingWithSkyTradeIAgreeWithThe;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @agreement.
  ///
  /// In en, this message translates to:
  /// **'agreement'**
  String get agreement;

  /// No description provided for @restrictedAirspace.
  ///
  /// In en, this message translates to:
  /// **'Restricted Airspace'**
  String get restrictedAirspace;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @controlledAirspace.
  ///
  /// In en, this message translates to:
  /// **'Controlled Airspace'**
  String get controlledAirspace;

  /// No description provided for @specialUseAirspace.
  ///
  /// In en, this message translates to:
  /// **'Special Use Airspace'**
  String get specialUseAirspace;

  /// No description provided for @searchLocation.
  ///
  /// In en, this message translates to:
  /// **'Search Location'**
  String get searchLocation;

  /// No description provided for @twenty.
  ///
  /// In en, this message translates to:
  /// **'20'**
  String get twenty;

  /// No description provided for @degrees.
  ///
  /// In en, this message translates to:
  /// **'°'**
  String get degrees;

  /// No description provided for @oopsSomethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Oops!\nSomething Went Wrong'**
  String get oopsSomethingWentWrong;

  /// No description provided for @itLooksLikeWeAreHavingTroubleInitializingYourSession.
  ///
  /// In en, this message translates to:
  /// **'It looks like we are having trouble initializing your session.'**
  String get itLooksLikeWeAreHavingTroubleInitializingYourSession;

  /// No description provided for @tryClearingTheAppCacheFirstAndTheAppDataSecondAfterClosingTheAppRestartTheAppAfterwardsIfTheIssueContinuesFeelFreeToContactOurSupportTeam.
  ///
  /// In en, this message translates to:
  /// **'Try clearing the app cache first and the app data second after closing the app. Restart the app afterwards. If the issue continues, feel free to contact our support team'**
  String
      get tryClearingTheAppCacheFirstAndTheAppDataSecondAfterClosingTheAppRestartTheAppAfterwardsIfTheIssueContinuesFeelFreeToContactOurSupportTeam;

  /// No description provided for @itLooksLikeYouDontHaveAnActiveInternetConnection.
  ///
  /// In en, this message translates to:
  /// **'It looks like you don\'t have an active internet connection'**
  String get itLooksLikeYouDontHaveAnActiveInternetConnection;

  /// No description provided for @yourInternetConnectionMayBePoorOrYouAreProbablyJustOutOfCoveragePleaseCheckYourConnectionOrTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Your internet connection may be poor or you are probably just out of coverage. Please check your connection or try again'**
  String
      get yourInternetConnectionMayBePoorOrYouAreProbablyJustOutOfCoveragePleaseCheckYourConnectionOrTryAgain;

  /// No description provided for @refreshPage.
  ///
  /// In en, this message translates to:
  /// **'Refresh Page'**
  String get refreshPage;

  /// No description provided for @drones.
  ///
  /// In en, this message translates to:
  /// **'drones'**
  String get drones;

  /// No description provided for @drone.
  ///
  /// In en, this message translates to:
  /// **'drone'**
  String get drone;

  /// No description provided for @insights.
  ///
  /// In en, this message translates to:
  /// **'Insights'**
  String get insights;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @suppliedEmailCredentialIsInvalid.
  ///
  /// In en, this message translates to:
  /// **'Supplied email credential is invalid'**
  String get suppliedEmailCredentialIsInvalid;

  /// No description provided for @accountAlreadyExistsPleaseLoginInstead.
  ///
  /// In en, this message translates to:
  /// **'Account already exists. Please login instead'**
  String get accountAlreadyExistsPleaseLoginInstead;

  /// No description provided for @weCouldNotCreateYourAccountPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'We could not create your account. Please try again'**
  String get weCouldNotCreateYourAccountPleaseTryAgain;

  /// No description provided for @oopsSomethingWentWrongKindlyRetryOrInvalidateYourSession.
  ///
  /// In en, this message translates to:
  /// **'Oops! something went wrong. Kindly retry or invalidate your session'**
  String get oopsSomethingWentWrongKindlyRetryOrInvalidateYourSession;

  /// No description provided for @weCouldNotVerifyTheExistenceOfYourAccountPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'We could not verify the existence of your account. Please try again'**
  String get weCouldNotVerifyTheExistenceOfYourAccountPleaseTryAgain;

  /// No description provided for @thisEmailIsAlreadyLinkedToAnExistingAccount.
  ///
  /// In en, this message translates to:
  /// **'This email is already linked to an existing account'**
  String get thisEmailIsAlreadyLinkedToAnExistingAccount;

  /// No description provided for @weCouldNotLogYouOut.
  ///
  /// In en, this message translates to:
  /// **'We could not log you out'**
  String get weCouldNotLogYouOut;

  /// No description provided for @areYouSureYouWantToLogout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get areYouSureYouWantToLogout;

  /// No description provided for @unknownErrorOccurred.
  ///
  /// In en, this message translates to:
  /// **'Unknown error occurred'**
  String get unknownErrorOccurred;

  /// No description provided for @anUnknownErrorOccurredPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred. Please try again'**
  String get anUnknownErrorOccurredPleaseTryAgain;

  /// No description provided for @anUnknownErrorOccurredKindlyRetryOrInvalidateYourSession.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred. Kindly retry or invalidate your session'**
  String get anUnknownErrorOccurredKindlyRetryOrInvalidateYourSession;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @yourQueryDidNotYieldAnyResults.
  ///
  /// In en, this message translates to:
  /// **'Your query did not yield any results'**
  String get yourQueryDidNotYieldAnyResults;

  /// No description provided for @welcomeToSkyTradeRadarUsingOurApplicationYouCanReceiveDroneRemoteIdDataOnYourPhoneAndSeeRestrictedAreasForFlyingTheApplicationCanReceiveDataTransmittedOverBluetoothAndWiFi.
  ///
  /// In en, this message translates to:
  /// **'Welcome to SkyTrade Radar Using our application, you can receive drone Remote ID data on your phone and see restricted areas for flying. The application can receive data transmitted over Bluetooth and Wi-Fi.'**
  String
      get welcomeToSkyTradeRadarUsingOurApplicationYouCanReceiveDroneRemoteIdDataOnYourPhoneAndSeeRestrictedAreasForFlyingTheApplicationCanReceiveDataTransmittedOverBluetoothAndWiFi;

  /// No description provided for @pleaseNoteThatTheFunctionalityOfThisApplicationIsEntirelyDependentOnTheOperationSystemOfYourMobileDeviceItsVersionAndAlsoTheHardwareComponentsAndFeaturesOfTheDroneYouWantToObserve.
  ///
  /// In en, this message translates to:
  /// **'Please note that the functionality of this application is entirely dependent on the operation system of your mobile device, its version and also the hardware components and features of the drone you want to observe.'**
  String
      get pleaseNoteThatTheFunctionalityOfThisApplicationIsEntirelyDependentOnTheOperationSystemOfYourMobileDeviceItsVersionAndAlsoTheHardwareComponentsAndFeaturesOfTheDroneYouWantToObserve;

  /// No description provided for @howCanIFindOutWhatMyPhoneIsCapableOf.
  ///
  /// In en, this message translates to:
  /// **'How can I find out what my phone is capable of?'**
  String get howCanIFindOutWhatMyPhoneIsCapableOf;

  /// No description provided for @toFindOutWhatYourPhoneIsCapableOfCheckTheSpecificationsOnTheManufacturersWebsiteOrTheAboutPhoneSectionInYourSettingsYouCanAlsoUseThirdPartyAppsLikeAida64OrCpuZForDetailedHardwareAndSoftwareInformationThisWillHelpYouUnderstandTheSensorsConnectivityOptionsAndOtherFeaturesAvailableOnYourDevice.
  ///
  /// In en, this message translates to:
  /// **'To find out what your phone is capable of, check the specifications on the manufacturer\'s website or the \"About Phone\" section in your settings. You can also use third-party apps like AIDA64 or CPU-Z for detailed hardware and software information. This will help you understand the sensors, connectivity options, and other features available on your device.'**
  String
      get toFindOutWhatYourPhoneIsCapableOfCheckTheSpecificationsOnTheManufacturersWebsiteOrTheAboutPhoneSectionInYourSettingsYouCanAlsoUseThirdPartyAppsLikeAida64OrCpuZForDetailedHardwareAndSoftwareInformationThisWillHelpYouUnderstandTheSensorsConnectivityOptionsAndOtherFeaturesAvailableOnYourDevice;

  /// No description provided for @theresADroneFlyingNearbyButTheAppDoesntRecognizeIt.
  ///
  /// In en, this message translates to:
  /// **'There\'s a drone flying nearby but the app doesn\'t recognize it'**
  String get theresADroneFlyingNearbyButTheAppDoesntRecognizeIt;

  /// No description provided for @someDronesCannotBeTrackedByOurAppBecauseTheyLackTheNecessaryTransponderOrRemoteIdTechnologyAdditionallyCustomBuiltOrOlderModelsMightNotHaveTheStandardizedIdentificationSystemsRequiredForDetectionIfANearbyDroneIsntRecognizedCheckForSignalInterferenceOrObstructionsAndEnsureTheAppIsUpdatedAndHasTheNecessaryPermissionsEnabledOnYourPhone.
  ///
  /// In en, this message translates to:
  /// **'Some drones cannot be tracked by our app because they lack the necessary transponder or Remote ID technology. Additionally, custom-built or older models might not have the standardized identification systems required for detection. If a nearby drone isn\'t recognized, check for signal interference or obstructions, and ensure the app is updated and has the necessary permissions enabled on your phone.'**
  String
      get someDronesCannotBeTrackedByOurAppBecauseTheyLackTheNecessaryTransponderOrRemoteIdTechnologyAdditionallyCustomBuiltOrOlderModelsMightNotHaveTheStandardizedIdentificationSystemsRequiredForDetectionIfANearbyDroneIsntRecognizedCheckForSignalInterferenceOrObstructionsAndEnsureTheAppIsUpdatedAndHasTheNecessaryPermissionsEnabledOnYourPhone;

  /// No description provided for @whatIsARemoteIdAndWhyDoINeedIt.
  ///
  /// In en, this message translates to:
  /// **'What is a Remote ID and why do I need it?'**
  String get whatIsARemoteIdAndWhyDoINeedIt;

  /// No description provided for @remoteIdIsASystemThatAllowsDronesToTransmitIdentificationAndLocationInformationToOthersSimilarToADigitalLicensePlateItEnhancesAirspaceSafetyAndSecurityByEnablingAuthoritiesToTrackAndManageDronesComplianceWithRemoteIdRegulationsIsNecessaryForLegalDroneOperationInManyCountries.
  ///
  /// In en, this message translates to:
  /// **'Remote ID is a system that allows drones to transmit identification and location information to others, similar to a digital license plate. It enhances airspace safety and security by enabling authorities to track and manage drones. Compliance with Remote ID regulations is necessary for legal drone operation in many countries.'**
  String
      get remoteIdIsASystemThatAllowsDronesToTransmitIdentificationAndLocationInformationToOthersSimilarToADigitalLicensePlateItEnhancesAirspaceSafetyAndSecurityByEnablingAuthoritiesToTrackAndManageDronesComplianceWithRemoteIdRegulationsIsNecessaryForLegalDroneOperationInManyCountries;

  /// No description provided for @areThereAnyRestrictionsOnWhereICanUseTheDroneRadarApp.
  ///
  /// In en, this message translates to:
  /// **'Are there any restrictions on where I can use the drone radar app?'**
  String get areThereAnyRestrictionsOnWhereICanUseTheDroneRadarApp;

  /// No description provided for @yesThereMayBeRestrictionsOnUsingTheDroneRadarAppInNoFlyZonesSuchAsAirportsMilitaryBasesAndOtherSensitiveAreasLocalPrivacyLawsMayAlsoLimitTheUseOfDroneDetectionTechnologyInCertainRegionsAlwaysCheckLocalRegulationsAndGuidelinesToEnsureCompliantUsage.
  ///
  /// In en, this message translates to:
  /// **'Yes, there may be restrictions on using the drone radar app in no-fly zones such as airports, military bases, and other sensitive areas. Local privacy laws may also limit the use of drone detection technology in certain regions. Always check local regulations and guidelines to ensure compliant usage.'**
  String
      get yesThereMayBeRestrictionsOnUsingTheDroneRadarAppInNoFlyZonesSuchAsAirportsMilitaryBasesAndOtherSensitiveAreasLocalPrivacyLawsMayAlsoLimitTheUseOfDroneDetectionTechnologyInCertainRegionsAlwaysCheckLocalRegulationsAndGuidelinesToEnsureCompliantUsage;

  /// No description provided for @whyDoesTheAppRequireAccessToMyLocationAndConnectivityServices.
  ///
  /// In en, this message translates to:
  /// **'Why does the app require access to my location and connectivity services?'**
  String get whyDoesTheAppRequireAccessToMyLocationAndConnectivityServices;

  /// No description provided for @theAppRequiresAccessToYourLocationToAccuratelyDetectAndTrackDronesInYourVicinityConnectivityServicesLikeWiFiAndBluetoothHelpTheAppCommunicateWithDronesAndOtherDevicesForBetterDetectionThesePermissionsAreEssentialForProvidingAccurateAndReliableFunctionality.
  ///
  /// In en, this message translates to:
  /// **'The app requires access to your location to accurately detect and track drones in your vicinity. Connectivity services like Wi-Fi and Bluetooth help the app communicate with drones and other devices for better detection. These permissions are essential for providing accurate and reliable functionality.'**
  String
      get theAppRequiresAccessToYourLocationToAccuratelyDetectAndTrackDronesInYourVicinityConnectivityServicesLikeWiFiAndBluetoothHelpTheAppCommunicateWithDronesAndOtherDevicesForBetterDetectionThesePermissionsAreEssentialForProvidingAccurateAndReliableFunctionality;

  /// No description provided for @whatIsARestrictedArea.
  ///
  /// In en, this message translates to:
  /// **'What is a restricted area?'**
  String get whatIsARestrictedArea;

  /// No description provided for @aRestrictedAreaIsADesignatedAirspaceWhereDroneFlightsAreLimitedOrProhibitedToEnsureSafetySecurityOrEnvironmentalProtectionTheseAreasCanIncludeMilitaryZonesNoFlyZonesAroundAirportsAndGovernmentBuildingsAndProtectedEnvironmentalAreasLikeNationalParksFlyingInTheseAreasWithoutAuthorizationIsIllegalAndCanResultInPenalties.
  ///
  /// In en, this message translates to:
  /// **'A restricted area is a designated airspace where drone flights are limited or prohibited to ensure safety, security, or environmental protection. These areas can include military zones, no-fly zones around airports and government buildings, and protected environmental areas like national parks. Flying in these areas without authorization is illegal and can result in penalties.'**
  String
      get aRestrictedAreaIsADesignatedAirspaceWhereDroneFlightsAreLimitedOrProhibitedToEnsureSafetySecurityOrEnvironmentalProtectionTheseAreasCanIncludeMilitaryZonesNoFlyZonesAroundAirportsAndGovernmentBuildingsAndProtectedEnvironmentalAreasLikeNationalParksFlyingInTheseAreasWithoutAuthorizationIsIllegalAndCanResultInPenalties;

  /// No description provided for @whatAreTheRedOrangeYellowAndGreenZones.
  ///
  /// In en, this message translates to:
  /// **'What are the red, orange, yellow and green zones?'**
  String get whatAreTheRedOrangeYellowAndGreenZones;

  /// No description provided for @inDroneOperationsDifferentZonesIndicateVaryingLevelsOfRestrictionRedZonesAreProhibitedAreasWhereFlyingIsNotAllowedDueToSafetySecurityOrEnvironmentalConcernsOrangeZonesRequireAuthorizationFromTheFaaBeforeYouCanFlyYellowZonesAreAreasWhereFlyingIsPermittedButMayBeHazardousSoExtraCautionIsAdvisedGreenZonesAreOpenForFlyingWithoutAnySpecificRestrictionsOrAdditionalPermissions.
  ///
  /// In en, this message translates to:
  /// **'In drone operations, different zones indicate varying levels of restriction. Red Zones are prohibited areas where flying is not allowed due to safety, security, or environmental concerns. Orange Zones require authorization from the FAA before you can fly. Yellow Zones are areas where flying is permitted but may be hazardous, so extra caution is advised. Green Zones are open for flying without any specific restrictions or additional permissions.'**
  String
      get inDroneOperationsDifferentZonesIndicateVaryingLevelsOfRestrictionRedZonesAreProhibitedAreasWhereFlyingIsNotAllowedDueToSafetySecurityOrEnvironmentalConcernsOrangeZonesRequireAuthorizationFromTheFaaBeforeYouCanFlyYellowZonesAreAreasWhereFlyingIsPermittedButMayBeHazardousSoExtraCautionIsAdvisedGreenZonesAreOpenForFlyingWithoutAnySpecificRestrictionsOrAdditionalPermissions;

  /// No description provided for @view3rdPartyLicenses.
  ///
  /// In en, this message translates to:
  /// **'View 3rd party licenses'**
  String get view3rdPartyLicenses;

  /// No description provided for @developedBySkyTrade.
  ///
  /// In en, this message translates to:
  /// **'Developed by SkyTrade'**
  String get developedBySkyTrade;

  /// No description provided for @copyrightSkyTrade.
  ///
  /// In en, this message translates to:
  /// **'© SkyTrade'**
  String get copyrightSkyTrade;

  /// No description provided for @disclaimer.
  ///
  /// In en, this message translates to:
  /// **'Disclaimer'**
  String get disclaimer;

  /// No description provided for @skyTradeRadar.
  ///
  /// In en, this message translates to:
  /// **'SkyTrade Radar'**
  String get skyTradeRadar;

  /// No description provided for @theDroneRestrictionsAndAirspaceDataProvidedByThisAppAreForInformationalPurposesOnlyWhileWeStriveToKeepThisInformationAccurateAndUpToDateWeCannotGuaranteeItsCompletenessOrAccuracyUsersAreResponsibleForEnsuringComplianceWithAllLocalLawsAndRegulationsTheAppProvidersAssumeNoLiabilityForAnyDecisionsOrActionsTakenBasedOnTheDataPresented.
  ///
  /// In en, this message translates to:
  /// **'The drone restrictions and airspace data provided by this app are for informational purposes only. While we strive to keep this information accurate and up-to-date, we cannot guarantee its completeness or accuracy. Users are responsible for ensuring compliance with all local laws and regulations. The app providers assume no liability for any decisions or actions taken based on the data presented.'**
  String
      get theDroneRestrictionsAndAirspaceDataProvidedByThisAppAreForInformationalPurposesOnlyWhileWeStriveToKeepThisInformationAccurateAndUpToDateWeCannotGuaranteeItsCompletenessOrAccuracyUsersAreResponsibleForEnsuringComplianceWithAllLocalLawsAndRegulationsTheAppProvidersAssumeNoLiabilityForAnyDecisionsOrActionsTakenBasedOnTheDataPresented;

  /// No description provided for @loadingPleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Loading... Please wait'**
  String get loadingPleaseWait;

  /// No description provided for @connection.
  ///
  /// In en, this message translates to:
  /// **'CONNECTION'**
  String get connection;

  /// No description provided for @rssi.
  ///
  /// In en, this message translates to:
  /// **'RSSI'**
  String get rssi;

  /// No description provided for @mac.
  ///
  /// In en, this message translates to:
  /// **'MAC'**
  String get mac;

  /// No description provided for @lastSeen.
  ///
  /// In en, this message translates to:
  /// **'Last seen'**
  String get lastSeen;

  /// No description provided for @source.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get source;

  /// No description provided for @basicId.
  ///
  /// In en, this message translates to:
  /// **'BASIC ID'**
  String get basicId;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get type;

  /// No description provided for @idType.
  ///
  /// In en, this message translates to:
  /// **'ID Type'**
  String get idType;

  /// No description provided for @uasId.
  ///
  /// In en, this message translates to:
  /// **'UAS ID'**
  String get uasId;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'LOCATION'**
  String get location;

  /// No description provided for @latitude.
  ///
  /// In en, this message translates to:
  /// **'Latitude'**
  String get latitude;

  /// No description provided for @longitude.
  ///
  /// In en, this message translates to:
  /// **'Longitude'**
  String get longitude;

  /// No description provided for @altitudePress.
  ///
  /// In en, this message translates to:
  /// **'Altitude Press'**
  String get altitudePress;

  /// No description provided for @altitudeGeod.
  ///
  /// In en, this message translates to:
  /// **'Altitude Geod'**
  String get altitudeGeod;

  /// No description provided for @direction.
  ///
  /// In en, this message translates to:
  /// **'Direction'**
  String get direction;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @horizontalSpeed.
  ///
  /// In en, this message translates to:
  /// **'Horizontal Speed'**
  String get horizontalSpeed;

  /// No description provided for @verticalSpeed.
  ///
  /// In en, this message translates to:
  /// **'Vertical Speed'**
  String get verticalSpeed;

  /// No description provided for @height.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get height;

  /// No description provided for @heightOver.
  ///
  /// In en, this message translates to:
  /// **'Height Over'**
  String get heightOver;

  /// No description provided for @horizontalAccuracy.
  ///
  /// In en, this message translates to:
  /// **'Horizontal Accuracy'**
  String get horizontalAccuracy;

  /// No description provided for @verticalAccuracy.
  ///
  /// In en, this message translates to:
  /// **'Vertical Accuracy'**
  String get verticalAccuracy;

  /// No description provided for @baroAcc.
  ///
  /// In en, this message translates to:
  /// **'Baro Acc.'**
  String get baroAcc;

  /// No description provided for @speedAcc.
  ///
  /// In en, this message translates to:
  /// **'Speed Acc.'**
  String get speedAcc;

  /// No description provided for @timeAcc.
  ///
  /// In en, this message translates to:
  /// **'Time Acc.'**
  String get timeAcc;

  /// No description provided for @timestamp.
  ///
  /// In en, this message translates to:
  /// **'Timestamp'**
  String get timestamp;

  /// No description provided for @selfId.
  ///
  /// In en, this message translates to:
  /// **'SELF ID'**
  String get selfId;

  /// No description provided for @operation.
  ///
  /// In en, this message translates to:
  /// **'Operation'**
  String get operation;

  /// No description provided for @systemOperator.
  ///
  /// In en, this message translates to:
  /// **'SYSTEM OPERATOR'**
  String get systemOperator;

  /// No description provided for @locationType.
  ///
  /// In en, this message translates to:
  /// **'Location Type'**
  String get locationType;

  /// No description provided for @altitude.
  ///
  /// In en, this message translates to:
  /// **'Altitude'**
  String get altitude;

  /// No description provided for @areaCount.
  ///
  /// In en, this message translates to:
  /// **'Area Count'**
  String get areaCount;

  /// No description provided for @areaRadius.
  ///
  /// In en, this message translates to:
  /// **'Area radius'**
  String get areaRadius;

  /// No description provided for @areaCeiling.
  ///
  /// In en, this message translates to:
  /// **'Area Ceiling'**
  String get areaCeiling;

  /// No description provided for @areaFloor.
  ///
  /// In en, this message translates to:
  /// **'Area floor'**
  String get areaFloor;

  /// No description provided for @classification.
  ///
  /// In en, this message translates to:
  /// **'Classification'**
  String get classification;

  /// No description provided for @cLass.
  ///
  /// In en, this message translates to:
  /// **'Class'**
  String get cLass;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @operatorId.
  ///
  /// In en, this message translates to:
  /// **'OPERATOR ID'**
  String get operatorId;

  /// No description provided for @authentication.
  ///
  /// In en, this message translates to:
  /// **'AUTHENTICATION'**
  String get authentication;

  /// No description provided for @length.
  ///
  /// In en, this message translates to:
  /// **'Length'**
  String get length;

  /// No description provided for @page.
  ///
  /// In en, this message translates to:
  /// **'Page'**
  String get page;

  /// No description provided for @index.
  ///
  /// In en, this message translates to:
  /// **'Index'**
  String get index;

  /// No description provided for @monday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get monday;

  /// No description provided for @tuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get tuesday;

  /// No description provided for @wednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get wednesday;

  /// No description provided for @thursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get thursday;

  /// No description provided for @friday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get friday;

  /// No description provided for @saturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get saturday;

  /// No description provided for @sunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get sunday;

  /// No description provided for @oneDay.
  ///
  /// In en, this message translates to:
  /// **'1 Day'**
  String get oneDay;

  /// No description provided for @oneWeek.
  ///
  /// In en, this message translates to:
  /// **'1 Week'**
  String get oneWeek;

  /// No description provided for @oneMonth.
  ///
  /// In en, this message translates to:
  /// **'1 Month'**
  String get oneMonth;

  /// No description provided for @oneYear.
  ///
  /// In en, this message translates to:
  /// **'1 Year'**
  String get oneYear;

  /// No description provided for @totalTrackedDrones.
  ///
  /// In en, this message translates to:
  /// **'TOTAL TRACKED DRONES'**
  String get totalTrackedDrones;

  /// No description provided for @january.
  ///
  /// In en, this message translates to:
  /// **'January'**
  String get january;

  /// No description provided for @february.
  ///
  /// In en, this message translates to:
  /// **'February'**
  String get february;

  /// No description provided for @march.
  ///
  /// In en, this message translates to:
  /// **'March'**
  String get march;

  /// No description provided for @april.
  ///
  /// In en, this message translates to:
  /// **'April'**
  String get april;

  /// No description provided for @may.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get may;

  /// No description provided for @june.
  ///
  /// In en, this message translates to:
  /// **'June'**
  String get june;

  /// No description provided for @july.
  ///
  /// In en, this message translates to:
  /// **'July'**
  String get july;

  /// No description provided for @august.
  ///
  /// In en, this message translates to:
  /// **'August'**
  String get august;

  /// No description provided for @september.
  ///
  /// In en, this message translates to:
  /// **'September'**
  String get september;

  /// No description provided for @october.
  ///
  /// In en, this message translates to:
  /// **'October'**
  String get october;

  /// No description provided for @november.
  ///
  /// In en, this message translates to:
  /// **'November'**
  String get november;

  /// No description provided for @december.
  ///
  /// In en, this message translates to:
  /// **'December'**
  String get december;

  /// No description provided for @thereIsNotEnoughDataToDisplayYourTotalTrackedDrones.
  ///
  /// In en, this message translates to:
  /// **'There is not enough data to display your total tracked drones'**
  String get thereIsNotEnoughDataToDisplayYourTotalTrackedDrones;

  /// No description provided for @weCouldNotLoadYourTrackedDronesDataSwipeDownToRefresh.
  ///
  /// In en, this message translates to:
  /// **'We could not load your tracked drones data. Swipe down to refresh'**
  String get weCouldNotLoadYourTrackedDronesDataSwipeDownToRefresh;

  /// No description provided for @thereIsNotEnoughDataToPlotTheGraph.
  ///
  /// In en, this message translates to:
  /// **'There is not enough data to plot the graph'**
  String get thereIsNotEnoughDataToPlotTheGraph;

  /// No description provided for @weCouldNotLoadTheGraphTapOnAnyOfTheFiltersAgainToRefreshTheGraph.
  ///
  /// In en, this message translates to:
  /// **'We could not load the graph. Tap on any of the filters again to refresh the graph'**
  String get weCouldNotLoadTheGraphTapOnAnyOfTheFiltersAgainToRefreshTheGraph;

  /// No description provided for @thereIsNotEnoughDataToPlotTheGraphForTheSelectedPeriod.
  ///
  /// In en, this message translates to:
  /// **'There is not enough data to plot the graph for the selected period'**
  String get thereIsNotEnoughDataToPlotTheGraphForTheSelectedPeriod;

  /// No description provided for @dataCollection.
  ///
  /// In en, this message translates to:
  /// **'DATA COLLECTION'**
  String get dataCollection;

  /// No description provided for @analytics.
  ///
  /// In en, this message translates to:
  /// **'Analytics'**
  String get analytics;

  /// No description provided for @beforeWeCanEnableAnalyticsForYouWeNeedYouToGrantUsTrackingAuthorization.
  ///
  /// In en, this message translates to:
  /// **'Before we can enable analytics for you we need you to grant us tracking authorization'**
  String
      get beforeWeCanEnableAnalyticsForYouWeNeedYouToGrantUsTrackingAuthorization;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @aCodeWillBeSentToYourEmailAreYouSureYouWantToProceedWithThisAction.
  ///
  /// In en, this message translates to:
  /// **'A code will be sent to your email. Are you sure you want to proceed with this action'**
  String get aCodeWillBeSentToYourEmailAreYouSureYouWantToProceedWithThisAction;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @proceed.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get proceed;

  /// No description provided for @invalidate.
  ///
  /// In en, this message translates to:
  /// **'Invalidate'**
  String get invalidate;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @youAreAboutToDeleteYourAccountPleaseBeCertainThatThisIsWhatYouWantAsThisActionCannotBeReversed.
  ///
  /// In en, this message translates to:
  /// **'You are about to delete your account. Please be certain that this is what you want as this action cannot be reversed'**
  String
      get youAreAboutToDeleteYourAccountPleaseBeCertainThatThisIsWhatYouWantAsThisActionCannotBeReversed;

  /// No description provided for @weCouldNotDeleteYourAccountPleaseTryAgainLater.
  ///
  /// In en, this message translates to:
  /// **'We could not delete your account. Please try again later'**
  String get weCouldNotDeleteYourAccountPleaseTryAgainLater;

  /// No description provided for @thisEmailCannotBeUsedToCreateANewAccountPleaseUseADifferentEmail.
  ///
  /// In en, this message translates to:
  /// **'This email cannot be used to create a new account. Please use a different email'**
  String get thisEmailCannotBeUsedToCreateANewAccountPleaseUseADifferentEmail;

  /// No description provided for @accountDoesNotExistIfItPreviouslyDidItMayHaveBeenDeletedHoweverWeNeedYourInputToFinishOff.
  ///
  /// In en, this message translates to:
  /// **'Account does not exist. If it previously did, it may have been deleted. However, we need your input to finish off'**
  String
      get accountDoesNotExistIfItPreviouslyDidItMayHaveBeenDeletedHoweverWeNeedYourInputToFinishOff;

  /// No description provided for @otp.
  ///
  /// In en, this message translates to:
  /// **'OTP'**
  String get otp;

  /// No description provided for @otpFieldCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'OTP field cannot be empty'**
  String get otpFieldCannotBeEmpty;

  /// No description provided for @pleaseSpecifyAValidOtp.
  ///
  /// In en, this message translates to:
  /// **'Please specify a valid OTP'**
  String get pleaseSpecifyAValidOtp;

  /// No description provided for @enterTheCodeSentToYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter the code sent to your email'**
  String get enterTheCodeSentToYourEmail;

  /// No description provided for @didNotReceiveAnyCode.
  ///
  /// In en, this message translates to:
  /// **'Did not receive any code?'**
  String get didNotReceiveAnyCode;

  /// No description provided for @resendOtp.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP'**
  String get resendOtp;

  /// No description provided for @resendOtpIn.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP in'**
  String get resendOtpIn;

  /// No description provided for @s.
  ///
  /// In en, this message translates to:
  /// **'s'**
  String get s;

  /// No description provided for @m.
  ///
  /// In en, this message translates to:
  /// **'m'**
  String get m;

  /// No description provided for @theCodeYouEnteredDoesNotMatchWhatWeSentYou.
  ///
  /// In en, this message translates to:
  /// **'The code you entered does not match what we sent you'**
  String get theCodeYouEnteredDoesNotMatchWhatWeSentYou;

  /// No description provided for @tracked.
  ///
  /// In en, this message translates to:
  /// **'tracked'**
  String get tracked;

  /// No description provided for @trackedByOthersInThisArea.
  ///
  /// In en, this message translates to:
  /// **'tracked by others in this area'**
  String get trackedByOthersInThisArea;

  /// No description provided for @oopsWeCouldNotAuthenticateYouPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Oops! We could not authenticate you. Please try again'**
  String get oopsWeCouldNotAuthenticateYouPleaseTryAgain;

  /// No description provided for @aVerificationLinkWasSentTo.
  ///
  /// In en, this message translates to:
  /// **'A verification link was sent to'**
  String get aVerificationLinkWasSentTo;

  /// No description provided for @clickOnTheLinkToProceedWithTheAuthenticationProcess.
  ///
  /// In en, this message translates to:
  /// **'Click on the link to proceed with the authentication process'**
  String get clickOnTheLinkToProceedWithTheAuthenticationProcess;

  /// No description provided for @youHaveAnExistingSessionWithTheEmail.
  ///
  /// In en, this message translates to:
  /// **'You have an existing session with the email'**
  String get youHaveAnExistingSessionWithTheEmail;

  /// No description provided for @howeverThisEmailHasNotBeenVerifiedClickOnTheLinkSentToTheEmailToProceedOrLogoutInstead.
  ///
  /// In en, this message translates to:
  /// **'however this email has not been verified. Click on the link sent to the email to proceed or logout instead'**
  String
      get howeverThisEmailHasNotBeenVerifiedClickOnTheLinkSentToTheEmailToProceedOrLogoutInstead;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okay;

  /// No description provided for @weCouldNotVerifyYourEmailPleaseEnsureThatYouHaveClickedTheCorrectLink.
  ///
  /// In en, this message translates to:
  /// **'We could not verify your email. Please ensure that you have clicked the correct link'**
  String
      get weCouldNotVerifyYourEmailPleaseEnsureThatYouHaveClickedTheCorrectLink;

  /// No description provided for @ohMyThisIsOnUs.
  ///
  /// In en, this message translates to:
  /// **'Oh my! This is on us'**
  String get ohMyThisIsOnUs;

  /// No description provided for @weTookYouToAnUnknownRoute.
  ///
  /// In en, this message translates to:
  /// **'We took you to an unknown route'**
  String get weTookYouToAnUnknownRoute;

  /// No description provided for @weMustHaveDoneSomethingWrongSomewhereWeAreReallySorryAboutThatRegardlessRefreshingThisPageWillFixThis.
  ///
  /// In en, this message translates to:
  /// **'We must have done something wrong somewhere. We are really sorry about that. Regardless, refreshing this page will fix this'**
  String
      get weMustHaveDoneSomethingWrongSomewhereWeAreReallySorryAboutThatRegardlessRefreshingThisPageWillFixThis;

  /// No description provided for @thereWasOneThingYouNeededToDo.
  ///
  /// In en, this message translates to:
  /// **'There was one thing you needed to do'**
  String get thereWasOneThingYouNeededToDo;

  /// No description provided for @youDidNotPerformARequiredStepNecessaryToCompleteAnAction.
  ///
  /// In en, this message translates to:
  /// **'You did not perform a required step necessary to complete an action'**
  String get youDidNotPerformARequiredStepNecessaryToCompleteAnAction;

  /// No description provided for @youDeletedAnAccountAtSomePointButDeclinedOurRequestForYouToInvalidateTheSessionInOrderToProceedKindlyAcceptTheNextDialogThatShowsUp.
  ///
  /// In en, this message translates to:
  /// **'You deleted an account at some point but declined our request for you to invalidate the session. In order to proceed, kindly accept the next dialog that shows up'**
  String
      get youDeletedAnAccountAtSomePointButDeclinedOurRequestForYouToInvalidateTheSessionInOrderToProceedKindlyAcceptTheNextDialogThatShowsUp;

  /// No description provided for @youNeedToAcceptTheDialogInOrderToProceed.
  ///
  /// In en, this message translates to:
  /// **'You need to accept the dialog in order to proceed'**
  String get youNeedToAcceptTheDialogInOrderToProceed;

  /// No description provided for @anActionRequiresYourInputWeNeedToFinishLoggingYouOutOf.
  ///
  /// In en, this message translates to:
  /// **'An action requires your input. We need to finish logging you out of'**
  String get anActionRequiresYourInputWeNeedToFinishLoggingYouOutOf;

  /// No description provided for @thereIsNoOtherWayToProceedUnlessYouCompleteTheLogoutProcessYouWillBeAbleToLogBackInAfterwards.
  ///
  /// In en, this message translates to:
  /// **'There is no other way to proceed unless you complete the logout process. You will be able to log back in afterwards'**
  String
      get thereIsNoOtherWayToProceedUnlessYouCompleteTheLogoutProcessYouWillBeAbleToLogBackInAfterwards;

  /// No description provided for @referralProgram.
  ///
  /// In en, this message translates to:
  /// **'Referral Program'**
  String get referralProgram;

  /// No description provided for @theProgram.
  ///
  /// In en, this message translates to:
  /// **'The Program'**
  String get theProgram;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @leaderboard.
  ///
  /// In en, this message translates to:
  /// **'Leaderboard'**
  String get leaderboard;

  /// No description provided for @skyPointsBalance.
  ///
  /// In en, this message translates to:
  /// **'SKY Points Balance'**
  String get skyPointsBalance;

  /// No description provided for @skyPoints.
  ///
  /// In en, this message translates to:
  /// **'SKY Points'**
  String get skyPoints;

  /// No description provided for @howCanIEarnSkyPoints.
  ///
  /// In en, this message translates to:
  /// **'How can I earn SKY Points?'**
  String get howCanIEarnSkyPoints;

  /// No description provided for @shareAndEarn.
  ///
  /// In en, this message translates to:
  /// **'Share And Earn! 🚀✨'**
  String get shareAndEarn;

  /// No description provided for @registerAndClaim.
  ///
  /// In en, this message translates to:
  /// **'Register & Claim'**
  String get registerAndClaim;

  /// No description provided for @earn.
  ///
  /// In en, this message translates to:
  /// **'Earn'**
  String get earn;

  /// No description provided for @sendYourInviteLinkOrCodeToYourFriendsAndExplainToThemHowCoolSkyTradeIs.
  ///
  /// In en, this message translates to:
  /// **'Send your invite link or code to your friends and explain to them how cool SkyTrade is'**
  String
      get sendYourInviteLinkOrCodeToYourFriendsAndExplainToThemHowCoolSkyTradeIs;

  /// No description provided for @letThemRegisterAndClaimTheirAirspacesUsingYourReferralLinkOrCode.
  ///
  /// In en, this message translates to:
  /// **'Let them register and claim their airspaces using your referral link or code'**
  String get letThemRegisterAndClaimTheirAirspacesUsingYourReferralLinkOrCode;

  /// No description provided for @youAndYourFriendsAreRewardedWith50CreditsAndMore.
  ///
  /// In en, this message translates to:
  /// **'You and your friends are rewarded with 50 credits and more'**
  String get youAndYourFriendsAreRewardedWith50CreditsAndMore;

  /// No description provided for @shareTheReferralLinkOrCode.
  ///
  /// In en, this message translates to:
  /// **'Share the referral link or code'**
  String get shareTheReferralLinkOrCode;

  /// No description provided for @copyCode.
  ///
  /// In en, this message translates to:
  /// **'Copy code'**
  String get copyCode;

  /// No description provided for @copyLink.
  ///
  /// In en, this message translates to:
  /// **'Copy link'**
  String get copyLink;

  /// No description provided for @inviteYourFriends.
  ///
  /// In en, this message translates to:
  /// **'Invite your friends'**
  String get inviteYourFriends;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'email address'**
  String get emailAddress;

  /// No description provided for @shareYourUniqueQrCode.
  ///
  /// In en, this message translates to:
  /// **'Share your unique QR Code'**
  String get shareYourUniqueQrCode;

  /// No description provided for @registeredFriends.
  ///
  /// In en, this message translates to:
  /// **'Registered friends'**
  String get registeredFriends;

  /// No description provided for @registeredAirspaces.
  ///
  /// In en, this message translates to:
  /// **'Registered airspaces'**
  String get registeredAirspaces;

  /// No description provided for @validatedProperties.
  ///
  /// In en, this message translates to:
  /// **'Validated properties'**
  String get validatedProperties;

  /// No description provided for @yourReferrals.
  ///
  /// In en, this message translates to:
  /// **'Your referrals'**
  String get yourReferrals;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get amount;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @yourEarnings.
  ///
  /// In en, this message translates to:
  /// **'Your Earnings'**
  String get yourEarnings;

  /// No description provided for @lifetimeEarnings.
  ///
  /// In en, this message translates to:
  /// **'Lifetime Earnings'**
  String get lifetimeEarnings;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @currentPeriodChallengeLeaderboard.
  ///
  /// In en, this message translates to:
  /// **'Current Period Challenge Leaderboard'**
  String get currentPeriodChallengeLeaderboard;

  /// No description provided for @accountRegistrationNoKycRequiredToGetThesePoints.
  ///
  /// In en, this message translates to:
  /// **'Account Registration (no KYC required to get these points)'**
  String get accountRegistrationNoKycRequiredToGetThesePoints;

  /// No description provided for @claimYourAirspaceFullClaimVerifiedAirspaceThisIsPerEveryUniqueClaimedAirspaceKycCompletedIsAPreconditionForThisAllocation.
  ///
  /// In en, this message translates to:
  /// **'Claim your airspace (full claim/verified airspace). This is per every unique claimed airspace. KYC completed is a precondition for this allocation.'**
  String
      get claimYourAirspaceFullClaimVerifiedAirspaceThisIsPerEveryUniqueClaimedAirspaceKycCompletedIsAPreconditionForThisAllocation;

  /// No description provided for @forClaimedAirSpaceWhichIsFullyValidatedDoneByTheReferredAccount.
  ///
  /// In en, this message translates to:
  /// **'For claimed air space which is fully validated done by the referred account.'**
  String get forClaimedAirSpaceWhichIsFullyValidatedDoneByTheReferredAccount;

  /// No description provided for @referAFriendFriendRegistersAnAccountButKycOnThatFriendsAccountIsNotRequiredForTheIntroducingAccountToGetTheirSkyPointsFraudulentActivityWillBeMinimizedByTAndCsWhereWeSayWeWillDeductPointsForFraudulentActsIfDiscovered.
  ///
  /// In en, this message translates to:
  /// **'Refer a friend (friend registers an account, but KYC on that friend’s account is not required for the introducing account to get their SKY points, fraudulent activity will be minimized by T&Cs where we say we will deduct points for fraudulent acts if discovered)'**
  String
      get referAFriendFriendRegistersAnAccountButKycOnThatFriendsAccountIsNotRequiredForTheIntroducingAccountToGetTheirSkyPointsFraudulentActivityWillBeMinimizedByTAndCsWhereWeSayWeWillDeductPointsForFraudulentActsIfDiscovered;

  /// No description provided for @forMakingAFirstValidBidInTheAuctionHouse.
  ///
  /// In en, this message translates to:
  /// **'For making a first valid bid in the Auction House'**
  String get forMakingAFirstValidBidInTheAuctionHouse;

  /// No description provided for @claimOrReferOneAirspacesInASpecificAreaNewYorkManhattanAndBoroughsTexasGarlandMurphyPlanoRichardsonMesquiteDallasRowlettColonyCollegeStationFloridaClermontNewPortRicheyValricoWinterHavenTampaBrandonRiverviewSeffnerArizonaPhoenixGlendalePeoriaArkansasFarmingtonBentonvilleRogersPeaRidgeVirginiaVirginiaBeachUtahLindonHerrimanNorthCarolinaRaeford.
  ///
  /// In en, this message translates to:
  /// **'Claim or refer 1 airspaces in a specific area:  New York: Manhattan & Boroughs Texas: Garland, Murphy, Plano, Richardson, Mesquite, Dallas, Rowlett, Colony, College Station Florida: Clermont, New Port Richey, Valrico, Winter Haven, Tampa, Brandon, Riverview, Seffner Arizona: Phoenix, Glendale, Peoria Arkansas: Farmington, Bentonville, Rogers, Pea Ridge Virginia: Virginia Beach Utah: Lindon, Herriman North Carolina: Raeford'**
  String
      get claimOrReferOneAirspacesInASpecificAreaNewYorkManhattanAndBoroughsTexasGarlandMurphyPlanoRichardsonMesquiteDallasRowlettColonyCollegeStationFloridaClermontNewPortRicheyValricoWinterHavenTampaBrandonRiverviewSeffnerArizonaPhoenixGlendalePeoriaArkansasFarmingtonBentonvilleRogersPeaRidgeVirginiaVirginiaBeachUtahLindonHerrimanNorthCarolinaRaeford;

  /// No description provided for @trackADroneWithTheRadarApp.
  ///
  /// In en, this message translates to:
  /// **'Track a drone with the radar app'**
  String get trackADroneWithTheRadarApp;

  /// No description provided for @trackADroneWithTheRadarAppInASpecificAreaTexasGarlandMurphyPlanoRichardsonMesquiteDallasRowlettColonyCollegeStationFloridaClermontNewPortRicheyValricoWinterHavenTampaBrandonRiverviewSeffnerArizonaPhoenixGlendalePeoriaArkansasFarmingtonBentonvilleRogersPeaRidgeVirginiaVirginiaBeachUtahLindonHerrimanNorthCarolinaRaeford.
  ///
  /// In en, this message translates to:
  /// **'Track a drone with the radar app in a specific area:  Texas: Garland, Murphy, Plano, Richardson, Mesquite, Dallas, Rowlett, Colony, College Station Florida: Clermont, New Port Richey, Valrico, Winter Haven, Tampa, Brandon, Riverview, Seffner Arizona: Phoenix, Glendale, Peoria Arkansas: Farmington, Bentonville, Rogers, Pea Ridge Virginia: Virginia Beach Utah: Lindon, Herriman North Carolina: Raeford'**
  String
      get trackADroneWithTheRadarAppInASpecificAreaTexasGarlandMurphyPlanoRichardsonMesquiteDallasRowlettColonyCollegeStationFloridaClermontNewPortRicheyValricoWinterHavenTampaBrandonRiverviewSeffnerArizonaPhoenixGlendalePeoriaArkansasFarmingtonBentonvilleRogersPeaRidgeVirginiaVirginiaBeachUtahLindonHerrimanNorthCarolinaRaeford;

  /// No description provided for @fiveSkyPoints.
  ///
  /// In en, this message translates to:
  /// **'5 SKY points'**
  String get fiveSkyPoints;

  /// No description provided for @hundredSkyPoints.
  ///
  /// In en, this message translates to:
  /// **'100 SKY points'**
  String get hundredSkyPoints;

  /// No description provided for @boostingSkyPointsEgXThree.
  ///
  /// In en, this message translates to:
  /// **'Boosting: SKY points eg x 3'**
  String get boostingSkyPointsEgXThree;

  /// No description provided for @hundredSkyPointsToYouAndHundredSkyPointsToYourFriendThisIsPartOfThePointsAllocationTwoPlusTenPercentBonusOnTheReferredIncomeStreamFromAirRightRental.
  ///
  /// In en, this message translates to:
  /// **'100 SKY points to you and 100 SKY points to your friend (this is part of the points allocation 2) + 10% bonus on the referred income stream from air-right rental'**
  String
      get hundredSkyPointsToYouAndHundredSkyPointsToYourFriendThisIsPartOfThePointsAllocationTwoPlusTenPercentBonusOnTheReferredIncomeStreamFromAirRightRental;

  /// No description provided for @fiveSkyPointsPerDrone.
  ///
  /// In en, this message translates to:
  /// **'5 SKY points/drone'**
  String get fiveSkyPointsPerDrone;

  /// No description provided for @itDoesNotMakeSenseToSendYourselfAnInvite.
  ///
  /// In en, this message translates to:
  /// **'It does not make sense to send yourself an invite'**
  String get itDoesNotMakeSenseToSendYourselfAnInvite;

  /// No description provided for @weCouldNotSendTheInvitePleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'We could not send the invite. Please try again'**
  String get weCouldNotSendTheInvitePleaseTryAgain;

  /// No description provided for @inviteSent.
  ///
  /// In en, this message translates to:
  /// **'Invite sent'**
  String get inviteSent;

  /// No description provided for @qThree.
  ///
  /// In en, this message translates to:
  /// **'Q3'**
  String get qThree;

  /// No description provided for @qTwo.
  ///
  /// In en, this message translates to:
  /// **'Q2'**
  String get qTwo;

  /// No description provided for @qOne.
  ///
  /// In en, this message translates to:
  /// **'Q1'**
  String get qOne;

  /// No description provided for @qFour.
  ///
  /// In en, this message translates to:
  /// **'Q4'**
  String get qFour;

  /// No description provided for @earnings.
  ///
  /// In en, this message translates to:
  /// **'Earnings'**
  String get earnings;

  /// No description provided for @thereIsNothingToShowHere.
  ///
  /// In en, this message translates to:
  /// **'There is nothing to show here'**
  String get thereIsNothingToShowHere;

  /// No description provided for @yourExclusiveInvitationToSkyTrade.
  ///
  /// In en, this message translates to:
  /// **'Your exclusive invitation to SkyTrade'**
  String get yourExclusiveInvitationToSkyTrade;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @emailAtMailDotCom.
  ///
  /// In en, this message translates to:
  /// **'email@mail.com'**
  String get emailAtMailDotCom;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @phoneNumberCannotBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'Phone number cannot be empty'**
  String get phoneNumberCannotBeEmpty;

  /// No description provided for @searchCountryOrCountryCode.
  ///
  /// In en, this message translates to:
  /// **'Search country or country code'**
  String get searchCountryOrCountryCode;

  /// No description provided for @yourStatus.
  ///
  /// In en, this message translates to:
  /// **'Your Status'**
  String get yourStatus;

  /// No description provided for @selectACategory.
  ///
  /// In en, this message translates to:
  /// **'Select a category'**
  String get selectACategory;

  /// No description provided for @referralCode.
  ///
  /// In en, this message translates to:
  /// **'Referral Code'**
  String get referralCode;

  /// No description provided for @enterReferralCode.
  ///
  /// In en, this message translates to:
  /// **'Enter referral code'**
  String get enterReferralCode;

  /// No description provided for @subscribeToNewsletter.
  ///
  /// In en, this message translates to:
  /// **'Subscribe to newsletter'**
  String get subscribeToNewsletter;

  /// No description provided for @invalidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get invalidPhoneNumber;

  /// No description provided for @removeWhitespaces.
  ///
  /// In en, this message translates to:
  /// **'Remove whitespaces'**
  String get removeWhitespaces;

  /// No description provided for @referralCodeTooShortReferralCodeCanEitherBeSixCharactersLongOrTheEmailOfTheReferer.
  ///
  /// In en, this message translates to:
  /// **'Referral code too short. Referral code can either be six characters long or the email of the referer'**
  String
      get referralCodeTooShortReferralCodeCanEitherBeSixCharactersLongOrTheEmailOfTheReferer;

  /// No description provided for @referralCodeTooLongReferralCodeCanEitherBeSixCharactersLongOrTheEmailOfTheReferer.
  ///
  /// In en, this message translates to:
  /// **'Referral code too long. Referral code can either be six characters long or the email of the referer'**
  String
      get referralCodeTooLongReferralCodeCanEitherBeSixCharactersLongOrTheEmailOfTheReferer;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @iAmAnIndividual.
  ///
  /// In en, this message translates to:
  /// **'I am an individual'**
  String get iAmAnIndividual;

  /// No description provided for @iAmACorporateEntity.
  ///
  /// In en, this message translates to:
  /// **'I am a corporate entity'**
  String get iAmACorporateEntity;

  /// No description provided for @viewMyPosition.
  ///
  /// In en, this message translates to:
  /// **'View my position'**
  String get viewMyPosition;

  /// No description provided for @youHaveNotEarnedAnyPointsWithinTheCurrentPeriod.
  ///
  /// In en, this message translates to:
  /// **'You have not earned any points within the current period'**
  String get youHaveNotEarnedAnyPointsWithinTheCurrentPeriod;

  /// No description provided for @weCouldNotGetYourPositionOnTheLeaderboardTryRefreshingTheLeaderboardTableOrTheEntirePageThenTryViewingYourPositionAgain.
  ///
  /// In en, this message translates to:
  /// **'We could not get your position on the leaderboard. Try refreshing the leaderboard table or the entire page then try viewing your position again'**
  String
      get weCouldNotGetYourPositionOnTheLeaderboardTryRefreshingTheLeaderboardTableOrTheEntirePageThenTryViewingYourPositionAgain;

  /// No description provided for @thereWasAnErrorComputingYourPositionOnTheLeaderboard.
  ///
  /// In en, this message translates to:
  /// **'There was an error computing your position on the leaderboard'**
  String get thereWasAnErrorComputingYourPositionOnTheLeaderboard;

  /// No description provided for @code.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get code;

  /// No description provided for @joinMeOnSkyTradeRadarAndStartEarningPoints.
  ///
  /// In en, this message translates to:
  /// **'Join me on SkyTrade Radar and start earning points'**
  String get joinMeOnSkyTradeRadarAndStartEarningPoints;

  /// No description provided for @useMyCode.
  ///
  /// In en, this message translates to:
  /// **'🌟 Use my code'**
  String get useMyCode;

  /// No description provided for @whenYouSignUpAndGetABonusSignUpHere.
  ///
  /// In en, this message translates to:
  /// **'when you sign up and get a bonus. Sign up here'**
  String get whenYouSignUpAndGetABonusSignUpHere;

  /// No description provided for @yourVersionOfThisAppIsTooOld.
  ///
  /// In en, this message translates to:
  /// **'Your version of this app is too old'**
  String get yourVersionOfThisAppIsTooOld;

  /// No description provided for @certainThingsMayBreakDueToSignificantChangesThatHaveBeenMade.
  ///
  /// In en, this message translates to:
  /// **'Certain things may break due to significant changes that have been made'**
  String get certainThingsMayBreakDueToSignificantChangesThatHaveBeenMade;

  /// No description provided for @weEncourageYouToUpdateTheAppInOrderToKeepUsingIt.
  ///
  /// In en, this message translates to:
  /// **'We encourage you to update the app in order to keep using it'**
  String get weEncourageYouToUpdateTheAppInOrderToKeepUsingIt;

  /// No description provided for @openAppStore.
  ///
  /// In en, this message translates to:
  /// **'Open App Store'**
  String get openAppStore;

  /// No description provided for @openPlayStore.
  ///
  /// In en, this message translates to:
  /// **'Open Play Store'**
  String get openPlayStore;

  /// No description provided for @openDAppStore.
  ///
  /// In en, this message translates to:
  /// **'Open dApp Store'**
  String get openDAppStore;

  /// No description provided for @weAreNotSureWhatMayHaveCausedThis.
  ///
  /// In en, this message translates to:
  /// **'We are not sure what may have caused this'**
  String get weAreNotSureWhatMayHaveCausedThis;

  /// No description provided for @tryRefreshingThePageIfTheIssueContinuesYouMayWantToCheckYourConnectionOrTryAgainLater.
  ///
  /// In en, this message translates to:
  /// **'Try refreshing the page if the issue continues. You may want to check your connection or try again later'**
  String
      get tryRefreshingThePageIfTheIssueContinuesYouMayWantToCheckYourConnectionOrTryAgainLater;

  /// No description provided for @tryOutSkyTradeRadar.
  ///
  /// In en, this message translates to:
  /// **'Try out SkyTrade Radar'**
  String get tryOutSkyTradeRadar;

  /// No description provided for @heyImUsingSkyTradeRadarAndThoughtYoudLikeItCheckItOutOnPlaystore.
  ///
  /// In en, this message translates to:
  /// **'Hey! I\'m using SkyTrade Radar and thought you\'d like it. Check it out on Playstore'**
  String get heyImUsingSkyTradeRadarAndThoughtYoudLikeItCheckItOutOnPlaystore;

  /// No description provided for @onTheAppStore.
  ///
  /// In en, this message translates to:
  /// **'on the App Store'**
  String get onTheAppStore;

  /// No description provided for @orOnTheSolanaDappStore.
  ///
  /// In en, this message translates to:
  /// **'or on the Solana dApp Store'**
  String get orOnTheSolanaDappStore;

  /// No description provided for @shareRadarApp.
  ///
  /// In en, this message translates to:
  /// **'Share Radar App'**
  String get shareRadarApp;

  /// No description provided for @introducingSkyTradeRadarRewards.
  ///
  /// In en, this message translates to:
  /// **'Introducing SkyTrade Radar Rewards'**
  String get introducingSkyTradeRadarRewards;

  /// No description provided for @earn25PointsForEveryVerifiedDroneObservationCompleteDailyQuestsToEarnEvenMorePoints.
  ///
  /// In en, this message translates to:
  /// **'Earn 25 points for every verified drone observation. Complete daily quests to earn even more points'**
  String
      get earn25PointsForEveryVerifiedDroneObservationCompleteDailyQuestsToEarnEvenMorePoints;

  /// No description provided for @pointsProgram.
  ///
  /// In en, this message translates to:
  /// **'Points Program'**
  String get pointsProgram;

  /// No description provided for @completeTasksToEarnSkyPoints.
  ///
  /// In en, this message translates to:
  /// **'Complete tasks to earn \$SKY points'**
  String get completeTasksToEarnSkyPoints;

  /// No description provided for @dailyQuests.
  ///
  /// In en, this message translates to:
  /// **'Daily Quests'**
  String get dailyQuests;

  /// No description provided for @howItWorks.
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get howItWorks;

  /// No description provided for @earn25PointsForEveryVerifiedDroneObservationCompleteDailyQuestsToEarnBonusPointsAndClimbTheRanksTheMoreYouContributeTheMoreTouLevelUp.
  ///
  /// In en, this message translates to:
  /// **'Earn 25 points for every verified drone observation. Complete daily quests to earn bonus points and climb the ranks.\nThe more you contribute, the more you level up'**
  String
      get earn25PointsForEveryVerifiedDroneObservationCompleteDailyQuestsToEarnBonusPointsAndClimbTheRanksTheMoreYouContributeTheMoreTouLevelUp;

  /// No description provided for @viewLeaderboard.
  ///
  /// In en, this message translates to:
  /// **'View leaderboard'**
  String get viewLeaderboard;

  /// No description provided for @claim.
  ///
  /// In en, this message translates to:
  /// **'Claim'**
  String get claim;

  /// No description provided for @thereAreNoQuestsAtThisTime.
  ///
  /// In en, this message translates to:
  /// **'There are no quests at this time'**
  String get thereAreNoQuestsAtThisTime;

  /// No description provided for @seeMyPosition.
  ///
  /// In en, this message translates to:
  /// **'See my position'**
  String get seeMyPosition;

  /// No description provided for @weCouldNotGetYourPositionOnTheLeaderboardTryRefreshingThePageThenTryViewingYourPositionAgain.
  ///
  /// In en, this message translates to:
  /// **'We could not get your position on the leaderboard. Try refreshing the page then try viewing your position again'**
  String
      get weCouldNotGetYourPositionOnTheLeaderboardTryRefreshingThePageThenTryViewingYourPositionAgain;

  /// No description provided for @daysLeft.
  ///
  /// In en, this message translates to:
  /// **'day(s) left'**
  String get daysLeft;

  /// No description provided for @crownEmoji.
  ///
  /// In en, this message translates to:
  /// **'👑'**
  String get crownEmoji;

  /// No description provided for @competeWithOthersToClimbTheRanksByEarningPointsThroughDroneObservationsAndQuestsPointsResetAtTheStartOfEachNewSeasonSoStayActiveToMaintainYourPosition.
  ///
  /// In en, this message translates to:
  /// **'Compete with others to climb the ranks by earning points through drone observations and quests. \n\nPoints reset at the start of each new season, so stay active to maintain your position'**
  String
      get competeWithOthersToClimbTheRanksByEarningPointsThroughDroneObservationsAndQuestsPointsResetAtTheStartOfEachNewSeasonSoStayActiveToMaintainYourPosition;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @droneRushZones.
  ///
  /// In en, this message translates to:
  /// **'Drone Rush Zones'**
  String get droneRushZones;

  /// No description provided for @droneRushZone.
  ///
  /// In en, this message translates to:
  /// **'Drone Rush Zone'**
  String get droneRushZone;

  /// No description provided for @keepAnEyeOnTheMapForActiveRushZonesAndStartTrackingToMaximizeYourRewards.
  ///
  /// In en, this message translates to:
  /// **'Keep an eye on the map for active Rush Zones and start tracking to maximize your rewards'**
  String
      get keepAnEyeOnTheMapForActiveRushZonesAndStartTrackingToMaximizeYourRewards;

  /// No description provided for @activeRushZones.
  ///
  /// In en, this message translates to:
  /// **'Active Rush Zones'**
  String get activeRushZones;

  /// No description provided for @learnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn More'**
  String get learnMore;

  /// No description provided for @inThisZoneYouCanEarn.
  ///
  /// In en, this message translates to:
  /// **'In this zone you can earn'**
  String get inThisZoneYouCanEarn;

  /// No description provided for @forTrackingDronesInSpecialHighActivityZones.
  ///
  /// In en, this message translates to:
  /// **'for tracking drones in special high-activity zones'**
  String get forTrackingDronesInSpecialHighActivityZones;

  /// No description provided for @specialEvent.
  ///
  /// In en, this message translates to:
  /// **'Special Event'**
  String get specialEvent;

  /// No description provided for @droneRush.
  ///
  /// In en, this message translates to:
  /// **'Drone Rush'**
  String get droneRush;

  /// No description provided for @trackAndEarnFiveXPoints.
  ///
  /// In en, this message translates to:
  /// **'Track & Earn 5x Points!'**
  String get trackAndEarnFiveXPoints;

  /// No description provided for @watchForRushZones.
  ///
  /// In en, this message translates to:
  /// **'Watch for Rush Zones'**
  String get watchForRushZones;

  /// No description provided for @onlySpecificLocationsAreEligibleForExtraPointsRushZonesWillBeMarkedClearlyOnYourMap.
  ///
  /// In en, this message translates to:
  /// **'Only specific locations are eligible for extra points. Rush zones will be marked clearly on your map'**
  String
      get onlySpecificLocationsAreEligibleForExtraPointsRushZonesWillBeMarkedClearlyOnYourMap;

  /// No description provided for @whichAreasAreEligible.
  ///
  /// In en, this message translates to:
  /// **'Which areas are eligible?'**
  String get whichAreasAreEligible;

  /// No description provided for @enterARushZone.
  ///
  /// In en, this message translates to:
  /// **'Enter a Rush Zone'**
  String get enterARushZone;

  /// No description provided for @youMustBePhysicallyLocatedWithinARushZoneToStartTracking.
  ///
  /// In en, this message translates to:
  /// **'You must be physically located within a Rush Zone to start tracking'**
  String get youMustBePhysicallyLocatedWithinARushZoneToStartTracking;

  /// No description provided for @trackDrones.
  ///
  /// In en, this message translates to:
  /// **'Track Drones'**
  String get trackDrones;

  /// No description provided for @observeAndConfirmDroneActivityAsUsual.
  ///
  /// In en, this message translates to:
  /// **'Observe and confirm drone activity as usual'**
  String get observeAndConfirmDroneActivityAsUsual;

  /// No description provided for @earnMorePoints.
  ///
  /// In en, this message translates to:
  /// **'Earn More Points'**
  String get earnMorePoints;

  /// No description provided for @allSuccessfulObservationsInRushZonesWillAutomaticallyEarnBoostedRewards.
  ///
  /// In en, this message translates to:
  /// **'All successful observations in Rush Zones will automatically earn boosted rewards'**
  String
      get allSuccessfulObservationsInRushZonesWillAutomaticallyEarnBoostedRewards;

  /// No description provided for @startEarning.
  ///
  /// In en, this message translates to:
  /// **'Start Earning'**
  String get startEarning;

  /// No description provided for @topTrackersThisPeriod.
  ///
  /// In en, this message translates to:
  /// **'Top trackers this period'**
  String get topTrackersThisPeriod;

  /// No description provided for @startTracking.
  ///
  /// In en, this message translates to:
  /// **'Start Tracking'**
  String get startTracking;

  /// No description provided for @whatAreasAreEligible.
  ///
  /// In en, this message translates to:
  /// **'What areas are eligible?'**
  String get whatAreasAreEligible;

  /// No description provided for @couldNotGetDailyQuestsSwipeDownToRefreshThePage.
  ///
  /// In en, this message translates to:
  /// **'Could not get daily quests. Swipe down to refresh the page'**
  String get couldNotGetDailyQuestsSwipeDownToRefreshThePage;

  /// No description provided for @couldNotGetPointsSwipeDownToRefreshThePage.
  ///
  /// In en, this message translates to:
  /// **'Could not get points. Swipe down to refresh the page'**
  String get couldNotGetPointsSwipeDownToRefreshThePage;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'points'**
  String get points;

  /// No description provided for @morePoints.
  ///
  /// In en, this message translates to:
  /// **'more points'**
  String get morePoints;

  /// No description provided for @forTrackingDronesInHighlightedZonesDuringThisLimitedTimeEvent.
  ///
  /// In en, this message translates to:
  /// **'for tracking drones in highlighted zones during this limited-time event'**
  String get forTrackingDronesInHighlightedZonesDuringThisLimitedTimeEvent;

  /// No description provided for @theListOfActiveRushZonesPlaceNamesCannotBeShownAtTheMoment.
  ///
  /// In en, this message translates to:
  /// **'The list of active rush zones place names cannot be shown at the moment'**
  String get theListOfActiveRushZonesPlaceNamesCannotBeShownAtTheMoment;

  /// No description provided for @couldNotGetSkyPointsBalanceSwipeDownToRefreshThePage.
  ///
  /// In en, this message translates to:
  /// **'Could not get SKY Points balance. Swipe down to refresh the page'**
  String get couldNotGetSkyPointsBalanceSwipeDownToRefreshThePage;

  /// No description provided for @couldNotGetHighlightsSwipeDownToRefreshThePage.
  ///
  /// In en, this message translates to:
  /// **'Could not get highlights. Swipe down to refresh the page'**
  String get couldNotGetHighlightsSwipeDownToRefreshThePage;

  /// No description provided for @couldNotGetReferralHistorySwipeDownToRefreshThePage.
  ///
  /// In en, this message translates to:
  /// **'Could not get referral history. Swipe down to refresh the page'**
  String get couldNotGetReferralHistorySwipeDownToRefreshThePage;

  /// No description provided for @couldNotGetLeaderboardStatisticsSwipeDownToRefreshThePage.
  ///
  /// In en, this message translates to:
  /// **'Could not get leaderboard statistics. Swipe down to refresh the page'**
  String get couldNotGetLeaderboardStatisticsSwipeDownToRefreshThePage;

  /// No description provided for @couldNotGetEarningsReportSwipeDownToRefreshThePage.
  ///
  /// In en, this message translates to:
  /// **'Could not get earnings report. Swipe down to refresh the page'**
  String get couldNotGetEarningsReportSwipeDownToRefreshThePage;

  /// No description provided for @trackADroneWithTheRadarAppInASpecificArea.
  ///
  /// In en, this message translates to:
  /// **'Track a drone with the radar app in a specific area'**
  String get trackADroneWithTheRadarAppInASpecificArea;

  /// No description provided for @texasGarlandMurphyPlanoRichardsonMesquiteDallasRowlettColonyCollegeStationFloridaClermontNewPortRicheyValricoWinterHavenTampaBrandonRiverviewSeffnerArizonaPhoenixGlendalePeoriaArkansasFarmingtonBentonvilleRogersPeaRidgeVirginiaVirginiaBeachUtahLindonHerrimanNorthCarolinaRaeford.
  ///
  /// In en, this message translates to:
  /// **'Texas: Garland, Murphy, Plano, Richardson, Mesquite, Dallas, Rowlett, Colony, College Station Florida: Clermont, New Port Richey, Valrico, Winter Haven, Tampa, Brandon, Riverview, Seffner Arizona: Phoenix, Glendale, Peoria Arkansas: Farmington, Bentonville, Rogers, Pea Ridge Virginia: Virginia Beach Utah: Lindon, Herriman North Carolina: Raeford'**
  String
      get texasGarlandMurphyPlanoRichardsonMesquiteDallasRowlettColonyCollegeStationFloridaClermontNewPortRicheyValricoWinterHavenTampaBrandonRiverviewSeffnerArizonaPhoenixGlendalePeoriaArkansasFarmingtonBentonvilleRogersPeaRidgeVirginiaVirginiaBeachUtahLindonHerrimanNorthCarolinaRaeford;

  /// No description provided for @allow.
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get allow;

  /// No description provided for @openSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @locationAccessNeeded.
  ///
  /// In en, this message translates to:
  /// **'Location Access Needed'**
  String get locationAccessNeeded;

  /// No description provided for @skyTradeNeedsYourLocationToShowRelevantFeaturesNearYou.
  ///
  /// In en, this message translates to:
  /// **'SkyTrade needs your location to show relevant features near you'**
  String get skyTradeNeedsYourLocationToShowRelevantFeaturesNearYou;

  /// No description provided for @enableLocationPermissionInSettings.
  ///
  /// In en, this message translates to:
  /// **'Enable Location Permission in Settings'**
  String get enableLocationPermissionInSettings;

  /// No description provided for @youveDeniedLocationAccessPleaseEnableItInYourAppSettingsSoSkyTradeCanShowRelevantFeaturesNearYou.
  ///
  /// In en, this message translates to:
  /// **'You\'ve denied location access. Please enable it in your app settings so SkyTrade can show relevant features near you'**
  String
      get youveDeniedLocationAccessPleaseEnableItInYourAppSettingsSoSkyTradeCanShowRelevantFeaturesNearYou;

  /// No description provided for @turnOnLocationServices.
  ///
  /// In en, this message translates to:
  /// **'Turn On Location Services'**
  String get turnOnLocationServices;

  /// No description provided for @skyTradeNeedsGpsToFindYourLocationAndShowRelevantFeaturesAroundYouPleaseEnableItInYourDeviceSettings.
  ///
  /// In en, this message translates to:
  /// **'SkyTrade needs GPS to find your location and show relevant features around you. Please enable it in your device settings'**
  String
      get skyTradeNeedsGpsToFindYourLocationAndShowRelevantFeaturesAroundYouPleaseEnableItInYourDeviceSettings;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
