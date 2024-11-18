import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'web_3_auth_user_session_event.dart';

part 'web_3_auth_user_session_state.dart';

part 'web_3_auth_user_session_bloc.freezed.dart';

class Web3AuthUserSessionBloc
    extends Bloc<Web3AuthUserSessionEvent, Web3AuthUserSessionState> {
  Web3AuthUserSessionBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Web3AuthUserSessionState.initial(),
        ) {
    on<_CheckUserSession>(
      _checkUserSession,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _checkUserSession(
    _CheckUserSession _,
    Emitter<Web3AuthUserSessionState> emit,
  ) async {
    emit(
      const Web3AuthUserSessionState.checkingUserSession(),
    );

    final result = await _authRepository.checkWeb3AuthSessionExists();

    emit(
      switch (result) {
        true => const Web3AuthUserSessionState.existingUserSession(),
        false => const Web3AuthUserSessionState.nonExistentUserSession(),
      },
    );
  }
}
