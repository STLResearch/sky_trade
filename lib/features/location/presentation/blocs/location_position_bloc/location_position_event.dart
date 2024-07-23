part of 'location_position_bloc.dart';

@freezed
class LocationPositionEvent with _$LocationPositionEvent {
  const factory LocationPositionEvent.listenLocationPosition() =
      _ListenLocationPosition;

  const factory LocationPositionEvent.stopListeningLocationPosition() =
      _StopListeningLocationPosition;
}
