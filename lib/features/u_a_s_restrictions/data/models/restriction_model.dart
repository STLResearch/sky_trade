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
  final RestrictionPropertiesModel mProperties;

  @JsonKey(name: geometryKey)
  final RestrictionGeometryModel mGeometry;
}

@JsonSerializable()
final class RestrictionPropertiesModel extends RestrictionPropertiesEntity {
  const RestrictionPropertiesModel({
    required this.mRestrictionType,
    required this.mCountry,
    required this.mUpperLimit,
    required this.mLowerLimit,
    required this.mMessage,
    required this.mAdditionLinks,
  }) : super(
          restrictionType: mRestrictionType,
          country: mCountry,
          upperLimit: mUpperLimit,
          lowerLimit: mLowerLimit,
          message: mMessage,
          additionLinks: mAdditionLinks,
        );

  factory RestrictionPropertiesModel.fromJson(Map<String, dynamic> json) =>
      _$RestrictionPropertiesModelFromJson(json);

  @JsonKey(name: typeKey)
  final RestrictionType mRestrictionType;

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
}

@JsonSerializable()
final class RestrictionGeometryModel extends RestrictionGeometryEntity {
  const RestrictionGeometryModel({
    required this.mType,
    required this.mCoordinates,
  }) : super(
          geometryType: mType,
          coordinates: mCoordinates,
        );

  factory RestrictionGeometryModel.fromJson(Map<String, dynamic> json) =>
      _$RestrictionGeometryModelFromJson(json);

  @JsonKey(name: typeKey)
  final GeometryType mType;

  @JsonKey(name: coordinatesKey)
  final List<List<List<double>>> mCoordinates;
}
