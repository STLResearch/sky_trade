part of 'web_3_auth_user_session_bloc.dart';

@freezed
class Web3AuthUserSessionEvent with _$Web3AuthUserSessionEvent {
  const factory Web3AuthUserSessionEvent.checkUserSession() = _CheckUserSession;
}
