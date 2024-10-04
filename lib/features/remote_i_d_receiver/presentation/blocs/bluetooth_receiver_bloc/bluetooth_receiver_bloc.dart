import 'dart:async' show StreamSubscription;
import 'dart:developer';

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/remote_i_d_receiver_failure.dart'
    show BluetoothReceiverFailure;
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_id_entity.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';

part 'bluetooth_receiver_event.dart';

part 'bluetooth_receiver_state.dart';

part 'bluetooth_receiver_bloc.freezed.dart';

class BluetoothReceiverBloc
    extends Bloc<BluetoothReceiverEvent, BluetoothReceiverState> {
  BluetoothReceiverBloc(
    RemoteIDReceiverRepository<BluetoothReceiverFailure>
        remoteIDReceiverRepository,
  )   : _remoteIDReceiverRepository = remoteIDReceiverRepository,
        super(
          const BluetoothReceiverState.initial(),
        ) {
    on<_ListenRemoteIDs>(
      _listenRemoteIDs,
    );

    on<_RemoteIDsGotten>(
      _remoteIDsGotten,
    );

    on<_RemoteIDsNotGotten>(
      _remoteIDsNotGotten,
    );

    on<_StopListeningRemoteIDs>(
      _stopListeningRemoteIDs,
    );
  }

  final _remoteIDEntities = <RemoteIdEntity>{};
  final RemoteIDReceiverRepository<BluetoothReceiverFailure>
      _remoteIDReceiverRepository;
  StreamSubscription<
          Either<BluetoothReceiverFailure,
              Map<RemoteIDReceiverOperationType, RemoteIdEntity>>>?
      _bluetoothReceiverStreamSubscription;

  Future<void> _listenRemoteIDs(
    _ListenRemoteIDs _,
    Emitter<BluetoothReceiverState> emit,
  ) async {

    await _cancelListeningRemoteIDs(emit: emit);
    emit(const BluetoothReceiverState.gettingRemoteIDs());

    _bluetoothReceiverStreamSubscription = _remoteIDReceiverRepository
        .remoteIDStream
        .listen(
          (streamDataOrFailure) => _listenBluetoothReceiverStream(
            streamDataOrFailure: streamDataOrFailure,
          ),
        );
  }

  void _listenBluetoothReceiverStream({
    required Either<BluetoothReceiverFailure,
        Map<RemoteIDReceiverOperationType, RemoteIdEntity>>
    streamDataOrFailure,
  }) {
    streamDataOrFailure.fold(
      (bluetoothReceiverFailure) => BluetoothReceiverEvent.remoteIDsNotGotten(
        bluetoothReceiverFailure: bluetoothReceiverFailure,
      ),
      (streamData) {
        final streamDataMap = streamData.entries.first;
        switch (streamDataMap.key) {
          case RemoteIDReceiverOperationType.add:
            _remoteIDEntities.add(streamDataMap.value);

          case RemoteIDReceiverOperationType.update:
            _remoteIDEntities
              ..remove(streamDataMap.value)
              ..add(streamDataMap.value);

          case RemoteIDReceiverOperationType.delete:
            break;
        }
        add(
          BluetoothReceiverEvent.remoteIDsGotten(
            remoteIDEntities: _remoteIDEntities,
          ),
        );
      },
    );
  }

  void _remoteIDsNotGotten(
    _RemoteIDsNotGotten event,
    Emitter<BluetoothReceiverState> emit,
  ) =>
      emit(
        BluetoothReceiverState.failedToGetRemoteIDs(
          bluetoothReceiverFailure: event.bluetoothReceiverFailure,
        ),
      );

  void _remoteIDsGotten(
    _RemoteIDsGotten event,
    Emitter<BluetoothReceiverState> emit,
  ) =>
      emit(
        BluetoothReceiverState.gotRemoteIDs(
          remoteIDEntities: event.remoteIDEntities,
        ),
      );

  Future<void> _stopListeningRemoteIDs(
    _StopListeningRemoteIDs _,
    Emitter<BluetoothReceiverState> emit,
  ) =>
      _cancelListeningRemoteIDs(
        emit: emit,
      );

  Future<void> _cancelListeningRemoteIDs({
    required Emitter<BluetoothReceiverState> emit,
  }) async {
    await _bluetoothReceiverStreamSubscription?.cancel();

    if (_bluetoothReceiverStreamSubscription != null) {
      _bluetoothReceiverStreamSubscription = null;
    }

    emit(
      const BluetoothReceiverState.initial(),
    );
  }
}
