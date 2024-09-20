import 'package:equatable/equatable.dart' show Equatable;

base class SearchResultEntity extends Equatable {
  const SearchResultEntity({
    required this.name,
    required this.placeFormatted,
  });

  final String name;

  final String? placeFormatted;

  @override
  List<Object?> get props => [
        name,
        placeFormatted,
      ];
}
