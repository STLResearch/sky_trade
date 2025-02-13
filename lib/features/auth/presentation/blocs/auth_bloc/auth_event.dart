// ignore_for_file: lines_longer_than_80_chars

part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticate() = _Authenticate;

  const factory AuthEvent.authenticateUserWithAuth0() =
      _AuthenticateUserWithAuth0;

  const factory AuthEvent.authenticateUserWithSFA({
    required String? email,
    required String idToken,
  }) = _AuthenticateUserWithSFA;

  const factory AuthEvent.checkSkyTradeUserExists() = _CheckSkyTradeUserExists;

  const factory AuthEvent.logoutFailedSkyTradeUserCheckOperationFromAuth0({
    required CheckSkyTradeUserFailure checkSkyTradeUserFailure,
  }) = _LogoutFailedSkyTradeUserCheckOperationFromAuth0;

  const factory AuthEvent.createSkyTradeUser() = _CreateSkyTradeUser;

  const factory AuthEvent.logoutFailedSkyTradeUserCreateOperationFromAuth0({
    required CreateSkyTradeUserFailure createSkyTradeUserFailure,
  }) = _LogoutFailedSkyTradeUserCreateOperationFromAuth0;
}
