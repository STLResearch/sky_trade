part of 'delete_account_bloc.dart';

@freezed
class DeleteAccountState with _$DeleteAccountState {
  const factory DeleteAccountState.initial() = _Initial;

  const factory DeleteAccountState.deletingAccount() = _DeletingAccount;

  const factory DeleteAccountState.deletedAccount({
    required MessageEntity messageEntity,
  }) = _DeletedAccount;

  const factory DeleteAccountState.failedToDeleteAccount({
    required DeleteAccountFailure deleteAccountFailure,
  }) = _FailedToDeleteAccount;
}
