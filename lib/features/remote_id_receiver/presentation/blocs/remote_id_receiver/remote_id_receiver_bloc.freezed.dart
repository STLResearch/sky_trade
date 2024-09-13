// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_id_receiver_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteIdReceiverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) turnOn,
    required TResult Function() turnOff,
    required TResult Function(RemoteIDMessage receivedMessage) receivedMessage,
    required TResult Function(RemoteIDMessage message) addMessage,
    required TResult Function(RemoteIDMessage message) updateMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? turnOn,
    TResult? Function()? turnOff,
    TResult? Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult? Function(RemoteIDMessage message)? addMessage,
    TResult? Function(RemoteIDMessage message)? updateMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? turnOn,
    TResult Function()? turnOff,
    TResult Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult Function(RemoteIDMessage message)? addMessage,
    TResult Function(RemoteIDMessage message)? updateMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TurnOn value) turnOn,
    required TResult Function(_TurnOff value) turnOff,
    required TResult Function(_ReceivedMessage value) receivedMessage,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_UpdateMessage value) updateMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TurnOn value)? turnOn,
    TResult? Function(_TurnOff value)? turnOff,
    TResult? Function(_ReceivedMessage value)? receivedMessage,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_UpdateMessage value)? updateMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TurnOn value)? turnOn,
    TResult Function(_TurnOff value)? turnOff,
    TResult Function(_ReceivedMessage value)? receivedMessage,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_UpdateMessage value)? updateMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteIdReceiverEventCopyWith<$Res> {
  factory $RemoteIdReceiverEventCopyWith(RemoteIdReceiverEvent value,
          $Res Function(RemoteIdReceiverEvent) then) =
      _$RemoteIdReceiverEventCopyWithImpl<$Res, RemoteIdReceiverEvent>;
}

/// @nodoc
class _$RemoteIdReceiverEventCopyWithImpl<$Res,
        $Val extends RemoteIdReceiverEvent>
    implements $RemoteIdReceiverEventCopyWith<$Res> {
  _$RemoteIdReceiverEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TurnOnImplCopyWith<$Res> {
  factory _$$TurnOnImplCopyWith(
          _$TurnOnImpl value, $Res Function(_$TurnOnImpl) then) =
      __$$TurnOnImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UsedTechnologies technologyType});
}

/// @nodoc
class __$$TurnOnImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverEventCopyWithImpl<$Res, _$TurnOnImpl>
    implements _$$TurnOnImplCopyWith<$Res> {
  __$$TurnOnImplCopyWithImpl(
      _$TurnOnImpl _value, $Res Function(_$TurnOnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technologyType = null,
  }) {
    return _then(_$TurnOnImpl(
      technologyType: null == technologyType
          ? _value.technologyType
          : technologyType // ignore: cast_nullable_to_non_nullable
              as UsedTechnologies,
    ));
  }
}

/// @nodoc

class _$TurnOnImpl implements _TurnOn {
  const _$TurnOnImpl({required this.technologyType});

  @override
  final UsedTechnologies technologyType;

  @override
  String toString() {
    return 'RemoteIdReceiverEvent.turnOn(technologyType: $technologyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TurnOnImpl &&
            (identical(other.technologyType, technologyType) ||
                other.technologyType == technologyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, technologyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TurnOnImplCopyWith<_$TurnOnImpl> get copyWith =>
      __$$TurnOnImplCopyWithImpl<_$TurnOnImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) turnOn,
    required TResult Function() turnOff,
    required TResult Function(RemoteIDMessage receivedMessage) receivedMessage,
    required TResult Function(RemoteIDMessage message) addMessage,
    required TResult Function(RemoteIDMessage message) updateMessage,
  }) {
    return turnOn(technologyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? turnOn,
    TResult? Function()? turnOff,
    TResult? Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult? Function(RemoteIDMessage message)? addMessage,
    TResult? Function(RemoteIDMessage message)? updateMessage,
  }) {
    return turnOn?.call(technologyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? turnOn,
    TResult Function()? turnOff,
    TResult Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult Function(RemoteIDMessage message)? addMessage,
    TResult Function(RemoteIDMessage message)? updateMessage,
    required TResult orElse(),
  }) {
    if (turnOn != null) {
      return turnOn(technologyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TurnOn value) turnOn,
    required TResult Function(_TurnOff value) turnOff,
    required TResult Function(_ReceivedMessage value) receivedMessage,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_UpdateMessage value) updateMessage,
  }) {
    return turnOn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TurnOn value)? turnOn,
    TResult? Function(_TurnOff value)? turnOff,
    TResult? Function(_ReceivedMessage value)? receivedMessage,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_UpdateMessage value)? updateMessage,
  }) {
    return turnOn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TurnOn value)? turnOn,
    TResult Function(_TurnOff value)? turnOff,
    TResult Function(_ReceivedMessage value)? receivedMessage,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_UpdateMessage value)? updateMessage,
    required TResult orElse(),
  }) {
    if (turnOn != null) {
      return turnOn(this);
    }
    return orElse();
  }
}

