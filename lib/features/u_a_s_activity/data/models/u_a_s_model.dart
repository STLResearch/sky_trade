import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show createdAtKey, idKey, remoteDataKey, updateAtKey;
import 'package:sky_trade/features/remote_i_d_receiver/data/models/remote_i_d_model.dart'
    show RemoteIDModel;
import 'package:sky_trade/features/u_a_s_activity/domain/entities/u_a_s_entity.dart';

part 'u_a_s_model.g.dart';

@JsonSerializable()
final class UASModel extends UASEntity {
  const UASModel({
    required this.mId,
    required this.mRemoteData,
    required this.mCreatedAt,
    required this.mUpdateAt,
  }) : super(
          id: mId,
          remoteData: mRemoteData,
          createdAt: mCreatedAt,
          updateAt: mUpdateAt,
        );

  factory UASModel.fromJson(Map<String, dynamic> json) =>
      _$UASModelFromJson(json);

  @JsonKey(name: idKey)
  final String mId;

  @JsonKey(name: remoteDataKey)
  final RemoteIDModel mRemoteData;

  @JsonKey(name: createdAtKey)
  final String mCreatedAt;

  @JsonKey(name: updateAtKey)
  final String mUpdateAt;

  Map<String, dynamic> toJson() => _$UASModelToJson(this);
}
