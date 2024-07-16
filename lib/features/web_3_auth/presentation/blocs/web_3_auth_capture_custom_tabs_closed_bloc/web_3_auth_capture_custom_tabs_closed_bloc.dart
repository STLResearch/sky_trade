import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/errors/failure.dart'
    show Web3AuthInitializationFailure;
import 'package:sky_ways/features/web_3_auth/domain/repositories/web_3_auth_repository.dart';

part 'web_3_auth_capture_custom_tabs_closed_event.dart';

part 'web_3_auth_capture_custom_tabs_closed_state.dart';

part 'web_3_auth_capture_custom_tabs_closed_bloc.freezed.dart';

class Web3AuthCaptureCustomTabsClosedBloc extends Bloc<
    Web3AuthCaptureCustomTabsClosedEvent,
    Web3AuthCaptureCustomTabsClosedState> {
  Web3AuthCaptureCustomTabsClosedBloc(
    Web3AuthRepository web3AuthRepository,
  )   : _web3AuthRepository = web3AuthRepository,
        super(
          const Web3AuthCaptureCustomTabsClosedState.initial(),
        ) {
    on<_CaptureWhenCustomTabsClosed>(
      _captureWhenCustomTabsClosed,
    );
  }

  final Web3AuthRepository _web3AuthRepository;

  Future<void> _captureWhenCustomTabsClosed(
    _CaptureWhenCustomTabsClosed _,
    Emitter<Web3AuthCaptureCustomTabsClosedState> emit,
  ) async {
    emit(
      const Web3AuthCaptureCustomTabsClosedState
          .capturingWhenCustomTabsWillClose(),
    );

    await _web3AuthRepository.captureWhenCustomTabsClosed();

    emit(
      const Web3AuthCaptureCustomTabsClosedState
          .capturedWhenCustomTabsWillClose(),
    );
  }
}
