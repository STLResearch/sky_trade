part of 'invite_bloc.dart';

@freezed
class InviteState with _$InviteState {
  const factory InviteState.initial() = _Initial;

  const factory InviteState.sendingInvite() = _SendingInvite;

  const factory InviteState.sentInvite({
    required InviteEntity inviteEntity,
  }) = _SentInvite;

  const factory InviteState.failedToSendInvite({
    required InviteFailure inviteFailure,
  }) = _FailedToSendInvite;
}
