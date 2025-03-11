// ignore_for_file: lines_longer_than_80_chars

part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticate() = _Authenticate;

  const factory AuthEvent.authenticateUserWithAuth0() =
      _AuthenticateUserWithAuth0;

  const factory AuthEvent.authenticateAuth0UserWithSFA({
    required String? email,
    required String idToken,
  }) = _AuthenticateAuth0UserWithSFA;

  const factory AuthEvent.checkSkyTradeUserExists() = _CheckSkyTradeUserExists;

  const factory AuthEvent.createSkyTradeUser() = _CreateSkyTradeUser;
}
