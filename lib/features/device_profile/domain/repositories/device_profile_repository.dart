// SPDX-License-Identifier: UNLICENSED
                            
import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/device_profile_failure.dart'
    show DeviceMetadataFailure;
import 'package:sky_trade/features/device_profile/domain/entities/device_profile_entity.dart';

abstract interface class DeviceProfileRepository {
  Future<bool> checkDeviceUUIDExists();

  Future<void> generateAndCacheDeviceUUID();

  Future<Either<DeviceMetadataFailure, DeviceMetadataEntity>>
      sendDeviceMetadata();
}
