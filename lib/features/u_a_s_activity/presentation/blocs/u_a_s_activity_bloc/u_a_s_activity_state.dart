part of 'u_a_s_activity_bloc.dart';

@freezed
class UASActivityState with _$UASActivityState {
  const factory UASActivityState.initial() = _Initial;

  const factory UASActivityState.establishingListeningUASActivities() =
      _EstablishingListeningUASActivities;

  const factory UASActivityState.startedListeningUASActivities() =
      _StartedListeningUASActivities;

  const factory UASActivityState.gotUASActivities({
    required List<UASEntity> uASEntities,
  }) = _GotUASActivities;

  const factory UASActivityState.stoppedListeningUASActivities() =
      _StoppedListeningUASActivities;
}
