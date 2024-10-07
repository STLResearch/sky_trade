import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/auth_failure.dart'
    show Web3AuthAuthenticationFailure;
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/features/auth/domain/entities/auth_entity.dart'
    show Web3AuthUserEntity;
import 'package:sky_ways/features/auth/domain/repositories/auth_repository.dart';

part 'web_3_auth_register_event.dart';

part 'web_3_auth_register_state.dart';

part 'web_3_auth_register_bloc.freezed.dart';

class Web3AuthRegisterBloc
    extends Bloc<Web3AuthRegisterEvent, Web3AuthRegisterState> {
  Web3AuthRegisterBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Web3AuthRegisterState.initial(),
        ) {
    on<_Register>(
      _register,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _register(
    _Register event,
    Emitter<Web3AuthRegisterState> emit,
  ) async {
    emit(
      const Web3AuthRegisterState.registering(),
    );

    final result = await _authRepository.authenticateWeb3AuthUserUsing(
      authProvider: event.provider,
      credential: event.credential,
    );

    result.fold(
      (web3AuthAuthenticationFailure) => emit(
        Web3AuthRegisterState.failedToRegister(
          web3AuthAuthenticationFailure: web3AuthAuthenticationFailure,
        ),
      ),
      (web3AuthUserEntity) => emit(
        Web3AuthRegisterState.registered(
          web3AuthUserEntity: web3AuthUserEntity,
        ),
      ),
    );
  }
}
