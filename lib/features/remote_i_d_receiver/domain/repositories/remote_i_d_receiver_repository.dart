import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_id_entity.dart';

abstract interface class RemoteIDReceiverRepository<L> {

  Stream<Either<L, Map<RemoteIDReceiverOperationType, RemoteIdEntity>>>
      get remoteIDStream;

}

enum RemoteIDReceiverOperationType {
  add,
  update,
  delete,
}