abstract class _TurnOn implements RemoteIdReceiverEvent {
  const factory _TurnOn({required final UsedTechnologies technologyType}) =
      _$TurnOnImpl;

  UsedTechnologies get technologyType;
  @JsonKey(ignore: true)
  _$$TurnOnImplCopyWith<_$TurnOnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TurnOffImplCopyWith<$Res> {
  factory _$$TurnOffImplCopyWith(
          _$TurnOffImpl value, $Res Function(_$TurnOffImpl) then) =
      __$$TurnOffImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TurnOffImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverEventCopyWithImpl<$Res, _$TurnOffImpl>
    implements _$$TurnOffImplCopyWith<$Res> {
  __$$TurnOffImplCopyWithImpl(
      _$TurnOffImpl _value, $Res Function(_$TurnOffImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TurnOffImpl implements _TurnOff {
  const _$TurnOffImpl();

  @override
  String toString() {
    return 'RemoteIdReceiverEvent.turnOff()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TurnOffImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) turnOn,
    required TResult Function() turnOff,
    required TResult Function(RemoteIDMessage receivedMessage) receivedMessage,
    required TResult Function(RemoteIDMessage message) addMessage,
    required TResult Function(RemoteIDMessage message) updateMessage,
  }) {
    return turnOff();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? turnOn,
    TResult? Function()? turnOff,
    TResult? Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult? Function(RemoteIDMessage message)? addMessage,
    TResult? Function(RemoteIDMessage message)? updateMessage,
  }) {
    return turnOff?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? turnOn,
    TResult Function()? turnOff,
    TResult Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult Function(RemoteIDMessage message)? addMessage,
    TResult Function(RemoteIDMessage message)? updateMessage,
    required TResult orElse(),
  }) {
    if (turnOff != null) {
      return turnOff();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TurnOn value) turnOn,
    required TResult Function(_TurnOff value) turnOff,
    required TResult Function(_ReceivedMessage value) receivedMessage,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_UpdateMessage value) updateMessage,
  }) {
    return turnOff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TurnOn value)? turnOn,
    TResult? Function(_TurnOff value)? turnOff,
    TResult? Function(_ReceivedMessage value)? receivedMessage,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_UpdateMessage value)? updateMessage,
  }) {
    return turnOff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TurnOn value)? turnOn,
    TResult Function(_TurnOff value)? turnOff,
    TResult Function(_ReceivedMessage value)? receivedMessage,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_UpdateMessage value)? updateMessage,
    required TResult orElse(),
  }) {
    if (turnOff != null) {
      return turnOff(this);
    }
    return orElse();
  }
}

abstract class _TurnOff implements RemoteIdReceiverEvent {
  const factory _TurnOff() = _$TurnOffImpl;
}

/// @nodoc
abstract class _$$ReceivedMessageImplCopyWith<$Res> {
  factory _$$ReceivedMessageImplCopyWith(_$ReceivedMessageImpl value,
          $Res Function(_$ReceivedMessageImpl) then) =
      __$$ReceivedMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteIDMessage receivedMessage});
}

/// @nodoc
class __$$ReceivedMessageImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverEventCopyWithImpl<$Res, _$ReceivedMessageImpl>
    implements _$$ReceivedMessageImplCopyWith<$Res> {
  __$$ReceivedMessageImplCopyWithImpl(
      _$ReceivedMessageImpl _value, $Res Function(_$ReceivedMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receivedMessage = null,
  }) {
    return _then(_$ReceivedMessageImpl(
      receivedMessage: null == receivedMessage
          ? _value.receivedMessage
          : receivedMessage // ignore: cast_nullable_to_non_nullable
              as RemoteIDMessage,
    ));
  }
}

/// @nodoc

