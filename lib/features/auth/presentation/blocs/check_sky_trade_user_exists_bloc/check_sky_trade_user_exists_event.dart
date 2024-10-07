part of 'check_sky_trade_user_exists_bloc.dart';

@freezed
class CheckSkyTradeUserExistsEvent with _$CheckSkyTradeUserExistsEvent {
  const factory CheckSkyTradeUserExistsEvent.checkUserExists() =
      _CheckUserExists;
}
