import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
class RemoteIDEntity extends MessageContainer {
  factory RemoteIDEntity(MessageContainer message) {
    return RemoteIDEntity._internal(
      macAddress: message.macAddress,
      lastUpdate: message.lastUpdate,
      source: message.source,
      lastMessageRssi: message.lastMessageRssi,
      basicIdMessages: message.basicIdMessages,
      locationMessage: message.locationMessage,
      operatorIdMessage: message.operatorIdMessage,
      selfIdMessage: message.selfIdMessage,
      authenticationMessage: message.authenticationMessage,
      systemDataMessage: message.systemDataMessage,
    );
  }

  RemoteIDEntity._internal({
    required super.macAddress,
    required super.lastUpdate,
    required super.source,
    super.lastMessageRssi,
    super.basicIdMessages,
    super.locationMessage,
    super.operatorIdMessage,
    super.selfIdMessage,
    super.authenticationMessage,
    super.systemDataMessage,
  });

  @override
  int get hashCode => macAddress.hashCode;

  @override
  bool operator ==(covariant RemoteIDEntity other) {
    return macAddress == other.macAddress;
  }
}
