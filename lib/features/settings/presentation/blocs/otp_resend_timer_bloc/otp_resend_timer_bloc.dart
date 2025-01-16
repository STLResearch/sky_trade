import 'dart:async' show Timer;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show fiftyNine, one, two, zero;

part 'otp_resend_timer_event.dart';

part 'otp_resend_timer_state.dart';

part 'otp_resend_timer_bloc.freezed.dart';

class OtpResendTimerBloc
    extends Bloc<OtpResendTimerEvent, OtpResendTimerState> {
  OtpResendTimerBloc()
      : super(
          const OtpResendTimerState.initial(),
        ) {
    on<_Countdown>(
      _countdown,
    );

    on<_Tick>(
      _tick,
    );

    on<_Elapse>(
      _elapse,
    );
  }

  @override
  Future<void> close() {
    _cleanupCountdownTimer();

    return super.close();
  }

  Timer? _countdownTimer;

  Future<void> _countdown(
    _Countdown event,
    Emitter<OtpResendTimerState> emit,
  ) async {
    if (_countdownTimer?.isActive ?? false) {
      _countdownTimer?.cancel();
    }

    var minutesLeft = two;
    var secondsLeft = zero;

    add(
      OtpResendTimerEvent.tick(
        minutesLeft: minutesLeft,
        secondsLeft: secondsLeft,
      ),
    );

    _countdownTimer = Timer.periodic(
      const Duration(
        seconds: one,
      ),
      (timer) {
        if (secondsLeft == zero && (minutesLeft == two || minutesLeft == one)) {
          minutesLeft--;
          secondsLeft = fiftyNine;
        } else {
          secondsLeft--;
        }

        if (minutesLeft == zero && secondsLeft == zero) {
          _countdownTimer?.cancel();

          add(
            const OtpResendTimerEvent.elapse(),
          );

          return;
        }

        add(
          OtpResendTimerEvent.tick(
            minutesLeft: minutesLeft,
            secondsLeft: secondsLeft,
          ),
        );
      },
    );
  }

  void _tick(
    _Tick event,
    Emitter<OtpResendTimerState> emit,
  ) =>
      emit(
        OtpResendTimerState.ticked(
          minutesLeft: event.minutesLeft,
          secondsLeft: event.secondsLeft,
        ),
      );

  void _elapse(
    _Elapse event,
    Emitter<OtpResendTimerState> emit,
  ) =>
      emit(
        const OtpResendTimerState.elapsed(),
      );

  void _cleanupCountdownTimer() {
    _countdownTimer?.cancel();
    _countdownTimer = null;
  }
}
