import 'dart:io' show Platform;

import 'package:dartz/dartz.dart' show Either;
import 'package:device_info_plus/device_info_plus.dart' show DeviceInfoPlugin;
import 'package:sky_trade/core/errors/failures/device_profile_failure.dart'
    show DeviceProfileFailure;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show androidValue, deviceNameKey, iosValue, osVersionKey;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_trade/core/utils/clients/data_handler.dart'
    show DataHandler;
import 'package:sky_trade/features/device_profile/data/data_sources/device_profile_local_data_source.dart'
    show DeviceUUIDLocalDataSource;
import 'package:sky_trade/features/device_profile/data/data_sources/device_profile_remote_data_source.dart'
    show DeviceUUIDRemoteDataSource;
import 'package:sky_trade/features/device_profile/domain/repositories/device_profile_repository.dart'
    show DeviceProfileRepository;
import 'package:uuid/data.dart' show V4Options;
import 'package:uuid/rng.dart' show CryptoRNG;
import 'package:uuid/uuid.dart' show Uuid;

final class DeviceUUIDRepositoryImplementation
    with DataHandler
    implements DeviceProfileRepository {
  const DeviceUUIDRepositoryImplementation({
    required DeviceUUIDLocalDataSource deviceUUIDLocalDataSource,
    required DeviceUUIDRemoteDataSource deviceUUIDRemoteDataSource,
  })  : _deviceUUIDLocalDataSource = deviceUUIDLocalDataSource,
        _deviceUUIDRemoteDataSource = deviceUUIDRemoteDataSource;

  final DeviceUUIDLocalDataSource _deviceUUIDLocalDataSource;
  final DeviceUUIDRemoteDataSource _deviceUUIDRemoteDataSource;

  @override
  Future<bool> checkDeviceUUIDExists() async =>
      _deviceUUIDLocalDataSource.checkDeviceUUIDExists();

  @override
  Future<void> generateAndSaveDeviceUUID() async {
    final deviceUUID = const Uuid().v4(
      config: V4Options(
        null,
        CryptoRNG(),
      ),
    );
    await _deviceUUIDLocalDataSource.saveDeviceUUIDToCache(
      deviceUUIDValue: deviceUUID,
    );
  }

  @override
  Future<Either<DeviceProfileFailure, int>> sendLatestDeviceMetadata() async =>
      handleData(
        dataSourceOperation: () async =>
            _deviceUUIDRemoteDataSource.sendDeviceMetadata(
          deviceMetadata: await _getLatestDeviceMetadata(),
        ),
        onSuccess: (success) => success,
        onFailure: (_) => DeviceProfileFailure(),
      );

  Future<Map<String, String>> _getLatestDeviceMetadata() async {
    final Map<String, String> deviceInfo;
    final deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final androidDeviceInfo = await deviceInfoPlugin.androidInfo;
      deviceInfo = {
        deviceNameKey: androidDeviceInfo.manufacturer +
            whiteSpace +
            androidDeviceInfo.model,
        osVersionKey:
            androidValue + whiteSpace + androidDeviceInfo.version.release,
      };
    } else {
      final iosDeviceInfo = await deviceInfoPlugin.iosInfo;
      deviceInfo = {
        deviceNameKey: iosDeviceInfo.modelName,
        osVersionKey: iosValue + whiteSpace + iosDeviceInfo.systemVersion,
      };
    }
    return deviceInfo;
  }
}
