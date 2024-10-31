import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart'
    show DeviceEntity;

typedef TerminateSocketIO = bool;

typedef SocketIOClientMessage = ({
  String roomName,
  Map<String, dynamic> data,
  Map<String, dynamic> headers,
});

typedef Signature = ({
  String sign,
  String issuedAt,
  String nonce,
  String address,
  String? email,
});

typedef RemoteIDSetDeviceCoordinatesTuple = ({
  Set<RemoteIDEntity> remoteIDEntities,
  DeviceEntity deviceEntity,
});
