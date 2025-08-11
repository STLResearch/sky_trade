// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/referral_failure.dart'
    show HighlightsFailure;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show HighlightsEntity;
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

part 'highlights_event.dart';

part 'highlights_state.dart';

part 'highlights_bloc.freezed.dart';

class HighlightsBloc extends Bloc<HighlightsEvent, HighlightsState> {
  HighlightsBloc(
    ReferralRepository referralRepository,
  )   : _referralRepository = referralRepository,
        super(
          const HighlightsState.initial(),
        ) {
    on<_GetHighlights>(
      _getHighlights,
    );
  }

  final ReferralRepository _referralRepository;

  Future<void> _getHighlights(
    _GetHighlights event,
    Emitter<HighlightsState> emit,
  ) async {
    emit(
      const HighlightsState.gettingHighlights(),
    );

    final result = await _referralRepository.highlights;

    result.fold(
      (highlightsFailure) => emit(
        HighlightsState.failedToGetHighlights(
          highlightsFailure: highlightsFailure,
        ),
      ),
      (highlightsEntity) => emit(
        HighlightsState.gotHighlights(
          highlightsEntity: highlightsEntity,
        ),
      ),
    );
  }
}
