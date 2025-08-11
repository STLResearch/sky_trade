// SPDX-License-Identifier: UNLICENSED
                            
import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show currentAPIVersionKey;
import 'package:sky_trade/features/update_manager/domain/entities/update_manager_entity.dart';

part 'update_manager_model.g.dart';

@JsonSerializable()
final class VersionModel extends VersionEntity {
  const VersionModel({
    required this.mCurrentApiVersion,
  }) : super(
          currentApiVersion: mCurrentApiVersion,
        );

  factory VersionModel.fromJson(Map<String, dynamic> json) =>
      _$VersionModelFromJson(json);

  @JsonKey(name: currentAPIVersionKey)
  final String mCurrentApiVersion;

  Map<String, dynamic> toJson() => _$VersionModelToJson(this);
}
