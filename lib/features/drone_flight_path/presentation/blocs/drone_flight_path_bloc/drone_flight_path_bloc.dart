import 'dart:async' show StreamController, StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString;
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

    on<_FlightPathListeningStarted>(
      _flightPathListeningStarted,
    );
  }

  @override
  Future<void> close() async {
    await _cleanupFlightPath(
      andStopListening: true,
    );

    return super.close();
  }

  final DroneFlightPathRepository _droneFlightPathRepository;

  bool _establishingListeningFlightPath = false;

  bool _establishedListeningFlightPath = false;

  bool _startedListeningFlightPath = false;

  StreamController<String>? _macAddressStreamController;
  StreamSubscription<String>? _macAddressStreamSubscription;

  String _currentMacAddress = emptyString;

  Future<void> _requestFlightPathFor(
    _RequestFlightPathFor event,
    Emitter<DroneFlightPathState> emit,
  ) async {
    if (!_establishingListeningFlightPath) {
      emit(
        const DroneFlightPathState.establishingListeningFlightPath(),
      );

      _establishingListeningFlightPath = true;
    }

    _macAddressStreamController ??= StreamController<String>();
    _macAddressStreamSubscription ??=
        _macAddressStreamController?.stream.listen(
      (macAddress) {
        if (macAddress != _currentMacAddress) {
          _droneFlightPathRepository.requestFlightPathFor(
            macAddress: macAddress,
          );

          _currentMacAddress = macAddress;
        }
      },
    );

    if (!_establishedListeningFlightPath) {
      _macAddressStreamSubscription?.pause();
    }

    if (!_establishedListeningFlightPath) {
      await _droneFlightPathRepository.listenFlightPath(
        onFlightPathReceived: (droneFlightPathEntity) {
          // Only add these events if the mac address from
          // the droneFlightPathEntity and the _currentMacAddress
          // is the same
          add(
            const DroneFlightPathEvent.flightPathGetting(),
          );

          add(
            DroneFlightPathEvent.flightPathGotten(
              droneFlightPathEntity: droneFlightPathEntity,
            ),
          );
        },
        onConnectionChanged: (connectionState) async {
          if (connectionState == ConnectionState.connected) {
            if (!_startedListeningFlightPath) {
              add(
                const DroneFlightPathEvent.flightPathListeningStarted(),
              );

              _startedListeningFlightPath = true;
            }

            if (_macAddressStreamSubscription?.isPaused ?? false) {
              _macAddressStreamSubscription?.resume();
            }
          } else if (connectionState == ConnectionState.destroyed) {
            await _cleanupFlightPath(
              andStopListening: false,
            );
          }
        },
      );

      _establishedListeningFlightPath = true;
    }

    _macAddressStreamController?.add(
      event.macAddress,
    );
  }

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

  void _flightPathListeningStarted(
    _FlightPathListeningStarted event,
    Emitter<DroneFlightPathState> emit,
  ) =>
      emit(
        const DroneFlightPathState.startedListeningFlightPath(),
      );

  Future<void> _cleanupFlightPath({
    required bool andStopListening,
  }) async {
    await Future.wait<dynamic>([
      _macAddressStreamController?.close() ?? Future.value(),
      _macAddressStreamSubscription?.cancel() ?? Future.value(),
    ]);

    _macAddressStreamController = null;
    _macAddressStreamSubscription = null;

    _establishingListeningFlightPath = false;
    _establishedListeningFlightPath = false;
    _startedListeningFlightPath = false;

    if (!andStopListening) return;

    _droneFlightPathRepository.stopListeningFlightPath();
  }
}
