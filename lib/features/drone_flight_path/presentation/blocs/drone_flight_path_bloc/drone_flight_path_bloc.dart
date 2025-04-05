import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/drone_flight_path/domain/entities/drone_flight_path_entity.dart'
    show DroneFlightPathEntity;
import 'package:sky_trade/features/drone_flight_path/domain/repositories/drone_flight_path_repository.dart';

part 'drone_flight_path_bloc.freezed.dart';

part 'drone_flight_path_event.dart';

part 'drone_flight_path_state.dart';

class DroneFlightPathBloc
    extends Bloc<DroneFlightPathEvent, DroneFlightPathState> {
  DroneFlightPathBloc(
    DroneFlightPathRepository droneFlightPathRepository,
  )   : _droneFlightPathRepository = droneFlightPathRepository,
        super(
          const DroneFlightPathState.initial(),
        ) {
    on<_RequestFlightPathFor>(
      _requestFlightPathFor,
    );

    on<_FlightPathGetting>(
      _flightPathGetting,
    );

    on<_FlightPathGotten>(
      _flightPathGotten,
    );
  }

  @override
  Future<void> close() async {
    _stopFlightPathUpdates();

    return super.close();
  }

  final DroneFlightPathRepository _droneFlightPathRepository;

  String? _pendingEventData;

  ConnectionState? _connectionState;

  Future<void> _requestFlightPathFor(
    _RequestFlightPathFor event,
    Emitter<DroneFlightPathState> emit,
  ) async {
    add(
      const DroneFlightPathEvent.flightPathGetting(),
    );

    if (_connectionState == null) {
      _pendingEventData = event.macAddress;
      await _setupConnectionToDroneFlightPathUpdates(
        emit,
      );
    } else if (_connectionState == ConnectionState.connected) {
      _droneFlightPathRepository.requestFlightPathFor(
        macAddress: event.macAddress,
      );
    } else if (_connectionState == ConnectionState.disconnected ||
        _connectionState == ConnectionState.reconnecting) {
      _pendingEventData = event.macAddress;
    }
  }

  Future<void> _setupConnectionToDroneFlightPathUpdates(
    Emitter<DroneFlightPathState> emit,
  ) =>
      _droneFlightPathRepository.listenFlightPath(
        onFlightPathReceived: (droneFlightPathEntity) {
          add(
            const DroneFlightPathEvent.flightPathGetting(),
          );

          add(
            DroneFlightPathEvent.flightPathGotten(
              droneFlightPathEntity: droneFlightPathEntity,
            ),
          );
        },
        onConnectionChanged: (connectionState) {
          _connectionState = connectionState;

          if (connectionState == ConnectionState.connected &&
              _pendingEventData != null) {
            _droneFlightPathRepository.requestFlightPathFor(
              macAddress: _pendingEventData!,
            );
            _pendingEventData = null;
          }
        },
      );

  void _flightPathGetting(
    _FlightPathGetting event,
    Emitter<DroneFlightPathState> emit,
  ) =>
      emit(
        const DroneFlightPathState.gettingFlightPath(),
      );

  void _flightPathGotten(
    _FlightPathGotten event,
    Emitter<DroneFlightPathState> emit,
  ) =>
      emit(
        DroneFlightPathState.gotFlightPath(
          droneFlightPathEntity: event.droneFlightPathEntity,
        ),
      );

  void _stopFlightPathUpdates() {
    _pendingEventData = null;
    _connectionState = null;

    _droneFlightPathRepository.stopListeningFlightPath();
  }
}
