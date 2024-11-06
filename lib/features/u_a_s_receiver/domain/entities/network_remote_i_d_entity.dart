import 'package:sky_trade/features/u_a_s_receiver/domain/entities/remote_i_d_entity.dart';

base class NetworkRemoteIDEntity extends RemoteIDEntity {
  NetworkRemoteIDEntity({
    required RemoteIDEntity remoteIDEntity,
  }) : super(
    connection: remoteIDEntity.connection,
    basicIDs: remoteIDEntity.basicIDs,
    location: remoteIDEntity.location,
    system: remoteIDEntity.system,
    selfID: remoteIDEntity.selfID,
    operatorID: remoteIDEntity.operatorID,
    authentication: remoteIDEntity.authentication,
  );
}
