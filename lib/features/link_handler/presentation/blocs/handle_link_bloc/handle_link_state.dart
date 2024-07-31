part of 'handle_link_bloc.dart';

@freezed
class HandleLinkState with _$HandleLinkState {
  const factory HandleLinkState.initial() = _Initial;

  const factory HandleLinkState.handling() = _Handling;

  const factory HandleLinkState.handled({
    required LinkEntity linkEntity,
  }) = _Handled;

  const factory HandleLinkState.failedToHandle({
    required HandleLinkFailure handleLinkFailure,
  }) = _FailedToHandle;
}
