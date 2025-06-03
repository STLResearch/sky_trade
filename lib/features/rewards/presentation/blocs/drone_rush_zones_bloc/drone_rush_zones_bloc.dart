import 'dart:async' show StreamSubscription;

import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/rewards_failure.dart'
    show DroneRushZoneFailure;
import 'package:sky_trade/core/resources/numbers/ui.dart' show thirty;
import 'package:sky_trade/features/rewards/domain/entities/rewards_entity.dart'
    show DroneRushZoneEntity;
import 'package:sky_trade/features/rewards/domain/repositories/rewards_repository.dart';

part 'drone_rush_zones_event.dart';

part 'drone_rush_zones_state.dart';

part 'drone_rush_zones_bloc.freezed.dart';

class DroneRushZonesBloc
    extends Bloc<DroneRushZonesEvent, DroneRushZonesState> {
  DroneRushZonesBloc(
    RewardsRepository rewardsRepository,
  )   : _rewardsRepository = rewardsRepository,
        super(
          const DroneRushZonesState.initial(),
        ) {
    on<_ListenDroneRushZones>(
      _listenDroneRushZones,
    );

    on<_GetLatestDroneRushZone>(
      _getLatestDroneRushZone,
    );

    on<_LatestDroneRushZoneGotten>(
      _latestDroneRushZoneGotten,
    );

    on<_OngoingDroneRushZoneGotten>(
      _ongoingDroneRushZoneGotten,
    );
  }

  @override
  Future<void> close() async {
    await _cleanupStreamSubscription();

    return super.close();
  }

  final RewardsRepository _rewardsRepository;

  StreamSubscription<void>? _periodicStreamStreamSubscription;

  Future<void> _listenDroneRushZones(
    _ListenDroneRushZones event,
    Emitter<DroneRushZonesState> emit,
  ) async {
    await _cleanupStreamSubscription();

    add(
      const DroneRushZonesEvent.getLatestDroneRushZone(),
    );

    _periodicStreamStreamSubscription ??= Stream<void>.periodic(
      const Duration(
        minutes: thirty,
      ),
    ).listen(
      (_) => add(
        const DroneRushZonesEvent.getLatestDroneRushZone(),
      ),
    );
  }

  Future<void> _getLatestDroneRushZone(
    _GetLatestDroneRushZone event,
    Emitter<DroneRushZonesState> emit,
  ) async {
    emit(
      const DroneRushZonesState.gettingLatestDroneRushZone(),
    );

    final result = await _rewardsRepository.latestDroneRushZone;

    result.fold(
      (droneRushZoneFailure) => emit(
        DroneRushZonesState.failedToGetLatestDroneRushZone(
          droneRushZoneFailure: droneRushZoneFailure,
        ),
      ),
      (droneRushZoneEntity) {
        if (droneRushZoneEntity == null) {
          emit(
            const DroneRushZonesState.noLatestDroneRushZone(),
          );

          return;
        }

        add(
          DroneRushZonesEvent.latestDroneRushZoneGotten(
            droneRushZoneEntity: droneRushZoneEntity,
          ),
        );
      },
    );
  }

  Future<void> _latestDroneRushZoneGotten(
    _LatestDroneRushZoneGotten event,
    Emitter<DroneRushZonesState> emit,
  ) async {
    final now = DateTime.now();

    final latestDroneRushZoneStartTime = event.droneRushZoneEntity.startTime;
    final latestDroneRushZoneEndTime = event.droneRushZoneEntity.endTime;

    final withinOngoingDroneRushZoneTimeRange =
        (latestDroneRushZoneStartTime.isBefore(
                  now,
                ) ||
                latestDroneRushZoneStartTime.isAtSameMomentAs(
                  now,
                )) &&
            latestDroneRushZoneEndTime.isAfter(
              now,
            );

    if (!withinOngoingDroneRushZoneTimeRange) {
      emit(
        const DroneRushZonesState.noOngoingDroneRushZone(),
      );

      return;
    }

    add(
      DroneRushZonesEvent.ongoingDroneRushZoneGotten(
        startTime: event.droneRushZoneEntity.startTime,
        endTime: event.droneRushZoneEntity.endTime,
      ),
    );
  }

  Future<void> _ongoingDroneRushZoneGotten(
    _OngoingDroneRushZoneGotten event,
    Emitter<DroneRushZonesState> emit,
  ) async {
    emit(
      const DroneRushZonesState.gettingOngoingDroneRushZones(),
    );

    final result = await _rewardsRepository.getDroneRushZonesWithin(
      startTime: event.startTime,
      endTime: event.endTime,
    );

    result.fold(
      (droneRushZoneFailure) => emit(
        DroneRushZonesState.failedToGetOngoingDroneRushZones(
          droneRushZoneFailure: droneRushZoneFailure,
        ),
      ),
      (droneRushZoneEntities) => emit(
        DroneRushZonesState.gotOngoingDroneRushZones(
          droneRushZoneEntities: droneRushZoneEntities,
        ),
      ),
    );
  }

  Future<void> _cleanupStreamSubscription() async {
    await _periodicStreamStreamSubscription?.cancel();
    _periodicStreamStreamSubscription = null;
  }
}
