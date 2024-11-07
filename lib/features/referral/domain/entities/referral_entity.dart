import 'package:equatable/equatable.dart' show Equatable;

base class ReferralEntity extends Equatable {
  const ReferralEntity({
    required this.messages,
  });

  final List<MessageEntity> messages;

  @override
  List<Object?> get props => [
    messages,
  ];
}

base class MessageEntity extends Equatable {
  const MessageEntity({
    required this.status,
    required this.toRecipients,
  });

  final String status;
  final List<RecipientEntity> toRecipients;

  @override
  List<Object?> get props => [
    status,
    toRecipients,
  ];
}

base class RecipientEntity extends Equatable {
  const RecipientEntity({
    required this.email,
    required this.messageUUID,
    required this.messageID,
    required this.messageHref,
  });

  final String email;
  final String messageUUID;
  final String messageID;
  final String messageHref;

  @override
  List<Object?> get props => [
    email,
    messageUUID,
    messageID,
    messageHref,
  ];
}