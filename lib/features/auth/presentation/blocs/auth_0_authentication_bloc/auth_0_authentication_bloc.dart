// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show Auth0AuthenticationFailure;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart'
    show Auth0UserEntity;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'auth_0_authentication_event.dart';

part 'auth_0_authentication_state.dart';

part 'auth_0_authentication_bloc.freezed.dart';

class Auth0AuthenticationBloc
    extends Bloc<Auth0AuthenticationEvent, Auth0AuthenticationState> {
  Auth0AuthenticationBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Auth0AuthenticationState.initial(),
        ) {
    on<_Authenticate>(
      _authenticate,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _authenticate(
    _Authenticate _,
    Emitter<Auth0AuthenticationState> emit,
  ) async {
    emit(
      const Auth0AuthenticationState.authenticating(),
    );

    final result = await _authRepository.authenticateUserWithAuth0();

    result.fold(
      (auth0AuthenticationFailure) => emit(
        Auth0AuthenticationState.failedToAuthenticate(
          auth0AuthenticationFailure: auth0AuthenticationFailure,
        ),
      ),
      (auth0UserEntity) => emit(
        Auth0AuthenticationState.authenticated(
          auth0UserEntity: auth0UserEntity,
        ),
      ),
    );
  }
}
