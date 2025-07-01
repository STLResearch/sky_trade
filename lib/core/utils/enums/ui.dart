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
