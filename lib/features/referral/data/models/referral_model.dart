import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_trade/core/resources/strings/networking.dart'
    show
        emailKeyReferral,
        messageHrefKey,
        messageIdKey,
        messageUuidKey,
        messagesKey,
        statusKeyReferral,
        toKey;
import 'package:sky_trade/features/referral/domain/entities/referral_entity.dart';

part 'referral_model.g.dart';

@JsonSerializable()
final class ReferralModel extends ReferralEntity {
  const ReferralModel({
    required this.mMessages,
  }) : super(
          messages: mMessages,
        );

  factory ReferralModel.fromJson(Map<String, dynamic> json) =>
      _$ReferralModelFromJson(json);

  @JsonKey(name: messagesKey)
  final List<MessageModel> mMessages;

  Map<String, dynamic> toJson() => _$ReferralModelToJson(this);
}

@JsonSerializable()
final class MessageModel extends MessageEntity {
  const MessageModel({
    required this.mStatus,
    required this.mToRecipients,
  }) : super(
          status: mStatus,
          toRecipients: mToRecipients,
        );

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  @JsonKey(name: statusKeyReferral)
  final String mStatus;

  @JsonKey(name: toKey)
  final List<RecipientModel> mToRecipients;

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}

@JsonSerializable()
final class RecipientModel extends RecipientEntity {
  const RecipientModel({
    required this.mEmail,
    required this.mMessageUUID,
    required this.mMessageID,
    required this.mMessageHref,
  }) : super(
          email: mEmail,
          messageUUID: mMessageUUID,
          messageID: mMessageID,
          messageHref: mMessageHref,
        );

  factory RecipientModel.fromJson(Map<String, dynamic> json) =>
      _$RecipientModelFromJson(json);

  @JsonKey(name: emailKeyReferral)
  final String mEmail;

  @JsonKey(name: messageUuidKey)
  final String mMessageUUID;

  @JsonKey(name: messageIdKey)
  final String mMessageID;

  @JsonKey(name: messageHrefKey)
  final String mMessageHref;

  Map<String, dynamic> toJson() => _$RecipientModelToJson(this);
}
