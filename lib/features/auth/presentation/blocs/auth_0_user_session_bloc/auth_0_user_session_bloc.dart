// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart'
    show Auth0UserEntity;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'auth_0_user_session_event.dart';

part 'auth_0_user_session_state.dart';

part 'auth_0_user_session_bloc.freezed.dart';

class Auth0UserSessionBloc
    extends Bloc<Auth0UserSessionEvent, Auth0UserSessionState> {
  Auth0UserSessionBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Auth0UserSessionState.initial(),
        ) {
    on<_CheckUserSession>(
      _checkUserSession,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _checkUserSession(
    _CheckUserSession _,
    Emitter<Auth0UserSessionState> emit,
  ) async {
    emit(
      const Auth0UserSessionState.checkingUserSession(),
    );

    final auth0UserSessionExists =
        await _authRepository.checkAuth0UserSessionExists();

    if (!auth0UserSessionExists) {
      emit(
        const Auth0UserSessionState.nonExistentUserSession(),
      );

      return;
    }

    final result = await _authRepository.auth0User;

    result.fold(
      (_) => emit(
        const Auth0UserSessionState.nonExistentUserSession(),
      ),
      (auth0UserEntity) => emit(
        Auth0UserSessionState.existingUserSession(
          auth0UserEntity: auth0UserEntity,
        ),
      ),
    );
  }
}
