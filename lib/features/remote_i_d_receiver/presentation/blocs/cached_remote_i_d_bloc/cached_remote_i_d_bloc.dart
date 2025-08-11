// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show DeviceEntity, GeolocatedRemoteIDCollectionEntity, RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';

part 'cached_remote_i_d_event.dart';

part 'cached_remote_i_d_state.dart';

part 'cached_remote_i_d_bloc.freezed.dart';

class CachedRemoteIDBloc
    extends Bloc<CachedRemoteIDEvent, CachedRemoteIDState> {
  CachedRemoteIDBloc(
    RemoteIDReceiverRepository remoteIDReceiverRepository,
  )   : _remoteIDReceiverRepository = remoteIDReceiverRepository,
        super(
          const CachedRemoteIDState.initial(),
        ) {
    on<_CacheRemoteIDs>(
      _cacheRemoteIDs,
    );

    on<_GetCachedRemoteID>(
      _getCachedRemoteID,
    );

    on<_ClearCachedRemoteIDs>(
      _clearCachedRemoteIDs,
    );
  }

  @override
  Future<void> close() async {
    await _cleanUpResources();

    return super.close();
  }

  final RemoteIDReceiverRepository _remoteIDReceiverRepository;

  Future<void> _cacheRemoteIDs(
    _CacheRemoteIDs event,
    Emitter<CachedRemoteIDState> emit,
  ) async {
    emit(
      const CachedRemoteIDState.cachingRemoteIDs(),
    );

    await _remoteIDReceiverRepository.cacheGeolocatedRemoteIDCollection(
      remoteIDs: event.remoteIDEntities,
      device: switch (event.latitude != null && event.longitude != null) {
        true => DeviceEntity(
            latitude: event.latitude!,
            longitude: event.longitude!,
          ),
        false => null,
      },
    );

    emit(
      const CachedRemoteIDState.cachedRemoteIDs(),
    );
  }

  Future<void> _getCachedRemoteID(
    _GetCachedRemoteID event,
    Emitter<CachedRemoteIDState> emit,
  ) async {
    emit(
      const CachedRemoteIDState.gettingCachedRemoteIDs(),
    );

    final result =
        await _remoteIDReceiverRepository.cachedGeolocatedRemoteIDCollections;

    if (result?.isEmpty ?? true) {
      emit(
        const CachedRemoteIDState.noCachedRemoteIDs(),
      );

      return;
    }

    emit(
      CachedRemoteIDState.gotCachedRemoteIDs(
        geolocatedRemoteIDCollectionEntities: result!,
      ),
    );
  }

  Future<void> _clearCachedRemoteIDs(
    _ClearCachedRemoteIDs event,
    Emitter<CachedRemoteIDState> emit,
  ) async {
    emit(
      const CachedRemoteIDState.clearingCachedRemoteIDs(),
    );

    await _remoteIDReceiverRepository
        .deleteCachedGeolocatedRemoteIDCollections();

    emit(
      const CachedRemoteIDState.clearedCachedRemoteIDs(),
    );
  }

  Future<void> _cleanUpResources() => _remoteIDReceiverRepository
      .closeGeolocatedRemoteIDCollectionsLocalStorageBox();
}
