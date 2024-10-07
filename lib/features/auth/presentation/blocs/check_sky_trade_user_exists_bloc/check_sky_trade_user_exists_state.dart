part of 'check_sky_trade_user_exists_bloc.dart';

@freezed
class CheckSkyTradeUserExistsState with _$CheckSkyTradeUserExistsState {
  const factory CheckSkyTradeUserExistsState.initial() = _Initial;

  const factory CheckSkyTradeUserExistsState.checkingUser() = _CheckingUser;

  const factory CheckSkyTradeUserExistsState.userExists({
    required SkyTradeUserEntity skyTradeUserEntity,
  }) = _UserExists;

  const factory CheckSkyTradeUserExistsState.userUnauthorized() =
      _UserUnauthorized;

  const factory CheckSkyTradeUserExistsState.userSignatureInvalid() =
      _UserSignatureInvalid;

  const factory CheckSkyTradeUserExistsState.userDoesNotExist() =
      _UserDoesNotExist;

  const factory CheckSkyTradeUserExistsState.failedToCheckUser({
    required CheckSkyTradeUserFailure checkSkyTradeUserFailure,
  }) = _FailedToCheckUser;
}
