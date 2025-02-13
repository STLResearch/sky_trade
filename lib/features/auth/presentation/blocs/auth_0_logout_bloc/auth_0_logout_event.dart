part of 'auth_0_logout_bloc.dart';

@freezed
class Auth0LogoutEvent with _$Auth0LogoutEvent {
  const factory Auth0LogoutEvent.logout() = _Logout;
}
