// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/drone_insights_failure.dart'
    show TrackedDroneInsightsFailure;
import 'package:sky_trade/features/drone_insights/domain/entities/drone_insights_entity.dart'
    show TrackedDroneInsightsEntity;
import 'package:sky_trade/features/drone_insights/domain/repositories/drone_insights_repository.dart';

part 'track_drone_insights_event.dart';

part 'track_drone_insights_state.dart';

part 'track_drone_insights_bloc.freezed.dart';

class TrackDroneInsightsBloc
    extends Bloc<TrackDroneInsightsEvent, TrackDroneInsightsState> {
  TrackDroneInsightsBloc(
    DroneInsightsRepository droneInsightsRepository,
  )   : _droneInsightsRepository = droneInsightsRepository,
        super(
          const TrackDroneInsightsState.initial(),
        ) {
    on<_TrackInsights>(
      _trackInsights,
    );
  }

  final DroneInsightsRepository _droneInsightsRepository;

  Future<void> _trackInsights(
    _TrackInsights event,
    Emitter<TrackDroneInsightsState> emit,
  ) async {
    emit(
      const TrackDroneInsightsState.trackingInsights(),
    );

    final result = await _droneInsightsRepository.trackedDroneInsights;

    result.fold(
      (trackedDroneInsightsFailure) => emit(
        TrackDroneInsightsState.failedToTrackInsights(
          trackedDroneInsightsFailure: trackedDroneInsightsFailure,
        ),
      ),
      (trackedDroneInsightsEntity) => emit(
        TrackDroneInsightsState.trackedInsights(
          trackedDroneInsightsEntity: trackedDroneInsightsEntity,
        ),
      ),
    );
  }
}
