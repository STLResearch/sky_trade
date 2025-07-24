import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'guest_user_event.dart';

part 'guest_user_state.dart';

part 'guest_user_bloc.freezed.dart';

class GuestUserBloc extends Bloc<GuestUserEvent, GuestUserState> {
  GuestUserBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const GuestUserState.initial(),
        ) {
    on<_CheckUserIsGuest>(
      _checkUserIsGuest,
    );

    on<_SetUserIsGuest>(
      _setUserIsGuest,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _checkUserIsGuest(
    _CheckUserIsGuest _,
    Emitter<GuestUserState> emit,
  ) async {
    emit(
      const GuestUserState.checkingIfGuestUser(),
    );

    final result = await _authRepository.userIsGuest;

    emit(
      switch (result) {
        true => const GuestUserState.isGuestUser(),
        false => const GuestUserState.notGuestUser(),
      },
    );
  }

  Future<void> _setUserIsGuest(
    _SetUserIsGuest event,
    Emitter<GuestUserState> emit,
  ) async {
    emit(
      const GuestUserState.settingMaybeGuestUser(),
    );

    await _authRepository.setUserIsGuest(
      value: event.isGuest,
    );

    emit(
      switch (event.isGuest) {
        true => const GuestUserState.isGuestUser(),
        false => const GuestUserState.notGuestUser(),
      },
    );
  }
}
