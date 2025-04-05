import 'package:json_annotation/json_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show messageKey;
import 'package:sky_trade/features/settings/domain/entities/settings_entity.dart'
    show MessageEntity;

part 'settings_model.g.dart';

@JsonSerializable()
final class MessageModel extends MessageEntity {
  const MessageModel({
    required this.mMessage,
  }) : super(
          message: mMessage,
        );

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  @JsonKey(name: messageKey)
  final String mMessage;

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}
