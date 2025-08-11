// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/auth_failure.dart'
    show CheckSkyTradeUserFailure;
import 'package:sky_trade/features/auth/domain/entities/auth_entity.dart'
    show SkyTradeUserEntity;
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'check_sky_trade_user_exists_event.dart';

part 'check_sky_trade_user_exists_state.dart';

part 'check_sky_trade_user_exists_bloc.freezed.dart';

class CheckSkyTradeUserExistsBloc
    extends Bloc<CheckSkyTradeUserExistsEvent, CheckSkyTradeUserExistsState> {
  CheckSkyTradeUserExistsBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const CheckSkyTradeUserExistsState.initial(),
        ) {
    on<_CheckUserExists>(
      _checkUserExists,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _checkUserExists(
    _CheckUserExists event,
    Emitter<CheckSkyTradeUserExistsState> emit,
  ) async {
    emit(
      const CheckSkyTradeUserExistsState.checkingUser(),
    );

    final result = await _authRepository.checkSkyTradeUserExists();

    result.fold(
      (checkSkyTradeUserFailure) {
        emit(
          CheckSkyTradeUserExistsState.failedToCheckUser(
            checkSkyTradeUserFailure: checkSkyTradeUserFailure,
          ),
        );
      },
      (skyTradeUserEntity) => emit(
        CheckSkyTradeUserExistsState.userExists(
          skyTradeUserEntity: skyTradeUserEntity,
        ),
      ),
    );
  }
}
