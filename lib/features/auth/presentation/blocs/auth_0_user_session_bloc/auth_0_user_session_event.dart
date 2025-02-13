part of 'auth_0_user_session_bloc.dart';

@freezed
class Auth0UserSessionEvent with _$Auth0UserSessionEvent {
  const factory Auth0UserSessionEvent.checkUserSession() = _CheckUserSession;
}
