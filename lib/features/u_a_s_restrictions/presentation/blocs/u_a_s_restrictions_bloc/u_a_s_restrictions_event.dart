part of 'u_a_s_restrictions_bloc.dart';

@freezed
class UASRestrictionsEvent with _$UASRestrictionsEvent {
  const factory UASRestrictionsEvent.getRestrictions({
    required double southWestLatitude,
    required double southWestLongitude,
    required double northEastLatitude,
    required double northEastLongitude,
  }) = _GetRestrictions;
}
