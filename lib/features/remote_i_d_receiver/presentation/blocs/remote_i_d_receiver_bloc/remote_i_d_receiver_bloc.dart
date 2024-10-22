import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/remote_i_d_receiver_failure.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_ways/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart'
    show RemoteIDReceiverRepository;

part 'remote_i_d_receiver_event.dart';

part 'remote_i_d_receiver_state.dart';

part 'remote_i_d_receiver_bloc.freezed.dart';

class RemoteIDReceiverBloc
    extends Bloc<RemoteIDReceiverEvent, RemoteIDReceiverState> {
  RemoteIDReceiverBloc(
    RemoteIDReceiverRepository remoteIDReceiverRepository,
  )   : _remoteIDReceiverRepository = remoteIDReceiverRepository,
        super(
          const RemoteIDReceiverState.initial(),
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

  final RemoteIDReceiverRepository _remoteIDReceiverRepository;

  StreamSubscription<Either<RemoteIDReceiverFailure, Set<RemoteIDEntity>>>?
      _remoteIDReceiverStreamSubscription;

  Future<void> _listenRemoteIDs(
    _ListenRemoteIDs _,
    Emitter<RemoteIDReceiverState> emit,
  ) async {
    await _cancelListeningRemoteIDs(
      emit: emit,
    );

    emit(
      const RemoteIDReceiverState.gettingRemoteIDs(),
    );

    _remoteIDReceiverStreamSubscription ??=
        _remoteIDReceiverRepository.remoteIDStream.listen(
      (
        remoteIDReceiverFailureOrRemoteIDEntities,
      ) =>
          _listenRemoteIDReceiverStream(
        remoteIDReceiverFailureOrRemoteIDEntities:
            remoteIDReceiverFailureOrRemoteIDEntities,
        emit: emit,
      ),
    );
  }

  void _listenRemoteIDReceiverStream({
    required Either<RemoteIDReceiverFailure, Set<RemoteIDEntity>>
        remoteIDReceiverFailureOrRemoteIDEntities,
    required Emitter<RemoteIDReceiverState> emit,
  }) =>
      remoteIDReceiverFailureOrRemoteIDEntities.fold(
        (remoteIDReceiverFailure) => add(
          RemoteIDReceiverEvent.remoteIDsNotGotten(
            remoteIDReceiverFailure: remoteIDReceiverFailure,
          ),
        ),
        (remoteIDEntities) => add(
          RemoteIDReceiverEvent.remoteIDsGotten(
            remoteIDEntities: remoteIDEntities,
          ),
        ),
      );

  void _remoteIDsNotGotten(
    _RemoteIDsNotGotten event,
    Emitter<RemoteIDReceiverState> emit,
  ) =>
      emit(
        RemoteIDReceiverState.failedToGetRemoteIDs(
          remoteIDReceiverFailure: event.remoteIDReceiverFailure,
        ),
      );

  void _remoteIDsGotten(
    _RemoteIDsGotten event,
    Emitter<RemoteIDReceiverState> emit,
  ) =>
      emit(
        RemoteIDReceiverState.gotRemoteIDs(
          remoteIDEntities: event.remoteIDEntities,
        ),
      );

  Future<void> _stopListeningRemoteIDs(
    _StopListeningRemoteIDs _,
    Emitter<RemoteIDReceiverState> emit,
  ) =>
      _cancelListeningRemoteIDs(
        emit: emit,
      );

  Future<void> _cancelListeningRemoteIDs({
    required Emitter<RemoteIDReceiverState> emit,
  }) async {
    await _remoteIDReceiverStreamSubscription?.cancel();

    if (_remoteIDReceiverStreamSubscription != null) {
      _remoteIDReceiverStreamSubscription = null;
    }

    emit(
      const RemoteIDReceiverState.initial(),
    );
  }
}
