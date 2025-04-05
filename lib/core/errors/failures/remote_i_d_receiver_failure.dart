import 'package:equatable/equatable.dart' show Equatable;

abstract final class RemoteIDReceiverFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class BroadcastRemoteIDReceiverFailure extends RemoteIDReceiverFailure {
  @override
  List<Object?> get props => [];
}

final class NetworkRemoteIDReceiverFailure extends RemoteIDReceiverFailure {
  @override
  List<Object?> get props => [];
}
