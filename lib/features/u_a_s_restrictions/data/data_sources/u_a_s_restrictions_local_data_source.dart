import 'package:hive_ce/hive.dart' show Box, Hive;
import 'package:sky_trade/core/resources/numbers/local.dart' show one, three;
import 'package:sky_trade/core/resources/strings/local.dart'
    show restrictionsBoxKey;
import 'package:sky_trade/features/u_a_s_restrictions/data/models/restriction_model.dart'
    show RestrictionModel;

abstract interface class UASRestrictionsLocalDataSource {
  Future<bool> checkForCachedRestrictionsUsing({
    required String geoHash,
  });

  Future<bool> checkCachedRestrictionsIsStaleUsing({
    required String geoHash,
  });

  Future<void> cacheRestrictionsUsing({
    required String geoHash,
    required List<RestrictionModel> data,
  });

  Future<List<RestrictionModel>> getCachedRestrictionsUsing({
    required String geoHash,
  });

  Future<void> cleanUpResources();
}

final class UASRestrictionsLocalDataSourceImplementation
    implements UASRestrictionsLocalDataSource {
  @override
  Future<bool> checkForCachedRestrictionsUsing({
    required String geoHash,
  }) async {
    final database = await _openRestrictionsDatabase();

    return database.containsKey(
      geoHash,
    );
  }

  @override
  Future<bool> checkCachedRestrictionsIsStaleUsing({
    required String geoHash,
  }) async {
    final database = await _openRestrictionsDatabase();

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

    final lastModified = database
        .get(
          geoHash,
        )!
        .cast<DateTime, List<dynamic>>()
        .entries
        .first
        .key;

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
    final database = await _openRestrictionsDatabase();

    await database.delete(
      geoHash,
    );

    await database.put(
      geoHash,
      {
        DateTime.now(): data,
      },
    );
  }

  @override
  Future<List<RestrictionModel>> getCachedRestrictionsUsing({
    required String geoHash,
  }) async {
    final database = await _openRestrictionsDatabase();

    return database
        .get(
          geoHash,
        )!
        .cast<DateTime, List<dynamic>>()
        .entries
        .first
        .value
        .cast<RestrictionModel>();
  }

  @override
  Future<void> cleanUpResources() async {
    final database = await _openRestrictionsDatabase();
    await database.close();
  }

  Future<Box<Map<dynamic, dynamic>>> _openRestrictionsDatabase() =>
      Hive.openBox<Map<dynamic, dynamic>>(
        restrictionsBoxKey,
      );
}
