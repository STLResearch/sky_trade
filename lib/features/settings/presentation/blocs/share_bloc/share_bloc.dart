import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/settings_failure.dart'
    show ShareFailure;
import 'package:sky_trade/features/settings/domain/entities/settings_entity.dart'
    show ShareEntity;
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';

part 'share_event.dart';

part 'share_state.dart';

part 'share_bloc.freezed.dart';

class ShareBloc extends Bloc<ShareEvent, ShareState> {
  ShareBloc(
    SettingsRepository settingsRepository,
  )   : _settingsRepository = settingsRepository,
        super(
          const ShareState.initial(),
        ) {
    on<_Share>(
      _share,
    );
  }

  final SettingsRepository _settingsRepository;

  Future<void> _share(
    _Share event,
    Emitter<ShareState> emit,
  ) async {
    emit(
      const ShareState.sharing(),
    );

    final result = await _settingsRepository.share(
      subject: event.subject,
      title: event.title,
      message: event.message,
    );

    result.fold(
      (shareFailure) => emit(
        ShareState.failedToShare(
          shareFailure: shareFailure,
        ),
      ),
      (shareEntity) => emit(
        ShareState.maybeShared(
          shareEntity: shareEntity,
        ),
      ),
    );
  }
}
