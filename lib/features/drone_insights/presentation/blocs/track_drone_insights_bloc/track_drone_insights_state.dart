part of 'track_drone_insights_bloc.dart';

@freezed
class TrackDroneInsightsState with _$TrackDroneInsightsState {
  const factory TrackDroneInsightsState.initial() = _Initial;

  const factory TrackDroneInsightsState.trackingInsights() = _TrackingInsights;

  const factory TrackDroneInsightsState.trackedInsights({
    required TrackedDroneInsightsEntity trackedDroneInsightsEntity,
  }) = _TrackedInsights;

  const factory TrackDroneInsightsState.failedToTrackInsights({
    required TrackedDroneInsightsFailure trackedDroneInsightsFailure,
  }) = _FailedToTrackInsights;
}
