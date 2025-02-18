// ignore_for_file: lines_longer_than_80_chars

part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.authenticating() = _Authenticating;

  const factory AuthState.emailVerificationSent({
    required String? email,
  }) = _EmailVerificationSent;

  const factory AuthState.emailNotVerified({
    required String? email,
  }) = _EmailNotVerified;

  const factory AuthState.authenticated() = _Authenticated;

  const factory AuthState.failedToCheckSkyTradeUser({
    required CheckSkyTradeUserFailure checkSkyTradeUserFailure,
  }) = _FailedToCheckSkyTradeUser;

  const factory AuthState.failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0() =
      _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0;

  const factory AuthState.failedToCreateSkyTradeUser({
    required CreateSkyTradeUserFailure createSkyTradeUserFailure,
  }) = _FailedToCreateSkyTradeUser;

  const factory AuthState.failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0() =
      _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0;

  const factory AuthState.failedToAuthenticateUserWithAuth0() =
      _FailedToAuthenticateUserWithAuth0;

  const factory AuthState.failedToAuthenticateAuth0UserWithSFA() =
      _FailedToAuthenticateAuth0UserWithSFA;
}
