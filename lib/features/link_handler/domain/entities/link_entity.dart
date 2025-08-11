// SPDX-License-Identifier: UNLICENSED
                            
import 'package:equatable/equatable.dart' show Equatable;

final class LinkEntity extends Equatable {
  const LinkEntity({
    required this.link,
    required this.handled,
  });

  final String link;

  final bool handled;

  @override
  List<Object?> get props => [
        link,
        handled,
      ];
}
