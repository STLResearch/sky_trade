// ignore_for_file: lines_longer_than_80_chars

part of 'auth_0_user_session_after_account_deletion_bloc.dart';

@freezed
class Auth0UserSessionAfterAccountDeletionState
    with _$Auth0UserSessionAfterAccountDeletionState {
  const factory Auth0UserSessionAfterAccountDeletionState.initial() = _Initial;

  const factory Auth0UserSessionAfterAccountDeletionState.existingAuth0Session() =
      _ExistingAuth0Session;

  const factory Auth0UserSessionAfterAccountDeletionState.nonExistentAuth0Session() =
      _NonExistentAuth0Session;
}
