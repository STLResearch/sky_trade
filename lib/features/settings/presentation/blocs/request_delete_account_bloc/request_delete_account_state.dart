part of 'request_delete_account_bloc.dart';

@freezed
class RequestDeleteAccountState with _$RequestDeleteAccountState {
  const factory RequestDeleteAccountState.initial() = _Initial;

  const factory RequestDeleteAccountState.sendingOtp() = _SendingOtp;

  const factory RequestDeleteAccountState.sentOtp({
    required MessageEntity messageEntity,
  }) = _SentOtp;

  const factory RequestDeleteAccountState.failedToSendOtp({
    required RequestDeleteAccountFailure requestDeleteAccountFailure,
  }) = _FailedToSendOtp;
}
