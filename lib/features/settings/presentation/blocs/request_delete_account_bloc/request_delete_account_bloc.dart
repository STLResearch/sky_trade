import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/settings_failure.dart'
    show RequestDeleteAccountFailure;
import 'package:sky_trade/features/settings/domain/entities/settings_entity.dart'
    show MessageEntity;
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';

part 'request_delete_account_event.dart';

part 'request_delete_account_state.dart';

part 'request_delete_account_bloc.freezed.dart';

class RequestDeleteAccountBloc
    extends Bloc<RequestDeleteAccountEvent, RequestDeleteAccountState> {
  RequestDeleteAccountBloc(
    SettingsRepository settingsRepository,
  )   : _settingsRepository = settingsRepository,
        super(
          const RequestDeleteAccountState.initial(),
        ) {
    on<_SendOtp>(
      _sendOtp,
    );
  }

  final SettingsRepository _settingsRepository;

  Future<void> _sendOtp(
    _SendOtp event,
    Emitter<RequestDeleteAccountState> emit,
  ) async {
    emit(
      const RequestDeleteAccountState.sendingOtp(),
    );

    final result = await _settingsRepository.requestDeleteAccount();

    result.fold(
      (requestDeleteAccountFailure) => emit(
        RequestDeleteAccountState.failedToSendOtp(
          requestDeleteAccountFailure: requestDeleteAccountFailure,
        ),
      ),
      (messageEntity) => emit(
        RequestDeleteAccountState.sentOtp(
          messageEntity: messageEntity,
        ),
      ),
    );
  }
}
