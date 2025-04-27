import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/referral_failure.dart'
    show SkyPointsFailure;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show SkyPointsEntity;
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

part 'sky_points_event.dart';

part 'sky_points_state.dart';

part 'sky_points_bloc.freezed.dart';

class SkyPointsBloc extends Bloc<SkyPointsEvent, SkyPointsState> {
  SkyPointsBloc(
    ReferralRepository referralRepository,
  )   : _referralRepository = referralRepository,
        super(
          const SkyPointsState.initial(),
        ) {
    on<_GetSkyPoints>(
      _getSkyPoints,
    );
  }

  final ReferralRepository _referralRepository;

  Future<void> _getSkyPoints(
    _GetSkyPoints event,
    Emitter<SkyPointsState> emit,
  ) async {
    emit(
      const SkyPointsState.gettingSkyPoints(),
    );

    final result = await _referralRepository.skyPoints;

    result.fold(
      (skyPointsFailure) => emit(
        SkyPointsState.failedToGetSkyPoints(
          skyPointsFailure: skyPointsFailure,
        ),
      ),
      (skyPointsEntity) => emit(
        SkyPointsState.gotSkyPoints(
          skyPointsEntity: skyPointsEntity,
        ),
      ),
    );
  }
}
