// ignore_for_file: lines_longer_than_80_chars

part of 'web_3_auth_capture_custom_tabs_closed_bloc.dart';

@freezed
class Web3AuthCaptureCustomTabsClosedEvent
    with _$Web3AuthCaptureCustomTabsClosedEvent {
  const factory Web3AuthCaptureCustomTabsClosedEvent.captureWhenCustomTabsClosed() =
      _CaptureWhenCustomTabsClosed;
}
