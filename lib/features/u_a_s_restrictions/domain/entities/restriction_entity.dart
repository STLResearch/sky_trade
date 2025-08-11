// SPDX-License-Identifier: UNLICENSED
                            
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

  final PropertiesEntity properties;

  final GeometryEntity geometry;

  @override
  List<Object?> get props => [
        id,
        properties,
        geometry,
      ];
}

base class PropertiesEntity extends Equatable {
  const PropertiesEntity({
    required this.type,
    required this.country,
    required this.upperLimit,
    required this.lowerLimit,
    required this.message,
    required this.additionLinks,
  });

  final RestrictionType type;

  final String country;

  final String upperLimit;

  final String lowerLimit;

  final String message;

  final List<AdditionalLinkEntity> additionLinks;

  @override
  List<Object?> get props => [
        type,
        country,
        upperLimit,
        lowerLimit,
        message,
        additionLinks,
      ];
}

base class AdditionalLinkEntity extends Equatable {
  const AdditionalLinkEntity({
    required this.link,
    required this.name,
  });

  final String link;

  final String name;

  @override
  List<Object?> get props => [
        link,
        name,
      ];
}

base class GeometryEntity extends Equatable {
  const GeometryEntity({
    required this.type,
    required this.coordinates,
  });

  final GeometryType type;

  final List<List<List<double>>> coordinates;

  @override
  List<Object?> get props => [
        type,
        coordinates,
      ];
}
