// ignore_for_file: sort_constructors_first
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:flutter_opendroneid/models/message_container.dart';
import 'package:sky_trade/core/errors/failures/u_a_s_receiver_failure.dart';
import 'package:sky_trade/features/u_a_s_receiver/data/models/remote_i_d_model.dart';

abstract interface class UASBroadcastDataSource {
  Stream<Either<BroadcastRemoteIDFailure, RemoteIDModel>> get broadcastRemoteIdStream;
}

final class UASBroadcastDataSourceImplementation implements UASBroadcastDataSource {

  late final StreamController<Either<BroadcastRemoteIDFailure, RemoteIDModel>>
      _broadcastRemoteIDStreamController;
  late final StreamSubscription<MessageContainer>
      _flutterOpenDroneIdStreamSubscription;

  @override
  Stream<Either<BroadcastRemoteIDFailure, RemoteIDModel>> get broadcastRemoteIdStream {

    _broadcastRemoteIDStreamController = StreamController<Either<BroadcastRemoteIDFailure, RemoteIDModel>>(
      onListen: () {
        FlutterOpenDroneId.startScan(UsedTechnologies.Both);
        _flutterOpenDroneIdStreamSubscription = FlutterOpenDroneId.allMessages.listen(
                (messageContainer) {
                  final newRemoteIDModel = RemoteIDModel.fromOpenDroneID(messageContainer);
                  addNewRemoteIDEntityToStream(newRemoteIDModel);
                },
                onError: (_) => emitBroadcastFailureToStream(),
            );
      },
      onCancel: () {
        FlutterOpenDroneId.stopScan();
        _broadcastRemoteIDStreamController.close();
        _flutterOpenDroneIdStreamSubscription.cancel();
      },
    );
    return _broadcastRemoteIDStreamController.stream;
  }

  void addNewRemoteIDEntityToStream(
      RemoteIDModel newRemoteIDModel,
  ) {
    _broadcastRemoteIDStreamController.add(
      Right(
        newRemoteIDModel,
      ),
    );
  }

  void emitBroadcastFailureToStream(){
    _broadcastRemoteIDStreamController.add(
      Left(
        BroadcastRemoteIDFailure(),
      ),
    );
  }
}
