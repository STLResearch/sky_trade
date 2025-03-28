import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show GeometryType, RestrictionType;

base class RestrictionEntity extends Equatable {
  const RestrictionEntity({
    required this.id,
    required this.properties,
    required this.geometry,
  });

  final String id;

  final RestrictionPropertiesEntity properties;

  final RestrictionGeometryEntity geometry;

  @override
  List<Object?> get props => [id];
}

base class RestrictionPropertiesEntity {
  const RestrictionPropertiesEntity({
    required this.restrictionType,
    required this.country,
    required this.upperLimit,
    required this.lowerLimit,
    required this.message,
    required this.additionLinks,
  });

  final RestrictionType restrictionType;
  final String country;
  final String upperLimit;
  final String lowerLimit;
  final String message;
  final List<AdditionalLinkEntity> additionLinks;
}

base class AdditionalLinkEntity {
  const AdditionalLinkEntity({
    required this.link,
    required this.name,
  });

  final String link;
  final String name;
}

base class RestrictionGeometryEntity {
  const RestrictionGeometryEntity({
    required this.geometryType,
    required this.coordinates,
  });

  final GeometryType geometryType;
  final List<List<List<double>>> coordinates;
}
