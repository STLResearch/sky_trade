import 'package:equatable/equatable.dart' show Equatable;

final class LinkEntity extends Equatable {
  const LinkEntity({
    required this.handled,
  });

  final bool handled;

  @override
  List<Object?> get props => [
        handled,
      ];
}
