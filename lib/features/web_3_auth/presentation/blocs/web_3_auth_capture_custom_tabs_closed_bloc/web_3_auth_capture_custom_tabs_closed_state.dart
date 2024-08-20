// ignore_for_file: lines_longer_than_80_chars

part of 'web_3_auth_capture_custom_tabs_closed_bloc.dart';

@freezed
class Web3AuthCaptureCustomTabsClosedState
    with _$Web3AuthCaptureCustomTabsClosedState {
  const factory Web3AuthCaptureCustomTabsClosedState.initial() = _Initial;

  const factory Web3AuthCaptureCustomTabsClosedState.capturingWhenCustomTabsWillClose() =
      _CapturingWhenCustomTabsWillClose;

  const factory Web3AuthCaptureCustomTabsClosedState.capturedWhenCustomTabsWillClose() =
      _CapturedWhenCustomTabsWillClose;
}
