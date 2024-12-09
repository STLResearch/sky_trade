import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/referral/domain/repositories/referral_repository.dart';

part 'email_event.dart';

part 'email_state.dart';

part 'email_bloc.freezed.dart';

class EmailBloc extends Bloc<EmailEvent, EmailState> {
  EmailBloc(
    ReferralRepository referralRepository,
  )   : _referralRepository = referralRepository,
        super(
          const EmailState.initial(),
        ) {
    on<_GetEmail>(
      _getEmail,
    );
  }

  final ReferralRepository _referralRepository;

  Future<void> _getEmail(
    _GetEmail event,
    Emitter<EmailState> emit,
  ) async {
    emit(
      const EmailState.gettingEmail(),
    );

    final result = await _referralRepository.userEmail;

    emit(
      switch (result) {
        != null => EmailState.gotEmail(
            email: result,
          ),
        _ => const EmailState.failedToGetEmail(),
      },
    );
  }
}
