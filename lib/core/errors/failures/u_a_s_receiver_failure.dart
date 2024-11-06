import 'package:equatable/equatable.dart';

abstract class UASReceiverFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class NetworkRemoteIDFailure extends UASReceiverFailure {
  @override
  List<Object?> get props => [];
}

final class BroadcastRemoteIDFailure extends UASReceiverFailure {
  @override
  List<Object?> get props => [];
}
