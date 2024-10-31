import 'dart:typed_data' show Uint8List;

import 'package:dartz/dartz.dart' show Function0, Function1;
import 'package:sky_trade/core/utils/clients/signature_handler.dart';
import 'package:sky_trade/core/utils/enums/networking.dart' show ConnectionState;
import 'package:sky_trade/features/remote_i_d_receiver/domain/entities/remote_i_d_entity.dart'
    show RemoteIDEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/data/data_sources/remote_i_d_transmitter_remote_data_source.dart'
    show RemoteIDTransmitterRemoteDataSource;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/entities/remote_transmission_entity.dart'
    show DeviceEntity;
import 'package:sky_trade/features/remote_i_d_transmitter/domain/repositories/remote_i_d_transmitter_repository.dart';

final class RemoteIDTransmitterRepositoryImplementation
    with SignatureHandler
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
  Future<void> transmit({
    required RemoteIDEntity remoteIDEntity,
    required DeviceEntity deviceEntity,
    required Uint8List rawData,
  }) async {
    final issuedAt = computeIssuedAt();
    final nonce = computeNonce();
    final userAddress = await computeUserAddress();
    final message = computeMessageToSignUsing(
      issuedAt: issuedAt,
      nonce: nonce,
      userAddress: userAddress,
    );
    final email = await computeUserEmail();
    final sign = await signMessage(
      message,
    );

    _remoteIDTransmitterRemoteDataSource.transmit(
      remoteIDEntity: remoteIDEntity,
      deviceEntity: deviceEntity,
      rawData: rawData,
      signature: (
        sign: sign,
        issuedAt: issuedAt,
        nonce: nonce,
        address: userAddress,
        email: email,
      ),
    );
  }

  @override
  void stopTransmitter() =>
      _remoteIDTransmitterRemoteDataSource.stopTransmitter();
}
