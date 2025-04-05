part of 'auth_0_authentication_bloc.dart';

@freezed
class Auth0AuthenticationState with _$Auth0AuthenticationState {
  const factory Auth0AuthenticationState.initial() = _Initial;

  const factory Auth0AuthenticationState.authenticating() = _Authenticating;

  const factory Auth0AuthenticationState.authenticated({
    required Auth0UserEntity auth0UserEntity,
  }) = _Authenticated;

  const factory Auth0AuthenticationState.failedToAuthenticate({
    required Auth0AuthenticationFailure auth0AuthenticationFailure,
  }) = _FailedToAuthenticate;
}
