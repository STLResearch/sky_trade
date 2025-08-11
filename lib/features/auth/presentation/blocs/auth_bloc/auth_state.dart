// SPDX-License-Identifier: UNLICENSED
                            
// ignore_for_file: lines_longer_than_80_chars

part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.authenticating() = _Authenticating;

  const factory AuthState.emailVerificationSent({
    required String? email,
  }) = _EmailVerificationSent;

  const factory AuthState.unverifiedAuth0UserExists({
    required String? email,
  }) = _UnverifiedAuth0UserExists;

  const factory AuthState.authenticated() = _Authenticated;

  const factory AuthState.failedToCheckSkyTradeUser({
    required CheckSkyTradeUserFailure checkSkyTradeUserFailure,
  }) = _FailedToCheckSkyTradeUser;

  const factory AuthState.failedToAuthenticateUserWithAuth0() =
      _FailedToAuthenticateUserWithAuth0;

  const factory AuthState.sFAUserShouldLogout({
    required String? email,
  }) = _SFAUserShouldLogout;
}
