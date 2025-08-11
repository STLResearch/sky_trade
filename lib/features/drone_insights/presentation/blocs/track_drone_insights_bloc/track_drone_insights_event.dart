// SPDX-License-Identifier: UNLICENSED
                            
part of 'track_drone_insights_bloc.dart';

@freezed
class TrackDroneInsightsEvent with _$TrackDroneInsightsEvent {
  const factory TrackDroneInsightsEvent.trackInsights() = _TrackInsights;
}
