// SPDX-License-Identifier: UNLICENSED
                            
part of 'auth_0_user_session_bloc.dart';

@freezed
class Auth0UserSessionState with _$Auth0UserSessionState {
  const factory Auth0UserSessionState.initial() = _Initial;

  const factory Auth0UserSessionState.checkingUserSession() =
      _CheckingUserSession;

  const factory Auth0UserSessionState.existingUserSession({
    required Auth0UserEntity auth0UserEntity,
  }) = _ExistingUserSession;

  const factory Auth0UserSessionState.nonExistentUserSession() =
      _NonExistentUserSession;
}
