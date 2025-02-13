import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show SFAAuthenticationFailure;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart'
    show SFAUserEntity;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 's_f_a_authentication_event.dart';

part 's_f_a_authentication_state.dart';

part 's_f_a_authentication_bloc.freezed.dart';

class SFAAuthenticationBloc
    extends Bloc<SFAAuthenticationEvent, SFAAuthenticationState> {
  SFAAuthenticationBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const SFAAuthenticationState.initial(),
        ) {
    on<_Authenticate>(
      _authenticate,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _authenticate(
    _Authenticate event,
    Emitter<SFAAuthenticationState> emit,
  ) async {
    emit(
      const SFAAuthenticationState.authenticating(),
    );

    final result = await _authRepository.authenticateUserWithSFAUsing(
      email: event.email,
      idToken: event.idToken,
    );

    result.fold(
      (sFAAuthenticationFailure) => emit(
        SFAAuthenticationState.failedToAuthenticate(
          sFAAuthenticationFailure: sFAAuthenticationFailure,
        ),
      ),
      (sFAUserEntity) => emit(
        SFAAuthenticationState.authenticated(
          sFAUserEntity: sFAUserEntity,
        ),
      ),
    );
  }
}
