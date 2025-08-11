// SPDX-License-Identifier: UNLICENSED
                            
part of 'wifi_permission_bloc.dart';

@freezed
class WifiPermissionEvent with _$WifiPermissionEvent {
  const factory WifiPermissionEvent.requestPermission() = _RequestPermission;
}
