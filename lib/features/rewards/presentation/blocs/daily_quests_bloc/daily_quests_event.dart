part of 'daily_quests_bloc.dart';

@freezed
class DailyQuestsEvent with _$DailyQuestsEvent {
  const factory DailyQuestsEvent.getQuests() = _GetQuests;
}
