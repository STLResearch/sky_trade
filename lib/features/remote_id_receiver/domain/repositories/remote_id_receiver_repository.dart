
import 'dart:async';

import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:sky_ways/features/remote_id_receiver/domain/entities/remote_id_message.dart';

abstract interface class RemoteIdReceiverRepository {

  Stream<RemoteIDMessage> getRemoteIDMessageStream(UsedTechnologies technology);

}
