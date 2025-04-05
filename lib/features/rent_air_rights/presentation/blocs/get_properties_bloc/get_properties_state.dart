part of 'get_properties_bloc.dart';

@freezed
class GetPropertiesState with _$GetPropertiesState {
  const factory GetPropertiesState.initial() = _Initial;

  const factory GetPropertiesState.gettingProperties() = _GettingProperties;

  const factory GetPropertiesState.gotProperties({
    required List<PropertyEntity> propertyEntities,
  }) = _GotProperties;

  const factory GetPropertiesState.failedToGetProperties({
    required GetPropertiesFailure getPropertiesFailure,
  }) = _FailedToGetProperties;
}
