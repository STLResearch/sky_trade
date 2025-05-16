import 'package:freezed_annotation/freezed_annotation.dart'
    show JsonKey, JsonSerializable;
import 'package:sky_trade/core/resources/strings/networking.dart'
    show currentAPIVersionKey;
import 'package:sky_trade/features/update_manager/domain/entities/update_manager_entity.dart';

part 'update_manager_model.g.dart';

@JsonSerializable()
final class UpdateManagerModel extends UpdateManagerEntity {
  const UpdateManagerModel({
    required this.mCurrentAPIVersion,
  }) : super(
    currentAPIVersion: mCurrentAPIVersion,
  );

  factory UpdateManagerModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateManagerModelFromJson(json);

  @JsonKey(name: currentAPIVersionKey)
  final String mCurrentAPIVersion;

  Map<String, dynamic> toJson() => _$UpdateManagerModelToJson(this);
}
