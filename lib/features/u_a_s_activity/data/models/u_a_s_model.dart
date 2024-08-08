import 'package:json_annotation/json_annotation.dart';
import 'package:sky_ways/features/u_a_s_activity/domain/entities/u_a_s_entity.dart';

// part 'u_a_s_model.g.dart';

@JsonSerializable()
final class UASModel extends UASEntity {
  const UASModel({
    required this.mDarrel,
  }) : super(
          darrel: mDarrel,
        );

  // factory UASModel.fromJson(Map<String, dynamic> json) =>
  //     _$UASModelFromJson(json);

  final String mDarrel;

// Map<String, dynamic> toJson() => _$UASModelToJson(this);
}
