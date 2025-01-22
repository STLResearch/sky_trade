part of 'drone_flight_path_bloc.dart';

@freezed
class DroneFlightPathEvent with _$DroneFlightPathEvent {
  const factory DroneFlightPathEvent.getDroneFlightPathUpdatesFor({
    required String macAddress,
  }) = _GetDroneFlightPathUpdatesFor;
}
