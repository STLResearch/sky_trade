import 'package:sky_trade/core/resources/strings/ui.dart'
    show droneRushValue, uasRestrictionValue;

enum AuthButtonType {
  getStarted,
  continueAsGuest,
}

enum MapStyle {
  dark,
  satellite;
}

enum MenuItem {
  insights,
  referralProgram,
  logout,
  settings,
  help,
}

enum BottomMenuItem {
  about,
  termsOfService,
  privacyPolicy,
}

enum ErrorReason {
  deletedSkyTradeUserWithExistingAuth0Session,
  sessionInitializationFailure,
  incompatibleBackendApiVersion,
  unknownNavigationRoute,
  unknownError,
}

enum ReferralTab {
  share,
  history,
  leaderboard,
}

enum ShareResult {
  success,
  dismissed,
  unknown,
}

enum Highlights {
  registeredFriends,
  registeredAirspaces,
  validatedProperties,
}

enum ReferralsHistory {
  date,
  amount,
  description,
  balance,
}

enum Leaderboard {
  user,
  balance,
}

enum Quarter {
  q3,
  q2,
  q1,
  q4,
}

enum InputFieldType {
  textInput,
  phoneInput,
}

enum UserCategory {
  individual,
  corporateEntity;
}

enum FeatureType {
  uasRestriction,
  droneRush;

  static FeatureType fromString(String value) {
    switch (value) {
      case uasRestrictionValue:
        return FeatureType.uasRestriction;
      case droneRushValue:
        return FeatureType.droneRush;
      default:
        throw Exception('Unknown feature type: $value');
    }
  }
}
