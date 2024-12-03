import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart';
import 'package:sky_trade/features/search_autocomplete/domain/entities/retrieve_result_entity.dart';

part 'retrieve_result_model.g.dart';

@JsonSerializable()
final class RetrieveResultModel extends RetrieveResultEntity {

  RetrieveResultModel({
    required this.mFeatures,
  }) : super(
          coordinates: (
            latitude: mFeatures[0].mGeometry.mCoordinates[1],
            longitude: mFeatures[0].mGeometry.mCoordinates[0],
          ),
        );

  factory RetrieveResultModel.fromJson(Map<String, dynamic> json) =>
      _$RetrieveResultModelFromJson(json);

  @JsonKey(name: featuresKey)
  final List<FeaturesModel> mFeatures;
}

@JsonSerializable()
final class FeaturesModel{
  FeaturesModel({
    required this.mGeometry,
  });

  factory FeaturesModel.fromJson(Map<String, dynamic> json) =>
      _$FeaturesModelFromJson(json);

  @JsonKey(name: geometryKey)
  final GeometryModel mGeometry;
}

@JsonSerializable()
final class GeometryModel {
  const GeometryModel({
    required this.mCoordinates,
  });

  factory GeometryModel.fromJson(Map<String, dynamic> json) =>
      _$GeometryModelFromJson(json);

  @JsonKey(name: coordinatesKey)
  final List<double> mCoordinates;
}
