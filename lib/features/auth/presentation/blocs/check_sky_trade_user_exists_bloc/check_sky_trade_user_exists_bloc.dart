import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failures/auth_failure.dart'
    show
        CheckSkyTradeUserFailure,
        InvalidSignatureFailure,
        UnauthorizedFailure,
        UserDoesNotExistFailure;
import 'package:sky_ways/features/auth/domain/entities/auth_entity.dart'
    show SkyTradeUserEntity;
import 'package:sky_ways/features/auth/domain/repositories/auth_repository.dart';

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

    final result = await _authRepository.checkSkyTradeUserExistsUsing(
      email: event.email,
    );

    result.fold(
      (checkSkyTradeUserFailure) {
        if (checkSkyTradeUserFailure is UnauthorizedFailure) {
          emit(
            const CheckSkyTradeUserExistsState.userUnauthorized(),
          );
        } else if (checkSkyTradeUserFailure is InvalidSignatureFailure) {
          emit(
            const CheckSkyTradeUserExistsState.userSignatureInvalid(),
          );
        } else if (checkSkyTradeUserFailure is UserDoesNotExistFailure) {
          emit(
            const CheckSkyTradeUserExistsState.userDoesNotExist(),
          );
        } else {
          emit(
            CheckSkyTradeUserExistsState.failedToCheckUser(
              checkSkyTradeUserFailure: checkSkyTradeUserFailure,
            ),
          );
        }
      },
      (skyTradeUserEntity) => emit(
        CheckSkyTradeUserExistsState.userExists(
          skyTradeUserEntity: skyTradeUserEntity,
        ),
      ),
    );
  }
}
