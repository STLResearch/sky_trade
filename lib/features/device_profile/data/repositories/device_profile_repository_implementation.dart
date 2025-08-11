// SPDX-License-Identifier: UNLICENSED
                            
import 'dart:io' show Platform;

import 'package:dartz/dartz.dart' show Either;
import 'package:device_info_plus/device_info_plus.dart' show DeviceInfoPlugin;
import 'package:sky_trade/core/errors/exceptions/device_profile_exception.dart';
import 'package:sky_trade/core/errors/failures/device_profile_failure.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show androidValue, deviceNameKey, iosValue, osVersionKey;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show whiteSpace;
import 'package:sky_trade/core/utils/clients/data_handler.dart';
import 'package:sky_trade/features/device_profile/data/data_sources/device_profile_local_data_source.dart'
    show DeviceProfileLocalDataSource;
import 'package:sky_trade/features/device_profile/data/data_sources/device_profile_remote_data_source.dart'
    show DeviceProfileRemoteDataSource;
import 'package:sky_trade/features/device_profile/domain/entities/device_profile_entity.dart';
import 'package:sky_trade/features/device_profile/domain/repositories/device_profile_repository.dart';

final class DeviceProfileRepositoryImplementation
    with DataHandler
    implements DeviceProfileRepository {
  const DeviceProfileRepositoryImplementation({
    required DeviceInfoPlugin deviceInfoPlugin,
    required DeviceProfileLocalDataSource deviceProfileLocalDataSource,
    required DeviceProfileRemoteDataSource deviceProfileRemoteDataSource,
  })  : _deviceInfoPlugin = deviceInfoPlugin,
        _deviceProfileLocalDataSource = deviceProfileLocalDataSource,
        _deviceProfileRemoteDataSource = deviceProfileRemoteDataSource;

  final DeviceInfoPlugin _deviceInfoPlugin;

  final DeviceProfileLocalDataSource _deviceProfileLocalDataSource;

  final DeviceProfileRemoteDataSource _deviceProfileRemoteDataSource;

  @override
  Future<bool> checkDeviceUUIDExists() =>
      _deviceProfileLocalDataSource.checkDeviceUUIDExists();

  @override
  Future<void> generateAndCacheDeviceUUID() =>
      _deviceProfileLocalDataSource.generateAndCacheDeviceUUID();

  @override
  Future<Either<DeviceMetadataFailure, DeviceMetadataEntity>>
      sendDeviceMetadata() =>
          handleData<DeviceMetadataFailure, DeviceMetadataEntity>(
            dataSourceOperation: () async {
              final metadata = await _deviceMetadata;

              final data =
                  await _deviceProfileRemoteDataSource.sendDeviceMetadata(
                metadata: metadata,
              );

              return DeviceMetadataEntity(
                data: data,
              );
            },
            onSuccess: (deviceMetadataEntity) => deviceMetadataEntity,
            onFailure: (e) => switch (e is DeviceMetadataException) {
              true when e is DeviceMetadataFailedToSendException =>
                DeviceMetadataFailedToSendFailure(),
              _ => DeviceMetadataUnknownFailure(),
            },
          );

  Future<Map<String, String>> get _deviceMetadata async {
    final deviceInfo = <String, String>{};

    if (Platform.isAndroid) {
      final androidDeviceInfo = await _deviceInfoPlugin.androidInfo;

      deviceInfo[deviceNameKey] =
          androidDeviceInfo.manufacturer + whiteSpace + androidDeviceInfo.model;

      deviceInfo[osVersionKey] =
          androidValue + whiteSpace + androidDeviceInfo.version.release;
    } else if (Platform.isIOS) {
      final iosDeviceInfo = await _deviceInfoPlugin.iosInfo;

      deviceInfo[deviceNameKey] = iosDeviceInfo.modelName;

      deviceInfo[osVersionKey] =
          iosValue + whiteSpace + iosDeviceInfo.systemVersion;
    }

    return deviceInfo;
  }
}
