// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 's_f_a_user_session_event.dart';

part 's_f_a_user_session_state.dart';

part 's_f_a_user_session_bloc.freezed.dart';

class SFAUserSessionBloc
    extends Bloc<SFAUserSessionEvent, SFAUserSessionState> {
  SFAUserSessionBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const SFAUserSessionState.initial(),
        ) {
    on<_CheckSession>(
      _checkSession,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _checkSession(
    _CheckSession _,
    Emitter<SFAUserSessionState> emit,
  ) async {
    emit(
      const SFAUserSessionState.checkingSession(),
    );

    final result = await _authRepository.checkSFAUserSessionExists();

    emit(
      switch (result) {
        true => const SFAUserSessionState.sessionExist(),
        false => const SFAUserSessionState.sessionNotExist()
      },
    );
  }
}
