import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/utils/enums/local.dart' show CacheType;
import 'package:sky_trade/features/cache_manager/domain/repositories/cache_manager_repository.dart';

part 'cache_data_event.dart';

part 'cache_data_state.dart';

part 'cache_data_bloc.freezed.dart';

class CacheDataBloc extends Bloc<CacheDataEvent, CacheDataState> {
  CacheDataBloc(
    CacheManagerRepository cacheManagerRepository,
  )   : _cacheManagerRepository = cacheManagerRepository,
        super(
          const CacheDataState.initial(),
        ) {
    on<_CacheData>(
      _cacheData,
    );
  }

  final CacheManagerRepository _cacheManagerRepository;

  Future<void> _cacheData(
    _CacheData event,
    Emitter<CacheDataState> emit,
  ) async {
    emit(
      const CacheDataState.caching(),
    );

    final result = await _cacheManagerRepository.write(
      name: event.name,
      content: event.content,
      type: event.type,
    );

    result.fold(
      (_) => emit(
        const CacheDataState.failedToCache(),
      ),
      (cacheEntity) => emit(
        CacheDataState.cached(
          name: cacheEntity.name,
          type: cacheEntity.type,
        ),
      ),
    );
  }
}
