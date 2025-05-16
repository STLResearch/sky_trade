import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/update_manager_failure.dart'
    show UpdateManagerFailure;
import 'package:sky_trade/core/resources/numbers/ui.dart'
    show minusOne, one, zero;
import 'package:sky_trade/core/resources/strings/secret_keys.dart'
    show skyTradeApiVersion;
import 'package:sky_trade/features/update_manager/domain/entities/update_manager_entity.dart';
import 'package:sky_trade/features/update_manager/domain/repositories/update_manager_repository.dart'
    show UpdateManagerRepository;

part 'update_manager_bloc.freezed.dart';

part 'update_manager_event.dart';

part 'update_manager_state.dart';

class UpdateManagerBloc extends Bloc<UpdateManagerEvent, UpdateManagerState> {
  UpdateManagerBloc(
    UpdateManagerRepository upgradeRepository,
  )   : _upgradeRepository = upgradeRepository,
        super(
          const UpdateManagerState.initial(),
        ) {
    on<_GetMinimumMobileAppVersion>(
      _getMinimumMobileAppVersion,
    );
  }

  final UpdateManagerRepository _upgradeRepository;

  Future<void> _getMinimumMobileAppVersion(
    _GetMinimumMobileAppVersion event,
    Emitter<UpdateManagerState> emit,
  ) async {
    emit(
      const UpdateManagerState.checkingMinimumMoblieAppVersion(),
    );

    final upgradeResult = await _upgradeRepository.getMinimumMobileAppVersion();

    upgradeResult.fold(
      (updateManagerFailure) => emit(
        UpdateManagerState.failedToCheckMinimumAppVersion(
          updateManagerFailure: updateManagerFailure,
        ),
      ),
      (updateManagerEntity) => emit(
        UpdateManagerState.checkedMinimumMobileAppVersion(
          updateManagerEntity: updateManagerEntity,
        ),
      ),
    );
  }
}

class VersionComparator {
  static int compareVersions(String version1, String version2) {
    final v1Parts = _parseVersion(version1);
    final v2Parts = _parseVersion(version2);

    for (var i = zero; i < v1Parts.length && i < v2Parts.length; i++) {
      if (v1Parts[i] < v2Parts[i]) return minusOne;
      if (v1Parts[i] > v2Parts[i]) return one;
    }

    if (v1Parts.length < v2Parts.length) return minusOne;
    if (v1Parts.length > v2Parts.length) return one;

    return zero;
  }

  static List<int> _parseVersion(String version) {
    return version
        .split('.')
        .map((part) => int.tryParse(part) ?? zero)
        .toList();
  }

  static bool isUpdateRequired(String appVersion, String requiredVersion) {
    return compareVersions(appVersion, requiredVersion) < zero;
  }
}

class EnvConfig {
  static String? getApiVersion() {
    return dotenv.env[skyTradeApiVersion];
  }
}
