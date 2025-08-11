// SPDX-License-Identifier: UNLICENSED
                            
part of 'sky_points_bloc.dart';

@freezed
class SkyPointsEvent with _$SkyPointsEvent {
  const factory SkyPointsEvent.getSkyPoints() = _GetSkyPoints;
}
