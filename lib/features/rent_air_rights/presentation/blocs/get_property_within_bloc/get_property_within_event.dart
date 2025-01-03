part of 'get_property_within_bloc.dart';

@freezed
class GetPropertyWithinEvent with _$GetPropertyWithinEvent {
  const factory GetPropertyWithinEvent.getPropertyWithin({
    required double minLongitude,
    required double minLatitude,
    required double maxLongitude,
    required double maxLatitude,
  }) = _GetPropertyWithin;
}
