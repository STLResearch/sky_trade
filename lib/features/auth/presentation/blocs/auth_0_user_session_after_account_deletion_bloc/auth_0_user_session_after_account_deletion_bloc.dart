import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart' show HydratedMixin;
import 'package:sky_trade/core/resources/strings/local.dart'
    show auth0SessionForDeletedUserExistsKey;

part 'auth_0_user_session_after_account_deletion_event.dart';

part 'auth_0_user_session_after_account_deletion_state.dart';

part 'auth_0_user_session_after_account_deletion_bloc.freezed.dart';

class Auth0UserSessionAfterAccountDeletionBloc extends Bloc<
    Auth0UserSessionAfterAccountDeletionEvent,
    Auth0UserSessionAfterAccountDeletionState> with HydratedMixin {
  Auth0UserSessionAfterAccountDeletionBloc()
      : super(
          const Auth0UserSessionAfterAccountDeletionState.initial(),
        ) {
    hydrate();

    on<_Auth0SessionExisting>(
      _auth0SessionExisting,
    );

    on<_Auth0SessionNonExistent>(
      _auth0SessionNonExistent,
    );
  }

  @override
  Auth0UserSessionAfterAccountDeletionState? fromJson(
    Map<String, dynamic> json,
  ) =>
      switch (json.containsKey(
            auth0SessionForDeletedUserExistsKey,
          ) &&
          json[auth0SessionForDeletedUserExistsKey] == true) {
        true => const Auth0UserSessionAfterAccountDeletionState
            .existingAuth0Session(),
        false => const Auth0UserSessionAfterAccountDeletionState
            .nonExistentAuth0Session(),
      };

  @override
  Map<String, dynamic>? toJson(
    Auth0UserSessionAfterAccountDeletionState state,
  ) =>
      state.maybeWhen(
        existingAuth0Session: () => {
          auth0SessionForDeletedUserExistsKey: true,
        },
        orElse: () => {
          auth0SessionForDeletedUserExistsKey: false,
        },
      );

  void _auth0SessionExisting(
    _Auth0SessionExisting _,
    Emitter<Auth0UserSessionAfterAccountDeletionState> emit,
  ) =>
      emit(
        const Auth0UserSessionAfterAccountDeletionState.existingAuth0Session(),
      );

  void _auth0SessionNonExistent(
    _Auth0SessionNonExistent _,
    Emitter<Auth0UserSessionAfterAccountDeletionState> emit,
  ) =>
      emit(
        const Auth0UserSessionAfterAccountDeletionState
            .nonExistentAuth0Session(),
      );
}
