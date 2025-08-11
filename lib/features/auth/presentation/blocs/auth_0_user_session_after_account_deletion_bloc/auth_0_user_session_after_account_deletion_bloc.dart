// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'auth_0_user_session_after_account_deletion_event.dart';

part 'auth_0_user_session_after_account_deletion_state.dart';

part 'auth_0_user_session_after_account_deletion_bloc.freezed.dart';

class Auth0UserSessionAfterAccountDeletionBloc extends Bloc<
    Auth0UserSessionAfterAccountDeletionEvent,
    Auth0UserSessionAfterAccountDeletionState> {
  Auth0UserSessionAfterAccountDeletionBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Auth0UserSessionAfterAccountDeletionState.initial(),
        ) {
    on<_CheckAuth0SessionExisting>(
      _checkAuth0SessionExisting,
    );

    on<_Auth0SessionExisting>(
      _auth0SessionExisting,
    );

    on<_Auth0SessionNonExistent>(
      _auth0SessionNonExistent,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _checkAuth0SessionExisting(
    _CheckAuth0SessionExisting _,
    Emitter<Auth0UserSessionAfterAccountDeletionState> emit,
  ) async {
    emit(
      const Auth0UserSessionAfterAccountDeletionState.gettingAuth0Session(),
    );

    final sessionExists =
        await _authRepository.auth0SessionForDeletedUserExists;

    emit(
      switch (sessionExists) {
        true => const Auth0UserSessionAfterAccountDeletionState
            .existingAuth0Session(),
        false => const Auth0UserSessionAfterAccountDeletionState
            .nonExistentAuth0Session(),
      },
    );
  }

  Future<void> _auth0SessionExisting(
    _Auth0SessionExisting _,
    Emitter<Auth0UserSessionAfterAccountDeletionState> emit,
  ) async {
    await _authRepository.setAuth0SessionForDeletedUserExists(
      value: true,
    );

    emit(
      const Auth0UserSessionAfterAccountDeletionState.existingAuth0Session(),
    );
  }

  Future<void> _auth0SessionNonExistent(
    _Auth0SessionNonExistent _,
    Emitter<Auth0UserSessionAfterAccountDeletionState> emit,
  ) async {
    await _authRepository.setAuth0SessionForDeletedUserExists(
      value: false,
    );

    emit(
      const Auth0UserSessionAfterAccountDeletionState.nonExistentAuth0Session(),
    );
  }
}
