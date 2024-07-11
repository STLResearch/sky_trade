import 'package:bloc/bloc.dart' show Bloc;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failure.dart'
    show Web3AuthAuthenticationFailure;
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/features/web_3_auth/domain/entities/user_entity.dart';
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';

part 'web_3_auth_login_event.dart';

part 'web_3_auth_login_state.dart';

part 'web_3_auth_login_bloc.freezed.dart';

class Web3AuthLoginBloc extends Bloc<Web3AuthLoginEvent, Web3AuthLoginState> {
  Web3AuthLoginBloc(
    Web3AuthRepository web3AuthRepository,
  )   : _web3AuthRepository = web3AuthRepository,
        super(
          const Web3AuthLoginState.initial(),
        ) {
    on<_Login>(
      (event, emit) async {
        emit(
          const Web3AuthLoginState.loggingIn(),
        );

        final result = await _web3AuthRepository.authenticateUserWith(
          authProvider: event.provider,
          credential: event.credential,
        );

        result.fold(
          (web3AuthAuthenticationFailure) => add(
            Web3AuthLoginEvent.loginFailure(
              web3AuthAuthenticationFailure: web3AuthAuthenticationFailure,
            ),
          ),
          (userEntity) => add(
            Web3AuthLoginEvent.loginSuccess(
              userEntity: userEntity,
            ),
          ),
        );
      },
    );

    on<_LoginFailure>(
      (event, emit) => emit(
        Web3AuthLoginState.failedToLogIn(
          web3AuthAuthenticationFailure: event.web3AuthAuthenticationFailure,
        ),
      ),
    );

    on<_LoginSuccess>(
      (event, emit) => emit(
        Web3AuthLoginState.loggedIn(
          userEntity: event.userEntity,
        ),
      ),
    );
  }

  final Web3AuthRepository _web3AuthRepository;
}
