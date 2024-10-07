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
    required this.name,
    required this.placeFormatted,
    required this.namePreferred,
  });

  final String name;

  final String placeFormatted;

  final String? namePreferred;

  @override
  List<Object?> get props => [
        placeFormatted,
      ];
}
