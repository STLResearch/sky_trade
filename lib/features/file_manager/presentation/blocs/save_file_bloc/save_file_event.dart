part of 'save_file_bloc.dart';

@freezed
class SaveFileEvent with _$SaveFileEvent {
  const factory SaveFileEvent.saveToFile({
    required String name,
    required Object content,
    required FileType type,
  }) = _SaveToFile;
}