class _$ReceivedMessageImpl implements _ReceivedMessage {
  const _$ReceivedMessageImpl({required this.receivedMessage});

  @override
  final RemoteIDMessage receivedMessage;

  @override
  String toString() {
    return 'RemoteIdReceiverEvent.receivedMessage(receivedMessage: $receivedMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceivedMessageImpl &&
            (identical(other.receivedMessage, receivedMessage) ||
                other.receivedMessage == receivedMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receivedMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceivedMessageImplCopyWith<_$ReceivedMessageImpl> get copyWith =>
      __$$ReceivedMessageImplCopyWithImpl<_$ReceivedMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) turnOn,
    required TResult Function() turnOff,
    required TResult Function(RemoteIDMessage receivedMessage) receivedMessage,
    required TResult Function(RemoteIDMessage message) addMessage,
    required TResult Function(RemoteIDMessage message) updateMessage,
  }) {
    return receivedMessage(this.receivedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? turnOn,
    TResult? Function()? turnOff,
    TResult? Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult? Function(RemoteIDMessage message)? addMessage,
    TResult? Function(RemoteIDMessage message)? updateMessage,
  }) {
    return receivedMessage?.call(this.receivedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? turnOn,
    TResult Function()? turnOff,
    TResult Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult Function(RemoteIDMessage message)? addMessage,
    TResult Function(RemoteIDMessage message)? updateMessage,
    required TResult orElse(),
  }) {
    if (receivedMessage != null) {
      return receivedMessage(this.receivedMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TurnOn value) turnOn,
    required TResult Function(_TurnOff value) turnOff,
    required TResult Function(_ReceivedMessage value) receivedMessage,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_UpdateMessage value) updateMessage,
  }) {
    return receivedMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TurnOn value)? turnOn,
    TResult? Function(_TurnOff value)? turnOff,
    TResult? Function(_ReceivedMessage value)? receivedMessage,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_UpdateMessage value)? updateMessage,
  }) {
    return receivedMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TurnOn value)? turnOn,
    TResult Function(_TurnOff value)? turnOff,
    TResult Function(_ReceivedMessage value)? receivedMessage,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_UpdateMessage value)? updateMessage,
    required TResult orElse(),
  }) {
    if (receivedMessage != null) {
      return receivedMessage(this);
    }
    return orElse();
  }
}

abstract class _ReceivedMessage implements RemoteIdReceiverEvent {
  const factory _ReceivedMessage(
      {required final RemoteIDMessage receivedMessage}) = _$ReceivedMessageImpl;

  RemoteIDMessage get receivedMessage;
  @JsonKey(ignore: true)
  _$$ReceivedMessageImplCopyWith<_$ReceivedMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddMessageImplCopyWith<$Res> {
  factory _$$AddMessageImplCopyWith(
          _$AddMessageImpl value, $Res Function(_$AddMessageImpl) then) =
      __$$AddMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteIDMessage message});
}

/// @nodoc
class __$$AddMessageImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverEventCopyWithImpl<$Res, _$AddMessageImpl>
    implements _$$AddMessageImplCopyWith<$Res> {
  __$$AddMessageImplCopyWithImpl(
      _$AddMessageImpl _value, $Res Function(_$AddMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AddMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteIDMessage,
    ));
  }
}

/// @nodoc

class _$AddMessageImpl implements _AddMessage {
  const _$AddMessageImpl({required this.message});

  @override
  final RemoteIDMessage message;

  @override
  String toString() {
    return 'RemoteIdReceiverEvent.addMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddMessageImplCopyWith<_$AddMessageImpl> get copyWith =>
      __$$AddMessageImplCopyWithImpl<_$AddMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) turnOn,
    required TResult Function() turnOff,
    required TResult Function(RemoteIDMessage receivedMessage) receivedMessage,
    required TResult Function(RemoteIDMessage message) addMessage,
    required TResult Function(RemoteIDMessage message) updateMessage,
  }) {
    return addMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? turnOn,
    TResult? Function()? turnOff,
    TResult? Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult? Function(RemoteIDMessage message)? addMessage,
    TResult? Function(RemoteIDMessage message)? updateMessage,
  }) {
    return addMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? turnOn,
    TResult Function()? turnOff,
    TResult Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult Function(RemoteIDMessage message)? addMessage,
    TResult Function(RemoteIDMessage message)? updateMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TurnOn value) turnOn,
    required TResult Function(_TurnOff value) turnOff,
    required TResult Function(_ReceivedMessage value) receivedMessage,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_UpdateMessage value) updateMessage,
  }) {
    return addMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TurnOn value)? turnOn,
    TResult? Function(_TurnOff value)? turnOff,
    TResult? Function(_ReceivedMessage value)? receivedMessage,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_UpdateMessage value)? updateMessage,
  }) {
    return addMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TurnOn value)? turnOn,
    TResult Function(_TurnOff value)? turnOff,
    TResult Function(_ReceivedMessage value)? receivedMessage,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_UpdateMessage value)? updateMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(this);
    }
    return orElse();
  }
}

