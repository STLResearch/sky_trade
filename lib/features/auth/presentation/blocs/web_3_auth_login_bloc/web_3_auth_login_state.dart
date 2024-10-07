part of 'web_3_auth_login_bloc.dart';

@freezed
class Web3AuthLoginState with _$Web3AuthLoginState {
  const factory Web3AuthLoginState.initial() = _Initial;

  const factory Web3AuthLoginState.loggingIn() = _LoggingIn;

  const factory Web3AuthLoginState.loggedIn({
    required Web3AuthUserEntity web3AuthUserEntity,
  }) = _LoggedIn;

  const factory Web3AuthLoginState.failedToLogIn({
    required Web3AuthAuthenticationFailure web3AuthAuthenticationFailure,
  }) = _FailedToLogIn;
}
