import 'dart:async' show Timer;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show one, thirty, zero;

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

    on<_Dispose>(
      _dispose,
    );
  }

  Timer? _countdownTimer;

  Future<void> _countdown(
    _Countdown event,
    Emitter<OtpResendTimerState> emit,
  ) async {
    if (_countdownTimer?.isActive ?? false) {
      _countdownTimer?.cancel();
    }

    var secondsLeft = thirty;

    add(
      OtpResendTimerEvent.tick(
        secondsLeft: secondsLeft,
      ),
    );

    _countdownTimer = Timer.periodic(
      const Duration(
        seconds: one,
      ),
      (timer) {
        secondsLeft--;

        if (secondsLeft == zero) {
          _countdownTimer?.cancel();

          add(
            const OtpResendTimerEvent.elapse(),
          );

          return;
        }

        add(
          OtpResendTimerEvent.tick(
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

  void _dispose(
    _Dispose event,
    Emitter<OtpResendTimerState> emit,
  ) =>
      _countdownTimer?.cancel();
}
