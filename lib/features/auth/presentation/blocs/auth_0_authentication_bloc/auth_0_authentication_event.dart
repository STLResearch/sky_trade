// SPDX-License-Identifier: UNLICENSED
                            
part of 'auth_0_authentication_bloc.dart';

@freezed
class Auth0AuthenticationEvent with _$Auth0AuthenticationEvent {
  const factory Auth0AuthenticationEvent.authenticate() = _Authenticate;
}
