import 'package:equatable/equatable.dart' show Equatable;

sealed class DeviceMetadataFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class DeviceMetadataFailedToSendFailure extends DeviceMetadataFailure {
  @override
  List<Object?> get props => [];
}

final class DeviceMetadataUndesiredDataReturnedFailure
    extends DeviceMetadataFailure {
  @override
  List<Object?> get props => [];
}

final class DeviceMetadataUnknownFailure extends DeviceMetadataFailure {
  @override
  List<Object?> get props => [];
}
