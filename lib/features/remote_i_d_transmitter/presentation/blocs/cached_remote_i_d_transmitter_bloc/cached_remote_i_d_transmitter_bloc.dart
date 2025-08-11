// SPDX-License-Identifier: UNLICENSED
                            
import 'dart:async' show StreamController, StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show GeolocatedRemoteIDCollectionEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/repositories/remote_i_d_transmitter_repository.dart';

part 'cached_remote_i_d_transmitter_event.dart';

part 'cached_remote_i_d_transmitter_state.dart';

part 'cached_remote_i_d_transmitter_bloc.freezed.dart';

class CachedRemoteIDTransmitterBloc extends Bloc<CachedRemoteIDTransmitterEvent,
    CachedRemoteIDTransmitterState> {
  CachedRemoteIDTransmitterBloc(
    RemoteIDTransmitterRepository remoteIDTransmitterRepository,
  )   : _remoteIDTransmitterRepository = remoteIDTransmitterRepository,
        super(
          const CachedRemoteIDTransmitterState.initial(),
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

  StreamController<List<GeolocatedRemoteIDCollectionEntity>>?
      _remoteIDStreamController;
  StreamSubscription<List<GeolocatedRemoteIDCollectionEntity>>?
      _remoteIDStreamSubscription;

  Future<void> _startTransmitter(
    _StartTransmitter event,
    Emitter<CachedRemoteIDTransmitterState> emit,
  ) async {
    if (_startingTransmitter || _startedTransmitter) return;

    emit(
      const CachedRemoteIDTransmitterState.startingTransmitter(),
    );

    _startingTransmitter = true;

    _remoteIDStreamController ??=
        StreamController<List<GeolocatedRemoteIDCollectionEntity>>();
    _remoteIDStreamSubscription ??= _remoteIDStreamController?.stream.listen(
      (geolocatedRemoteIDCollectionEntities) {
        _remoteIDTransmitterRepository.transmitGeolocatedRemoteIDCollections(
          geolocatedRemoteIDCollectionEntities:
              geolocatedRemoteIDCollectionEntities,
        );
      },
    );

    _remoteIDStreamSubscription?.pause();

    await _remoteIDTransmitterRepository.startTransmitter(
      onRemoteIDSent: () {
        add(
          const CachedRemoteIDTransmitterEvent.remoteIDTransmitting(),
        );

        add(
          const CachedRemoteIDTransmitterEvent.remoteIDTransmitted(),
        );
      },
      onConnectionChanged: (connectionState) async {
        if (connectionState == ConnectionState.connected) {
          if (!_startedTransmitter) {
            add(
              const CachedRemoteIDTransmitterEvent.transmitterStarted(),
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
    Emitter<CachedRemoteIDTransmitterState> emit,
  ) =>
      emit(
        const CachedRemoteIDTransmitterState.transmittingRemoteID(),
      );

  void _remoteIDTransmitted(
    _RemoteIDTransmitted event,
    Emitter<CachedRemoteIDTransmitterState> emit,
  ) =>
      emit(
        const CachedRemoteIDTransmitterState.transmittedRemoteID(),
      );

  void _transmitterStarted(
    _TransmitterStarted event,
    Emitter<CachedRemoteIDTransmitterState> emit,
  ) =>
      emit(
        const CachedRemoteIDTransmitterState.startedTransmitter(),
      );

  void _transmitRemoteID(
    _TransmitRemoteID event,
    Emitter<CachedRemoteIDTransmitterState> emit,
  ) {
    add(
      const CachedRemoteIDTransmitterEvent.remoteIDTransmitting(),
    );

    _remoteIDStreamController?.add(
      event.geolocatedRemoteIDCollectionEntities,
    );
  }

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
