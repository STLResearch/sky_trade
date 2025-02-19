// ignore_for_file: lines_longer_than_80_chars

part of 'auth_0_user_session_after_account_deletion_bloc.dart';

@freezed
class Auth0UserSessionAfterAccountDeletionEvent
    with _$Auth0UserSessionAfterAccountDeletionEvent {
  const factory Auth0UserSessionAfterAccountDeletionEvent.checkAuth0SessionExisting() =
      _CheckAuth0SessionExisting;

  const factory Auth0UserSessionAfterAccountDeletionEvent.auth0SessionExisting() =
      _Auth0SessionExisting;

  const factory Auth0UserSessionAfterAccountDeletionEvent.auth0SessionNonExistent() =
      _Auth0SessionNonExistent;
}
