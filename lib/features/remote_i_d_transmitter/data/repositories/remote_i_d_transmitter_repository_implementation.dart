import 'package:dartz/dartz.dart' show Function0, Function1;
import 'package:sky_trade/core/utils/enums/networking.dart'
    show ConnectionState;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/data/data_sources/remote_i_d_transmitter_remote_data_source.dart'
    show RemoteIDTransmitterRemoteDataSource;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart'
    show DeviceEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/repositories/remote_i_d_transmitter_repository.dart';

final class RemoteIDTransmitterRepositoryImplementation
    implements RemoteIDTransmitterRepository {
  const RemoteIDTransmitterRepositoryImplementation(
    RemoteIDTransmitterRemoteDataSource remoteIDTransmitterRemoteDataSource,
  ) : _remoteIDTransmitterRemoteDataSource =
            remoteIDTransmitterRemoteDataSource;

  final RemoteIDTransmitterRemoteDataSource
      _remoteIDTransmitterRemoteDataSource;

  @override
  Future<void> startTransmitter({
    required Function0<void> onRemoteIDSent,
    required Function1<ConnectionState, void> onConnectionChanged,
  }) =>
      _remoteIDTransmitterRemoteDataSource.startTransmitter(
        onRemoteIDSent: onRemoteIDSent,
        onConnectionChanged: onConnectionChanged,
      );

  @override
  void transmit({
    required List<RemoteIDEntity> remoteIDEntities,
    required DeviceEntity deviceEntity,
  }) =>
      _remoteIDTransmitterRemoteDataSource.transmit(
        remoteIDEntities: remoteIDEntities,
        deviceEntity: deviceEntity,
      );

  @override
  void stopTransmitter() =>
      _remoteIDTransmitterRemoteDataSource.stopTransmitter();
}
