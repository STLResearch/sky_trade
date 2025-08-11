// SPDX-License-Identifier: UNLICENSED
                            
part of 'drone_rush_zones_bloc.dart';

@freezed
class DroneRushZonesEvent with _$DroneRushZonesEvent {
  const factory DroneRushZonesEvent.listenDroneRushZones() =
      _ListenDroneRushZones;

  const factory DroneRushZonesEvent.getLatestDroneRushZone() =
      _GetLatestDroneRushZone;

  const factory DroneRushZonesEvent.latestDroneRushZoneGotten({
    required DroneRushZoneEntity droneRushZoneEntity,
  }) = _LatestDroneRushZoneGotten;

  const factory DroneRushZonesEvent.ongoingDroneRushZoneGotten({
    required DateTime startTime,
    required DateTime endTime,
  }) = _OngoingDroneRushZoneGotten;
}
