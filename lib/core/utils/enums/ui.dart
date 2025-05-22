enum MapStyle {
  dark,
  satellite;
}

enum MenuItem {
  insights,
  referral,
  about,
  settings,
  help,
  logout,
}

enum ErrorReason {
  deletedSkyTradeUserWithExistingAuth0Session,
  sessionInitializationFailure,
  unknownNavigationRoute,
}

enum ReferralTab {
  theProgram,
  share,
  history,
  leaderboard,
}

enum Tips {
  share,
  registerAndClaim,
  earn,
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
