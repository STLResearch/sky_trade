import 'package:json_annotation/json_annotation.dart';
import 'package:sky_ways/core/resources/strings/networking.dart'
    show nameKey, placeFormattedKey;
import 'package:sky_ways/features/search_autocomplete/domain/entities/search_result_entity.dart';

part 'search_result_model.g.dart';

@JsonSerializable()
final class SearchResultModel extends SearchResultEntity {
  const SearchResultModel({
    required this.mName,
    required this.mPlaceFormatted,
  }) : super(
          name: mName,
          placeFormatted: mPlaceFormatted,
        );

  factory SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultModelFromJson(json);

  @JsonKey(name: nameKey)
  final String mName;

  @JsonKey(name: placeFormattedKey)
  final String? mPlaceFormatted;

  Map<String, dynamic> toJson() => _$SearchResultModelToJson(this);
}