abstract class _AddMessage implements RemoteIdReceiverEvent {
  const factory _AddMessage({required final RemoteIDMessage message}) =
      _$AddMessageImpl;

  RemoteIDMessage get message;
  @JsonKey(ignore: true)
  _$$AddMessageImplCopyWith<_$AddMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateMessageImplCopyWith<$Res> {
  factory _$$UpdateMessageImplCopyWith(
          _$UpdateMessageImpl value, $Res Function(_$UpdateMessageImpl) then) =
      __$$UpdateMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteIDMessage message});
}

/// @nodoc
class __$$UpdateMessageImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverEventCopyWithImpl<$Res, _$UpdateMessageImpl>
    implements _$$UpdateMessageImplCopyWith<$Res> {
  __$$UpdateMessageImplCopyWithImpl(
      _$UpdateMessageImpl _value, $Res Function(_$UpdateMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdateMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as RemoteIDMessage,
    ));
  }
}

/// @nodoc

class _$UpdateMessageImpl implements _UpdateMessage {
  const _$UpdateMessageImpl({required this.message});

  @override
  final RemoteIDMessage message;

  @override
  String toString() {
    return 'RemoteIdReceiverEvent.updateMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMessageImplCopyWith<_$UpdateMessageImpl> get copyWith =>
      __$$UpdateMessageImplCopyWithImpl<_$UpdateMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) turnOn,
    required TResult Function() turnOff,
    required TResult Function(RemoteIDMessage receivedMessage) receivedMessage,
    required TResult Function(RemoteIDMessage message) addMessage,
    required TResult Function(RemoteIDMessage message) updateMessage,
  }) {
    return updateMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? turnOn,
    TResult? Function()? turnOff,
    TResult? Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult? Function(RemoteIDMessage message)? addMessage,
    TResult? Function(RemoteIDMessage message)? updateMessage,
  }) {
    return updateMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? turnOn,
    TResult Function()? turnOff,
    TResult Function(RemoteIDMessage receivedMessage)? receivedMessage,
    TResult Function(RemoteIDMessage message)? addMessage,
    TResult Function(RemoteIDMessage message)? updateMessage,
    required TResult orElse(),
  }) {
    if (updateMessage != null) {
      return updateMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TurnOn value) turnOn,
    required TResult Function(_TurnOff value) turnOff,
    required TResult Function(_ReceivedMessage value) receivedMessage,
    required TResult Function(_AddMessage value) addMessage,
    required TResult Function(_UpdateMessage value) updateMessage,
  }) {
    return updateMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TurnOn value)? turnOn,
    TResult? Function(_TurnOff value)? turnOff,
    TResult? Function(_ReceivedMessage value)? receivedMessage,
    TResult? Function(_AddMessage value)? addMessage,
    TResult? Function(_UpdateMessage value)? updateMessage,
  }) {
    return updateMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TurnOn value)? turnOn,
    TResult Function(_TurnOff value)? turnOff,
    TResult Function(_ReceivedMessage value)? receivedMessage,
    TResult Function(_AddMessage value)? addMessage,
    TResult Function(_UpdateMessage value)? updateMessage,
    required TResult orElse(),
  }) {
    if (updateMessage != null) {
      return updateMessage(this);
    }
    return orElse();
  }
}

abstract class _UpdateMessage implements RemoteIdReceiverEvent {
  const factory _UpdateMessage({required final RemoteIDMessage message}) =
      _$UpdateMessageImpl;

