part of 'tracking_authorization_bloc.dart';

@freezed
class TrackingAuthorizationEvent with _$TrackingAuthorizationEvent {
  const factory TrackingAuthorizationEvent.checkTrackingStatus() =
      _CheckTrackingStatus;

  const factory TrackingAuthorizationEvent.requestTracking() = _RequestTracking;
}
