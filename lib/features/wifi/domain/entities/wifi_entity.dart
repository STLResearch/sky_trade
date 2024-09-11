import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_ways/core/utils/enums/networking.dart'
    show WifiAdapterState;

final class WifiPermissionEntity extends Equatable {
  const WifiPermissionEntity({
    required this.granted,
  });

  final bool granted;

  @override
  List<Object?> get props => [
        granted,
      ];
}

final class WifiAdapterStateEntity extends Equatable {
  const WifiAdapterStateEntity({
    required this.adapterState,
  });

  final WifiAdapterState adapterState;

  @override
  List<Object?> get props => [
        adapterState,
      ];
}
