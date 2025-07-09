part of 'guest_user_bloc.dart';

@freezed
class GuestUserState with _$GuestUserState {
  const factory GuestUserState.initial() = _Initial;

  const factory GuestUserState.checkingIfGuestUser() = _CheckingIfGuestUser;

  const factory GuestUserState.settingMaybeGuestUser() = _SettingMaybeGuestUser;

  const factory GuestUserState.isGuestUser() = _IsGuestUser;

  const factory GuestUserState.notGuestUser() = _NotGuestUser;
}
