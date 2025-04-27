import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

part 'referral_link_event.dart';

part 'referral_link_state.dart';

part 'referral_link_bloc.freezed.dart';

class ReferralLinkBloc extends Bloc<ReferralLinkEvent, ReferralLinkState> {
  ReferralLinkBloc(
    ReferralRepository referralRepository,
  )   : _referralRepository = referralRepository,
        super(
          const ReferralLinkState.initial(),
        ) {
    on<_CopyLink>(
      _copyLink,
    );
  }

  final ReferralRepository _referralRepository;

  Future<void> _copyLink(
    _CopyLink event,
    Emitter<ReferralLinkState> emit,
  ) async {
    emit(
      const ReferralLinkState.copyingLink(),
    );

    await _referralRepository.copyReferralCodeOrLinkToClipboard(
      data: event.link,
    );

    emit(
      const ReferralLinkState.copiedLink(),
    );
  }
}
