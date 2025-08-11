// SPDX-License-Identifier: UNLICENSED
                            
import 'package:bloc/bloc.dart' show Bloc, Emitter;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/errors/failures/rent_air_rights_failure.dart'
    show GetPropertiesFailure;
import 'package:sky_trade/features/rent_air_rights/domain/entities/rent_air_rights_entity.dart'
    show PropertyEntity;
import 'package:sky_trade/features/rent_air_rights/domain/repositories/rent_air_rights_repository.dart';

part 'get_properties_bloc.freezed.dart';

part 'get_properties_event.dart';

part 'get_properties_state.dart';

class GetPropertiesBloc extends Bloc<GetPropertiesEvent, GetPropertiesState> {
  GetPropertiesBloc(
    RentAirRightsRepository rentAirRightsRepository,
  )   : _rentAirRightsRepository = rentAirRightsRepository,
        super(
          const GetPropertiesState.initial(),
        ) {
    on<_GetPropertiesWithin>(
      _getPropertiesWithin,
    );
  }

  final RentAirRightsRepository _rentAirRightsRepository;

  Future<void> _getPropertiesWithin(
    _GetPropertiesWithin event,
    Emitter<GetPropertiesState> emit,
  ) async {
    emit(
      const GetPropertiesState.gettingProperties(),
    );

    final result = await _rentAirRightsRepository.getPropertiesWithin(
      minLongitude: event.minLongitude,
      minLatitude: event.minLatitude,
      maxLongitude: event.maxLongitude,
      maxLatitude: event.maxLatitude,
    );

    result.fold(
      (getPropertiesFailure) {
        emit(
          GetPropertiesState.failedToGetProperties(
            getPropertiesFailure: getPropertiesFailure,
          ),
        );
      },
      (propertyEntities) {
        emit(
          GetPropertiesState.gotProperties(
            propertyEntities: propertyEntities,
          ),
        );
      },
    );
  }
}
