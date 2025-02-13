part of 's_f_a_authentication_bloc.dart';

@freezed
class SFAAuthenticationState with _$SFAAuthenticationState {
  const factory SFAAuthenticationState.initial() = _Initial;

  const factory SFAAuthenticationState.authenticating() = _Authenticating;

  const factory SFAAuthenticationState.authenticated({
    required SFAUserEntity sFAUserEntity,
  }) = _Authenticated;

  const factory SFAAuthenticationState.failedToAuthenticate({
    required SFAAuthenticationFailure sFAAuthenticationFailure,
  }) = _FailedToAuthenticate;
}
