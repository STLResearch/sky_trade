import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_ways/core/utils/enums/local.dart';

final class CacheEntity extends Equatable {
  const CacheEntity({
    required this.name,
    required this.content,
    required this.type,
    required this.lastModified,
  });

  final String name;
  final Object content;
  final CacheType type;
  final DateTime lastModified;

  @override
  List<Object?> get props => [
        name,
        content,
        type,
        lastModified,
      ];
}
