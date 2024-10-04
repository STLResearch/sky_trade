import 'package:equatable/equatable.dart' show Equatable;

final class RemoteIdReceiverFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class BluetoothReceiverFailure extends Equatable
    implements RemoteIdReceiverFailure {
  @override
  List<Object?> get props => [];
}

final class WifiReceiverFailure extends Equatable
    implements RemoteIdReceiverFailure
{
  @override
  List<Object?> get props => [];
}
