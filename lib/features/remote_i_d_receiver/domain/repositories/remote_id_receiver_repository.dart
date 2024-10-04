import 'package:dartz/dartz.dart';
import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_id_entity.dart';

abstract interface class RemoteIdReceiverRepository<RemoteIdReceiverFailure> {
  Stream<
          Either<RemoteIdReceiverFailure,
              Map<RemoteIdReceiverOperationType, RemoteIdEntity>>>
      getRemoteIdStream({required UsedTechnologies technologyType});
}

enum RemoteIdReceiverOperationType {
  add,
  update,
  delete,
}
