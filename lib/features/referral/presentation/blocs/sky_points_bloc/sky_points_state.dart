// SPDX-License-Identifier: UNLICENSED
                            
part of 'sky_points_bloc.dart';

@freezed
class SkyPointsState with _$SkyPointsState {
  const factory SkyPointsState.initial() = _Initial;

  const factory SkyPointsState.gettingSkyPoints() = _GettingSkyPoints;

  const factory SkyPointsState.gotSkyPoints({
    required SkyPointsEntity skyPointsEntity,
  }) = _GotSkyPoints;

  const factory SkyPointsState.failedToGetSkyPoints({
    required SkyPointsFailure skyPointsFailure,
  }) = _FailedToGetSkyPoints;
}
