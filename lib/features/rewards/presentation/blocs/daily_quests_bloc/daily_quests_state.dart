part of 'daily_quests_bloc.dart';

@freezed
class DailyQuestsState with _$DailyQuestsState {
  const factory DailyQuestsState.initial() = _Initial;

  const factory DailyQuestsState.gettingQuests() = _GettingQuests;

  const factory DailyQuestsState.gotQuests({
    required List<QuestEntity> questEntities,
  }) = _GotQuests;

  const factory DailyQuestsState.failedToGetQuests({
    required QuestFailure questFailure,
  }) = _FailedToGetQuests;
}
