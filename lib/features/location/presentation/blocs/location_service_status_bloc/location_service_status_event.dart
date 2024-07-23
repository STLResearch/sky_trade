part of 'location_service_status_bloc.dart';

@freezed
class LocationServiceStatusEvent with _$LocationServiceStatusEvent {
  const factory LocationServiceStatusEvent.listenLocationServiceStatus() =
      _ListenLocationServiceStatus;

  const factory LocationServiceStatusEvent.stopListeningLocationServiceStatus() =
      _StopListeningLocationServiceStatus;
}
