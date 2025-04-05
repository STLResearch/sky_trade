part of 'app_link_bloc.dart';

@freezed
class AppLinkState with _$AppLinkState {
  const factory AppLinkState.initial() = _Initial;

  const factory AppLinkState.gettingLink() = _GettingLink;

  const factory AppLinkState.noLink() = _NoLink;

  const factory AppLinkState.gotLink() = _GotLink;

  const factory AppLinkState.emailVerificationLink() = _EmailVerificationLink;

  const factory AppLinkState.unrecognizedLink() = _UnrecognizedLink;
}
