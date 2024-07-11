part of 'web_3_auth_register_bloc.dart';

@freezed
class Web3AuthRegisterState with _$Web3AuthRegisterState {
  const factory Web3AuthRegisterState.initial() = _Initial;

  const factory Web3AuthRegisterState.registering() = _Registering;

  const factory Web3AuthRegisterState.registered({
    required UserEntity userEntity,
  }) = _Registered;

  const factory Web3AuthRegisterState.failedToRegister({
    required Web3AuthAuthenticationFailure web3AuthAuthenticationFailure,
  }) = _FailedToRegister;
}
