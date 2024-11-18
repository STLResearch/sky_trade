import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show Web3AuthLogoutFailure;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'web_3_auth_logout_event.dart';

part 'web_3_auth_logout_state.dart';

part 'web_3_auth_logout_bloc.freezed.dart';

class Web3AuthLogoutBloc
    extends Bloc<Web3AuthLogoutEvent, Web3AuthLogoutState> {
  Web3AuthLogoutBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Web3AuthLogoutState.initial(),
        ) {
    on<_Logout>(
      _logout,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _logout(
    _Logout event,
    Emitter<Web3AuthLogoutState> emit,
  ) async {
    emit(
      const Web3AuthLogoutState.loggingOut(),
    );

    final result = await _authRepository.logoutCurrentWeb3AuthUser();

    result.fold(
      (web3AuthLogoutFailure) => emit(
        Web3AuthLogoutState.failedToLogOut(
          web3AuthLogoutFailure: web3AuthLogoutFailure,
        ),
      ),
      (_) => emit(
        const Web3AuthLogoutState.loggedOut(),
      ),
    );
  }
}
