// SPDX-License-Identifier: UNLICENSED
                            
part of 'otp_resend_timer_bloc.dart';

@freezed
class OtpResendTimerState with _$OtpResendTimerState {
  const factory OtpResendTimerState.initial() = _Initial;

  const factory OtpResendTimerState.ticked({
    required int minutesLeft,
    required int secondsLeft,
  }) = _Ticked;

  const factory OtpResendTimerState.elapsed() = _Elapsed;
}
