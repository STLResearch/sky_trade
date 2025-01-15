part of 'otp_resend_timer_bloc.dart';

@freezed
class OtpResendTimerEvent with _$OtpResendTimerEvent {
  const factory OtpResendTimerEvent.countdown() = _Countdown;

  const factory OtpResendTimerEvent.tick({
    required int minutesLeft,
    required int secondsLeft,
  }) = _Tick;

  const factory OtpResendTimerEvent.elapse() = _Elapse;
}
