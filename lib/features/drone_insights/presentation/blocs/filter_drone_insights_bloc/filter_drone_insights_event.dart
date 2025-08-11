// SPDX-License-Identifier: UNLICENSED
                            
part of 'filter_drone_insights_bloc.dart';

@freezed
class FilterDroneInsightsEvent with _$FilterDroneInsightsEvent {
  const factory FilterDroneInsightsEvent.filterInsights({
    required RangeFilter rangeFilter,
  }) = _FilterInsights;
}
