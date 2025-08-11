// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/referral_failure.dart'
    show ShareFailure;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show ShareEntity;
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

part 'share_event.dart';

part 'share_state.dart';

part 'share_bloc.freezed.dart';

class ShareBloc extends Bloc<ShareEvent, ShareState> {
  ShareBloc(
    ReferralRepository referralRepository,
  )   : _referralRepository = referralRepository,
        super(
          const ShareState.initial(),
        ) {
    on<_Share>(
      _share,
    );
  }

  final ReferralRepository _referralRepository;

  Future<void> _share(
    _Share event,
    Emitter<ShareState> emit,
  ) async {
    emit(
      const ShareState.sharing(),
    );

    final result = await _referralRepository.share(
      subject: event.subject,
      title: event.title,
      message: event.message,
    );

    result.fold(
      (shareFailure) => emit(
        ShareState.failedToShare(
          shareFailure: shareFailure,
        ),
      ),
      (shareEntity) => emit(
        ShareState.maybeShared(
          shareEntity: shareEntity,
        ),
      ),
    );
  }
}
