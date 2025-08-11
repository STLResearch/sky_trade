// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'email_event.dart';

part 'email_state.dart';

part 'email_bloc.freezed.dart';

class EmailBloc extends Bloc<EmailEvent, EmailState> {
  EmailBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const EmailState.initial(),
        ) {
    on<_GetEmail>(
      _getEmail,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _getEmail(
    _GetEmail event,
    Emitter<EmailState> emit,
  ) async {
    emit(
      const EmailState.gettingEmail(),
    );

    final result = await _authRepository.userEmail;

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
