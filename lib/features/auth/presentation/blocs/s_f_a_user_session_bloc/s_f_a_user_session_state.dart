part of 's_f_a_user_session_bloc.dart';

@freezed
class SFAUserSessionState with _$SFAUserSessionState {
  const factory SFAUserSessionState.initial() = _Initial;

  const factory SFAUserSessionState.checkingSession() = _CheckingSession;

  const factory SFAUserSessionState.sessionExist() = _SessionExist;

  const factory SFAUserSessionState.sessionNotExist() = _SessionNotExist;
}
