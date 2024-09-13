part of 'remote_id_receiver_bloc.dart';

@freezed
class RemoteIdReceiverState with _$RemoteIdReceiverState {
  const factory RemoteIdReceiverState.initial() = _Initial;

  const factory RemoteIdReceiverState.on() = _On;

  const factory RemoteIdReceiverState.off() = _Off;

  const factory RemoteIdReceiverState.verifiedDroneMessage() =
      _VerifiedDroneMessage;

  const factory RemoteIdReceiverState.addedDroneMessage() =
      _AddedDroneMessage;

  const factory RemoteIdReceiverState.updatedDroneMessage() =
      _UpdatedDroneMessage;
}
