// SPDX-License-Identifier: UNLICENSED
                            
import 'package:hive_ce/hive.dart' show Box, Hive;
import 'package:sky_trade/core/resources/strings/local.dart'
    show geolocatedRemoteIDCollectionsBoxKey, geolocatedRemoteIDCollectionsKey;
import 'package:sky_trade/features/remote_i_d_receiver/data/models/remote_i_d_model.dart'
    show DeviceModel, GeolocatedRemoteIDCollectionModel, RemoteIDModel;

abstract interface class RemoteIDReceiverLocalDataSource {
  Future<List<GeolocatedRemoteIDCollectionModel>?>
      get cachedGeolocatedRemoteIDCollections;

  Future<void> cacheGeolocatedRemoteIDCollection({
    required List<RemoteIDModel> remoteIDs,
    required DeviceModel? device,
  });

  Future<void> deleteCachedGeolocatedRemoteIDCollections();

  Future<void> closeGeolocatedRemoteIDCollectionsLocalStorageBox();
}

final class RemoteIDReceiverLocalDataSourceImplementation
    implements RemoteIDReceiverLocalDataSource {
  @override
  Future<List<GeolocatedRemoteIDCollectionModel>?>
      get cachedGeolocatedRemoteIDCollections async {
    final box = await _getBoxForStoringGeolocatedRemoteIDCollectionsData();

    return box
        .get(
          geolocatedRemoteIDCollectionsKey,
        )
        ?.cast<GeolocatedRemoteIDCollectionModel>();
  }

  @override
  Future<void> cacheGeolocatedRemoteIDCollection({
    required List<RemoteIDModel> remoteIDs,
    required DeviceModel? device,
  }) async {
    final box = await _getBoxForStoringGeolocatedRemoteIDCollectionsData();

    final previouslyCachedGeolocatedRemoteIDCollections =
        await cachedGeolocatedRemoteIDCollections;

    await box.put(
      geolocatedRemoteIDCollectionsKey,
      [
        ...?previouslyCachedGeolocatedRemoteIDCollections,
        GeolocatedRemoteIDCollectionModel(
          mRemoteIDs: remoteIDs,
          mDevice: device,
        ),
      ],
    );
  }

  @override
  Future<void> deleteCachedGeolocatedRemoteIDCollections() async {
    final box = await _getBoxForStoringGeolocatedRemoteIDCollectionsData();

    await box.delete(
      geolocatedRemoteIDCollectionsKey,
    );
  }

  @override
  Future<void> closeGeolocatedRemoteIDCollectionsLocalStorageBox() async {
    final box = await _getBoxForStoringGeolocatedRemoteIDCollectionsData();

    await box.close();
  }

  Future<Box<List<dynamic>>>
      _getBoxForStoringGeolocatedRemoteIDCollectionsData() =>
          Hive.openBox<List<dynamic>>(
            geolocatedRemoteIDCollectionsBoxKey,
          );
}
