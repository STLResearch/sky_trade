// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/drone_insights_failure.dart'
    show FilteredDroneInsightsFailure;
import 'package:sky_trade/core/utils/enums/networking.dart' show RangeFilter;
import 'package:sky_trade/features/drone_insights/domain/entities/drone_insights_entity.dart'
    show FilteredDroneInsightsEntity;
import 'package:sky_trade/features/drone_insights/domain/repositories/drone_insights_repository.dart';

part 'filter_drone_insights_event.dart';

part 'filter_drone_insights_state.dart';

part 'filter_drone_insights_bloc.freezed.dart';

class FilterDroneInsightsBloc
    extends Bloc<FilterDroneInsightsEvent, FilterDroneInsightsState> {
  FilterDroneInsightsBloc(
    DroneInsightsRepository droneInsightsRepository,
  )   : _droneInsightsRepository = droneInsightsRepository,
        super(
          const FilterDroneInsightsState.initial(),
        ) {
    on<_FilterInsights>(
      _filterInsights,
    );
  }

  final DroneInsightsRepository _droneInsightsRepository;

  Future<void> _filterInsights(
    _FilterInsights event,
    Emitter<FilterDroneInsightsState> emit,
  ) async {
    emit(
      const FilterDroneInsightsState.filteringInsights(),
    );

    final result = await _droneInsightsRepository.filterDroneInsightsBy(
      rangeFilter: event.rangeFilter,
    );

    result.fold(
      (filteredDroneInsightsFailure) => emit(
        FilterDroneInsightsState.failedToFilterInsights(
          filteredDroneInsightsFailure: filteredDroneInsightsFailure,
        ),
      ),
      (filteredDroneInsightsEntity) => emit(
        FilterDroneInsightsState.filteredInsights(
          filteredDroneInsightsEntity: filteredDroneInsightsEntity,
        ),
      ),
    );
  }
}
