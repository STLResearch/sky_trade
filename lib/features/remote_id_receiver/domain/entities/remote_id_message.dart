
import 'package:flutter/cupertino.dart';
import 'package:flutter_opendroneid/models/message_container.dart';

@immutable
class RemoteIDMessage extends MessageContainer {
  factory RemoteIDMessage(MessageContainer message) {
    return RemoteIDMessage._internal(
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

  RemoteIDMessage._internal({
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
  bool operator ==(covariant RemoteIDMessage other) {
    return macAddress == other.macAddress;
  }
}
