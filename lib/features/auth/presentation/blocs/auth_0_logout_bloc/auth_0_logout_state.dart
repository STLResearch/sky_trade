part of 'auth_0_logout_bloc.dart';

@freezed
class Auth0LogoutState with _$Auth0LogoutState {
  const factory Auth0LogoutState.initial() = _Initial;

  const factory Auth0LogoutState.loggingOut() = _LoggingOut;

  const factory Auth0LogoutState.loggedOut() = _LoggedOut;

  const factory Auth0LogoutState.failedToLogOut({
    required Auth0LogoutFailure auth0LogoutFailure,
  }) = _FailedToLogOut;
}
