// ignore_for_file: sort_constructors_first
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dart_geohash/dart_geohash.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/u_a_s_receiver_failure.dart';
import 'package:sky_trade/features/u_a_s_receiver/domain/entities/remote_i_d_entity.dart';
import 'package:sky_trade/features/u_a_s_receiver/domain/repositories/u_a_s_receiver_repository.dart';

part 'u_a_s_receiver_bloc.freezed.dart';
part 'u_a_s_receiver_event.dart';
part 'u_a_s_receiver_state.dart';

class UASReceiverBloc extends Bloc<UASReceiverEvent, UASReceiverState> {

  final UasReceiverRepository _uasReceiverRepository;
  late final StreamSubscription<Either<UASReceiverFailure, Set<RemoteIDEntity>>>
  _remoteIDStreamSubscription;

  UASReceiverBloc(
    UasReceiverRepository uasReceiverRepository,
  )   : _uasReceiverRepository = uasReceiverRepository,
        super(const UASReceiverState.initial()) {
    on<_StartRemoteIDStream>(
      _startRemoteIDStream,
    );

    on<_EmitRemoteIDData>(
      _emitRemoteIDData,
    );

    on<_EmitUASReceiverFailure>(
      _emitRemoteIDFailure,
    );

    on<_NotifyGeoHashChange>(
      _notifyGeoHashChange,
    );

    on<_StopRemoteIDStream>(
      _stopRemoteIDStream,
    );
  }

  void _startRemoteIDStream(
    _StartRemoteIDStream event,
    Emitter<UASReceiverState> emit,
  ) {
    _remoteIDStreamSubscription = _uasReceiverRepository.remoteIDStream
        .listen((uasReceiverFailureOrRemoteIDData) {
          uasReceiverFailureOrRemoteIDData.fold(
                  (uasReceiverFailure) =>
                    add(
                      UASReceiverEvent.emitUASReceiverFailure(uasReceiverFailure: uasReceiverFailure),
                    ),
                  (remoteIDData) =>
                    add(
                      UASReceiverEvent.emitRemoteIDData(remoteIDEntities: remoteIDData),
                    ),
          );
    });
    emit(const UASReceiverState.startedRemoteIDStream());
  }

  void _emitRemoteIDData(
    _EmitRemoteIDData event,
    Emitter<UASReceiverState> emit,
  ) {
    emit(
      UASReceiverState.emittedRemoteIDData(
        remoteIDEntities: event.remoteIDEntities,
      ),
    );
  }

  void _emitRemoteIDFailure(
    _EmitUASReceiverFailure event,
    Emitter<UASReceiverState> emit,
  ) {
    emit(
      UASReceiverState.emittedUASReceiverFailure(
        uasReceiverFailure: event.uasReceiverFailure,
      ),
    );
  }

  void _notifyGeoHashChange(
    _NotifyGeoHashChange event,
    Emitter<UASReceiverState> emit,
  ) {
    _uasReceiverRepository.notifyGeoHashUpdated(
      event.userGeoHash,
      event.currentGeoHash,
    );
    emit(
      const UASReceiverState.notifiedGeoHashChange(),
    );
  }

  void _stopRemoteIDStream(
    _StopRemoteIDStream event,
    Emitter<UASReceiverState> emit,
  ) {
    _remoteIDStreamSubscription.cancel();
    emit(
        const UASReceiverState.stoppedRemoteIDStream(),
    );
  }
}
