import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show SFAConfigurationFailure;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 's_f_a_configuration_event.dart';

part 's_f_a_configuration_state.dart';

part 's_f_a_configuration_bloc.freezed.dart';

class SFAConfigurationBloc
    extends Bloc<SFAConfigurationEvent, SFAConfigurationState> {
  SFAConfigurationBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const SFAConfigurationState.initial(),
        ) {
    on<_Configure>(
      _configure,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _configure(
    _Configure _,
    Emitter<SFAConfigurationState> emit,
  ) async {
    emit(
      const SFAConfigurationState.configuring(),
    );

    final result = await _authRepository.configureSFA();

    await _authRepository.initializeSFA();

    result.fold(
      (sFAConfigurationFailure) => emit(
        SFAConfigurationState.failedToConfigure(
          sFAConfigurationFailure: sFAConfigurationFailure,
        ),
      ),
      (_) => emit(
        const SFAConfigurationState.configured(),
      ),
    );
  }
}
