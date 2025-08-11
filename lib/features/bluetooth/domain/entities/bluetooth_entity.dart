// SPDX-License-Identifier: UNLICENSED
                            
import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show BluetoothAdapterState;

final class BluetoothPermissionsEntity extends Equatable {
  const BluetoothPermissionsEntity({
    required this.granted,
  });

  final bool granted;

  @override
  List<Object?> get props => [
        granted,
      ];
}

final class BluetoothAdapterStateEntity extends Equatable {
  const BluetoothAdapterStateEntity({
    required this.adapterState,
  });

  final BluetoothAdapterState adapterState;

  @override
  List<Object?> get props => [
        adapterState,
      ];
}
