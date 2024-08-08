import 'package:dartz/dartz.dart' show Either;
import 'package:sky_ways/core/errors/failures/file_failure.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart' show twentyFour;
import 'package:sky_ways/core/utils/enums/local.dart' show FileType;
import 'package:sky_ways/features/file_manager/domain/entities/file_entity.dart';

abstract interface class FileManagerRepository {
  Future<Either<FileFailure, FileEntity>> read({
    required String name,
    required FileType type,
    Duration staleAfter = const Duration(
      hours: twentyFour,
    ),
  });

  Future<Either<WriteFileFailure, FileEntity>> write({
    required String name,
    required Object content,
    required FileType type,
  });
}
