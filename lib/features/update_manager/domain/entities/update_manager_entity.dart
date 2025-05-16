import 'package:equatable/equatable.dart' show Equatable;

base class UpdateManagerEntity extends Equatable {
  const UpdateManagerEntity({
    required this.currentAPIVersion,
  });

  final String currentAPIVersion;

  @override
  List<Object?> get props => [
    currentAPIVersion,
  ];
}
