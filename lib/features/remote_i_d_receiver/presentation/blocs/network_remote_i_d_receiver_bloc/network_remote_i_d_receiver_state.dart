// SPDX-License-Identifier: UNLICENSED
                            
part of 'network_remote_i_d_receiver_bloc.dart';

@freezed
class NetworkRemoteIDReceiverState with _$NetworkRemoteIDReceiverState {
  const factory NetworkRemoteIDReceiverState.initial() = _Initial;

  const factory NetworkRemoteIDReceiverState.establishingListeningRemoteIDs() =
      _EstablishingListeningRemoteIDs;

  const factory NetworkRemoteIDReceiverState.startedListeningRemoteIDs() =
      _StartedListeningRemoteIDs;

  const factory NetworkRemoteIDReceiverState.gettingRemoteIDs() =
      _GettingRemoteIDs;

  const factory NetworkRemoteIDReceiverState.gotRemoteIDs({
    required List<RemoteIDEntity> remoteIDEntities,
  }) = _GotRemoteIDs;
}
