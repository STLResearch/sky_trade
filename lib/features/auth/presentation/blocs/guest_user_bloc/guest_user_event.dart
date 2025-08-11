// SPDX-License-Identifier: UNLICENSED
                            
part of 'guest_user_bloc.dart';

@freezed
class GuestUserEvent with _$GuestUserEvent {
  const factory GuestUserEvent.checkUserIsGuest() = _CheckUserIsGuest;

  const factory GuestUserEvent.setUserIsGuest({
    required bool isGuest,
  }) = _SetUserIsGuest;
}
