import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/referral_failure.dart'
    show InviteFailure;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart'
    show InviteEntity;
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

part 'invite_event.dart';

part 'invite_state.dart';

part 'invite_bloc.freezed.dart';

class InviteBloc extends Bloc<InviteEvent, InviteState> {
  InviteBloc(
    ReferralRepository referralRepository,
  )   : _referralRepository = referralRepository,
        super(
          const InviteState.initial(),
        ) {
    on<_SendInvite>(
      _sendInvite,
    );
  }

  final ReferralRepository _referralRepository;

  Future<void> _sendInvite(
    _SendInvite event,
    Emitter<InviteState> emit,
  ) async {
    emit(
      const InviteState.sendingInvite(),
    );

    final result = await _referralRepository.sendInviteTo(
      email: event.email,
    );

    result.fold(
      (inviteFailure) => emit(
        InviteState.failedToSendInvite(
          inviteFailure: inviteFailure,
        ),
      ),
      (inviteEntity) => emit(
        InviteState.sentInvite(
          inviteEntity: inviteEntity,
        ),
      ),
    );
  }
}
