// SPDX-License-Identifier: UNLICENSED
                            
part of 'location_position_bloc.dart';

@freezed
class LocationPositionEvent with _$LocationPositionEvent {
  const factory LocationPositionEvent.getLocationPosition() =
      _GetLocationPosition;

  const factory LocationPositionEvent.listenLocationPosition() =
      _ListenLocationPosition;

  const factory LocationPositionEvent.locationPositionGotten({
    required LocationPositionEntity locationPositionEntity,
  }) = _LocationPositionGotten;

  const factory LocationPositionEvent.locationPositionNotGotten({
    required LocationPositionFailure locationPositionFailure,
  }) = _LocationPositionNotGotten;

  const factory LocationPositionEvent.stopListeningLocationPosition() =
      _StopListeningLocationPosition;
}
