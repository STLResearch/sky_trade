// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/bluetooth_failure.dart'
    show BluetoothPermissionsFailure;
import 'package:sky_trade/features/bluetooth/domain/entities/bluetooth_entity.dart'
    show BluetoothPermissionsEntity;
import 'package:sky_trade/features/bluetooth/domain/repositories/bluetooth_repository.dart';

part 'bluetooth_permissions_event.dart';

part 'bluetooth_permissions_state.dart';

part 'bluetooth_permissions_bloc.freezed.dart';

class BluetoothPermissionsBloc
    extends Bloc<BluetoothPermissionsEvent, BluetoothPermissionsState> {
  BluetoothPermissionsBloc(
    BluetoothRepository bluetoothRepository,
  )   : _bluetoothRepository = bluetoothRepository,
        super(
          const BluetoothPermissionsState.initial(),
        ) {
    on<_RequestPermissions>(
      _requestPermissions,
    );
  }

  final BluetoothRepository _bluetoothRepository;

  Future<void> _requestPermissions(
    _RequestPermissions event,
    Emitter<BluetoothPermissionsState> emit,
  ) async {
    emit(
      const BluetoothPermissionsState.requestingPermissions(),
    );

    final result = await _bluetoothRepository.requestBluetoothPermissions();

    result.fold(
      (bluetoothPermissionsFailure) => emit(
        BluetoothPermissionsState.cannotRequestPermissions(
          bluetoothPermissionsFailure: bluetoothPermissionsFailure,
        ),
      ),
      (bluetoothPermissionsEntity) => emit(
        BluetoothPermissionsState.maybeGrantedPermissions(
          bluetoothPermissionsEntity: bluetoothPermissionsEntity,
        ),
      ),
    );
  }
}
