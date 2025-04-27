import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

part 'referral_code_event.dart';

part 'referral_code_state.dart';

part 'referral_code_bloc.freezed.dart';

class ReferralCodeBloc extends Bloc<ReferralCodeEvent, ReferralCodeState> {
  ReferralCodeBloc(
    ReferralRepository referralRepository,
  )   : _referralRepository = referralRepository,
        super(
          const ReferralCodeState.initial(),
        ) {
    on<_CopyCode>(
      _copyCode,
    );
  }

  final ReferralRepository _referralRepository;

  Future<void> _copyCode(
    _CopyCode event,
    Emitter<ReferralCodeState> emit,
  ) async {
    emit(
      const ReferralCodeState.copyingCode(),
    );

    await _referralRepository.copyReferralCodeOrLinkToClipboard(
      data: event.code,
    );

    emit(
      const ReferralCodeState.copiedCode(),
    );
  }
}
