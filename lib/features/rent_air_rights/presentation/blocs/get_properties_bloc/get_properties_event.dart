part of 'get_properties_bloc.dart';

@freezed
class GetPropertiesEvent with _$GetPropertiesEvent {
  const factory GetPropertiesEvent.getPropertiesWithin({
    required double minLongitude,
    required double minLatitude,
    required double maxLongitude,
    required double maxLatitude,
  }) = _GetPropertiesWithin;
}
