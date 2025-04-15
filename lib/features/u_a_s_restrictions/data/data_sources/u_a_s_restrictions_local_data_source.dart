import 'package:hive_ce/hive.dart' show Box, Hive;
import 'package:sky_trade/core/resources/numbers/local.dart' show one, three;
import 'package:sky_trade/core/resources/strings/local.dart'
    show restrictionsBoxKey;
import 'package:sky_trade/features/u_a_s_restrictions/data/models/restriction_model.dart'
    show RestrictionModel;

abstract interface class UASRestrictionsLocalDataSource {
  Future<List<RestrictionModel>?> getCachedRestrictionsUsing({
    required String geoHash,
  });

  Future<void> cacheRestrictionsUsing({
    required String geoHash,
    required List<RestrictionModel> restrictions,
  });

  Future<void> cleanUpResources();
}

final class UASRestrictionsLocalDataSourceImplementation
    implements UASRestrictionsLocalDataSource {
  @override
  Future<List<RestrictionModel>?> getCachedRestrictionsUsing({
    required String geoHash,
  }) async {
    final box = await _maybeOpenBoxForStoringRestrictionsData();

    final data = box
        .get(
          geoHash,
        )
        ?.cast<DateTime, List<dynamic>>();

    if (data == null) {
      return null;
    }

    final isStale = _checkCachedRestrictionsIsStaleUsing(
      geoHash: geoHash,
      createdAt: data.entries.first.key,
    );

    if (isStale) return null;

    return data.entries.first.value.cast<RestrictionModel>();
  }

  bool _checkCachedRestrictionsIsStaleUsing({
    required String geoHash,
    required DateTime createdAt,
  }) {
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

    final isNotStale = createdAt.isAfter(
          todayAt3Am,
        ) &&
        createdAt.isBefore(
          tomorrowAt3Am,
        );

    return !isNotStale;
  }

  @override
  Future<void> cacheRestrictionsUsing({
    required String geoHash,
    required List<RestrictionModel> restrictions,
  }) async {
    final box = await _maybeOpenBoxForStoringRestrictionsData();

    await box.delete(
      geoHash,
    );

    await box.put(
      geoHash,
      {
        DateTime.now(): restrictions,
      },
    );
  }

  @override
  Future<void> cleanUpResources() async {
    final box = await _maybeOpenBoxForStoringRestrictionsData();
    await box.close();
  }

  Future<Box<Map<dynamic, dynamic>>>
      _maybeOpenBoxForStoringRestrictionsData() =>
          Hive.openBox<Map<dynamic, dynamic>>(
            restrictionsBoxKey,
          );
}
