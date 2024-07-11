import 'package:bloc/bloc.dart' show Bloc;
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
      (event, emit) async {
        emit(
          const Web3AuthInitializationState.initializing(),
        );

        final result = await _web3AuthRepository.initializeWeb3Auth();

        result.fold(
          (web3AuthInitializationFailure) => add(
            Web3AuthInitializationEvent.initializeFailure(
              web3AuthInitializationFailure: web3AuthInitializationFailure,
            ),
          ),
          (_) => add(
            const Web3AuthInitializationEvent.initializeSuccess(),
          ),
        );
      },
    );

    on<_InitializeFailure>(
      (event, emit) => emit(
        Web3AuthInitializationState.failedToInitialize(
          web3AuthInitializationFailure: event.web3AuthInitializationFailure,
        ),
      ),
    );

    on<_InitializeSuccess>(
      (event, emit) => emit(
        const Web3AuthInitializationState.initialized(),
      ),
    );
  }

  final Web3AuthRepository _web3AuthRepository;
}
