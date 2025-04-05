part of 'filter_drone_insights_bloc.dart';

@freezed
class FilterDroneInsightsState with _$FilterDroneInsightsState {
  const factory FilterDroneInsightsState.initial() = _Initial;

  const factory FilterDroneInsightsState.filteringInsights() =
      _FilteringInsights;

  const factory FilterDroneInsightsState.filteredInsights({
    required FilteredDroneInsightsEntity filteredDroneInsightsEntity,
  }) = _FilteredInsights;

  const factory FilterDroneInsightsState.failedToFilterInsights({
    required FilteredDroneInsightsFailure filteredDroneInsightsFailure,
  }) = _FailedToFilterInsights;
}
