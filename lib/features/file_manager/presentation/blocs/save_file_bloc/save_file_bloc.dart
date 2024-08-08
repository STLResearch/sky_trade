import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/utils/enums/local.dart' show FileType;
import 'package:sky_ways/features/file_manager/domain/repositories/file_manager_repository.dart';

part 'save_file_event.dart';

part 'save_file_state.dart';

part 'save_file_bloc.freezed.dart';

class SaveFileBloc extends Bloc<SaveFileEvent, SaveFileState> {
  SaveFileBloc(
    FileManagerRepository fileManagerRepository,
  )   : _fileManagerRepository = fileManagerRepository,
        super(
          const SaveFileState.initial(),
        ) {
    on<_SaveToFile>(
      _saveToFile,
    );
  }

  final FileManagerRepository _fileManagerRepository;

  Future<void> _saveToFile(
    _SaveToFile event,
    Emitter<SaveFileState> emit,
  ) async {
    emit(
      const SaveFileState.saving(),
    );

    final result = await _fileManagerRepository.write(
      name: event.name,
      content: event.content,
      type: event.type,
    );

    result.fold(
      (writeFileFailure) => emit(
        const SaveFileState.failedToSave(),
      ),
      (fileEntity) => emit(
        SaveFileState.saved(
          name: fileEntity.name,
          type: fileEntity.type,
        ),
      ),
    );
  }
}
