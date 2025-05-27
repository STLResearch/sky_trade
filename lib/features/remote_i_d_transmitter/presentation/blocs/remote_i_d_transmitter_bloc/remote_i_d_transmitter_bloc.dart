import 'dart:async' show StreamController, StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/numbers/networking.dart'
    show nilDotNil;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/core/utils/typedefs/networking.dart'
    show RemoteIDSetDeviceCoordinatesTuple;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart'
    show DeviceEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/repositories/remote_i_d_transmitter_repository.dart';

part 'remote_i_d_transmitter_bloc.freezed.dart';
part 'remote_i_d_transmitter_event.dart';
part 'remote_i_d_transmitter_state.dart';

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

    on<_RemoteIDTransmitting>(
      _remoteIDTransmitting,
    );

    on<_RemoteIDTransmitted>(
      _remoteIDTransmitted,
    );

    on<_TransmitterStarted>(
      _transmitterStarted,
    );

    on<_TransmitRemoteID>(
      _transmitRemoteID,
    );
  }

  @override
  Future<void> close() async {
    await _cleanupTransmitter(
      andStopListening: true,
    );

    return super.close();
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
    if (_startingTransmitter || _startedTransmitter) return;

    emit(
      const RemoteIDTransmitterState.startingTransmitter(),
    );

    _startingTransmitter = true;

    _remoteIDStreamController ??=
        StreamController<RemoteIDSetDeviceCoordinatesTuple>();
    _remoteIDStreamSubscription ??= _remoteIDStreamController?.stream.listen(
      (remoteIDSetDeviceCoordinatesTuple) {
        _remoteIDTransmitterRepository.transmit(
          remoteIDEntities: remoteIDSetDeviceCoordinatesTuple.remoteIDEntities,
          deviceEntity: remoteIDSetDeviceCoordinatesTuple.deviceEntity,
        );
      },
    );

    _remoteIDStreamSubscription?.pause();

    await _remoteIDTransmitterRepository.startTransmitter(
      onRemoteIDSent: () {
        add(
          const RemoteIDTransmitterEvent.remoteIDTransmitting(),
        );

        add(
          const RemoteIDTransmitterEvent.remoteIDTransmitted(),
        );
      },
      onConnectionChanged: (connectionState) async {
        if (connectionState == ConnectionState.connected) {
          if (!_startedTransmitter) {
            add(
              const RemoteIDTransmitterEvent.transmitterStarted(),
            );

            _startedTransmitter = true;
            _startingTransmitter = false;
          }

          if (_remoteIDStreamSubscription?.isPaused ?? false) {
            _remoteIDStreamSubscription?.resume();
          }
        } else if (connectionState == ConnectionState.destroyed) {
          await _cleanupTransmitter(
            andStopListening: false,
          );
        }
      },
    );
  }

  void _remoteIDTransmitting(
    _RemoteIDTransmitting event,
    Emitter<RemoteIDTransmitterState> emit,
  ) =>
      emit(
        const RemoteIDTransmitterState.transmittingRemoteID(),
      );

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

  Future<void> _cleanupTransmitter({
    required bool andStopListening,
  }) async {
    await Future.wait<dynamic>([
      _remoteIDStreamController?.close() ?? Future.value(),
      _remoteIDStreamSubscription?.cancel() ?? Future.value(),
    ]);

    _remoteIDStreamController = null;
    _remoteIDStreamSubscription = null;

    _startingTransmitter = false;
    _startedTransmitter = false;

    if (!andStopListening) return;

    _remoteIDTransmitterRepository.stopTransmitter();
  }
}
