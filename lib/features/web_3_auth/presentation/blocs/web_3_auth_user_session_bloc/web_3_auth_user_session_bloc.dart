import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';

part 'web_3_auth_user_session_event.dart';

part 'web_3_auth_user_session_state.dart';

part 'web_3_auth_user_session_bloc.freezed.dart';

class Web3AuthUserSessionBloc
    extends Bloc<Web3AuthUserSessionEvent, Web3AuthUserSessionState> {
  Web3AuthUserSessionBloc(
    Web3AuthRepository web3AuthRepository,
  )   : _web3AuthRepository = web3AuthRepository,
        super(
          const Web3AuthUserSessionState.initial(),
        ) {
    on<_CheckUserSession>(
      _checkUserSession,
    );
  }

  final Web3AuthRepository _web3AuthRepository;

  Future<void> _checkUserSession(
    _CheckUserSession _,
    Emitter<Web3AuthUserSessionState> emit,
  ) async {
    emit(
      const Web3AuthUserSessionState.checkingUserSession(),
    );

    final result = await _web3AuthRepository.sessionExists();

    emit(
      switch (result) {
        true => const Web3AuthUserSessionState.existingUserSession(),
        false => const Web3AuthUserSessionState.nonExistentUserSession(),
      },
    );
  }
}
