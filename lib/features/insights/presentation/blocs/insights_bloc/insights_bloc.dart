import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/insights_failure.dart';
import 'package:sky_trade/features/insights/domain/entities/insights_entity.dart'
    show InsightsEntity;
import 'package:sky_trade/features/insights/domain/repositories/insights_repository.dart';

part 'insights_bloc.freezed.dart';

part 'insights_event.dart';

part 'insights_state.dart';

class InsightsBloc extends Bloc<InsightsEvent, InsightsState> {
  InsightsBloc(
    InsightsRepository insightsRepository,
  )   : _insightsRepository = insightsRepository,
        super(
          const InsightsState.initial(),
        ) {
    on<_GetInsights>(
      _getInsights,
    );
  }

  final InsightsRepository _insightsRepository;

  Future<void> _getInsights(
    _GetInsights event,
    Emitter<InsightsState> emit,
  ) async {
    emit(
      const InsightsState.gettingInsights(),
    );

    final result = await _insightsRepository.getInsightsUsing(
      userId: event.userId,
    );

    result.fold(
      (insightsFailure) => emit(
        InsightsState.failedToGetInsights(
          insightsFailure: insightsFailure,
        ),
      ),
      (insightsEntities) => emit(
        InsightsState.gotInsights(
          insightsEntities: insightsEntities,
        ),
      ),
    );
  }
}
