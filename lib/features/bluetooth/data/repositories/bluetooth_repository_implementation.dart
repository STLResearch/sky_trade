import 'package:dartz/dartz.dart' show Either, Left, Right;
import 'package:flutter_blue_plus/flutter_blue_plus.dart'
    show BluetoothAdapterState, FlutterBluePlus;
import 'package:permission_handler/permission_handler.dart'
    show Permission, PermissionListActions, PermissionStatus;
import 'package:sky_ways/core/errors/failures/bluetooth_failure.dart';
import 'package:sky_ways/core/utils/clients/data_handler.dart';
import 'package:sky_ways/core/utils/enums/networking.dart' as enums
    show BluetoothAdapterState;
import 'package:sky_ways/features/bluetooth/domain/entities/bluetooth_entity.dart';
import 'package:sky_ways/features/bluetooth/domain/repositories/bluetooth_repository.dart';

final class BluetoothRepositoryImplementation
    with DataHandler
    implements BluetoothRepository {
  @override
  BluetoothAdapterStateEntity get bluetoothAdapterState =>
      BluetoothAdapterStateEntity(
        adapterState: _computeBluetoothAdapterStateEnum(
          FlutterBluePlus.adapterStateNow,
        ),
      );

  @override
  Stream<Either<BluetoothAdapterStateFailure, BluetoothAdapterStateEntity>>
      get bluetoothAdapterStateStream => transformData<
              BluetoothAdapterStateFailure,
              BluetoothAdapterState,
              BluetoothAdapterStateEntity>(
            sourceStream: () => FlutterBluePlus.adapterState,
            onData: (bluetoothAdapterState) => BluetoothAdapterStateEntity(
              adapterState: _computeBluetoothAdapterStateEnum(
                bluetoothAdapterState,
              ),
            ),
            onError: BluetoothAdapterStateFailure.new,
          );

  @override
  Future<Either<BluetoothPermissionsFailure, BluetoothPermissionsEntity>>
      requestBluetoothPermissions() async {
    final bluetoothPermissionsStatuses = await [
      Permission.bluetooth,
      Permission.bluetoothScan,
    ].request();

    final bluetoothPermissionsBlocked =
        bluetoothPermissionsStatuses.containsValue(
              PermissionStatus.permanentlyDenied,
            ) ||
            bluetoothPermissionsStatuses.containsValue(
              PermissionStatus.restricted,
            );

    final bluetoothPermissionsDenied =
        bluetoothPermissionsStatuses.containsValue(
      PermissionStatus.denied,
    );

    if (bluetoothPermissionsBlocked) {
      return Left(
        BluetoothPermissionsFailure(),
      );
    } else if (bluetoothPermissionsDenied) {
      return const Right(
        BluetoothPermissionsEntity(
          granted: false,
        ),
      );
    } else {
      return const Right(
        BluetoothPermissionsEntity(
          granted: true,
        ),
      );
    }
  }

  enums.BluetoothAdapterState _computeBluetoothAdapterStateEnum(
    BluetoothAdapterState bluetoothAdapterState,
  ) =>
      switch (bluetoothAdapterState) {
        BluetoothAdapterState.unknown => enums.BluetoothAdapterState.unknown,
        BluetoothAdapterState.unavailable =>
          enums.BluetoothAdapterState.unavailable,
        BluetoothAdapterState.unauthorized =>
          enums.BluetoothAdapterState.unauthorized,
        BluetoothAdapterState.turningOn =>
          enums.BluetoothAdapterState.turningOn,
        BluetoothAdapterState.on => enums.BluetoothAdapterState.on,
        BluetoothAdapterState.turningOff =>
          enums.BluetoothAdapterState.turningOff,
        BluetoothAdapterState.off => enums.BluetoothAdapterState.off,
      };
}
