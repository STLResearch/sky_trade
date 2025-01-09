import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/settings_failure.dart'
    show DeleteAccountFailure;
import 'package:sky_trade/features/settings/domain/entities/settings_entity.dart'
    show MessageEntity;
import 'package:sky_trade/features/settings/domain/repositories/settings_repository.dart';

part 'delete_account_event.dart';

part 'delete_account_state.dart';

part 'delete_account_bloc.freezed.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  DeleteAccountBloc(
    SettingsRepository settingsRepository,
  )   : _settingsRepository = settingsRepository,
        super(
          const DeleteAccountState.initial(),
        ) {
    on<_DeleteAccount>(
      _deleteAccount,
    );
  }

  final SettingsRepository _settingsRepository;

  Future<void> _deleteAccount(
    _DeleteAccount event,
    Emitter<DeleteAccountState> emit,
  ) async {
    emit(
      const DeleteAccountState.deletingAccount(),
    );

    final result = await _settingsRepository.deleteAccount(
      otp: int.parse(
        event.otp,
      ),
    );

    result.fold(
      (deleteAccountFailure) => emit(
        DeleteAccountState.failedToDeleteAccount(
          deleteAccountFailure: deleteAccountFailure,
        ),
      ),
      (messageEntity) => emit(
        DeleteAccountState.deletedAccount(
          messageEntity: messageEntity,
        ),
      ),
    );
  }
}
