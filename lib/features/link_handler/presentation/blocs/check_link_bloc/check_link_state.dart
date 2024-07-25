part of 'check_link_bloc.dart';

@freezed
class CheckLinkState with _$CheckLinkState {
  const factory CheckLinkState.initial() = _Initial;

  const factory CheckLinkState.checking() = _Checking;

  const factory CheckLinkState.checked({
    required LinkEntity linkEntity,
  }) = _Checked;

  const factory CheckLinkState.failedToCheck({
    required CheckLinkFailure checkLinkFailure,
  }) = _FailedToCheck;
}
