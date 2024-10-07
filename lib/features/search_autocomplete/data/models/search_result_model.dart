import 'package:json_annotation/json_annotation.dart';
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        attributionKey,
        nameKey,
        namePreferredKey,
        placeFormattedKey,
        suggestionsKey;
import 'package:sky_ways/features/search_autocomplete/domain/entities/search_result_entity.dart';

part 'search_result_model.g.dart';

@JsonSerializable()
final class SearchResultModel extends SearchResultEntity {
  const SearchResultModel({
    required this.mSuggestions,
    required this.mAttribution,
  }) : super(
          suggestions: mSuggestions,
          attribution: mAttribution,
        );

  factory SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultModelFromJson(json);

  @JsonKey(name: suggestionsKey)
  final List<SuggestionModel> mSuggestions;

  @JsonKey(name: attributionKey)
  final String mAttribution;

  Map<String, dynamic> toJson() => _$SearchResultModelToJson(this);
}

@JsonSerializable()
final class SuggestionModel extends SuggestionEntity {
  const SuggestionModel({
    required this.mName,
    required this.mPlaceFormatted,
    required this.mNamePreferred,
  }) : super(
          name: mName,
          placeFormatted: mPlaceFormatted,
          namePreferred: mNamePreferred,
        );

  factory SuggestionModel.fromJson(Map<String, dynamic> json) =>
      _$SuggestionModelFromJson(json);

  @JsonKey(name: nameKey)
  final String mName;

  @JsonKey(name: placeFormattedKey)
  final String mPlaceFormatted;

  @JsonKey(name: namePreferredKey)
  final String? mNamePreferred;

  Map<String, dynamic> toJson() => _$SuggestionModelToJson(this);
}
