import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failure.dart'
    show Web3AuthInitializationFailure;
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';

part 'web_3_auth_initialization_event.dart';

part 'web_3_auth_initialization_state.dart';

part 'web_3_auth_initialization_bloc.freezed.dart';

class Web3AuthInitializationBloc
    extends Bloc<Web3AuthInitializationEvent, Web3AuthInitializationState> {
  Web3AuthInitializationBloc(
    Web3AuthRepository web3AuthRepository,
  )   : _web3AuthRepository = web3AuthRepository,
        super(
          const Web3AuthInitializationState.initial(),
        ) {
    on<_Initialize>(
      _initialize,
    );
  }

  final Web3AuthRepository _web3AuthRepository;

  Future<void> _initialize(
    _Initialize _,
    Emitter<Web3AuthInitializationState> emit,
  ) async {
    emit(
      const Web3AuthInitializationState.initializing(),
    );

    final result = await _web3AuthRepository.initializeWeb3Auth();

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
