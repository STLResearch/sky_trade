import 'package:json_annotation/json_annotation.dart'
    show JsonKey, JsonSerializable;
import 'package:sky_ways/core/resources/strings/networking.dart'
    show
        additionalLinks,
        coordinatesKey,
        countryKey,
        linkKey,
        lowerLimitKey,
        messageKey,
        nameKey,
        regionKey,
        typeKey,
        upperLimitKey;
import 'package:sky_ways/core/utils/enums/networking.dart'
    show RegionType, RestrictionType;
import 'package:sky_ways/features/u_a_s_restrictions/domain/entities/restriction_entity.dart';

part 'restriction_model.g.dart';

@JsonSerializable()
final class RestrictionModel extends RestrictionEntity {
  const RestrictionModel({
    required this.mAdditionLinks,
    required this.mCountry,
    required this.mLowerLimit,
    required this.mMessage,
    required this.mRegion,
    required this.mType,
    required this.mUpperLimit,
  }) : super(
          additionLinks: mAdditionLinks,
          country: mCountry,
          lowerLimit: mLowerLimit,
          message: mMessage,
          region: mRegion,
          type: mType,
          upperLimit: mUpperLimit,
        );

  factory RestrictionModel.fromJson(Map<String, dynamic> json) =>
      _$RestrictionModelFromJson(json);

  @JsonKey(name: additionalLinks)
  final AdditionalLinksModel mAdditionLinks;

  @JsonKey(name: countryKey)
  final String mCountry;

  @JsonKey(name: lowerLimitKey)
  final String mLowerLimit;

  @JsonKey(name: messageKey)
  final String mMessage;

  @JsonKey(name: regionKey)
  final RegionModel mRegion;

  @JsonKey(name: typeKey)
  final RestrictionType mType;

  @JsonKey(name: upperLimitKey)
  final String mUpperLimit;

  Map<String, dynamic> toJson() => _$RestrictionModelToJson(this);
}

@JsonSerializable()
final class AdditionalLinksModel extends AdditionalLinksEntity {
  const AdditionalLinksModel({
    required this.mLink,
    required this.mName,
  }) : super(
          link: mLink,
          name: mName,
        );

  factory AdditionalLinksModel.fromJson(Map<String, dynamic> json) =>
      _$AdditionalLinksModelFromJson(json);

  @JsonKey(name: linkKey)
  final String mLink;

  @JsonKey(name: nameKey)
  final String mName;

  Map<String, dynamic> toJson() => _$AdditionalLinksModelToJson(this);
}

@JsonSerializable()
final class RegionModel extends RegionEntity {
  const RegionModel({
    required this.mType,
    required this.mCoordinates,
  }) : super(
          type: mType,
          coordinates: mCoordinates,
        );

  factory RegionModel.fromJson(Map<String, dynamic> json) =>
      _$RegionModelFromJson(json);

  @JsonKey(name: typeKey)
  final RegionType mType;

  @JsonKey(name: coordinatesKey)
  final List<List<List<double>>> mCoordinates;

  Map<String, dynamic> toJson() => _$RegionModelToJson(this);
}
