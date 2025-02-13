part of 's_f_a_authentication_bloc.dart';

@freezed
class SFAAuthenticationEvent with _$SFAAuthenticationEvent {
  const factory SFAAuthenticationEvent.authenticate({
    required String? email,
    required String idToken,
  }) = _Authenticate;
}
