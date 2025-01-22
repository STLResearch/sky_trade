//ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/drone_flight_path_failure.dart';
import 'package:sky_trade/core/utils/enums/networking.dart';
import 'package:sky_trade/features/drone_flight_path/domain/entities/drone_flight_path_entity.dart';
import 'package:sky_trade/features/drone_flight_path/domain/repositories/drone_flight_path_repository.dart';

part 'drone_flight_path_bloc.freezed.dart';

part 'drone_flight_path_event.dart';

part 'drone_flight_path_state.dart';

class DroneFlightPathBloc
    extends Bloc<DroneFlightPathEvent, DroneFlightPathState> {
  DroneFlightPathBloc({
    required DroneFlightPathRepository droneFlightPathRepository,
  }): _droneFlightPathRepository = droneFlightPathRepository,
        super(const DroneFlightPathState.initial()) {
    on<_GetDroneFlightPathUpdatesFor>(_getDroneFlightPathUpdatesFor);
  }

  final DroneFlightPathRepository _droneFlightPathRepository;
  late final StreamSubscription<Either<DroneFlightPathFailure, DroneFlightPathEntity>>? _droneFlightPathSubscription;
  String? _bufferedData;
  ConnectionState? _connectionState;

  Future<void> _getDroneFlightPathUpdatesFor(
    _GetDroneFlightPathUpdatesFor event,
    Emitter<DroneFlightPathState> emit,
  ) async {
    emit(const DroneFlightPathState.gettingDroneFlightPathUpdates());

    if (_connectionState == null) {
      _bufferedData = event.macAddress;
      await _setupDroneFlightPathUpdateConnection(emit);
    }

    if (_connectionState == ConnectionState.disconnected || _connectionState == ConnectionState.reconnecting) {
      _bufferedData = event.macAddress;
    }

    if (_connectionState == ConnectionState.connected) {
      _droneFlightPathRepository.getDroneFlightPathUpdatesFor(
        macAddress: event.macAddress,
      );
    }
  }

  Future<void> _setupDroneFlightPathUpdateConnection(
    Emitter<DroneFlightPathState> emit,
  ) async =>
      _droneFlightPathSubscription =
          (await _droneFlightPathRepository.listenToDroneFlightPathUpdates(
            onConnectionChanged: (connectionState) {
              _connectionState = connectionState;
              if (connectionState == ConnectionState.connected && _bufferedData != null) {
                _droneFlightPathRepository.getDroneFlightPathUpdatesFor(macAddress: _bufferedData!);
                _bufferedData = null;
              }
            },
          )).listen((droneFlightPathEntity) {
                droneFlightPathEntity.fold(
                      (droneFlightPathFailure) => emit(const DroneFlightPathState.failedToGetDroneFlightPathUpdate()),
                      (droneFlightPathData) => emit(
                        DroneFlightPathState.gotDroneFlightPathUpdates(
                          droneFlightPath: droneFlightPathData,
                        ),
                      ),
                );
                emit(const DroneFlightPathState.gettingDroneFlightPathUpdates());
          });

  void _stopDroneFlightPathUpdates() {
    _droneFlightPathSubscription?.cancel();
    _bufferedData = null;
    _connectionState = null;
    _droneFlightPathSubscription = null;
  }

  @override
  Future<void> close() {
    _stopDroneFlightPathUpdates();
    return super.close();
  }
}
