import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_ways/core/utils/enums/local.dart'
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
