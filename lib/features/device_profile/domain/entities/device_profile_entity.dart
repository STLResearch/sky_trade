import 'package:equatable/equatable.dart' show Equatable;

final class DeviceMetadataEntity extends Equatable {
  const DeviceMetadataEntity({
    required this.data,
  });

  final int data;

  @override
  List<Object?> get props => [
        data,
      ];
}
