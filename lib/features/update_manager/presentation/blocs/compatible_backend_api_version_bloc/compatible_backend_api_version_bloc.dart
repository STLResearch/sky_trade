import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/update_manager_failure.dart'
    show ApiVersionFailure, UnknownApiVersionFailure;
import 'package:sky_trade/features/update_manager/domain/entities/update_manager_entity.dart';
import 'package:sky_trade/features/update_manager/domain/repositories/update_manager_repository.dart';

part 'compatible_backend_api_version_event.dart';

part 'compatible_backend_api_version_state.dart';

part 'compatible_backend_api_version_bloc.freezed.dart';

class CompatibleBackendApiVersionBloc extends Bloc<
    CompatibleBackendApiVersionEvent, CompatibleBackendApiVersionState> {
  CompatibleBackendApiVersionBloc(
    UpdateManagerRepository upgradeRepository,
  )   : _upgradeRepository = upgradeRepository,
        super(
          const CompatibleBackendApiVersionState.initial(),
        ) {
    on<_CheckVersion>(
      _checkVersion,
    );

    on<_CheckCompatibility>(
      _checkCompatibility,
    );
  }

  final UpdateManagerRepository _upgradeRepository;

  Future<void> _checkVersion(
    _CheckVersion event,
    Emitter<CompatibleBackendApiVersionState> emit,
  ) async {
    emit(
      const CompatibleBackendApiVersionState.checkingVersion(),
    );

    final result = await _upgradeRepository.compatibleBackendApiVersion;

    result.fold(
      (incompatibleBackendApiVersionFailure) => emit(
        CompatibleBackendApiVersionState.failedToCheckVersion(
          apiVersionFailure: incompatibleBackendApiVersionFailure,
        ),
      ),
      (versionEntity) => add(
        CompatibleBackendApiVersionEvent.checkCompatibility(
          versionEntity: versionEntity,
        ),
      ),
    );
  }

  void _checkCompatibility(
    _CheckCompatibility event,
    Emitter<CompatibleBackendApiVersionState> emit,
  ) {
    final isCompatible = _upgradeRepository.isCurrentVersionCompatibleWith(
      apiVersionFromBackend: event.versionEntity.currentApiVersion,
    );

    emit(
      switch (isCompatible) {
        true => const CompatibleBackendApiVersionState.versionCompatible(),
        false => const CompatibleBackendApiVersionState.versionIncompatible(),
        null => CompatibleBackendApiVersionState.failedToCheckVersion(
            apiVersionFailure: UnknownApiVersionFailure(),
          ),
      },
    );
  }
}
