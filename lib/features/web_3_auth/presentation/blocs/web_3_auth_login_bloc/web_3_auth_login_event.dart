part of 'web_3_auth_login_bloc.dart';

@freezed
class Web3AuthLoginEvent with _$Web3AuthLoginEvent {
  const factory Web3AuthLoginEvent.login({
    required AuthProvider provider,
    String? credential,
  }) = _Login;
}
