import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show Auth0LogoutFailure;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'auth_0_logout_event.dart';

part 'auth_0_logout_state.dart';

part 'auth_0_logout_bloc.freezed.dart';

class Auth0LogoutBloc extends Bloc<Auth0LogoutEvent, Auth0LogoutState> {
  Auth0LogoutBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Auth0LogoutState.initial(),
        ) {
    on<_Logout>(
      _logout,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _logout(
    _Logout _,
    Emitter<Auth0LogoutState> emit,
  ) async {
    emit(
      const Auth0LogoutState.loggingOut(),
    );

    await _authRepository.logoutCurrentSFAUser();

    final result = await _authRepository.logoutCurrentAuth0User();

    result.fold(
      (auth0LogoutFailure) => emit(
        Auth0LogoutState.failedToLogOut(
          auth0LogoutFailure: auth0LogoutFailure,
        ),
      ),
      (_) => emit(
        const Auth0LogoutState.loggedOut(),
      ),
    );
  }
}
