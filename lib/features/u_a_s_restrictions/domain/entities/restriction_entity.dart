import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show GeometryType, RestrictionType;

base class RestrictionEntity extends Equatable {
  const RestrictionEntity({
    required this.additionLinks,
    required this.country,
    required this.lowerLimit,
    required this.message,
    required this.region,
    required this.type,
    required this.upperLimit,
  });

  final List<AdditionalLinkEntity> additionLinks;
  final String country;
  final String lowerLimit;
  final String message;
  final RegionEntity region;
  final RestrictionType type;
  final String upperLimit;

  @override
  List<Object?> get props => [
        additionLinks,
        country,
        lowerLimit,
        message,
        region,
        type,
        upperLimit,
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

base class RegionEntity extends Equatable {
  const RegionEntity({
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
