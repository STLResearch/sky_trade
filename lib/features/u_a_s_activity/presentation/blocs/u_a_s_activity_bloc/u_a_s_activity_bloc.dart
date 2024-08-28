import 'dart:async' show StreamController, StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show emptyString;
import 'package:sky_ways/core/utils/enums/networking.dart' show ConnectionState;
import 'package:sky_ways/features/u_a_s_activity/domain/entities/u_a_s_entity.dart'
    show UASEntity;
import 'package:sky_ways/features/u_a_s_activity/domain/repositories/u_a_s_activity_repository.dart';

part 'u_a_s_activity_bloc.freezed.dart';

part 'u_a_s_activity_event.dart';

part 'u_a_s_activity_state.dart';

class UASActivityBloc extends Bloc<UASActivityEvent, UASActivityState> {
  UASActivityBloc(
    UASActivityRepository uASActivityRepository,
  )   : _uASActivityRepository = uASActivityRepository,
        super(
          const UASActivityState.initial(),
        ) {
    on<_ListenUASActivities>(
      _listenUASActivities,
    );
    on<_RequestNewUASActivitiesAround>(
      _requestNewUASActivitiesAround,
    );
    on<_StopListeningUASActivities>(
      _stopListeningUASActivities,
    );
  }

  final UASActivityRepository _uASActivityRepository;

  bool _alreadyListeningUASActivities = false;

  StreamController<String>? _geoHashStreamController;
  StreamSubscription<String>? _geoHashStreamSubscription;

  String _oldGeoHash = emptyString;

  Future<void> _listenUASActivities(
    _ListenUASActivities event,
    Emitter<UASActivityState> emit,
  ) async {
    if (_alreadyListeningUASActivities) return;

    emit(
      const UASActivityState.listeningUASActivities(),
    );

    _alreadyListeningUASActivities = true;

    await _uASActivityRepository.listenUASActivities(
      onUASActivitiesGotten: (uASEntities) => emit(
        UASActivityState.gotUASActivities(
          uASEntities: uASEntities,
        ),
      ),
      onConnectionChanged: (connectionState) async {
        if (connectionState == ConnectionState.connected) {
          _geoHashStreamController ??= StreamController<String>();
          _geoHashStreamSubscription ??=
              _geoHashStreamController?.stream.listen(
            (geoHash) {
              if (geoHash != _oldGeoHash) {
                _uASActivityRepository.requestNewUASActivitiesAround(
                  geoHash: geoHash,
                );

                _oldGeoHash = geoHash;
              }
            },
          );
        } else if (connectionState == ConnectionState.disconnected ||
            connectionState == ConnectionState.connectionError ||
            connectionState == ConnectionState.connectionTimeout ||
            connectionState == ConnectionState.error) {
          // Introduce a disconnected reason to know if disconnection was
          // clean or unclean. Some inherent issues may happen until we
          // implement this

          _alreadyListeningUASActivities = false;

          await _cancelListeningGeoHash();

          emit(
            const UASActivityState.stoppedListeningUASActivities(),
          );
        }
      },
    );
  }

  Future<void> _requestNewUASActivitiesAround(
    _RequestNewUASActivitiesAround event,
    Emitter<UASActivityState> emit,
  ) async {
    _geoHashStreamController?.add(
      event.geoHash,
    );
  }

  Future<void> _stopListeningUASActivities(
    _StopListeningUASActivities event,
    Emitter<UASActivityState> emit,
  ) async {
    await _cancelListeningGeoHash();

    _uASActivityRepository.stopListeningUASActivities();

    emit(
      const UASActivityState.initial(),
    );
  }

  Future<void> _cancelListeningGeoHash() async {
    await Future.wait<dynamic>([
      _geoHashStreamController?.close() ?? Future.value(),
      _geoHashStreamSubscription?.cancel() ?? Future.value(),
    ]);

    _geoHashStreamController = null;
    _geoHashStreamSubscription = null;
  }
}
