part of 'save_file_bloc.dart';

@freezed
class SaveFileState with _$SaveFileState {
  const factory SaveFileState.initial() = _Initial;

  const factory SaveFileState.saving() = _Saving;

  const factory SaveFileState.saved({
    required String name,
    required FileType type,
  }) = _Saved;

  const factory SaveFileState.failedToSave() = _FailedToSave;
}
