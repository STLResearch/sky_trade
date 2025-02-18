part of 'auth_0_credentials_bloc.dart';

@freezed
class Auth0CredentialsEvent with _$Auth0CredentialsEvent {
  const factory Auth0CredentialsEvent.renewCredentials({
    required String? refreshToken,
  }) = _RenewCredentials;
}
