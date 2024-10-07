part of 'create_sky_trade_user_bloc.dart';

@freezed
class CreateSkyTradeUserEvent with _$CreateSkyTradeUserEvent {
  const factory CreateSkyTradeUserEvent.createUser({
    required bool subscribeToNewsletter,
}) = _CreateUser;
}
