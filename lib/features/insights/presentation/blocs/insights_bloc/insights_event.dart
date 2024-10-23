part of 'insights_bloc.dart';

@freezed
class InsightsEvent with _$InsightsEvent {
  const factory InsightsEvent.getInsights({
    required int userId,
  }) = _GetInsights;
}
