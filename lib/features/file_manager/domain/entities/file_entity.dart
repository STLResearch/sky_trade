import 'package:equatable/equatable.dart' show Equatable;
import 'package:sky_ways/core/utils/enums/local.dart';

final class FileEntity extends Equatable {
  const FileEntity({
    required this.name,
    required this.content,
    required this.type,
    required this.lastModified,
  });

  final String name;
  final Object content;
  final FileType type;
  final DateTime lastModified;

  @override
  List<Object?> get props => [
        name,
        content,
        lastModified,
      ];
}
