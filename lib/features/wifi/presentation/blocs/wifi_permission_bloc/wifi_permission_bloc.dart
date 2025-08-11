// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/wifi_failure.dart'
    show WifiPermissionFailure;
import 'package:sky_trade/features/wifi/domain/entities/wifi_entity.dart'
    show WifiPermissionEntity;
import 'package:sky_trade/features/wifi/domain/repositories/wifi_repository.dart';

part 'wifi_permission_event.dart';

part 'wifi_permission_state.dart';

part 'wifi_permission_bloc.freezed.dart';

class WifiPermissionBloc
    extends Bloc<WifiPermissionEvent, WifiPermissionState> {
  WifiPermissionBloc(
    WifiRepository wifiRepository,
  )   : _wifiRepository = wifiRepository,
        super(
          const WifiPermissionState.initial(),
        ) {
    on<_RequestPermission>(
      _requestPermission,
    );
  }

  final WifiRepository _wifiRepository;

  Future<void> _requestPermission(
    _RequestPermission event,
    Emitter<WifiPermissionState> emit,
  ) async {
    emit(
      const WifiPermissionState.requestingPermission(),
    );

    final result = await _wifiRepository.requestWifiPermission();

    result.fold(
      (wifiPermissionFailure) => emit(
        WifiPermissionState.cannotRequestPermission(
          wifiPermissionFailure: wifiPermissionFailure,
        ),
      ),
      (wifiPermissionEntity) => emit(
        WifiPermissionState.maybeGrantedPermission(
          wifiPermissionEntity: wifiPermissionEntity,
        ),
      ),
    );
  }
}
