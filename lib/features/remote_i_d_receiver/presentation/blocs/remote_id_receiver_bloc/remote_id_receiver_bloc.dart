import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/remote_i_d_receiver_failure.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_id_entity.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/repositories/remote_id_receiver_repository.dart';

part 'remote_id_receiver_bloc.freezed.dart';
part 'remote_id_receiver_event.dart';
part 'remote_id_receiver_state.dart';

class RemoteIdReceiverBloc
    extends Bloc<RemoteIdReceiverEvent, RemoteIdReceiverState> {
  RemoteIdReceiverBloc(
    RemoteIdReceiverRepository<RemoteIdReceiverFailure>
        remoteIdReceiverRepository,
  )   : _remoteIdReceiverRepository = remoteIdReceiverRepository,
        super(const RemoteIdReceiverState.initial()) {
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

  final _remoteIdEntities = <RemoteIdEntity>{};
  final RemoteIdReceiverRepository<RemoteIdReceiverFailure>
      _remoteIdReceiverRepository;
  StreamSubscription<
          Either<RemoteIdReceiverFailure,
              Map<RemoteIdReceiverOperationType, RemoteIdEntity>>>?
      _remoteIdReceiverStreamSubscription;

  Future<void> _listenRemoteIDs(
    _ListenRemoteIDs event,
    Emitter<RemoteIdReceiverState> emit,
  ) async {
    await _cancelListeningRemoteIDs(
      technologyType: event.technologyType,
      emit: emit,
    );
    emit(const RemoteIdReceiverState.gettingRemoteIDs());

    _remoteIdReceiverStreamSubscription = _remoteIdReceiverRepository
        .getRemoteIdStream(technologyType: event.technologyType)
        .listen(
          (streamDataOrFailure) => _listenRemoteIdReceiverStream(
            streamDataOrFailure: streamDataOrFailure,
          ),
        );
  }

  void _listenRemoteIdReceiverStream({
    required Either<RemoteIdReceiverFailure,
            Map<RemoteIdReceiverOperationType, RemoteIdEntity>>
        streamDataOrFailure,
  }) {
    streamDataOrFailure.fold(
      (remoteIdReceiverFailure) => RemoteIdReceiverEvent.remoteIDsNotGotten(
        remoteIdReceiverFailure: remoteIdReceiverFailure,
      ),
      (streamData) {
        final streamDataMap = streamData.entries.first;
        switch (streamDataMap.key) {
          case RemoteIdReceiverOperationType.add:
            _remoteIdEntities.add(streamDataMap.value);

          case RemoteIdReceiverOperationType.update:
            _remoteIdEntities
              ..remove(streamDataMap.value)
              ..add(streamDataMap.value);

          case RemoteIdReceiverOperationType.delete:
            break;
        }
        add(
          RemoteIdReceiverEvent.remoteIDsGotten(
            remoteIdEntities: _remoteIdEntities,
          ),
        );
      },
    );
  }

  void _remoteIDsNotGotten(
    _RemoteIDsNotGotten event,
    Emitter<RemoteIdReceiverState> emit,
  ) =>
    emit(
      RemoteIdReceiverState.failedToGetRemoteIDs(
        remoteIdReceiverFailure: event.remoteIdReceiverFailure,
      ),
    );


  void _remoteIDsGotten(
    _RemoteIDsGotten event,
    Emitter<RemoteIdReceiverState> emit,
  ) =>
      emit(
        RemoteIdReceiverState.gotRemoteIDs(
          remoteIdEntities: event.remoteIdEntities,
        ),
      );

  Future<void> _stopListeningRemoteIDs(
    _StopListeningRemoteIDs event,
    Emitter<RemoteIdReceiverState> emit,
  ) =>
      _cancelListeningRemoteIDs(
        technologyType: event.technologyType,
        emit: emit,
      );

  Future<void> _cancelListeningRemoteIDs({
    required UsedTechnologies technologyType,
    required Emitter<RemoteIdReceiverState> emit,
  }) async {

    await _remoteIdReceiverStreamSubscription?.cancel();

    if (_remoteIdReceiverStreamSubscription != null) {
      _remoteIdReceiverStreamSubscription = null;
    }

    emit(
      const RemoteIdReceiverState.initial(),
    );

  }
}