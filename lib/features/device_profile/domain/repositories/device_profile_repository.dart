import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/device_profile_failure.dart'
    show DeviceProfileFailure;

abstract interface class DeviceProfileRepository {
  Future<bool> checkDeviceUUIDExists();

  Future<void> generateAndSaveDeviceUUID();

  Future<Either<DeviceProfileFailure, int>> sendLatestDeviceMetadata();
}
