import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show
        CheckSkyTradeUserFailure,
        CreateSkyTradeUserFailure,
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

    on<_AuthenticateUserWithSFA>(
      _authenticateUserWithSFA,
    );

    on<_CheckSkyTradeUserExists>(
      _checkSkyTradeUserExists,
    );

    on<_LogoutFailedSkyTradeUserCheckOperationFromAuth0>(
      _logoutFailedSkyTradeUserCheckOperationFromAuth0,
    );

    on<_CreateSkyTradeUser>(
      _createSkyTradeUser,
    );

    on<_LogoutFailedSkyTradeUserCreateOperationFromAuth0>(
      _logoutFailedSkyTradeUserCreateOperationFromAuth0,
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

    final sFAUserSessionExists =
        await _authRepository.checkSFAUserSessionExists();

    final auth0User = await _authRepository.auth0User;

    auth0User.fold(
      (_) {
        add(
          const AuthEvent.authenticateUserWithAuth0(),
        );
      },
      (auth0UserEntity) {
        if (auth0UserEntity.emailVerified ?? false) {
          if (!sFAUserSessionExists) {
            add(
              AuthEvent.authenticateUserWithSFA(
                email: auth0UserEntity.email,
                idToken: auth0UserEntity.idToken,
              ),
            );

            return;
          }

          add(
            const AuthEvent.checkSkyTradeUserExists(),
          );

          return;
        }

        emit(
          AuthState.emailNotVerified(
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
          AuthEvent.authenticateUserWithSFA(
            email: auth0UserEntity.email,
            idToken: auth0UserEntity.idToken,
          ),
        );
      },
    );
  }

  Future<void> _authenticateUserWithSFA(
    _AuthenticateUserWithSFA event,
    Emitter<AuthState> emit,
  ) async {
    final authenticateUserWithSFA =
        await _authRepository.authenticateUserWithSFAUsing(
      email: event.email,
      idToken: event.idToken,
    );

    authenticateUserWithSFA.fold(
      (_) {
        emit(
          const AuthState.failedToAuthenticateAuth0UserWithSFA(),
        );
      },
      (_) {
        add(
          const AuthEvent.checkSkyTradeUserExists(),
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

        add(
          AuthEvent.logoutFailedSkyTradeUserCheckOperationFromAuth0(
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

  Future<void> _logoutFailedSkyTradeUserCheckOperationFromAuth0(
    _LogoutFailedSkyTradeUserCheckOperationFromAuth0 event,
    Emitter<AuthState> emit,
  ) async {
    final logoutCurrentAuth0User =
        await _authRepository.logoutCurrentAuth0User();

    logoutCurrentAuth0User.fold(
      (_) {
        emit(
          const AuthState
              .failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0(),
        );
      },
      (_) {
        emit(
          AuthState.failedToCheckSkyTradeUser(
            checkSkyTradeUserFailure: event.checkSkyTradeUserFailure,
          ),
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
        add(
          AuthEvent.logoutFailedSkyTradeUserCreateOperationFromAuth0(
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

  Future<void> _logoutFailedSkyTradeUserCreateOperationFromAuth0(
    _LogoutFailedSkyTradeUserCreateOperationFromAuth0 event,
    Emitter<AuthState> emit,
  ) async {
    final logoutCurrentAuth0User =
        await _authRepository.logoutCurrentAuth0User();

    logoutCurrentAuth0User.fold(
      (_) {
        emit(
          const AuthState
              .failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0(),
        );
      },
      (_) {
        emit(
          AuthState.failedToCreateSkyTradeUser(
            createSkyTradeUserFailure: event.createSkyTradeUserFailure,
          ),
        );
      },
    );
  }
}
