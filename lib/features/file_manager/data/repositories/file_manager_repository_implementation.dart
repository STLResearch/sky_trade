// ignore_for_file: avoid_slow_async_io

import 'dart:convert' show json;
import 'dart:io' show File, FileSystemException, PathNotFoundException;

import 'package:dartz/dartz.dart' show Either;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:sky_ways/core/errors/exceptions/file_exception.dart';
import 'package:sky_ways/core/errors/failures/file_failure.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart' show twentyFour;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show forwardSlash;
import 'package:sky_ways/core/utils/clients/data_handler.dart';
import 'package:sky_ways/core/utils/enums/local.dart' show FileType;
import 'package:sky_ways/features/file_manager/domain/entities/file_entity.dart';
import 'package:sky_ways/features/file_manager/domain/repositories/file_manager_repository.dart';

final class FileManagerRepositoryImplementation
    with DataHandler
    implements FileManagerRepository {
  @override
  Future<Either<FileFailure, FileEntity>> read({
    required String name,
    required FileType type,
    Duration staleAfter = const Duration(
      hours: twentyFour,
    ),
  }) =>
      handleData<FileFailure, FileEntity>(
        dataSourceOperation: () async {
          final file = await _getFile(
            name: name + type.ending,
          );

          final lastModified = await file.lastModified();

          final isStale = lastModified
              .add(
                staleAfter,
              )
              .isBefore(
                DateTime.now(),
              );

          if (isStale) throw FileStaleException();

          final content = await file.readAsString();

          return FileEntity(
            name: name + type.ending,
            content: switch (type) {
              FileType.json => json.decode(
                  content,
                ) as Map<String, dynamic>,
              FileType.jsonList => json.decode(
                  content,
                ) as List<dynamic>,
              FileType.txt => content,
            },
            type: type,
            lastModified: await file.lastModified(),
          );
        },
        onSuccess: (fileEntity) => fileEntity,
        onFailure: (object) => switch (object.runtimeType) {
          FileSystemException || PathNotFoundException => FileNotFoundFailure(),
          FileStaleException => FileStaleFailure(),
          _ => ReadFileFailure(),
        },
      );

  @override
  Future<Either<WriteFileFailure, FileEntity>> write({
    required String name,
    required Object content,
    required FileType type,
  }) =>
      handleData<WriteFileFailure, FileEntity>(
        dataSourceOperation: () async {
          final file = await _getFile(
            name: name + type.ending,
          );

          await file.writeAsString(
            switch (type) {
              FileType.json => json.encode(
                  content,
                ),
              FileType.jsonList => json.encode(
                  content,
                ),
              FileType.txt => content.toString(),
            },
          );

          return FileEntity(
            name: name,
            content: content,
            type: type,
            lastModified: await file.lastModified(),
          );
        },
        onSuccess: (unit) => unit,
        onFailure: (_) => WriteFileFailure(),
      );

  Future<File> _getFile({
    required String name,
  }) async {
    final directory = await getApplicationDocumentsDirectory();

    return File(
      directory.path + forwardSlash + name,
    );
  }
}
