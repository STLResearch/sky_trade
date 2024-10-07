part of 'web_3_auth_user_session_bloc.dart';

@freezed
class Web3AuthUserSessionState with _$Web3AuthUserSessionState {
  const factory Web3AuthUserSessionState.initial() = _Initial;

  const factory Web3AuthUserSessionState.checkingUserSession() =
      _CheckingUserSession;

  const factory Web3AuthUserSessionState.existingUserSession() =
      _ExistingUserSession;

  const factory Web3AuthUserSessionState.nonExistentUserSession() =
      _NonExistentUserSession;
}
