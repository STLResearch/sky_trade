// SPDX-License-Identifier: UNLICENSED
                            
part of 'auth_0_credentials_bloc.dart';

@freezed
class Auth0CredentialsState with _$Auth0CredentialsState {
  const factory Auth0CredentialsState.initial() = _Initial;

  const factory Auth0CredentialsState.renewingCredentials() =
      _RenewingCredentials;

  const factory Auth0CredentialsState.renewedCredentials() =
      _RenewedCredentials;

  const factory Auth0CredentialsState.failedToRenewCredentials() =
      _FailedToRenewCredentials;
}
