// SPDX-License-Identifier: UNLICENSED
                            
import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/remote_i_d_receiver_failure.dart'
    show RemoteIDReceiverFailure;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';

part 'broadcast_remote_i_d_receiver_event.dart';

part 'broadcast_remote_i_d_receiver_state.dart';

part 'broadcast_remote_i_d_receiver_bloc.freezed.dart';

class BroadcastRemoteIDReceiverBloc extends Bloc<BroadcastRemoteIDReceiverEvent,
    BroadcastRemoteIDReceiverState> {
  BroadcastRemoteIDReceiverBloc(
    RemoteIDReceiverRepository remoteIDReceiverRepository,
  )   : _remoteIDReceiverRepository = remoteIDReceiverRepository,
        super(
          const BroadcastRemoteIDReceiverState.initial(),
        ) {
    on<_ListenRemoteIDs>(
      _listenRemoteIDs,
    );

    on<_RemoteIDsGetting>(
      _remoteIDsGetting,
    );

    on<_RemoteIDsGotten>(
      _remoteIDsGotten,
    );

    on<_RemoteIDsNotGotten>(
      _remoteIDsNotGotten,
    );
  }

  @override
  Future<void> close() async {
    await _cleanupStreamSubscription();

    return super.close();
  }

  final RemoteIDReceiverRepository _remoteIDReceiverRepository;

  StreamSubscription<Either<RemoteIDReceiverFailure, List<RemoteIDEntity>>>?
      _remoteIDReceiverStreamSubscription;

  Future<void> _listenRemoteIDs(
    _ListenRemoteIDs _,
    Emitter<BroadcastRemoteIDReceiverState> emit,
  ) async {
    await _cleanupStreamSubscription();

    add(
      const BroadcastRemoteIDReceiverEvent.remoteIDsGetting(),
    );

    _remoteIDReceiverStreamSubscription ??=
        _remoteIDReceiverRepository.broadcastRemoteIDs.listen(
      (
        remoteIDReceiverFailureOrRemoteIDEntities,
      ) =>
          _listenRemoteIDsReceiverStream(
        remoteIDsReceiverFailureOrRemoteIDEntities:
            remoteIDReceiverFailureOrRemoteIDEntities,
        emit: emit,
      ),
    );
  }

  void _listenRemoteIDsReceiverStream({
    required Either<RemoteIDReceiverFailure, List<RemoteIDEntity>>
        remoteIDsReceiverFailureOrRemoteIDEntities,
    required Emitter<BroadcastRemoteIDReceiverState> emit,
  }) =>
      remoteIDsReceiverFailureOrRemoteIDEntities.fold(
        (remoteIDReceiverFailure) {
          add(
            const BroadcastRemoteIDReceiverEvent.remoteIDsGetting(),
          );

          add(
            BroadcastRemoteIDReceiverEvent.remoteIDsNotGotten(
              remoteIDReceiverFailure: remoteIDReceiverFailure,
            ),
          );
        },
        (remoteIDEntities) {
          add(
            const BroadcastRemoteIDReceiverEvent.remoteIDsGetting(),
          );

          add(
            BroadcastRemoteIDReceiverEvent.remoteIDsGotten(
              remoteIDEntities: remoteIDEntities,
            ),
          );
        },
      );

  void _remoteIDsNotGotten(
    _RemoteIDsNotGotten event,
    Emitter<BroadcastRemoteIDReceiverState> emit,
  ) =>
      emit(
        BroadcastRemoteIDReceiverState.failedToGetRemoteIDs(
          remoteIDReceiverFailure: event.remoteIDReceiverFailure,
        ),
      );

  void _remoteIDsGetting(
    _RemoteIDsGetting event,
    Emitter<BroadcastRemoteIDReceiverState> emit,
  ) =>
      emit(
        const BroadcastRemoteIDReceiverState.gettingRemoteIDs(),
      );

  void _remoteIDsGotten(
    _RemoteIDsGotten event,
    Emitter<BroadcastRemoteIDReceiverState> emit,
  ) =>
      emit(
        BroadcastRemoteIDReceiverState.gotRemoteIDs(
          remoteIDEntities: event.remoteIDEntities,
        ),
      );

  Future<void> _cleanupStreamSubscription() async {
    await _remoteIDReceiverStreamSubscription?.cancel();
    _remoteIDReceiverStreamSubscription = null;
  }
}
