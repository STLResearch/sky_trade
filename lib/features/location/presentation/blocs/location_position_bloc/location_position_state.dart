part of 'location_position_bloc.dart';

@freezed
class LocationPositionState with _$LocationPositionState {
  const factory LocationPositionState.initial() = _Initial;

  const factory LocationPositionState.gettingLocationPosition() =
      _GettingLocationPosition;

  const factory LocationPositionState.gotLocationPosition({
    required LocationPositionEntity locationPositionEntity,
  }) = _GotLocationPosition;

  const factory LocationPositionState.failedToGetLocationPosition({
    required LocationPositionFailure locationPositionFailure,
  }) = _FailedToGetLocationPosition;
}
