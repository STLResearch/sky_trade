// ignore_for_file: avoid_slow_async_io

import 'dart:convert' show json;
import 'dart:io' show File, FileSystemException, PathNotFoundException;

import 'package:dartz/dartz.dart' show Either;
import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:sky_ways/core/errors/exceptions/cache_exception.dart';
import 'package:sky_ways/core/errors/failures/cache_failure.dart';
import 'package:sky_ways/core/resources/numbers/ui.dart' show twentyFour;
import 'package:sky_ways/core/resources/strings/special_characters.dart'
    show forwardSlash;
import 'package:sky_ways/core/utils/clients/data_handler.dart';
import 'package:sky_ways/core/utils/enums/local.dart' show CacheType;
import 'package:sky_ways/features/cache_manager/domain/entities/cache_entity.dart';
import 'package:sky_ways/features/cache_manager/domain/repositories/cache_manager_repository.dart';

final class CacheManagerRepositoryImplementation
    with DataHandler
    implements CacheManagerRepository {
  @override
  Future<Either<CacheFailure, CacheEntity>> read({
    required String name,
    required CacheType type,
    Duration staleAfter = const Duration(
      hours: twentyFour,
    ),
  }) =>
      handleData<CacheFailure, CacheEntity>(
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

          if (isStale) throw DataStaleException();

          final content = await file.readAsString();

          return CacheEntity(
            name: name + type.ending,
            content: switch (type) {
              CacheType.jsonFile => json.decode(
                  content,
                ) as Map<String, dynamic>,
              CacheType.jsonListFile => json.decode(
                  content,
                ) as List<dynamic>,
              CacheType.txtFile => content,
            },
            type: type,
            lastModified: await file.lastModified(),
          );
        },
        onSuccess: (cacheEntity) => cacheEntity,
        onFailure: (object) => switch (object.runtimeType) {
          FileSystemException || PathNotFoundException => DataNotFoundFailure(),
          DataStaleException => DataStaleFailure(),
          _ => ReadDataFailure(),
        },
      );

  @override
  Future<Either<WriteDataFailure, CacheEntity>> write({
    required String name,
    required Object content,
    required CacheType type,
  }) =>
      handleData<WriteDataFailure, CacheEntity>(
        dataSourceOperation: () async {
          final file = await _getFile(
            name: name + type.ending,
          );

          await file.writeAsString(
            switch (type) {
              CacheType.jsonFile || CacheType.jsonListFile => json.encode(
                  content,
                ),
              CacheType.txtFile => content as String,
            },
          );

          return CacheEntity(
            name: name,
            content: content,
            type: type,
            lastModified: await file.lastModified(),
          );
        },
        onSuccess: (cacheEntity) => cacheEntity,
        onFailure: (_) => WriteDataFailure(),
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
