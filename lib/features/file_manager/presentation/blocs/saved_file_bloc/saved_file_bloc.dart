import 'package:bloc/bloc.dart' show Bloc, BlocBase, Change, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/resources/strings/local.dart' show existsKey;
import 'package:sky_ways/core/utils/enums/local.dart' show FileType;
import 'package:sky_ways/features/file_manager/domain/entities/file_entity.dart';
import 'package:sky_ways/features/file_manager/domain/repositories/file_manager_repository.dart';

part 'saved_file_bloc.freezed.dart';

part 'saved_file_event.dart';

part 'saved_file_state.dart';

class SavedFileBloc extends Bloc<SavedFileEvent, SavedFileState> {
  SavedFileBloc(
    FileManagerRepository fileManagerRepository,
  )   : _fileManagerRepository = fileManagerRepository,
        super(
          const SavedFileState.initial(),
        ) {
    on<_GetSavedFile>(
      _getSavedFile,
    );
  }

  final FileManagerRepository _fileManagerRepository;

  String? _previousName;

  String? _currentName;

  final _savedNames = List<String>.empty(
    growable: true,
  );

  Future<void> _getSavedFile(
    _GetSavedFile event,
    Emitter<SavedFileState> emit,
  ) async {
    _currentName = event.name;

    if (_savedNames.contains(
          _currentName,
        ) ||
        _currentName == _previousName) return;

    final savedFileState = await switch (event.type) {
      FileType.json => _fileManagerRepository
          .read(
            name: event.name,
            type: event.type,
          )
          .then(
            (v) => v.fold(
              (_) => const SavedFileState.fileNotExist(),
              (s) => SavedFileState.fileExists(
                fileEntity: s,
              ),
            ),
          ),
      FileType.jsonList => _fileManagerRepository
          .read(
            name: event.name,
            type: event.type,
          )
          .then(
            (v) => v.fold(
              (_) => const SavedFileState.fileNotExist(),
              (s) => SavedFileState.fileExists(
                fileEntity: s,
              ),
            ),
          ),
      FileType.txt => _fileManagerRepository
          .read(
            name: event.name,
            type: event.type,
          )
          .then(
            (v) => v.fold(
              (_) => const SavedFileState.fileNotExist(),
              (s) => SavedFileState.fileExists(
                fileEntity: s,
              ),
            ),
          ),
    };

    if (savedFileState is _FileExists) {
      _previousName = _currentName;
      _savedNames.add(
        _currentName!,
      );
    }

    emit(
      savedFileState,
    );
  }
}
