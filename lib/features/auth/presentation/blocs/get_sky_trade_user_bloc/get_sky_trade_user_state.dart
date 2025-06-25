part of 'get_sky_trade_user_bloc.dart';

@freezed
class GetSkyTradeUserState with _$GetSkyTradeUserState {
  const factory GetSkyTradeUserState.initial() = _Initial;

  const factory GetSkyTradeUserState.gettingUser() = _GettingUser;

  const factory GetSkyTradeUserState.gotUser({
    required SkyTradeUserEntity skyTradeUserEntity,
  }) = _GotUser;

  const factory GetSkyTradeUserState.failedToGetUser({
    required GetSkyTradeUserFailure getSkyTradeUserFailure,
  }) = _FailedToGetUser;
}
