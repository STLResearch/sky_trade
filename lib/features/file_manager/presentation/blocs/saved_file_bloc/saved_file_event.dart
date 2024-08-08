part of 'saved_file_bloc.dart';

@freezed
class SavedFileEvent with _$SavedFileEvent {
  const factory SavedFileEvent.getSavedFile({
    required String name,
    required FileType type,
  }) = _GetSavedFile;
}
