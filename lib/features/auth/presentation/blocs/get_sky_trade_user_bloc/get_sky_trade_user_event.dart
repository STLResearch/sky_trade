// SPDX-License-Identifier: UNLICENSED
                            
part of 'get_sky_trade_user_bloc.dart';

@freezed
class GetSkyTradeUserEvent with _$GetSkyTradeUserEvent {
  const factory GetSkyTradeUserEvent.getUser() = _GetUser;
}
