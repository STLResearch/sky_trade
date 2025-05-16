part of 'update_manager_bloc.dart';

@freezed
class UpdateManagerEvent with _$UpdateManagerEvent {
  const factory UpdateManagerEvent.checkMinimumAppVersion() =
      _GetMinimumMobileAppVersion;
}
