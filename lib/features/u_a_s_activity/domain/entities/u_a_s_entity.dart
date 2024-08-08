import 'package:equatable/equatable.dart' show Equatable;

base class UASEntity extends Equatable {
  const UASEntity({
    required this.darrel,
  });

  final String darrel;

  @override
  List<Object?> get props => [
        darrel,
      ];
}
