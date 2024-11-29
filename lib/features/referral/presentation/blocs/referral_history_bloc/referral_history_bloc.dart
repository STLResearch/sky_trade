import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/referral_failure.dart'
    show ReferralHistoryFailure;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show ReferralHistoryEntity;
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

part 'referral_history_event.dart';

part 'referral_history_state.dart';

part 'referral_history_bloc.freezed.dart';

class ReferralHistoryBloc
    extends Bloc<ReferralHistoryEvent, ReferralHistoryState> {
  ReferralHistoryBloc(
    ReferralRepository referralRepository,
  )   : _referralRepository = referralRepository,
        super(
          const ReferralHistoryState.initial(),
        ) {
    on<_GetReferralHistory>(
      _getReferralHistory,
    );
  }

  final ReferralRepository _referralRepository;

  Future<void> _getReferralHistory(
    _GetReferralHistory event,
    Emitter<ReferralHistoryState> emit,
  ) async {
    emit(
      const ReferralHistoryState.gettingReferralHistory(),
    );

    final result = await _referralRepository.getReferralHistoryOn(
      page: event.page,
      limit: event.limit,
    );

    result.fold(
      (referralHistoryFailure) => emit(
        ReferralHistoryState.failedToGetReferralHistory(
          referralHistoryFailure: referralHistoryFailure,
        ),
      ),
      (referralHistoryEntity) => emit(
        ReferralHistoryState.gotReferralHistory(
          referralHistoryEntity: referralHistoryEntity,
        ),
      ),
    );
  }
}
