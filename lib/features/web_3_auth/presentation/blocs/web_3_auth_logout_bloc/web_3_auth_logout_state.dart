part of 'web_3_auth_logout_bloc.dart';

@freezed
class Web3AuthLogoutState with _$Web3AuthLogoutState {
  const factory Web3AuthLogoutState.initial() = _Initial;
  const factory Web3AuthLogoutState.loggingOut() = _LoggingOut;
  const factory Web3AuthLogoutState.loggedOut() = _LoggedOut;
  const factory Web3AuthLogoutState.failedToLogOut({
    required Web3AuthLogoutFailure failure,
  }) = _FailedToLogOut;
}
