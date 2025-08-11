// SPDX-License-Identifier: UNLICENSED
                            
part of 'invite_bloc.dart';

@freezed
class InviteEvent with _$InviteEvent {
  const factory InviteEvent.sendInvite({
    required String email,
  }) = _SendInvite;
}
