
import 'dart:async';

import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:sky_ways/core/utils/enums/local.dart' as enums show PermissionStatus;
import 'package:sky_ways/features/remote_id_receiver/domain/entities/remote_id_message.dart';

abstract interface class RemoteIdReceiverRepository {

  late final UsedTechnologies usedTechnology;
  late final StreamController<RemoteIDMessage> streamController;
  late final StreamSubscription<MessageContainer> streamSubscription;

  Future<enums.PermissionStatus> requestRequiredPermissions();

  Future<bool> checkTechnologiesEnabled();

  Stream<RemoteIDMessage> getRemoteIDMessageStream();

}