part of 'drone_rush_zones_bloc.dart';

@freezed
class DroneRushZonesState with _$DroneRushZonesState {
  const factory DroneRushZonesState.initial() = _Initial;

  const factory DroneRushZonesState.gettingLatestDroneRushZone() =
      _GettingDroneRushZone;

  const factory DroneRushZonesState.gettingOngoingDroneRushZones() =
      _GettingOngoingDroneRushZones;

  const factory DroneRushZonesState.noLatestDroneRushZone() =
      _NoLatestDroneRushZone;

  const factory DroneRushZonesState.noOngoingDroneRushZone() =
      _NoOngoingDroneRushZone;

  const factory DroneRushZonesState.gotOngoingDroneRushZones({
    required List<DroneRushZoneEntity> droneRushZoneEntities,
  }) = _GotOngoingDroneRushZones;

  const factory DroneRushZonesState.failedToGetLatestDroneRushZone({
    required DroneRushZoneFailure droneRushZoneFailure,
  }) = _FailedToGetLatestDroneRushZone;

  const factory DroneRushZonesState.failedToGetOngoingDroneRushZones({
    required DroneRushZoneFailure droneRushZoneFailure,
  }) = _FailedToGetOngoingDroneRushZones;
}
