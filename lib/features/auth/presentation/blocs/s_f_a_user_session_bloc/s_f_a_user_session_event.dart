// SPDX-License-Identifier: UNLICENSED
                            
part of 's_f_a_user_session_bloc.dart';

@freezed
class SFAUserSessionEvent with _$SFAUserSessionEvent {
  const factory SFAUserSessionEvent.checkSession() = _CheckSession;
}
