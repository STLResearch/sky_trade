import 'package:equatable/equatable.dart' show Equatable;

base class SearchResultEntity extends Equatable {
  const SearchResultEntity({
    required this.suggestions,
    required this.attribution,
  });

  final List<SuggestionEntity> suggestions;

  final String attribution;

  @override
  List<Object?> get props => [
        suggestions,
        attribution,
      ];
}

base class SuggestionEntity extends Equatable {
  const SuggestionEntity({
    required this.id,
    required this.name,
    required this.placeFormatted,
    required this.namePreferred,
  });

  final String id;

  final String name;

  final String placeFormatted;

  final String? namePreferred;

  @override
  List<Object?> get props => [
        id,
        name,
        placeFormatted,
        namePreferred,
      ];
}

base class RetrieveResultEntity extends Equatable {
  const RetrieveResultEntity({
    required this.features,
    required this.attribution,
  });

  final List<FeatureEntity> features;

  final String attribution;

  @override
  List<Object?> get props => [
        features,
        attribution,
      ];
}

base class FeatureEntity extends Equatable {
  const FeatureEntity({
    required this.geometry,
  });

  final GeometryEntity geometry;

  @override
  List<Object?> get props => [
        geometry,
      ];
}

base class GeometryEntity extends Equatable {
  const GeometryEntity({
    required this.coordinates,
  });

  final List<double> coordinates;

  @override
  List<Object?> get props => [
        coordinates,
      ];
}
