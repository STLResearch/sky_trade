part of 'get_property_within_bloc.dart';

@freezed
class GetPropertiesWithinState with _$GetPropertiesWithinState {
  const factory GetPropertiesWithinState.initial() = _Initial;

  const factory GetPropertiesWithinState.gettingProperties() = _GettingProperties;

  const factory GetPropertiesWithinState.gotProperties({
    required List<PropertyEntity> propertyEntity,
  }) = _GotProperties;

  const factory GetPropertiesWithinState.failedToGetProperties({
    required PropertyFailure propertyFailure,
  }) = _FailedToGetProperties;
}

