import 'dart:convert' show utf8;
import 'package:crypto/crypto.dart' show Digest, md5;
import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        additionalLinksKey,
        coordinatesKey,
        countryKey,
        linkKey,
        lowerLimitKey,
        messageKey,
        nameKey,
        regionKey,
        typeKey,
        upperLimitKey;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show GeometryType, RestrictionType;
import 'package:sky_trade/features/u_a_s_restrictions/domain/entities/restriction_entity.dart';

part 'restriction_model.g.dart';

@JsonSerializable()
final class RestrictionModel extends RestrictionEntity {
  RestrictionModel({
    required this.mAdditionLinks,
    required this.mCountry,
    required this.mLowerLimit,
    required this.mMessage,
    required this.mRegion,
    required this.mType,
    required this.mUpperLimit,
  }) : super(
          id: _getUniqueID(
            restrictionType: mType,
            coordinates: mRegion.coordinates,
          ),
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

  @JsonKey(name: additionalLinksKey)
  final List<AdditionalLinkModel> mAdditionLinks;

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

  static String _getUniqueID({
    required RestrictionType restrictionType,
    required List<List<List<double>>> coordinates,
  }) {
    final hashes = coordinates
        .map(
          (vertex) => vertex
              .map(
                (positions) => md5.convert(
                  utf8.encode(
                    '${positions[0]},${positions[1]}',
                  ),
                ),
              )
              .toList(),
        )
        .toList()[0];
    final hashAsList = hashes.map((digest) => digest.bytes).reduce(
          (a, b) => List.generate(16, (i) => a[i] ^ b[i]),
        ); // xor hash list
    final hash = Digest(hashAsList);

    return restrictionType.name + hash.toString();
  }
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
  final GeometryType mType;

  @JsonKey(name: coordinatesKey)
  final List<List<List<double>>> mCoordinates;

  Map<String, dynamic> toJson() => _$RegionModelToJson(this);
}
