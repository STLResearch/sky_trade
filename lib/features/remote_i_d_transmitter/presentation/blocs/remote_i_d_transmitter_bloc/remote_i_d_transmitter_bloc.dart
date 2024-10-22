import 'dart:async' show StreamController, StreamSubscription;
import 'dart:typed_data' show Uint8List;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/resources/numbers/networking.dart' show nilDotNil;
import 'package:sky_ways/core/utils/enums/networking.dart' show ConnectionState;
import 'package:sky_ways/core/utils/typedefs/networking.dart'
    show RemoteIDSetDeviceCoordinatesTuple;
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_ways/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart'
    show DeviceEntity;
import 'package:sky_ways/features/remote_i_d_transmitter/domain/repositories/remote_i_d_transmitter_repository.dart';

part 'remote_i_d_transmitter_event.dart';

part 'remote_i_d_transmitter_state.dart';

part 'remote_i_d_transmitter_bloc.freezed.dart';

class RemoteIDTransmitterBloc
    extends Bloc<RemoteIDTransmitterEvent, RemoteIDTransmitterState> {
  RemoteIDTransmitterBloc(
    RemoteIDTransmitterRepository remoteIDTransmitterRepository,
  )   : _remoteIDTransmitterRepository = remoteIDTransmitterRepository,
        super(
          const RemoteIDTransmitterState.initial(),
        ) {
    on<_StartTransmitter>(
      _startTransmitter,
    );

    on<_RemoteIDTransmitted>(
      _remoteIDTransmitted,
    );

    on<_TransmitterStarted>(
      _transmitterStarted,
    );

    on<_TransmitterStopped>(
      _transmitterStopped,
    );

    on<_TransmitRemoteID>(
      _transmitRemoteID,
    );

    on<_StopTransmitter>(
      _stopTransmitter,
    );
  }

  final RemoteIDTransmitterRepository _remoteIDTransmitterRepository;

  bool _startingTransmitter = false;

  bool _startedTransmitter = false;

  StreamController<RemoteIDSetDeviceCoordinatesTuple>?
      _remoteIDStreamController;
  StreamSubscription<RemoteIDSetDeviceCoordinatesTuple>?
      _remoteIDStreamSubscription;

  Future<void> _startTransmitter(
    _StartTransmitter event,
    Emitter<RemoteIDTransmitterState> emit,
  ) async {
    if (_startingTransmitter) return;

    emit(
      const RemoteIDTransmitterState.startingTransmitter(),
    );

    _startingTransmitter = true;

    await _remoteIDTransmitterRepository.startTransmitter(
      onRemoteIDSent: () => add(
        const RemoteIDTransmitterEvent.remoteIDTransmitted(),
      ),
      onConnectionChanged: (connectionState) async {
        if (connectionState == ConnectionState.connected) {
          if (!_startedTransmitter) {
            add(
              const RemoteIDTransmitterEvent.transmitterStarted(),
            );

            _startedTransmitter = true;
          }

          _remoteIDStreamController ??=
              StreamController<RemoteIDSetDeviceCoordinatesTuple>();
          _remoteIDStreamSubscription ??=
              _remoteIDStreamController?.stream.listen(
            (remoteIDSetDeviceCoordinatesTuple) {
              for (final remoteIDEntity
                  in remoteIDSetDeviceCoordinatesTuple.remoteIDEntities) {
                _remoteIDTransmitterRepository.transmit(
                  remoteIDEntity: remoteIDEntity,
                  deviceEntity: remoteIDSetDeviceCoordinatesTuple.deviceEntity,
                  rawData: Uint8List.fromList(
                    [],
                  ),
                );
              }
            },
          );
        } else if (connectionState == ConnectionState.disconnected ||
            connectionState == ConnectionState.connectionError ||
            connectionState == ConnectionState.connectionTimeout ||
            connectionState == ConnectionState.error) {
          // Introduce a disconnected reason to know if disconnection was
          // clean or unclean. Some inherent issues may happen until we
          // implement this

          await _cancelListeningRemoteID();

          add(
            const RemoteIDTransmitterEvent.transmitterStopped(),
          );
        }
      },
    );
  }

  void _remoteIDTransmitted(
    _RemoteIDTransmitted event,
    Emitter<RemoteIDTransmitterState> emit,
  ) =>
      emit(
        const RemoteIDTransmitterState.transmittedRemoteID(),
      );

  void _transmitterStarted(
    _TransmitterStarted event,
    Emitter<RemoteIDTransmitterState> emit,
  ) =>
      emit(
        const RemoteIDTransmitterState.startedTransmitter(),
      );

  void _transmitterStopped(
    _TransmitterStopped event,
    Emitter<RemoteIDTransmitterState> emit,
  ) =>
      emit(
        const RemoteIDTransmitterState.stoppedTransmitter(),
      );

  void _transmitRemoteID(
    _TransmitRemoteID event,
    Emitter<RemoteIDTransmitterState> emit,
  ) =>
      _remoteIDStreamController?.add(
        (
          remoteIDEntities: event.remoteIDEntities,
          deviceEntity: DeviceEntity(
            latitude: event.deviceLatitude ?? nilDotNil,
            longitude: event.deviceLongitude ?? nilDotNil,
          ),
        ),
      );

  Future<void> _stopTransmitter(
    _StopTransmitter event,
    Emitter<RemoteIDTransmitterState> emit,
  ) async {
    await _cancelListeningRemoteID();

    _remoteIDTransmitterRepository.stopTransmitter();

    emit(
      const RemoteIDTransmitterState.initial(),
    );
  }

  Future<void> _cancelListeningRemoteID() async {
    await Future.wait<dynamic>([
      _remoteIDStreamController?.close() ?? Future.value(),
      _remoteIDStreamSubscription?.cancel() ?? Future.value(),
    ]);

    _remoteIDStreamController = null;
    _remoteIDStreamSubscription = null;

    _startingTransmitter = false;
    _startedTransmitter = false;
  }
}
