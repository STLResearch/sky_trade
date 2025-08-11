// SPDX-License-Identifier: UNLICENSED
                            
part of 'wifi_permission_bloc.dart';

@freezed
class WifiPermissionState with _$WifiPermissionState {
  const factory WifiPermissionState.initial() = _Initial;

  const factory WifiPermissionState.requestingPermission() =
      _RequestingPermission;

  const factory WifiPermissionState.maybeGrantedPermission({
    required WifiPermissionEntity wifiPermissionEntity,
  }) = _MaybeGrantedPermission;

  const factory WifiPermissionState.cannotRequestPermission({
    required WifiPermissionFailure wifiPermissionFailure,
  }) = _CannotRequestPermission;
}
