import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show Web3AuthInitializationFailure;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'web_3_auth_initialization_event.dart';

part 'web_3_auth_initialization_state.dart';

part 'web_3_auth_initialization_bloc.freezed.dart';

class Web3AuthInitializationBloc
    extends Bloc<Web3AuthInitializationEvent, Web3AuthInitializationState> {
  Web3AuthInitializationBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Web3AuthInitializationState.initial(),
        ) {
    on<_Initialize>(
      _initialize,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _initialize(
    _Initialize _,
    Emitter<Web3AuthInitializationState> emit,
  ) async {
    emit(
      const Web3AuthInitializationState.initializing(),
    );

    final result = await _authRepository.initializeWeb3Auth();

    result.fold(
      (web3AuthInitializationFailure) => emit(
        Web3AuthInitializationState.failedToInitialize(
          web3AuthInitializationFailure: web3AuthInitializationFailure,
        ),
      ),
      (_) => emit(
        const Web3AuthInitializationState.initialized(),
      ),
    );
  }
}
