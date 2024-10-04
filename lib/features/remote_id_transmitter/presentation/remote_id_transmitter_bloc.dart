import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_id_entity.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/repositories/remote_id_receiver_repository.dart';
import 'package:sky_ways/features/remote_id_transmitter/data/repositories/remote_id_transmitter_repository_implementation.dart';
import 'package:sky_ways/features/remote_id_transmitter/domain/repositories/remote_id_transmitter_repository.dart';

part 'remote_id_transmitter_event.dart';
part 'remote_id_transmitter_state.dart';
part 'remote_id_transmitter_bloc.freezed.dart';

class RemoteIdTransmitterBloc
    extends Bloc<RemoteIdTransmitterEvent, RemoteIdTransmitterState> {
  RemoteIdTransmitterBloc()
      : remoteIdTransmitterRepository =
            RemoteIdTransmitterRepositoryImplementation(),
        super(const RemoteIdTransmitterState.initial()) {

    on<_StartTransmitter>((event, emit) {
      _startTransmitter(emit: emit);
    });

    on<_TransmitRemoteId>((event, emit) {
      _transmitRemoteID(
        operationType: event.operationType,
        remoteID: event.remoteID,
        emit: emit,
      );
    });

    on<_StopTransmitter>((event, emit) {
      _stopTransmitter(emit: emit);
    });
  }

  final RemoteIdTransmitterRepository remoteIdTransmitterRepository;

  void _startTransmitter({
    required Emitter<RemoteIdTransmitterState> emit,
  }) {
    remoteIdTransmitterRepository.startTransmitter();
    emit(const RemoteIdTransmitterState.active());
  }

  void _transmitRemoteID({
    required RemoteIdReceiverOperationType operationType,
    required RemoteIdEntity remoteID,
    required Emitter<RemoteIdTransmitterState> emit,
  }) {
    emit(const RemoteIdTransmitterState.transmitting());
    final DroneStatus droneStatus;

    switch (operationType) {
      case RemoteIdReceiverOperationType.add:
        droneStatus = DroneStatus.discovered;

      case RemoteIdReceiverOperationType.update:
        droneStatus = DroneStatus.changed;

      case RemoteIdReceiverOperationType.delete:
        droneStatus = DroneStatus.inactive;
    }

    remoteIdTransmitterRepository.transmitRemoteIdData(
      droneStatus,
      remoteID,
    );

    emit(const RemoteIdTransmitterState.active());
  }

  Future<void> _stopTransmitter({
    required Emitter<RemoteIdTransmitterState> emit,
  }) async {
    emit(const RemoteIdTransmitterState.stopping());
    remoteIdTransmitterRepository.stopTransmitter();
    emit(const RemoteIdTransmitterState.initial());
  }
}
