part of 'update_manager_bloc.dart';

@freezed
class UpdateManagerState with _$UpdateManagerState{
  const factory UpdateManagerState.initial() = _Initial;

  const factory UpdateManagerState.checkingMinimumMoblieAppVersion() =
      _CheckingMinimumMobileAppVersion;

  const factory UpdateManagerState.checkedMinimumMobileAppVersion({
    required UpdateManagerEntity updateManagerEntity,
  }) = _CheckedMinimumMobileAppVersion;

  const factory UpdateManagerState.failedToCheckMinimumAppVersion({
    required UpdateManagerFailure updateManagerFailure,
  }) = _FailedToCheckMinimumMobileAppVersion;
}
