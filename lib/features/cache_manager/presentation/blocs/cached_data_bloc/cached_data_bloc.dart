import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/utils/enums/local.dart' show CacheType;
import 'package:sky_ways/features/cache_manager/domain/entities/cache_entity.dart';
import 'package:sky_ways/features/cache_manager/domain/repositories/cache_manager_repository.dart';

part 'cached_data_event.dart';

part 'cached_data_state.dart';

part 'cached_data_bloc.freezed.dart';

class CachedDataBloc extends Bloc<CachedDataEvent, CachedDataState> {
  CachedDataBloc(
    CacheManagerRepository cacheManagerRepository,
  )   : _cacheManagerRepository = cacheManagerRepository,
        super(
          const CachedDataState.initial(),
        ) {
    on<_GetCachedData>(
      _getCachedData,
    );
  }

  final CacheManagerRepository _cacheManagerRepository;

  String? _previousName;

  String? _currentName;

  final _savedNames = List<String>.empty(
    growable: true,
  );

  Future<void> _getCachedData(
    _GetCachedData event,
    Emitter<CachedDataState> emit,
  ) async {
    _currentName = event.name;

    if (_savedNames.contains(
          _currentName,
        ) ||
        _currentName == _previousName) return;

    final cachedDataState = await _cacheManagerRepository
        .read(
          name: event.name,
          type: event.type,
        )
        .then(
          (result) => result.fold(
            (_) => const CachedDataState.cacheNotExist(),
            (cacheEntity) => CachedDataState.cacheExists(
              cacheEntity: cacheEntity,
            ),
          ),
        );

    if (cachedDataState is _CacheExists) {
      _previousName = _currentName;
      _savedNames.add(
        _currentName!,
      );
    }

    emit(
      cachedDataState,
    );
  }
}
