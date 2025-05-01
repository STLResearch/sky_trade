import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show CreateSkyTradeUserFailure;
import 'package:sky_trade/core/utils/enums/ui.dart' show UserCategory;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart'
    show SkyTradeUserEntity;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'create_sky_trade_user_event.dart';

part 'create_sky_trade_user_state.dart';

part 'create_sky_trade_user_bloc.freezed.dart';

class CreateSkyTradeUserBloc
    extends Bloc<CreateSkyTradeUserEvent, CreateSkyTradeUserState> {
  CreateSkyTradeUserBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const CreateSkyTradeUserState.initial(),
        ) {
    on<_CreateUser>(
      _createUser,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _createUser(
    _CreateUser event,
    Emitter<CreateSkyTradeUserState> emit,
  ) async {
    emit(
      const CreateSkyTradeUserState.creatingUser(),
    );

    final result = await _authRepository.createSkyTradeUserUsing(
      phoneNumber: event.phoneNumber,
      userCategory: event.userCategory,
      subscribeToNewsletter: event.subscribeToNewsletter,
      referralCode: switch (event.referralCode.isNotEmpty) {
        true => event.referralCode,
        false => null,
      },
    );

    result.fold(
      (createSkyTradeUserFailure) {
        emit(
          CreateSkyTradeUserState.failedToCreateUser(
            createSkyTradeUserFailure: createSkyTradeUserFailure,
          ),
        );
      },
      (skyTradeUserEntity) => emit(
        CreateSkyTradeUserState.createdUser(
          skyTradeUserEntity: skyTradeUserEntity,
        ),
      ),
    );
  }
}
