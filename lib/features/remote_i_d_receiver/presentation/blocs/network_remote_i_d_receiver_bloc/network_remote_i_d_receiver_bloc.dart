import 'dart:async' show StreamController, StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_receiver/domain/repositories/remote_i_d_receiver_repository.dart';

part 'network_remote_i_d_receiver_bloc.freezed.dart';

part 'network_remote_i_d_receiver_event.dart';

part 'network_remote_i_d_receiver_state.dart';

class NetworkRemoteIDReceiverBloc
    extends Bloc<NetworkRemoteIDReceiverEvent, NetworkRemoteIDReceiverState> {
  NetworkRemoteIDReceiverBloc(
    RemoteIDReceiverRepository remoteIDReceiverRepository,
  )   : _remoteIDReceiverRepository = remoteIDReceiverRepository,
        super(
          const NetworkRemoteIDReceiverState.initial(),
        ) {
    on<_ListenRemoteIDs>(
      _listenRemoteIDs,
    );

    on<_RemoteIDsGotten>(
      _remoteIDsGotten,
    );

    on<_RemoteIDsListeningStarted>(
      _remoteIDsListeningStarted,
    );

    on<_RequestRemoteIDsAround>(
      _requestRemoteIDsAround,
    );
  }

  @override
  Future<void> close() async {
    await _cleanupReceiver();

    return super.close();
  }

  final RemoteIDReceiverRepository _remoteIDReceiverRepository;

  bool _establishingListeningRemoteIDs = false;

  bool _startedListeningRemoteIDs = false;

  StreamController<String>? _geoHashStreamController;
  StreamSubscription<String>? _geoHashStreamSubscription;

  String _oldGeoHash = emptyString;

  Future<void> _listenRemoteIDs(
    _ListenRemoteIDs event,
    Emitter<NetworkRemoteIDReceiverState> emit,
  ) async {
    if (_establishingListeningRemoteIDs || _startedListeningRemoteIDs) {
      return;
    }

    emit(
      const NetworkRemoteIDReceiverState.establishingListeningRemoteIDs(),
    );

    _establishingListeningRemoteIDs = true;

    await _remoteIDReceiverRepository.listenNetworkRemoteIDs(
      onNetworkRemoteIDsGotten: (remoteIDEntities) => add(
        NetworkRemoteIDReceiverEvent.remoteIDsGotten(
          remoteIDEntities: remoteIDEntities,
        ),
      ),
      onConnectionChanged: (connectionState) async {
        if (connectionState == ConnectionState.connected) {
          if (!_startedListeningRemoteIDs) {
            add(
              const NetworkRemoteIDReceiverEvent.remoteIDsListeningStarted(),
            );

            _startedListeningRemoteIDs = true;
            _establishingListeningRemoteIDs = false;
          }

          _geoHashStreamController ??= StreamController<String>();
          _geoHashStreamSubscription ??=
              _geoHashStreamController?.stream.listen(
            (geoHash) async {
              if (geoHash != _oldGeoHash) {
                await _remoteIDReceiverRepository.requestNetworkRemoteIDsAround(
                  geoHash: geoHash,
                );

                _oldGeoHash = geoHash;
              }
            },
          );
        } else if (connectionState == ConnectionState.destroyed) {
          await _cleanupReceiver();
        }
      },
    );
  }

  void _remoteIDsGotten(
    _RemoteIDsGotten event,
    Emitter<NetworkRemoteIDReceiverState> emit,
  ) =>
      emit(
        NetworkRemoteIDReceiverState.gotRemoteIDs(
          remoteIDEntities: event.remoteIDEntities,
        ),
      );

  void _remoteIDsListeningStarted(
    _RemoteIDsListeningStarted event,
    Emitter<NetworkRemoteIDReceiverState> emit,
  ) =>
      emit(
        const NetworkRemoteIDReceiverState.startedListeningRemoteIDs(),
      );

  void _requestRemoteIDsAround(
    _RequestRemoteIDsAround event,
    Emitter<NetworkRemoteIDReceiverState> emit,
  ) =>
      _geoHashStreamController?.add(
        event.geoHash,
      );

  Future<void> _cleanupReceiver() async {
    await Future.wait<dynamic>([
      _geoHashStreamController?.close() ?? Future.value(),
      _geoHashStreamSubscription?.cancel() ?? Future.value(),
    ]);

    _geoHashStreamController = null;
    _geoHashStreamSubscription = null;

    _establishingListeningRemoteIDs = false;
    _startedListeningRemoteIDs = false;

    _remoteIDReceiverRepository.stopListeningNetworkRemoteIDs();
  }
}
