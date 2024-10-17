import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/core/errors/failures/remote_i_d_receiver_failure.dart'
    show RemoteIDReceiverFailure;
import 'package:sky_ways/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;

abstract interface class RemoteIDReceiverRepository {
  Stream<Either<RemoteIDReceiverFailure, Set<RemoteIDEntity>>>
      get remoteIDStream;
}
