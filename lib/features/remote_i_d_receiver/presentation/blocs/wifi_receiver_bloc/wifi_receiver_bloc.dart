import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/remote_i_d_receiver_failure.dart'
    show WifiReceiverFailure;
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_id_entity.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';

part 'wifi_receiver_event.dart';

part 'wifi_receiver_state.dart';

part 'wifi_receiver_bloc.freezed.dart';

class WifiReceiverBloc extends Bloc<WifiReceiverEvent, WifiReceiverState> {
  WifiReceiverBloc(
    RemoteIDReceiverRepository<WifiReceiverFailure> remoteIDReceiverRepository,
  )   : _remoteIDReceiverRepository = remoteIDReceiverRepository,
        super(
          const WifiReceiverState.initial(),
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

  final RemoteIDReceiverRepository<WifiReceiverFailure>
      _remoteIDReceiverRepository;

  StreamSubscription<Either<WifiReceiverFailure, Set<RemoteIdEntity>>>?
      _wifiReceiverStreamSubscription;

  Future<void> _listenRemoteIDs(
    _ListenRemoteIDs _,
    Emitter<WifiReceiverState> emit,
  ) async {
    await _cancelListeningRemoteIDs(
      emit: emit,
    );

    emit(
      const WifiReceiverState.gettingRemoteIDs(),
    );

    // _wifiReceiverStreamSubscription =
    //     _remoteIDReceiverRepository.remoteIDStream.listen(
    //   (
    //     wifiReceiverFailureOrRemoteIDEntities,
    //   ) =>
    //       _listenWifiReceiverStream(
    //     wifiReceiverFailureOrRemoteIDEntities:
    //         wifiReceiverFailureOrRemoteIDEntities,
    //   ),
    // );
  }

  void _listenWifiReceiverStream({
    required Either<WifiReceiverFailure, Set<RemoteIdEntity>>
        wifiReceiverFailureOrRemoteIDEntities,
  }) =>
      wifiReceiverFailureOrRemoteIDEntities.fold(
        (wifiReceiverFailure) => add(
          WifiReceiverEvent.remoteIDsNotGotten(
            wifiReceiverFailure: wifiReceiverFailure,
          ),
        ),
        (remoteIDEntities) => add(
          WifiReceiverEvent.remoteIDsGotten(
            remoteIDEntities: remoteIDEntities,
          ),
        ),
      );

  void _remoteIDsNotGotten(
    _RemoteIDsNotGotten event,
    Emitter<WifiReceiverState> emit,
  ) =>
      emit(
        WifiReceiverState.failedToGetRemoteIDs(
          wifiReceiverFailure: event.wifiReceiverFailure,
        ),
      );

  void _remoteIDsGotten(
    _RemoteIDsGotten event,
    Emitter<WifiReceiverState> emit,
  ) =>
      emit(
        WifiReceiverState.gotRemoteIDs(
          remoteIDEntities: event.remoteIDEntities,
        ),
      );

  Future<void> _stopListeningRemoteIDs(
    _StopListeningRemoteIDs _,
    Emitter<WifiReceiverState> emit,
  ) =>
      _cancelListeningRemoteIDs(
        emit: emit,
      );

  Future<void> _cancelListeningRemoteIDs({
    required Emitter<WifiReceiverState> emit,
  }) async {
    await _wifiReceiverStreamSubscription?.cancel();

    if (_wifiReceiverStreamSubscription != null) {
      _wifiReceiverStreamSubscription = null;
    }

    emit(
      const WifiReceiverState.initial(),
    );
  }
}
