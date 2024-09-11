import 'dart:io' show Platform;

import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:flutter/services.dart' show EventChannel;
import 'package:permission_handler/permission_handler.dart'
    show Permission, PermissionActions, PermissionStatusGetters;
import 'package:sky_ways/core/errors/failures/wifi_failure.dart';
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        wifiAdapterStateBroadcastReceiverChannelName,
        wifiAdapterStateDisabledEnumValue,
        wifiAdapterStateDisablingEnumValue,
        wifiAdapterStateEnabledEnumValue,
        wifiAdapterStateEnablingEnumValue;
import 'package:sky_ways/core/utils/clients/data_handler.dart';
import 'package:sky_ways/core/utils/enums/networking.dart'
    show WifiAdapterState;
import 'package:sky_ways/features/wifi/domain/entities/wifi_entity.dart';
import 'package:sky_ways/features/wifi/domain/repositories/wifi_repository.dart';

final class WifiRepositoryImplementation
    with DataHandler
    implements WifiRepository {
  @override
  Stream<Either<WifiAdapterStateFailure, WifiAdapterStateEntity>>
      get wifiAdapterStateStream => switch (Platform.isAndroid) {
            true => transformData<WifiAdapterStateFailure, dynamic,
                  WifiAdapterStateEntity>(
                sourceStream: () => const EventChannel(
                  wifiAdapterStateBroadcastReceiverChannelName,
                ).receiveBroadcastStream(),
                onData: (unprocessedWifiAdapterState) => WifiAdapterStateEntity(
                  adapterState: switch (unprocessedWifiAdapterState) {
                    wifiAdapterStateEnablingEnumValue =>
                      WifiAdapterState.enabling,
                    wifiAdapterStateEnabledEnumValue =>
                      WifiAdapterState.enabled,
                    wifiAdapterStateDisablingEnumValue =>
                      WifiAdapterState.disabling,
                    wifiAdapterStateDisabledEnumValue =>
                      WifiAdapterState.disabled,
                    _ => WifiAdapterState.unknown,
                  },
                ),
                onError: WifiAdapterStateFailure.new,
              ),
            false => Stream.value(
                Left(
                  WifiAdapterStateFailure(),
                ),
              ),
          };

  @override
  Future<Either<WifiPermissionFailure, WifiPermissionEntity>>
      requestWifiPermission() async {
    if (!Platform.isAndroid) {
      return Left(
        WifiPermissionFailure(),
      );
    }

    final nearbyWifiDevicesPermissionStatus =
        await Permission.nearbyWifiDevices.request();

    if (nearbyWifiDevicesPermissionStatus.isPermanentlyDenied ||
        nearbyWifiDevicesPermissionStatus.isRestricted) {
      return Left(
        WifiPermissionFailure(),
      );
    } else if (nearbyWifiDevicesPermissionStatus.isDenied) {
      return const Right(
        WifiPermissionEntity(
          granted: false,
        ),
      );
    } else {
      return const Right(
        WifiPermissionEntity(
          granted: true,
        ),
      );
    }
  }
}
