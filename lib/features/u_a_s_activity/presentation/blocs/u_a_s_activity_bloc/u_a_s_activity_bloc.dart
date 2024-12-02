import 'dart:async' show StreamController, StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show emptyString;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/u_a_s_activity/domain/entities/u_a_s_entity.dart'
    show UASEntity;
import 'package:sky_trade/features/u_a_s_activity/domain/repositories/u_a_s_activity_repository.dart';

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

    on<_UASActivitiesGotten>(
      _uASActivitiesGotten,
    );

    on<_UASActivitiesListeningStarted>(
      _uASActivitiesListeningStarted,
    );

    on<_UASActivitiesListeningStopped>(
      _uASActivitiesListeningStopped,
    );

    on<_RequestNewUASActivitiesAround>(
      _requestNewUASActivitiesAround,
    );

    on<_StopListeningUASActivities>(
      _stopListeningUASActivities,
    );
  }

  final UASActivityRepository _uASActivityRepository;

  bool _establishingListeningUASActivities = false;

  bool _startedListeningUASActivities = false;

  StreamController<String>? _geoHashStreamController;
  StreamSubscription<String>? _geoHashStreamSubscription;

  String _oldGeoHash = emptyString;

  Future<void> _listenUASActivities(
    _ListenUASActivities event,
    Emitter<UASActivityState> emit,
  ) async {
    if (_establishingListeningUASActivities || _startedListeningUASActivities) {
      return;
    }

    emit(
      const UASActivityState.establishingListeningUASActivities(),
    );

    _establishingListeningUASActivities = true;

    await _uASActivityRepository.listenUASActivities(
      onUASActivitiesGotten: (uASEntities) => add(
        UASActivityEvent.uASActivitiesGotten(
          uASEntities: uASEntities,
        ),
      ),
      onConnectionChanged: (connectionState) async {
        if (connectionState == ConnectionState.connected) {
          if (!_startedListeningUASActivities) {
            add(
              const UASActivityEvent.uASActivitiesListeningStarted(),
            );

            _startedListeningUASActivities = true;
            _establishingListeningUASActivities = false;
          }

          _geoHashStreamController ??= StreamController<String>();
          _geoHashStreamSubscription ??=
              _geoHashStreamController?.stream.listen(
            (geoHash) async {
              if (geoHash != _oldGeoHash) {
                await _uASActivityRepository.requestNewUASActivitiesAround(
                  geoHash: geoHash,
                );

                _oldGeoHash = geoHash;
              }
            },
          );
        } else if (connectionState == ConnectionState.destroyed) {
          await _cancelListeningGeoHash();

          add(
            const UASActivityEvent.uASActivitiesListeningStopped(),
          );
        }
      },
    );
  }

  void _uASActivitiesGotten(
    _UASActivitiesGotten event,
    Emitter<UASActivityState> emit,
  ) =>
      emit(
        UASActivityState.gotUASActivities(
          uASEntities: event.uASEntities,
        ),
      );

  void _uASActivitiesListeningStarted(
    _UASActivitiesListeningStarted event,
    Emitter<UASActivityState> emit,
  ) =>
      emit(
        const UASActivityState.startedListeningUASActivities(),
      );

  void _uASActivitiesListeningStopped(
    _UASActivitiesListeningStopped event,
    Emitter<UASActivityState> emit,
  ) =>
      emit(
        const UASActivityState.stoppedListeningUASActivities(),
      );

  void _requestNewUASActivitiesAround(
    _RequestNewUASActivitiesAround event,
    Emitter<UASActivityState> emit,
  ) =>
      _geoHashStreamController?.add(
        event.geoHash,
      );

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

    _establishingListeningUASActivities = false;
    _startedListeningUASActivities = false;
  }
}
