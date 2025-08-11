// SPDX-License-Identifier: UNLICENSED
                            
import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/bluetooth_failure.dart'
    show BluetoothAdapterStateFailure;
import 'package:sky_trade/features/bluetooth/domain/entities/bluetooth_entity.dart'
    show BluetoothAdapterStateEntity;
import 'package:sky_trade/features/bluetooth/domain/repositories/bluetooth_repository.dart';

part 'bluetooth_adapter_state_event.dart';

part 'bluetooth_adapter_state_state.dart';

part 'bluetooth_adapter_state_bloc.freezed.dart';

class BluetoothAdapterStateBloc
    extends Bloc<BluetoothAdapterStateEvent, BluetoothAdapterStateState> {
  BluetoothAdapterStateBloc(
    BluetoothRepository bluetoothRepository,
  )   : _bluetoothRepository = bluetoothRepository,
        super(
          const BluetoothAdapterStateState.initial(),
        ) {
    on<_ListenBluetoothAdapterState>(
      _listenBluetoothAdapterState,
    );

    on<_BluetoothAdapterStateGotten>(
      _bluetoothAdapterStateGotten,
    );

    on<_BluetoothAdapterStateNotGotten>(
      _bluetoothAdapterStateNotGotten,
    );
  }

  @override
  Future<void> close() async {
    await _cleanupStreamSubscription();

    return super.close();
  }

  final BluetoothRepository _bluetoothRepository;

  StreamSubscription<
          Either<BluetoothAdapterStateFailure, BluetoothAdapterStateEntity>>?
      _bluetoothAdapterStateStreamSubscription;

  Future<void> _listenBluetoothAdapterState(
    _ListenBluetoothAdapterState _,
    Emitter<BluetoothAdapterStateState> emit,
  ) async {
    await _cleanupStreamSubscription();

    emit(
      const BluetoothAdapterStateState.gettingBluetoothAdapterState(),
    );

    final result = _bluetoothRepository.bluetoothAdapterState;

    add(
      BluetoothAdapterStateEvent.bluetoothAdapterStateGotten(
        bluetoothAdapterStateEntity: result,
      ),
    );

    _bluetoothAdapterStateStreamSubscription =
        _bluetoothRepository.bluetoothAdapterStateStream.listen(
      (
        bluetoothAdapterStateFailureOrEntity,
      ) =>
          _listenBluetoothAdapterStateStream(
        bluetoothAdapterStateFailureOrEntity:
            bluetoothAdapterStateFailureOrEntity,
        emit: emit,
      ),
    );
  }

  void _listenBluetoothAdapterStateStream({
    required Either<BluetoothAdapterStateFailure, BluetoothAdapterStateEntity>
        bluetoothAdapterStateFailureOrEntity,
    required Emitter<BluetoothAdapterStateState> emit,
  }) =>
      bluetoothAdapterStateFailureOrEntity.fold(
        (bluetoothAdapterStateFailure) => add(
          BluetoothAdapterStateEvent.bluetoothAdapterStateNotGotten(
            bluetoothAdapterStateFailure: bluetoothAdapterStateFailure,
          ),
        ),
        (bluetoothAdapterStateEntity) => add(
          BluetoothAdapterStateEvent.bluetoothAdapterStateGotten(
            bluetoothAdapterStateEntity: bluetoothAdapterStateEntity,
          ),
        ),
      );

  void _bluetoothAdapterStateNotGotten(
    _BluetoothAdapterStateNotGotten event,
    Emitter<BluetoothAdapterStateState> emit,
  ) =>
      emit(
        BluetoothAdapterStateState.failedToGetBluetoothAdapterState(
          bluetoothAdapterStateFailure: event.bluetoothAdapterStateFailure,
        ),
      );

  void _bluetoothAdapterStateGotten(
    _BluetoothAdapterStateGotten event,
    Emitter<BluetoothAdapterStateState> emit,
  ) =>
      emit(
        BluetoothAdapterStateState.gotBluetoothAdapterState(
          bluetoothAdapterStateEntity: event.bluetoothAdapterStateEntity,
        ),
      );

  Future<void> _cleanupStreamSubscription() async {
    await _bluetoothAdapterStateStreamSubscription?.cancel();
    _bluetoothAdapterStateStreamSubscription = null;
  }
}
