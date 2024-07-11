part of 'web_3_auth_register_bloc.dart';

@freezed
class Web3AuthRegisterEvent with _$Web3AuthRegisterEvent {
  const factory Web3AuthRegisterEvent.register({
    required AuthProvider provider,
    String? credential,
  }) = _Register;

  const factory Web3AuthRegisterEvent.registerSuccess({
    required UserEntity userEntity,
  }) = _RegisterSuccess;

  const factory Web3AuthRegisterEvent.registerFailure({
    required Web3AuthAuthenticationFailure web3AuthAuthenticationFailure,
  }) = _RegisterFailure;
}
