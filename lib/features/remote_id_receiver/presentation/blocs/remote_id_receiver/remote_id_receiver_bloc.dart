import 'dart:async';
import 'dart:collection';
import 'package:bloc/bloc.dart';
import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sky_ways/features/remote_id_receiver/domain/entities/remote_id_message.dart';
import 'package:sky_ways/features/remote_id_receiver/domain/repositories/remote_id_receiver_repository.dart';

part 'remote_id_receiver_bloc.freezed.dart';

part 'remote_id_receiver_event.dart';

part 'remote_id_receiver_state.dart';

class RemoteIdReceiverBloc
    extends Bloc<RemoteIdReceiverEvent, RemoteIdReceiverState> {
  RemoteIdReceiverBloc(RemoteIdReceiverRepository remoteIdReceiverRepository)
      : _remoteIdReceiverRepository = remoteIdReceiverRepository,
        super(const RemoteIdReceiverState.initial()) {
    on<RemoteIdReceiverEvent>((event, emit) {
      switch (event) {
        case _TurnOn():
          _turn0nReceiver(event.technologyType, emit);
        case _TurnOff():
          _turnOffReceiver(event, emit);
        case _ReceivedMessage():
          _verifyDetectedMessage(event.receivedMessage, emit);
        case _AddMessage():
          _addToDetectedDronesSet(event.message, emit);
        case _UpdateMessage():
          _updateDetectedDronesSet(event.message, emit);
      }
    });
  }

  final RemoteIdReceiverRepository _remoteIdReceiverRepository;
  final HashSet<RemoteIDMessage> detectedDrones = HashSet<RemoteIDMessage>();
  late final StreamSubscription<RemoteIDMessage> _receiverStreamSubscription;

  void _turn0nReceiver(
      UsedTechnologies technologyType, Emitter<RemoteIdReceiverState> emit) {
    _receiverStreamSubscription = _remoteIdReceiverRepository
        .getRemoteIDMessageStream(technologyType)
        .listen((RemoteIDMessage detectedMessage) {
      add(
        RemoteIdReceiverEvent.receivedMessage(
          receivedMessage: detectedMessage,
        ),
      );
    });
    emit(const RemoteIdReceiverState.on());
  }

  void _turnOffReceiver(
    _TurnOff event,
    Emitter<RemoteIdReceiverState> emit,
  ) {
    _receiverStreamSubscription.cancel();
    emit(const RemoteIdReceiverState.off());
  }

  void _verifyDetectedMessage(
    RemoteIDMessage message,
    Emitter<RemoteIdReceiverState> emit,
  ) {
    switch (detectedDrones.contains(message)) {
      case true:
        add(
          RemoteIdReceiverEvent.updateMessage(
            message: message,
          ),
        );
      case false:
        add(
          RemoteIdReceiverEvent.addMessage(
            message: message,
          ),
        );
    }
    emit(const RemoteIdReceiverState.verifiedDroneMessage());
  }

  void _addToDetectedDronesSet(
    RemoteIDMessage newMessage,
    Emitter<RemoteIdReceiverState> emit,
  ) {
    detectedDrones.add(newMessage);
    emit(const RemoteIdReceiverState.addedDroneMessage());
  }

  void _updateDetectedDronesSet(
    RemoteIDMessage updatedMessage,
    Emitter<RemoteIdReceiverState> emit,
  ) {
    detectedDrones
      ..remove(updatedMessage)
      ..add(updatedMessage);
    emit(const RemoteIdReceiverState.updatedDroneMessage());
  }
}
