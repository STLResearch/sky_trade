import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        attributionKey,
        coordinatesKey,
        featuresKey,
        geometryKey,
        mapboxIdKey,
        nameKey,
        namePreferredKey,
        placeFormattedKey,
        suggestionsKey;
import 'package:sky_trade/features/search_autocomplete/domain/entities/search_result_entity.dart';

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
    required this.mId,
    required this.mName,
    required this.mPlaceFormatted,
    required this.mNamePreferred,
  }) : super(
          id: mId,
          name: mName,
          placeFormatted: mPlaceFormatted,
          namePreferred: mNamePreferred,
        );

  factory SuggestionModel.fromJson(Map<String, dynamic> json) =>
      _$SuggestionModelFromJson(json);

  @JsonKey(name: mapboxIdKey)
  final String mId;

  @JsonKey(name: nameKey)
  final String mName;

  @JsonKey(name: placeFormattedKey)
  final String mPlaceFormatted;

  @JsonKey(name: namePreferredKey)
  final String? mNamePreferred;

  Map<String, dynamic> toJson() => _$SuggestionModelToJson(this);
}

@JsonSerializable()
final class RetrieveResultModel extends RetrieveResultEntity {
  const RetrieveResultModel({
    required this.mFeatures,
    required this.mAttribution,
  }) : super(
          features: mFeatures,
          attribution: mAttribution,
        );

  factory RetrieveResultModel.fromJson(Map<String, dynamic> json) =>
      _$RetrieveResultModelFromJson(json);

  @JsonKey(name: featuresKey)
  final List<FeatureModel> mFeatures;

  @JsonKey(name: attributionKey)
  final String mAttribution;

  Map<String, dynamic> toJson() => _$RetrieveResultModelToJson(this);
}

@JsonSerializable()
final class FeatureModel extends FeatureEntity {
  const FeatureModel({
    required this.mGeometry,
  }) : super(
          geometry: mGeometry,
        );

  factory FeatureModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureModelFromJson(json);

  @JsonKey(name: geometryKey)
  final GeometryModel mGeometry;

  Map<String, dynamic> toJson() => _$FeatureModelToJson(this);
}

@JsonSerializable()
final class GeometryModel extends GeometryEntity {
  const GeometryModel({
    required this.mCoordinates,
  }) : super(
          coordinates: mCoordinates,
        );

  factory GeometryModel.fromJson(Map<String, dynamic> json) =>
      _$GeometryModelFromJson(json);

  @JsonKey(name: coordinatesKey)
  final List<double> mCoordinates;

  Map<String, dynamic> toJson() => _$GeometryModelToJson(this);
}
