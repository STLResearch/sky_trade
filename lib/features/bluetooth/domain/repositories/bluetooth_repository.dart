import 'package:dartz/dartz.dart' show Either;
import 'package:sky_trade/core/errors/failures/bluetooth_failure.dart';
import 'package:sky_trade/features/bluetooth/domain/entities/bluetooth_entity.dart';

abstract interface class BluetoothRepository {
  BluetoothAdapterStateEntity get bluetoothAdapterState;

  Stream<Either<BluetoothAdapterStateFailure, BluetoothAdapterStateEntity>>
      get bluetoothAdapterStateStream;

  Future<Either<BluetoothPermissionsFailure, BluetoothPermissionsEntity>>
      requestBluetoothPermissions();
}
