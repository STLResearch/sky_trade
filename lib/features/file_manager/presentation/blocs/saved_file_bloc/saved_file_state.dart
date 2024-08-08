part of 'saved_file_bloc.dart';

@freezed
class SavedFileState with _$SavedFileState {
  const factory SavedFileState.initial() = _Initial;

  const factory SavedFileState.fileExists({
    required FileEntity fileEntity,
  }) = _FileExists;

  const factory SavedFileState.fileNotExist() = _FileNotExist;
}
