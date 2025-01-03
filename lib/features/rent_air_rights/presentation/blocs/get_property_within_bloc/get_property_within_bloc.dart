import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/rent_air_rights_failure.dart'
    show PropertyFailure;
import 'package:sky_trade/features/rent_air_rights/domain/entities/rent_air_rights_entity.dart'
    show PropertyEntity;
import 'package:sky_trade/features/rent_air_rights/domain/repositories/rent_air_rights_repository.dart';

part 'get_property_within_bloc.freezed.dart';

part 'get_property_within_event.dart';

part 'get_property_within_state.dart';

class GetPropertyWithinBloc
    extends Bloc<GetPropertyWithinEvent, GetPropertiesWithinState> {
  GetPropertyWithinBloc(
    RentAirRightsRepository rentAirRightsRepository,
  )   : _rentAirRightsRepository = rentAirRightsRepository,
        super(
          const GetPropertiesWithinState.initial(),
        ) {
    on<_GetPropertyWithin>(
      _getPropertiesWithin,
    );
  }

  final RentAirRightsRepository _rentAirRightsRepository;

  Future<void> _getPropertiesWithin(
    _GetPropertyWithin event,
    Emitter<GetPropertiesWithinState> emit,
  ) async {
    emit(
      const GetPropertiesWithinState.gettingProperties(),
    );

    final result = await _rentAirRightsRepository.getPropertyWithin(
      minLongitude: event.minLongitude,
      minLatitude: event.minLatitude,
      maxLongitude: event.maxLongitude,
      maxLatitude: event.maxLatitude,
    );

    result.fold(
      (propertyFailure) {
        emit(
          GetPropertiesWithinState.failedToGetProperties(
            propertyFailure: propertyFailure,
          ),
        );
      },
      (propertyEntities) {
        emit(
          GetPropertiesWithinState.gotProperties(
            propertyEntity: propertyEntities,
          ),
        );
      },
    );
  }
}
