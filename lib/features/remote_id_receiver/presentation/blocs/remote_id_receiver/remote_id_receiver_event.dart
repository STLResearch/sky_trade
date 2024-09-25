part of 'remote_id_receiver_bloc.dart';

@freezed
class RemoteIdReceiverEvent with _$RemoteIdReceiverEvent {
  const factory RemoteIdReceiverEvent.turnOn({
    required UsedTechnologies technologyType,}) = _TurnOn;

  const factory RemoteIdReceiverEvent.turnOff() = _TurnOff;

  const factory RemoteIdReceiverEvent.receivedMessage(
      {required RemoteIDMessage receivedMessage,}) = _ReceivedMessage;

  const factory RemoteIdReceiverEvent.addMessage(
      {required RemoteIDMessage message,}) = _AddMessage;

  const factory RemoteIdReceiverEvent.updateMessage(
      {required RemoteIDMessage message,}) = _UpdateMessage;
}
