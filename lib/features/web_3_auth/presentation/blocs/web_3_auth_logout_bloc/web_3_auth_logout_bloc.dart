import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/web_3_auth_failure.dart'
    show Web3AuthLogoutFailure;
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';

part 'web_3_auth_logout_event.dart';

part 'web_3_auth_logout_state.dart';

part 'web_3_auth_logout_bloc.freezed.dart';

class Web3AuthLogoutBloc
    extends Bloc<Web3AuthLogoutEvent, Web3AuthLogoutState> {
  Web3AuthLogoutBloc(this._web3AuthRepository)
      : super(const Web3AuthLogoutState.initial()) {
    on<_Logout>(
      _logout,
    );
  }

  final Web3AuthRepository _web3AuthRepository;

  Future<void> _logout(
    _Logout event,
    Emitter<Web3AuthLogoutState> emit,
  ) async {
    emit(
      const Web3AuthLogoutState.loggingOut(),
    );

    final result = await _web3AuthRepository.logoutCurrentUser();

    result.fold(
      (failure) => emit(
        Web3AuthLogoutState.failedToLogOut(
          failure: failure,
        ),
      ),
      (success) => emit(
        const Web3AuthLogoutState.loggedOut(),
      ),
    );
  }
}
