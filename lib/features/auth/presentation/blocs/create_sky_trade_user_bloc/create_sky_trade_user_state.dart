part of 'create_sky_trade_user_bloc.dart';

@freezed
class CreateSkyTradeUserState with _$CreateSkyTradeUserState {
  const factory CreateSkyTradeUserState.initial() = _Initial;

  const factory CreateSkyTradeUserState.creatingUser() = _CreatingUser;

  const factory CreateSkyTradeUserState.createdUser({
    required SkyTradeUserEntity skyTradeUserEntity,
  }) = _CreatedUser;

  const factory CreateSkyTradeUserState.failedToCreateUser({
    required CreateSkyTradeUserFailure createSkyTradeUserFailure,
  }) = _FailedToCreateUser;
}
