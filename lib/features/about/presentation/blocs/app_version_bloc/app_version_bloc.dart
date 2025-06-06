import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/about_failure.dart';
import 'package:sky_trade/features/about/domain/entities/about_entity.dart';
import 'package:sky_trade/features/about/domain/repositories/about_repository.dart';

part 'app_version_event.dart';

part 'app_version_state.dart';

part 'app_version_bloc.freezed.dart';

class AppVersionBloc extends Bloc<AppVersionEvent, AppVersionState> {
  AppVersionBloc(
    AboutRepository aboutRepository,
  )   : _aboutRepository = aboutRepository,
        super(
          const AppVersionState.initial(),
        ) {
    on<_GetVersion>(
      _getVersion,
    );
  }

  final AboutRepository _aboutRepository;

  Future<void> _getVersion(
    _GetVersion event,
    Emitter<AppVersionState> emit,
  ) async {
    emit(
      const AppVersionState.gettingVersion(),
    );

    final result = await _aboutRepository.appVersion;

    result.fold(
      (appVersionFailure) => emit(
        AppVersionState.failedToGetVersion(
          appVersionFailure: appVersionFailure,
        ),
      ),
      (appVersionEntity) => emit(
        AppVersionState.gotVersion(
          appVersionEntity: appVersionEntity,
        ),
      ),
    );
  }
}
