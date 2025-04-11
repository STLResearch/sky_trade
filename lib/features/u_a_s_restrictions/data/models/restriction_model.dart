import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        additionalLinksKey,
        coordinatesKey,
        countryKey,
        geometryKey,
        idKey,
        linkKey,
        lowerLimitKey,
        messageKey,
        nameKey,
        propertiesKey,
        typeKey,
        upperLimitKey;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show GeometryType, RestrictionType;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart';

part 'restriction_model.g.dart';

@JsonSerializable()
final class RestrictionModel extends RestrictionEntity {
  const RestrictionModel({
    required this.mId,
    required this.mProperties,
    required this.mGeometry,
  }) : super(
          id: mId,
          properties: mProperties,
          geometry: mGeometry,
        );

  factory RestrictionModel.fromJson(Map<String, dynamic> json) =>
      _$RestrictionModelFromJson(json);

  @JsonKey(name: idKey)
  final String mId;

  @JsonKey(name: propertiesKey)
  final PropertiesModel mProperties;

  @JsonKey(name: geometryKey)
  final GeometryModel mGeometry;

  Map<String, dynamic> toJson() => _$RestrictionModelToJson(this);
}

@JsonSerializable()
final class PropertiesModel extends PropertiesEntity {
  const PropertiesModel({
    required this.mType,
    required this.mCountry,
    required this.mUpperLimit,
    required this.mLowerLimit,
    required this.mMessage,
    required this.mAdditionLinks,
  }) : super(
          type: mType,
          country: mCountry,
          upperLimit: mUpperLimit,
          lowerLimit: mLowerLimit,
          message: mMessage,
          additionLinks: mAdditionLinks,
        );

  factory PropertiesModel.fromJson(Map<String, dynamic> json) =>
      _$PropertiesModelFromJson(json);

  @JsonKey(name: typeKey)
  final RestrictionType mType;

  @JsonKey(name: countryKey)
  final String mCountry;

  @JsonKey(name: upperLimitKey)
  final String mUpperLimit;

  @JsonKey(name: lowerLimitKey)
  final String mLowerLimit;

  @JsonKey(name: messageKey)
  final String mMessage;

  @JsonKey(name: additionalLinksKey)
  final List<AdditionalLinkModel> mAdditionLinks;

  Map<String, dynamic> toJson() => _$PropertiesModelToJson(this);
}

@JsonSerializable()
final class AdditionalLinkModel extends AdditionalLinkEntity {
  const AdditionalLinkModel({
    required this.mLink,
    required this.mName,
  }) : super(
          link: mLink,
          name: mName,
        );

  factory AdditionalLinkModel.fromJson(Map<String, dynamic> json) =>
      _$AdditionalLinkModelFromJson(json);

  @JsonKey(name: linkKey)
  final String mLink;

  @JsonKey(name: nameKey)
  final String mName;

  Map<String, dynamic> toJson() => _$AdditionalLinkModelToJson(this);
}

@JsonSerializable()
final class GeometryModel extends GeometryEntity {
  const GeometryModel({
    required this.mType,
    required this.mCoordinates,
  }) : super(
          type: mType,
          coordinates: mCoordinates,
        );

  factory GeometryModel.fromJson(Map<String, dynamic> json) =>
      _$GeometryModelFromJson(json);

  @JsonKey(name: typeKey)
  final GeometryType mType;

  @JsonKey(name: coordinatesKey)
  final List<List<List<double>>> mCoordinates;

  Map<String, dynamic> toJson() => _$GeometryModelToJson(this);
}
