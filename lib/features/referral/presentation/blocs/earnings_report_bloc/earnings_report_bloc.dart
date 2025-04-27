import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/referral_failure.dart'
    show EarningsReportFailure;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show EarningsReportEntity;
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

part 'earnings_report_event.dart';

part 'earnings_report_state.dart';

part 'earnings_report_bloc.freezed.dart';

class EarningsReportBloc
    extends Bloc<EarningsReportEvent, EarningsReportState> {
  EarningsReportBloc(
    ReferralRepository referralRepository,
  )   : _referralRepository = referralRepository,
        super(
          const EarningsReportState.initial(),
        ) {
    on<_GetEarningsReport>(
      _getEarningsReport,
    );
  }

  final ReferralRepository _referralRepository;

  Future<void> _getEarningsReport(
    _GetEarningsReport event,
    Emitter<EarningsReportState> emit,
  ) async {
    emit(
      const EarningsReportState.gettingEarningsReport(),
    );

    final result = await _referralRepository.earningsReport;

    result.fold(
      (earningsReportFailure) => emit(
        EarningsReportState.failedToGetEarningsReport(
          earningsReportFailure: earningsReportFailure,
        ),
      ),
      (earningsReportEntity) => emit(
        EarningsReportState.gotEarningsReport(
          earningsReportEntity: earningsReportEntity,
        ),
      ),
    );
  }
}
