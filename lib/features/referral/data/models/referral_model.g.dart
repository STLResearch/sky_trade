// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReferralModel _$ReferralModelFromJson(Map<String, dynamic> json) =>
    ReferralModel(
      mMessages: (json['Messages'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReferralModelToJson(ReferralModel instance) =>
    <String, dynamic>{
      'Messages': instance.mMessages,
    };

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      mStatus: json['Status'] as String,
      mToRecipients: (json['To'] as List<dynamic>)
          .map((e) => RecipientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'Status': instance.mStatus,
      'To': instance.mToRecipients,
    };

RecipientModel _$RecipientModelFromJson(Map<String, dynamic> json) =>
    RecipientModel(
      mEmail: json['Email'] as String,
      mMessageUUID: json['MessageUUID'] as String,
      mMessageID: json['MessageID'] as String,
      mMessageHref: json['MessageHref'] as String,
    );

Map<String, dynamic> _$RecipientModelToJson(RecipientModel instance) =>
    <String, dynamic>{
      'Email': instance.mEmail,
      'MessageUUID': instance.mMessageUUID,
      'MessageID': instance.mMessageID,
      'MessageHref': instance.mMessageHref,
    };
