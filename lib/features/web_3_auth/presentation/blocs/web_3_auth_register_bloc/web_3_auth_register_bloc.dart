import 'package:bloc/bloc.dart' show Bloc;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failure.dart'
    show Web3AuthAuthenticationFailure;
import 'package:sky_ways/core/utils/enums/networking.dart' show AuthProvider;
import 'package:sky_ways/features/web_3_auth/domain/entities/user_entity.dart';
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';

part 'web_3_auth_register_event.dart';

part 'web_3_auth_register_state.dart';

part 'web_3_auth_register_bloc.freezed.dart';

class Web3AuthRegisterBloc
    extends Bloc<Web3AuthRegisterEvent, Web3AuthRegisterState> {
  Web3AuthRegisterBloc(
    Web3AuthRepository web3AuthRepository,
  )   : _web3AuthRepository = web3AuthRepository,
        super(
          const Web3AuthRegisterState.initial(),
        ) {
    on<_Register>(
      (event, emit) async {
        emit(
          const Web3AuthRegisterState.registering(),
        );

        final result =
            await _web3AuthRepository.authenticateUserWith(
          authProvider: event.provider,
          credential: event.credential,
        );

        result.fold(
          (web3AuthAuthenticationFailure) => add(
            Web3AuthRegisterEvent.registerFailure(
              web3AuthAuthenticationFailure: web3AuthAuthenticationFailure,
            ),
          ),
          (userEntity) => add(
            Web3AuthRegisterEvent.registerSuccess(
              userEntity: userEntity,
            ),
          ),
        );
      },
    );

    on<_RegisterFailure>(
      (event, emit) => emit(
        Web3AuthRegisterState.failedToRegister(
          web3AuthAuthenticationFailure: event.web3AuthAuthenticationFailure,
        ),
      ),
    );

    on<_RegisterSuccess>(
      (event, emit) => emit(
        Web3AuthRegisterState.registered(
          userEntity: event.userEntity,
        ),
      ),
    );
  }

  final Web3AuthRepository _web3AuthRepository;
}
