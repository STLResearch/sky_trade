import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:dartz/dartz.dart' show Either;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/wifi_failure.dart'
    show WifiAdapterStateFailure;
import 'package:sky_trade/features/wifi/domain/entities/wifi_entity.dart'
    show WifiAdapterStateEntity;
import 'package:sky_trade/features/wifi/domain/repositories/wifi_repository.dart';

part 'wifi_adapter_state_event.dart';

part 'wifi_adapter_state_state.dart';

part 'wifi_adapter_state_bloc.freezed.dart';

class WifiAdapterStateBloc
    extends Bloc<WifiAdapterStateEvent, WifiAdapterStateState> {
  WifiAdapterStateBloc(
    WifiRepository wifiRepository,
  )   : _wifiRepository = wifiRepository,
        super(
          const WifiAdapterStateState.initial(),
        ) {
    on<_ListenWifiAdapterState>(
      _listenWifiAdapterState,
    );

    on<_WifiAdapterStateGotten>(
      _wifiAdapterStateGotten,
    );

    on<_WifiAdapterStateNotGotten>(
      _wifiAdapterStateNotGotten,
    );
  }

  @override
  Future<void> close() async {
    await _cleanupStreamSubscription();

    return super.close();
  }

  final WifiRepository _wifiRepository;

  StreamSubscription<Either<WifiAdapterStateFailure, WifiAdapterStateEntity>>?
      _wifiAdapterStateStreamSubscription;

  Future<void> _listenWifiAdapterState(
    _ListenWifiAdapterState _,
    Emitter<WifiAdapterStateState> emit,
  ) async {
    await _cleanupStreamSubscription();

    emit(
      const WifiAdapterStateState.gettingWifiAdapterState(),
    );

    _wifiAdapterStateStreamSubscription =
        _wifiRepository.wifiAdapterStateStream.listen(
      (
        wifiAdapterStateFailureOrEntity,
      ) =>
          _listenWifiAdapterStateStream(
        wifiAdapterStateFailureOrEntity: wifiAdapterStateFailureOrEntity,
        emit: emit,
      ),
    );
  }

  void _listenWifiAdapterStateStream({
    required Either<WifiAdapterStateFailure, WifiAdapterStateEntity>
        wifiAdapterStateFailureOrEntity,
    required Emitter<WifiAdapterStateState> emit,
  }) =>
      wifiAdapterStateFailureOrEntity.fold(
        (wifiAdapterStateFailure) => add(
          WifiAdapterStateEvent.wifiAdapterStateNotGotten(
            wifiAdapterStateFailure: wifiAdapterStateFailure,
          ),
        ),
        (wifiAdapterStateEntity) => add(
          WifiAdapterStateEvent.wifiAdapterStateGotten(
            wifiAdapterStateEntity: wifiAdapterStateEntity,
          ),
        ),
      );

  void _wifiAdapterStateNotGotten(
    _WifiAdapterStateNotGotten event,
    Emitter<WifiAdapterStateState> emit,
  ) =>
      emit(
        WifiAdapterStateState.failedToGetWifiAdapterState(
          wifiAdapterStateFailure: event.wifiAdapterStateFailure,
        ),
      );

  void _wifiAdapterStateGotten(
    _WifiAdapterStateGotten event,
    Emitter<WifiAdapterStateState> emit,
  ) =>
      emit(
        WifiAdapterStateState.gotWifiAdapterState(
          wifiAdapterStateEntity: event.wifiAdapterStateEntity,
        ),
      );

  Future<void> _cleanupStreamSubscription() async {
    await _wifiAdapterStateStreamSubscription?.cancel();
    _wifiAdapterStateStreamSubscription = null;
  }
}
