// ignore_for_file: avoid_slow_async_io

import 'dart:convert' show jsonDecode, jsonEncode;
import 'dart:io' show File;

import 'package:path_provider/path_provider.dart'
    show getApplicationDocumentsDirectory;
import 'package:sky_trade/core/resources/numbers/local.dart' show one, three;
import 'package:sky_trade/core/resources/strings/local.dart'
    show jsonFileEnding;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show forwardSlash;
import 'package:sky_trade/features/u_a_s_restrictions/data/models/restriction_model.dart'
    show RestrictionModel;

abstract interface class UASRestrictionsLocalDataSource {
  Future<bool> checkCachedRestrictionsIsStaleUsing({
    required String geoHash,
  });

  Future<void> cacheRestrictionsUsing({
    required String geoHash,
    required List<RestrictionModel> data,
  });

  Future<bool> checkForCachedRestrictionsUsing({
    required String geoHash,
  });

  Future<List<RestrictionModel>> getCachedRestrictionsUsing({
    required String geoHash,
  });
}

final class UASRestrictionsLocalDataSourceImplementation
    implements UASRestrictionsLocalDataSource {
  @override
  Future<bool> checkCachedRestrictionsIsStaleUsing({
    required String geoHash,
  }) async {
    final file = await _getOrCreateFileWith(
      name: geoHash,
    );

    final lastModified = await file.lastModified();

    final now = DateTime.now();

    final todayAt3Am = DateTime(
      now.year,
      now.month,
      now.day,
      three,
    );

    final tomorrowAt3Am = DateTime(
      now.year,
      now.month,
      now.day,
      three,
    ).add(
      const Duration(
        days: one,
      ),
    );

    final isNotStale = lastModified.isAfter(
          todayAt3Am,
        ) &&
        lastModified.isBefore(
          tomorrowAt3Am,
        );

    return !isNotStale;
  }

  @override
  Future<void> cacheRestrictionsUsing({
    required String geoHash,
    required List<RestrictionModel> data,
  }) async {
    final file = await _getOrCreateFileWith(
      name: geoHash,
    );

    await file.writeAsString(
      jsonEncode(
        data,
      ),
    );
  }

  @override
  Future<bool> checkForCachedRestrictionsUsing({
    required String geoHash,
  }) async {
    final file = await _getOrCreateFileWith(
      name: geoHash,
    );

    final fileExists = await file.exists();

    return fileExists;
  }

  @override
  Future<List<RestrictionModel>> getCachedRestrictionsUsing({
    required String geoHash,
  }) async {
    final file = await _getOrCreateFileWith(
      name: geoHash,
    );

    final data = await file.readAsString();

    return jsonDecode(
      data,
    ) as List<RestrictionModel>;
  }

  Future<File> _getOrCreateFileWith({
    required String name,
  }) async {
    final directory = await getApplicationDocumentsDirectory();

    return File(
      directory.path + forwardSlash + name + jsonFileEnding,
    );
  }
}
