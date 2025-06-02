part of 'location_permission_bloc.dart';

@freezed
class LocationPermissionEvent with _$LocationPermissionEvent {
  const factory LocationPermissionEvent.requestPermission() =
      _RequestPermission;

  const factory LocationPermissionEvent.openAppSettings() = _OpenAppSettings;
}
