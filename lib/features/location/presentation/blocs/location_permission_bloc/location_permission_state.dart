// SPDX-License-Identifier: UNLICENSED
                            
part of 'location_permission_bloc.dart';

@freezed
class LocationPermissionState with _$LocationPermissionState {
  const factory LocationPermissionState.initial() = _Initial;

  const factory LocationPermissionState.requestingPermission() =
      _RequestingPermission;

  const factory LocationPermissionState.maybeGrantedPermission({
    required LocationPermissionEntity locationPermissionEntity,
  }) = _MaybeGrantedPermission;

  const factory LocationPermissionState.cannotRequestPermission({
    required LocationPermissionFailure locationPermissionFailure,
  }) = _CannotRequestPermission;
}
