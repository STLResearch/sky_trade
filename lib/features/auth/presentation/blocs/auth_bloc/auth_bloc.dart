import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show
        CheckSkyTradeUserFailure,
        CreateSkyTradeUserFailure,
        SFAAuthenticationUnknownFailure,
        SFAUserShouldLogoutFailure,
        UserNotFoundFailure;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const AuthState.initial(),
        ) {
    on<_Authenticate>(
      _authenticate,
    );

    on<_AuthenticateUserWithAuth0>(
      _authenticateUserWithAuth0,
    );

    on<_AuthenticateAuth0UserWithSFA>(
      _authenticateAuth0UserWithSFA,
    );

    on<_ReAuthenticateFailedSFAUserAuthenticationWithAuth0>(
      _reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    );

    on<_CheckSkyTradeUserExists>(
      _checkSkyTradeUserExists,
    );

    on<_CreateSkyTradeUser>(
      _createSkyTradeUser,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _authenticate(
    _Authenticate _,
    Emitter<AuthState> emit,
  ) async {
    emit(
      const AuthState.authenticating(),
    );

    final auth0UserSessionExists =
        await _authRepository.checkAuth0UserSessionExists();

    if (!auth0UserSessionExists) {
      add(
        const AuthEvent.authenticateUserWithAuth0(),
      );

      return;
    }

    final auth0User = await _authRepository.auth0User;

    auth0User.fold(
      (_) {
        add(
          const AuthEvent.authenticateUserWithAuth0(),
        );
      },
      (auth0UserEntity) {
        if (auth0UserEntity.emailVerified ?? false) {
          add(
            AuthEvent.authenticateAuth0UserWithSFA(
              email: auth0UserEntity.email,
              idToken: auth0UserEntity.idToken,
              isFreshSFAAuthentication: true,
            ),
          );

          return;
        }

        emit(
          AuthState.unverifiedAuth0UserExists(
            email: auth0UserEntity.email,
          ),
        );
      },
    );
  }

  Future<void> _authenticateUserWithAuth0(
    _AuthenticateUserWithAuth0 _,
    Emitter<AuthState> emit,
  ) async {
    final authenticateUserWithAuth0 =
        await _authRepository.authenticateUserWithAuth0();

    authenticateUserWithAuth0.fold(
      (_) {
        emit(
          const AuthState.failedToAuthenticateUserWithAuth0(),
        );
      },
      (auth0UserEntity) {
        if (auth0UserEntity.emailVerified == false) {
          emit(
            AuthState.emailVerificationSent(
              email: auth0UserEntity.email,
            ),
          );

          return;
        }

        add(
          AuthEvent.authenticateAuth0UserWithSFA(
            email: auth0UserEntity.email,
            idToken: auth0UserEntity.idToken,
            isFreshSFAAuthentication: true,
          ),
        );
      },
    );
  }

  Future<void> _authenticateAuth0UserWithSFA(
    _AuthenticateAuth0UserWithSFA event,
    Emitter<AuthState> emit,
  ) async {
    if (event.isFreshSFAAuthentication) {
      final sFAUserSessionExists =
          await _authRepository.checkSFAUserSessionExists();

      if (sFAUserSessionExists) {
        add(
          const AuthEvent.checkSkyTradeUserExists(),
        );

        return;
      }
    }

    final authenticateAuth0UserWithSFA =
        await _authRepository.authenticateAuth0UserWithSFAUsing(
      email: event.email,
      idToken: event.idToken,
    );

    authenticateAuth0UserWithSFA.fold(
      (sFAAuthenticationFailure) {
        if (event.isFreshSFAAuthentication) {
          add(
            AuthEvent.reAuthenticateFailedSFAUserAuthenticationWithAuth0(
              email: event.email,
              idToken: event.idToken,
            ),
          );

          return;
        }

        emit(
          switch (sFAAuthenticationFailure) {
            SFAUserShouldLogoutFailure() => AuthState.sFAUserShouldLogout(
                email: event.email,
              ),
            SFAAuthenticationUnknownFailure() =>
              const AuthState.failedToAuthenticateAuth0UserWithSFA(),
          },
        );
      },
      (_) {
        add(
          const AuthEvent.checkSkyTradeUserExists(),
        );
      },
    );
  }

  Future<void> _reAuthenticateFailedSFAUserAuthenticationWithAuth0(
    _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 event,
    Emitter<AuthState> emit,
  ) async {
    final authenticateUserWithAuth0 =
        await _authRepository.authenticateUserWithAuth0();

    authenticateUserWithAuth0.fold(
      (_) {
        emit(
          const AuthState.failedToAuthenticateUserWithAuth0(),
        );
      },
      (auth0UserEntity) {
        add(
          AuthEvent.authenticateAuth0UserWithSFA(
            email: auth0UserEntity.email,
            idToken: auth0UserEntity.idToken,
            isFreshSFAAuthentication: false,
          ),
        );
      },
    );
  }

  Future<void> _checkSkyTradeUserExists(
    _CheckSkyTradeUserExists _,
    Emitter<AuthState> emit,
  ) async {
    final checkSkyTradeUserExists =
        await _authRepository.checkSkyTradeUserExists();

    checkSkyTradeUserExists.fold(
      (checkSkyTradeUserFailure) {
        if (checkSkyTradeUserFailure is UserNotFoundFailure) {
          add(
            const AuthEvent.createSkyTradeUser(),
          );

          return;
        }

        emit(
          AuthState.failedToCheckSkyTradeUser(
            checkSkyTradeUserFailure: checkSkyTradeUserFailure,
          ),
        );
      },
      (_) {
        emit(
          const AuthState.authenticated(),
        );
      },
    );
  }

  Future<void> _createSkyTradeUser(
    _CreateSkyTradeUser _,
    Emitter<AuthState> emit,
  ) async {
    final createSkyTradeUser = await _authRepository.createSkyTradeUser();

    createSkyTradeUser.fold(
      (createSkyTradeUserFailure) {
        emit(
          AuthState.failedToCreateSkyTradeUser(
            createSkyTradeUserFailure: createSkyTradeUserFailure,
          ),
        );
      },
      (_) {
        emit(
          const AuthState.authenticated(),
        );
      },
    );
  }
}
