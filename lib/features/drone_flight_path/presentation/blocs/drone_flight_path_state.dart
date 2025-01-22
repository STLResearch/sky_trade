part of 'drone_flight_path_bloc.dart';

@freezed
class DroneFlightPathState with _$DroneFlightPathState {
  const factory DroneFlightPathState.initial() = _Initial;

  const factory DroneFlightPathState.gettingDroneFlightPathUpdates() =
      _GettingDroneFlightPathUpdates;

  const factory DroneFlightPathState.gotDroneFlightPathUpdates({
    required DroneFlightPathEntity droneFlightPath,
  }) = _GotDroneFlightPathUpdates;

  const factory DroneFlightPathState.failedToGetDroneFlightPathUpdate() =
      _FailedToGetDroneFlightPathUpdate;
}
