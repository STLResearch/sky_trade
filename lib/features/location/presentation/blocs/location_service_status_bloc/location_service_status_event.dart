part of 'location_service_status_bloc.dart';

@freezed
class LocationServiceStatusEvent with _$LocationServiceStatusEvent {
  const factory LocationServiceStatusEvent.listenLocationServiceStatus() =
      _ListenLocationServiceStatus;

  const factory LocationServiceStatusEvent.locationServiceStatusGotten({
    required LocationServiceStatusEntity locationServiceStatusEntity,
  }) = _LocationServiceStatusGotten;

  const factory LocationServiceStatusEvent.locationServiceStatusNotGotten({
    required LocationServiceStatusFailure locationServiceStatusFailure,
  }) = _LocationServiceStatusNotGotten;

  const factory LocationServiceStatusEvent.stopListeningLocationServiceStatus() =
      _StopListeningLocationServiceStatus;
}
