import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/auth/domain/repositories/auth_repository.dart';

part 'web_3_auth_capture_custom_tabs_closed_event.dart';

part 'web_3_auth_capture_custom_tabs_closed_state.dart';

part 'web_3_auth_capture_custom_tabs_closed_bloc.freezed.dart';

class Web3AuthCaptureCustomTabsClosedBloc extends Bloc<
    Web3AuthCaptureCustomTabsClosedEvent,
    Web3AuthCaptureCustomTabsClosedState> {
  Web3AuthCaptureCustomTabsClosedBloc(
    AuthRepository authRepository,
  )   : _authRepository = authRepository,
        super(
          const Web3AuthCaptureCustomTabsClosedState.initial(),
        ) {
    on<_CaptureWhenCustomTabsClosed>(
      _captureWhenCustomTabsClosed,
    );
  }

  final AuthRepository _authRepository;

  Future<void> _captureWhenCustomTabsClosed(
    _CaptureWhenCustomTabsClosed _,
    Emitter<Web3AuthCaptureCustomTabsClosedState> emit,
  ) async {
    emit(
      const Web3AuthCaptureCustomTabsClosedState
          .capturingWhenCustomTabsWillClose(),
    );

    await _authRepository.captureWhenWeb3AuthCustomTabsClosed();

    emit(
      const Web3AuthCaptureCustomTabsClosedState
          .capturedWhenCustomTabsWillClose(),
    );
  }
}
