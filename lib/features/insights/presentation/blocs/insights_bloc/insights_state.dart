part of 'insights_bloc.dart';

@freezed
class InsightsState with _$InsightsState {
  const factory InsightsState.initial() = _Initial;

  const factory InsightsState.gettingInsights() = _GettingInsights;

  const factory InsightsState.gotInsights({
    required List<InsightsEntity> insightsEntities,
  }) = _GotInsights;

  const factory InsightsState.failedToGetInsights({
    required InsightsFailure insightsFailure,
  }) = _FailedToGetInsights;
}
