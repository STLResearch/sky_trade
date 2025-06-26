import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show GetSkyTradeUserFailure;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart'
    show SkyTradeUserEntity;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'get_sky_trade_user_event.dart';

part 'get_sky_trade_user_state.dart';

part 'get_sky_trade_user_bloc.freezed.dart';

class GetSkyTradeUserBloc
    extends Bloc<GetSkyTradeUserEvent, GetSkyTradeUserState> {
  GetSkyTradeUserBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const GetSkyTradeUserState.initial(),
        ) {
    on<_GetUser>(
      _getUser,
    );
  }

  @override
  Future<void> close() async {
    await _cleanUpResources();

    return super.close();
  }

  final AuthRepository _authRepository;

  Future<void> _getUser(
    _GetUser event,
    Emitter<GetSkyTradeUserState> emit,
  ) async {
    emit(
      const GetSkyTradeUserState.gettingUser(),
    );

    final result = await _authRepository.skyTradeUser;

    result.fold(
      (getSkyTradeUserFailure) {
        emit(
          GetSkyTradeUserState.failedToGetUser(
            getSkyTradeUserFailure: getSkyTradeUserFailure,
          ),
        );
      },
      (skyTradeUserEntity) => emit(
        GetSkyTradeUserState.gotUser(
          skyTradeUserEntity: skyTradeUserEntity,
        ),
      ),
    );
  }

  Future<void> _cleanUpResources() =>
      _authRepository.closeSkyTradeUserLocalStorageBox();
}
