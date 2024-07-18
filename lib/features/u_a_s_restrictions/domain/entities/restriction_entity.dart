import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_ways/core/utils/enums/networking.dart'
    show RegionType, RestrictionType;

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

  final AdditionalLinksEntity additionLinks;
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

base class AdditionalLinksEntity extends Equatable {
  const AdditionalLinksEntity({
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

  final RegionType type;
  final List<List<List<double>>> coordinates;

  @override
  List<Object?> get props => [
        type,
        coordinates,
      ];
}
