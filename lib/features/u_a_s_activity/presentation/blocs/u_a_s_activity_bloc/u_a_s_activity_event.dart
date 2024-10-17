part of 'u_a_s_activity_bloc.dart';

@freezed
class UASActivityEvent with _$UASActivityEvent {
  const factory UASActivityEvent.listenUASActivities() = _ListenUASActivities;

  const factory UASActivityEvent.uASActivitiesGotten({
    required List<UASEntity> uASEntities,
  }) = _UASActivitiesGotten;

  const factory UASActivityEvent.uASActivitiesListeningStarted() =
      _UASActivitiesListeningStarted;

  const factory UASActivityEvent.uASActivitiesListeningStopped() =
      _UASActivitiesListeningStopped;

  const factory UASActivityEvent.requestNewUASActivitiesAround({
    required String geoHash,
  }) = _RequestNewUASActivitiesAround;

  const factory UASActivityEvent.stopListeningUASActivities() =
      _StopListeningUASActivities;
}
