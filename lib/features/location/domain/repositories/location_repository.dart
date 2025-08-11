// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/location_failure.dart';
import 'package:sky_trade/features/location/domain/entities/location_entity.dart';

abstract interface class LocationRepository {
  Future<LocationPositionEntity> get locationPosition;

  Stream<Either<LocationPositionFailure, LocationPositionEntity>>
      get locationPositionStream;

  Future<LocationServiceStatusEntity> get locationServiceStatus;

  Stream<Either<LocationServiceStatusFailure, LocationServiceStatusEntity>>
      get locationServiceStatusStream;

  Future<Either<LocationPermissionFailure, LocationPermissionEntity>>
      requestLocationPermission();

  Future<void> openAppSettings();

  Future<void> openLocationSettings();
}
