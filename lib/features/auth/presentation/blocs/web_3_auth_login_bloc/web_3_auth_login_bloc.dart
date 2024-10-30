import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show Web3AuthAuthenticationFailure;
import 'package:sky_trade/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart'
    show Web3AuthUserEntity;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'web_3_auth_login_event.dart';

part 'web_3_auth_login_state.dart';

part 'web_3_auth_login_bloc.freezed.dart';

class Web3AuthLoginBloc extends Bloc<Web3AuthLoginEvent, Web3AuthLoginState> {
  Web3AuthLoginBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Web3AuthLoginState.initial(),
        ) {
    on<_Login>(
      _login,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _login(
    _Login event,
    Emitter<Web3AuthLoginState> emit,
  ) async {
    emit(
      const Web3AuthLoginState.loggingIn(),
    );

    final result = await _authRepository.authenticateWeb3AuthUserUsing(
      authProvider: event.provider,
      credential: event.credential,
    );

    result.fold(
      (web3AuthAuthenticationFailure) => emit(
        Web3AuthLoginState.failedToLogIn(
          web3AuthAuthenticationFailure: web3AuthAuthenticationFailure,
        ),
      ),
      (web3AuthUserEntity) => emit(
        Web3AuthLoginState.loggedIn(
          web3AuthUserEntity: web3AuthUserEntity,
        ),
      ),
    );
  }
}
