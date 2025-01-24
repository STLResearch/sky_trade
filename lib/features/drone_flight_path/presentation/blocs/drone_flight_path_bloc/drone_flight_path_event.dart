part of 'drone_flight_path_bloc.dart';

@freezed
class DroneFlightPathEvent with _$DroneFlightPathEvent {
  const factory DroneFlightPathEvent.requestFlightPathFor({
    required String macAddress,
  }) = _RequestFlightPathFor;

  const factory DroneFlightPathEvent.flightPathGetting() = _FlightPathGetting;

  const factory DroneFlightPathEvent.flightPathGotten({
    required DroneFlightPathEntity droneFlightPathEntity,
  }) = _FlightPathGotten;

  const factory DroneFlightPathEvent.flightPathListeningStarted() =
      _FlightPathListeningStarted;
}
