// SPDX-License-Identifier: UNLICENSED
                            
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
    required bool isFreshSFAAuthentication,
  }) = _AuthenticateAuth0UserWithSFA;

  const factory AuthEvent.reAuthenticateFailedSFAUserAuthenticationWithAuth0({
    required String? email,
    required String idToken,
  }) = _ReAuthenticateFailedSFAUserAuthenticationWithAuth0;

  const factory AuthEvent.checkSkyTradeUserExists() = _CheckSkyTradeUserExists;
}
