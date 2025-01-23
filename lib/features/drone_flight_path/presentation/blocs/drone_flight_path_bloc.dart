//ignore_for_file: lines_longer_than_80_chars

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  })  : _droneFlightPathRepository = droneFlightPathRepository,
        super(const DroneFlightPathState.initial()) {
    on<_GetDroneFlightPathUpdatesFor>(_getDroneFlightPathUpdatesFor);
  }

  final DroneFlightPathRepository _droneFlightPathRepository;
  String? _bufferedData;
  ConnectionState? _connectionState;

  Future<void> _getDroneFlightPathUpdatesFor(
    _GetDroneFlightPathUpdatesFor event,
    Emitter<DroneFlightPathState> emit,
  ) async {
    emit(const DroneFlightPathState.gettingDroneFlightPathUpdates());

    if (_connectionState == null) {
      _bufferedData = event.macAddress;
      await _setupConnectionToDroneFlightPathUpdates(emit);
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

  Future<void> _setupConnectionToDroneFlightPathUpdates(
    Emitter<DroneFlightPathState> emit,
  ) async =>
      _droneFlightPathRepository.listenToDroneFlightPathUpdates(
        onDroneFlightPathReceived: (droneFlightPathEntity) {
          emit(
            DroneFlightPathState.gotDroneFlightPathUpdates(
              droneFlightPath: droneFlightPathEntity,
            ),
          );
          emit(const DroneFlightPathState.gettingDroneFlightPathUpdates());
        },
        onConnectionChanged: (connectionState) {
          _connectionState = connectionState;
          if (connectionState == ConnectionState.connected && _bufferedData != null) {
            _droneFlightPathRepository.getDroneFlightPathUpdatesFor(macAddress: _bufferedData!);
            _bufferedData = null;
          }
        },
      );

  void _stopDroneFlightPathUpdates() {
    _bufferedData = null;
    _connectionState = null;
    _droneFlightPathRepository.stopDroneFlightPathUpdates();
  }

  @override
  Future<void> close() {
    _stopDroneFlightPathUpdates();
    return super.close();
  }
}
