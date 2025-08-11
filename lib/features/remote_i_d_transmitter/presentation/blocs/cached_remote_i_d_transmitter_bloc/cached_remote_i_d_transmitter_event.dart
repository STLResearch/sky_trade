// SPDX-License-Identifier: UNLICENSED
                            
part of 'cached_remote_i_d_transmitter_bloc.dart';

@freezed
class CachedRemoteIDTransmitterEvent with _$CachedRemoteIDTransmitterEvent {
  const factory CachedRemoteIDTransmitterEvent.startTransmitter() =
      _StartTransmitter;

  const factory CachedRemoteIDTransmitterEvent.remoteIDTransmitting() =
      _RemoteIDTransmitting;

  const factory CachedRemoteIDTransmitterEvent.remoteIDTransmitted() =
      _RemoteIDTransmitted;

  const factory CachedRemoteIDTransmitterEvent.transmitterStarted() =
      _TransmitterStarted;

  const factory CachedRemoteIDTransmitterEvent.transmitRemoteID({
    required List<GeolocatedRemoteIDCollectionEntity>
        geolocatedRemoteIDCollectionEntities,
  }) = _TransmitRemoteID;
}
