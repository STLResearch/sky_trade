import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show SFAInitializationFailure;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 's_f_a_initialization_event.dart';

part 's_f_a_initialization_state.dart';

part 's_f_a_initialization_bloc.freezed.dart';

class SFAInitializationBloc
    extends Bloc<SFAInitializationEvent, SFAInitializationState> {
  SFAInitializationBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const SFAInitializationState.initial(),
        ) {
    on<_Initialize>(
      _initialize,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _initialize(
    _Initialize _,
    Emitter<SFAInitializationState> emit,
  ) async {
    emit(
      const SFAInitializationState.initializing(),
    );

    final result = await _authRepository.initializeSFA();

    result.fold(
      (sFAInitializationFailure) => emit(
        SFAInitializationState.failedToInitialize(
          sFAInitializationFailure: sFAInitializationFailure,
        ),
      ),
      (_) => emit(
        const SFAInitializationState.initialized(),
      ),
    );
  }
}
