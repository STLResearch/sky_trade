part of 'drone_flight_path_bloc.dart';

@freezed
class DroneFlightPathState with _$DroneFlightPathState {
  const factory DroneFlightPathState.initial() = _Initial;

  const factory DroneFlightPathState.gettingFlightPath() = _GettingFlightPath;

  const factory DroneFlightPathState.gotFlightPath({
    required DroneFlightPathEntity droneFlightPathEntity,
  }) = _GotFlightPath;
}
