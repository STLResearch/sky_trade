part of 'app_link_bloc.dart';

@freezed
class AppLinkEvent with _$AppLinkEvent {
  const factory AppLinkEvent.listenLink() = _ListenLink;

  const factory AppLinkEvent.linkGotten({
    required Uri uri,
  }) = _LinkGotten;
}