  RemoteIDMessage get message;
  @JsonKey(ignore: true)
  _$$UpdateMessageImplCopyWith<_$UpdateMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteIdReceiverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() on,
    required TResult Function() off,
    required TResult Function() verifiedDroneMessage,
    required TResult Function() addedDroneMessage,
    required TResult Function() updatedDroneMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? on,
    TResult? Function()? off,
    TResult? Function()? verifiedDroneMessage,
    TResult? Function()? addedDroneMessage,
    TResult? Function()? updatedDroneMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? on,
    TResult Function()? off,
    TResult Function()? verifiedDroneMessage,
    TResult Function()? addedDroneMessage,
    TResult Function()? updatedDroneMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
    required TResult Function(_VerifiedDroneMessage value) verifiedDroneMessage,
    required TResult Function(_AddedDroneMessage value) addedDroneMessage,
    required TResult Function(_UpdatedDroneMessage value) updatedDroneMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
    TResult? Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult? Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult? Function(_UpdatedDroneMessage value)? updatedDroneMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    TResult Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult Function(_UpdatedDroneMessage value)? updatedDroneMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteIdReceiverStateCopyWith<$Res> {
  factory $RemoteIdReceiverStateCopyWith(RemoteIdReceiverState value,
          $Res Function(RemoteIdReceiverState) then) =
      _$RemoteIdReceiverStateCopyWithImpl<$Res, RemoteIdReceiverState>;
}

/// @nodoc
class _$RemoteIdReceiverStateCopyWithImpl<$Res,
        $Val extends RemoteIdReceiverState>
    implements $RemoteIdReceiverStateCopyWith<$Res> {
  _$RemoteIdReceiverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RemoteIdReceiverState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() on,
    required TResult Function() off,
    required TResult Function() verifiedDroneMessage,
    required TResult Function() addedDroneMessage,
    required TResult Function() updatedDroneMessage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? on,
    TResult? Function()? off,
    TResult? Function()? verifiedDroneMessage,
    TResult? Function()? addedDroneMessage,
    TResult? Function()? updatedDroneMessage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? on,
    TResult Function()? off,
    TResult Function()? verifiedDroneMessage,
    TResult Function()? addedDroneMessage,
    TResult Function()? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
    required TResult Function(_VerifiedDroneMessage value) verifiedDroneMessage,
    required TResult Function(_AddedDroneMessage value) addedDroneMessage,
    required TResult Function(_UpdatedDroneMessage value) updatedDroneMessage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
    TResult? Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult? Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult? Function(_UpdatedDroneMessage value)? updatedDroneMessage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    TResult Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult Function(_UpdatedDroneMessage value)? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RemoteIdReceiverState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OnImplCopyWith<$Res> {
  factory _$$OnImplCopyWith(_$OnImpl value, $Res Function(_$OnImpl) then) =
      __$$OnImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverStateCopyWithImpl<$Res, _$OnImpl>
    implements _$$OnImplCopyWith<$Res> {
  __$$OnImplCopyWithImpl(_$OnImpl _value, $Res Function(_$OnImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnImpl implements _On {
  const _$OnImpl();

  @override
  String toString() {
    return 'RemoteIdReceiverState.on()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() on,
    required TResult Function() off,
    required TResult Function() verifiedDroneMessage,
    required TResult Function() addedDroneMessage,
    required TResult Function() updatedDroneMessage,
  }) {
    return on();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? on,
    TResult? Function()? off,
    TResult? Function()? verifiedDroneMessage,
    TResult? Function()? addedDroneMessage,
    TResult? Function()? updatedDroneMessage,
  }) {
    return on?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? on,
    TResult Function()? off,
    TResult Function()? verifiedDroneMessage,
    TResult Function()? addedDroneMessage,
    TResult Function()? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (on != null) {
      return on();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
    required TResult Function(_VerifiedDroneMessage value) verifiedDroneMessage,
    required TResult Function(_AddedDroneMessage value) addedDroneMessage,
    required TResult Function(_UpdatedDroneMessage value) updatedDroneMessage,
  }) {
    return on(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
    TResult? Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult? Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult? Function(_UpdatedDroneMessage value)? updatedDroneMessage,
  }) {
    return on?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    TResult Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult Function(_UpdatedDroneMessage value)? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (on != null) {
      return on(this);
    }
    return orElse();
  }
}

abstract class _On implements RemoteIdReceiverState {
  const factory _On() = _$OnImpl;
}

/// @nodoc
abstract class _$$OffImplCopyWith<$Res> {
  factory _$$OffImplCopyWith(_$OffImpl value, $Res Function(_$OffImpl) then) =
      __$$OffImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OffImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverStateCopyWithImpl<$Res, _$OffImpl>
    implements _$$OffImplCopyWith<$Res> {
  __$$OffImplCopyWithImpl(_$OffImpl _value, $Res Function(_$OffImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OffImpl implements _Off {
  const _$OffImpl();

  @override
  String toString() {
    return 'RemoteIdReceiverState.off()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OffImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() on,
    required TResult Function() off,
    required TResult Function() verifiedDroneMessage,
    required TResult Function() addedDroneMessage,
    required TResult Function() updatedDroneMessage,
  }) {
    return off();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? on,
    TResult? Function()? off,
    TResult? Function()? verifiedDroneMessage,
    TResult? Function()? addedDroneMessage,
    TResult? Function()? updatedDroneMessage,
  }) {
    return off?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? on,
    TResult Function()? off,
    TResult Function()? verifiedDroneMessage,
    TResult Function()? addedDroneMessage,
    TResult Function()? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
    required TResult Function(_VerifiedDroneMessage value) verifiedDroneMessage,
    required TResult Function(_AddedDroneMessage value) addedDroneMessage,
    required TResult Function(_UpdatedDroneMessage value) updatedDroneMessage,
  }) {
    return off(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
    TResult? Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult? Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult? Function(_UpdatedDroneMessage value)? updatedDroneMessage,
  }) {
    return off?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    TResult Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult Function(_UpdatedDroneMessage value)? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (off != null) {
      return off(this);
    }
    return orElse();
  }
}

abstract class _Off implements RemoteIdReceiverState {
  const factory _Off() = _$OffImpl;
}

/// @nodoc
abstract class _$$VerifiedDroneMessageImplCopyWith<$Res> {
  factory _$$VerifiedDroneMessageImplCopyWith(_$VerifiedDroneMessageImpl value,
          $Res Function(_$VerifiedDroneMessageImpl) then) =
      __$$VerifiedDroneMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifiedDroneMessageImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverStateCopyWithImpl<$Res,
        _$VerifiedDroneMessageImpl>
    implements _$$VerifiedDroneMessageImplCopyWith<$Res> {
  __$$VerifiedDroneMessageImplCopyWithImpl(_$VerifiedDroneMessageImpl _value,
      $Res Function(_$VerifiedDroneMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifiedDroneMessageImpl implements _VerifiedDroneMessage {
  const _$VerifiedDroneMessageImpl();

  @override
  String toString() {
    return 'RemoteIdReceiverState.verifiedDroneMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiedDroneMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() on,
    required TResult Function() off,
    required TResult Function() verifiedDroneMessage,
    required TResult Function() addedDroneMessage,
    required TResult Function() updatedDroneMessage,
  }) {
    return verifiedDroneMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? on,
    TResult? Function()? off,
    TResult? Function()? verifiedDroneMessage,
    TResult? Function()? addedDroneMessage,
    TResult? Function()? updatedDroneMessage,
  }) {
    return verifiedDroneMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? on,
    TResult Function()? off,
    TResult Function()? verifiedDroneMessage,
    TResult Function()? addedDroneMessage,
    TResult Function()? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (verifiedDroneMessage != null) {
      return verifiedDroneMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
    required TResult Function(_VerifiedDroneMessage value) verifiedDroneMessage,
    required TResult Function(_AddedDroneMessage value) addedDroneMessage,
    required TResult Function(_UpdatedDroneMessage value) updatedDroneMessage,
  }) {
    return verifiedDroneMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
    TResult? Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult? Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult? Function(_UpdatedDroneMessage value)? updatedDroneMessage,
  }) {
    return verifiedDroneMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    TResult Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult Function(_UpdatedDroneMessage value)? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (verifiedDroneMessage != null) {
      return verifiedDroneMessage(this);
    }
    return orElse();
  }
}

abstract class _VerifiedDroneMessage implements RemoteIdReceiverState {
  const factory _VerifiedDroneMessage() = _$VerifiedDroneMessageImpl;
}

/// @nodoc
abstract class _$$AddedDroneMessageImplCopyWith<$Res> {
  factory _$$AddedDroneMessageImplCopyWith(_$AddedDroneMessageImpl value,
          $Res Function(_$AddedDroneMessageImpl) then) =
      __$$AddedDroneMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddedDroneMessageImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverStateCopyWithImpl<$Res, _$AddedDroneMessageImpl>
    implements _$$AddedDroneMessageImplCopyWith<$Res> {
  __$$AddedDroneMessageImplCopyWithImpl(_$AddedDroneMessageImpl _value,
      $Res Function(_$AddedDroneMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddedDroneMessageImpl implements _AddedDroneMessage {
  const _$AddedDroneMessageImpl();

  @override
  String toString() {
    return 'RemoteIdReceiverState.addedDroneMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddedDroneMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() on,
    required TResult Function() off,
    required TResult Function() verifiedDroneMessage,
    required TResult Function() addedDroneMessage,
    required TResult Function() updatedDroneMessage,
  }) {
    return addedDroneMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? on,
    TResult? Function()? off,
    TResult? Function()? verifiedDroneMessage,
    TResult? Function()? addedDroneMessage,
    TResult? Function()? updatedDroneMessage,
  }) {
    return addedDroneMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? on,
    TResult Function()? off,
    TResult Function()? verifiedDroneMessage,
    TResult Function()? addedDroneMessage,
    TResult Function()? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (addedDroneMessage != null) {
      return addedDroneMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
    required TResult Function(_VerifiedDroneMessage value) verifiedDroneMessage,
    required TResult Function(_AddedDroneMessage value) addedDroneMessage,
    required TResult Function(_UpdatedDroneMessage value) updatedDroneMessage,
  }) {
    return addedDroneMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
    TResult? Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult? Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult? Function(_UpdatedDroneMessage value)? updatedDroneMessage,
  }) {
    return addedDroneMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    TResult Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult Function(_UpdatedDroneMessage value)? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (addedDroneMessage != null) {
      return addedDroneMessage(this);
    }
    return orElse();
  }
}

abstract class _AddedDroneMessage implements RemoteIdReceiverState {
  const factory _AddedDroneMessage() = _$AddedDroneMessageImpl;
}

/// @nodoc
abstract class _$$UpdatedDroneMessageImplCopyWith<$Res> {
  factory _$$UpdatedDroneMessageImplCopyWith(_$UpdatedDroneMessageImpl value,
          $Res Function(_$UpdatedDroneMessageImpl) then) =
      __$$UpdatedDroneMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatedDroneMessageImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverStateCopyWithImpl<$Res, _$UpdatedDroneMessageImpl>
    implements _$$UpdatedDroneMessageImplCopyWith<$Res> {
  __$$UpdatedDroneMessageImplCopyWithImpl(_$UpdatedDroneMessageImpl _value,
      $Res Function(_$UpdatedDroneMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatedDroneMessageImpl implements _UpdatedDroneMessage {
  const _$UpdatedDroneMessageImpl();

  @override
  String toString() {
    return 'RemoteIdReceiverState.updatedDroneMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedDroneMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() on,
    required TResult Function() off,
    required TResult Function() verifiedDroneMessage,
    required TResult Function() addedDroneMessage,
    required TResult Function() updatedDroneMessage,
  }) {
    return updatedDroneMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? on,
    TResult? Function()? off,
    TResult? Function()? verifiedDroneMessage,
    TResult? Function()? addedDroneMessage,
    TResult? Function()? updatedDroneMessage,
  }) {
    return updatedDroneMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? on,
    TResult Function()? off,
    TResult Function()? verifiedDroneMessage,
    TResult Function()? addedDroneMessage,
    TResult Function()? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (updatedDroneMessage != null) {
      return updatedDroneMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_On value) on,
    required TResult Function(_Off value) off,
    required TResult Function(_VerifiedDroneMessage value) verifiedDroneMessage,
    required TResult Function(_AddedDroneMessage value) addedDroneMessage,
    required TResult Function(_UpdatedDroneMessage value) updatedDroneMessage,
  }) {
    return updatedDroneMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_On value)? on,
    TResult? Function(_Off value)? off,
    TResult? Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult? Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult? Function(_UpdatedDroneMessage value)? updatedDroneMessage,
  }) {
    return updatedDroneMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_On value)? on,
    TResult Function(_Off value)? off,
    TResult Function(_VerifiedDroneMessage value)? verifiedDroneMessage,
    TResult Function(_AddedDroneMessage value)? addedDroneMessage,
    TResult Function(_UpdatedDroneMessage value)? updatedDroneMessage,
    required TResult orElse(),
  }) {
    if (updatedDroneMessage != null) {
      return updatedDroneMessage(this);
    }
    return orElse();
  }
}

abstract class _UpdatedDroneMessage implements RemoteIdReceiverState {
  const factory _UpdatedDroneMessage() = _$UpdatedDroneMessageImpl;
}
