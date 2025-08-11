// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'auth_0_credentials_event.dart';

part 'auth_0_credentials_state.dart';

part 'auth_0_credentials_bloc.freezed.dart';

class Auth0CredentialsBloc
    extends Bloc<Auth0CredentialsEvent, Auth0CredentialsState> {
  Auth0CredentialsBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Auth0CredentialsState.initial(),
        ) {
    on<_RenewCredentials>(
      _renewCredentials,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _renewCredentials(
    _RenewCredentials event,
    Emitter<Auth0CredentialsState> emit,
  ) async {
    emit(
      const Auth0CredentialsState.renewingCredentials(),
    );

    final auth0User = await _authRepository.auth0User;

    auth0User.fold(
      (_) {
        emit(
          const Auth0CredentialsState.failedToRenewCredentials(),
        );
      },
      (auth0UserEntity) {
        if (auth0UserEntity.emailVerified ?? false) {
          emit(
            const Auth0CredentialsState.renewedCredentials(),
          );

          return;
        }

        emit(
          const Auth0CredentialsState.failedToRenewCredentials(),
        );
      },
    );
  }
}
