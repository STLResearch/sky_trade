part of 'u_a_s_activity_bloc.dart';

@freezed
class UASActivityEvent with _$UASActivityEvent {
  const factory UASActivityEvent.listenUASActivities() = _ListenUASActivities;

  const factory UASActivityEvent.requestNewUASActivitiesAround({
    required String geoHash,
  }) = _RequestNewUASActivitiesAround;

  const factory UASActivityEvent.stopListeningUASActivities() =
      _StopListeningUASActivities;
}
