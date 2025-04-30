import 'package:hive_ce/hive.dart' show Box, Hive;
import 'package:sky_trade/core/resources/numbers/local.dart' show one, three;
import 'package:sky_trade/core/resources/strings/local.dart'
    show restrictionsBoxKey;
import 'package:sky_trade/core/resources/strings/special_characters.dart'
    show underscore;
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
    final box = await _getBoxForStoringRestrictionsData();
    final data = box
        .get(
          _getTodayKey(),
        )
        ?.cast<String, List<dynamic>>();

    return data?[geoHash]?.cast<RestrictionModel>();
  }

  @override
  Future<void> cacheRestrictionsUsing({
    required String geoHash,
    required List<RestrictionModel> restrictions,
  }) async {
    final box = await _getBoxForStoringRestrictionsData();
    final todayKey = _getTodayKey();
    final previouslyAddedRestrictions = box.get(
      todayKey,
    );

    await _deleteStaleRestrictions(
      box,
      todayKey,
    );
    await box.put(
      todayKey,
      {
        ...?previouslyAddedRestrictions,
        geoHash: restrictions,
      },
    );
  }

  @override
  Future<void> cleanUpResources() async {
    final box = await _getBoxForStoringRestrictionsData();
    await box.close();
  }

  Future<Box<Map<dynamic, dynamic>>> _getBoxForStoringRestrictionsData() =>
      Hive.openBox<Map<dynamic, dynamic>>(
        restrictionsBoxKey,
      );

  Future<void> _deleteStaleRestrictions(
    Box<Map<dynamic, dynamic>> box,
    String todayKey,
  ) async {
    if(box.containsKey(todayKey)) {
      return;
    }
    await box.clear();
  }

  String _getTodayKey() {
    final now = DateTime.timestamp();
    final today3AmUTC = DateTime.utc(
      now.year,
      now.month,
      now.day,
      three,
    );
    final tomorrow3AmUTC = DateTime.utc(
      now.year,
      now.month,
      now.day + one,
      three,
    );

    return today3AmUTC.toString() + underscore + tomorrow3AmUTC.toString();
  }
}
