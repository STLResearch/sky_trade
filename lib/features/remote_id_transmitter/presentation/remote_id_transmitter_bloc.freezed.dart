// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_id_transmitter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteIdTransmitterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTransmitter,
    required TResult Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)
        transmitRemoteId,
    required TResult Function() stopTransmitter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTransmitter,
    TResult? Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)?
        transmitRemoteId,
    TResult? Function()? stopTransmitter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTransmitter,
    TResult Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)?
        transmitRemoteId,
    TResult Function()? stopTransmitter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTransmitter value) startTransmitter,
    required TResult Function(_TransmitRemoteId value) transmitRemoteId,
    required TResult Function(_StopTransmitter value) stopTransmitter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTransmitter value)? startTransmitter,
    TResult? Function(_TransmitRemoteId value)? transmitRemoteId,
    TResult? Function(_StopTransmitter value)? stopTransmitter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTransmitter value)? startTransmitter,
    TResult Function(_TransmitRemoteId value)? transmitRemoteId,
    TResult Function(_StopTransmitter value)? stopTransmitter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteIdTransmitterEventCopyWith<$Res> {
  factory $RemoteIdTransmitterEventCopyWith(RemoteIdTransmitterEvent value,
          $Res Function(RemoteIdTransmitterEvent) then) =
      _$RemoteIdTransmitterEventCopyWithImpl<$Res, RemoteIdTransmitterEvent>;
}

/// @nodoc
class _$RemoteIdTransmitterEventCopyWithImpl<$Res,
        $Val extends RemoteIdTransmitterEvent>
    implements $RemoteIdTransmitterEventCopyWith<$Res> {
  _$RemoteIdTransmitterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartTransmitterImplCopyWith<$Res> {
  factory _$$StartTransmitterImplCopyWith(_$StartTransmitterImpl value,
          $Res Function(_$StartTransmitterImpl) then) =
      __$$StartTransmitterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartTransmitterImplCopyWithImpl<$Res>
    extends _$RemoteIdTransmitterEventCopyWithImpl<$Res, _$StartTransmitterImpl>
    implements _$$StartTransmitterImplCopyWith<$Res> {
  __$$StartTransmitterImplCopyWithImpl(_$StartTransmitterImpl _value,
      $Res Function(_$StartTransmitterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartTransmitterImpl implements _StartTransmitter {
  const _$StartTransmitterImpl();

  @override
  String toString() {
    return 'RemoteIdTransmitterEvent.startTransmitter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartTransmitterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTransmitter,
    required TResult Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)
        transmitRemoteId,
    required TResult Function() stopTransmitter,
  }) {
    return startTransmitter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTransmitter,
    TResult? Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)?
        transmitRemoteId,
    TResult? Function()? stopTransmitter,
  }) {
    return startTransmitter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTransmitter,
    TResult Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)?
        transmitRemoteId,
    TResult Function()? stopTransmitter,
    required TResult orElse(),
  }) {
    if (startTransmitter != null) {
      return startTransmitter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTransmitter value) startTransmitter,
    required TResult Function(_TransmitRemoteId value) transmitRemoteId,
    required TResult Function(_StopTransmitter value) stopTransmitter,
  }) {
    return startTransmitter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTransmitter value)? startTransmitter,
    TResult? Function(_TransmitRemoteId value)? transmitRemoteId,
    TResult? Function(_StopTransmitter value)? stopTransmitter,
  }) {
    return startTransmitter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTransmitter value)? startTransmitter,
    TResult Function(_TransmitRemoteId value)? transmitRemoteId,
    TResult Function(_StopTransmitter value)? stopTransmitter,
    required TResult orElse(),
  }) {
    if (startTransmitter != null) {
      return startTransmitter(this);
    }
    return orElse();
  }
}

abstract class _StartTransmitter implements RemoteIdTransmitterEvent {
  const factory _StartTransmitter() = _$StartTransmitterImpl;
}

/// @nodoc
abstract class _$$TransmitRemoteIdImplCopyWith<$Res> {
  factory _$$TransmitRemoteIdImplCopyWith(_$TransmitRemoteIdImpl value,
          $Res Function(_$TransmitRemoteIdImpl) then) =
      __$$TransmitRemoteIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {RemoteIdReceiverOperationType operationType, RemoteIdEntity remoteID});
}

/// @nodoc
class __$$TransmitRemoteIdImplCopyWithImpl<$Res>
    extends _$RemoteIdTransmitterEventCopyWithImpl<$Res, _$TransmitRemoteIdImpl>
    implements _$$TransmitRemoteIdImplCopyWith<$Res> {
  __$$TransmitRemoteIdImplCopyWithImpl(_$TransmitRemoteIdImpl _value,
      $Res Function(_$TransmitRemoteIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operationType = null,
    Object? remoteID = null,
  }) {
    return _then(_$TransmitRemoteIdImpl(
      operationType: null == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as RemoteIdReceiverOperationType,
      remoteID: null == remoteID
          ? _value.remoteID
          : remoteID // ignore: cast_nullable_to_non_nullable
              as RemoteIdEntity,
    ));
  }
}

/// @nodoc

class _$TransmitRemoteIdImpl implements _TransmitRemoteId {
  const _$TransmitRemoteIdImpl(
      {required this.operationType, required this.remoteID});

  @override
  final RemoteIdReceiverOperationType operationType;
  @override
  final RemoteIdEntity remoteID;

  @override
  String toString() {
    return 'RemoteIdTransmitterEvent.transmitRemoteId(operationType: $operationType, remoteID: $remoteID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransmitRemoteIdImpl &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType) &&
            (identical(other.remoteID, remoteID) ||
                other.remoteID == remoteID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, operationType, remoteID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransmitRemoteIdImplCopyWith<_$TransmitRemoteIdImpl> get copyWith =>
      __$$TransmitRemoteIdImplCopyWithImpl<_$TransmitRemoteIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTransmitter,
    required TResult Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)
        transmitRemoteId,
    required TResult Function() stopTransmitter,
  }) {
    return transmitRemoteId(operationType, remoteID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTransmitter,
    TResult? Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)?
        transmitRemoteId,
    TResult? Function()? stopTransmitter,
  }) {
    return transmitRemoteId?.call(operationType, remoteID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTransmitter,
    TResult Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)?
        transmitRemoteId,
    TResult Function()? stopTransmitter,
    required TResult orElse(),
  }) {
    if (transmitRemoteId != null) {
      return transmitRemoteId(operationType, remoteID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTransmitter value) startTransmitter,
    required TResult Function(_TransmitRemoteId value) transmitRemoteId,
    required TResult Function(_StopTransmitter value) stopTransmitter,
  }) {
    return transmitRemoteId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTransmitter value)? startTransmitter,
    TResult? Function(_TransmitRemoteId value)? transmitRemoteId,
    TResult? Function(_StopTransmitter value)? stopTransmitter,
  }) {
    return transmitRemoteId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTransmitter value)? startTransmitter,
    TResult Function(_TransmitRemoteId value)? transmitRemoteId,
    TResult Function(_StopTransmitter value)? stopTransmitter,
    required TResult orElse(),
  }) {
    if (transmitRemoteId != null) {
      return transmitRemoteId(this);
    }
    return orElse();
  }
}

abstract class _TransmitRemoteId implements RemoteIdTransmitterEvent {
  const factory _TransmitRemoteId(
      {required final RemoteIdReceiverOperationType operationType,
      required final RemoteIdEntity remoteID}) = _$TransmitRemoteIdImpl;

  RemoteIdReceiverOperationType get operationType;
  RemoteIdEntity get remoteID;
  @JsonKey(ignore: true)
  _$$TransmitRemoteIdImplCopyWith<_$TransmitRemoteIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopTransmitterImplCopyWith<$Res> {
  factory _$$StopTransmitterImplCopyWith(_$StopTransmitterImpl value,
          $Res Function(_$StopTransmitterImpl) then) =
      __$$StopTransmitterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopTransmitterImplCopyWithImpl<$Res>
    extends _$RemoteIdTransmitterEventCopyWithImpl<$Res, _$StopTransmitterImpl>
    implements _$$StopTransmitterImplCopyWith<$Res> {
  __$$StopTransmitterImplCopyWithImpl(
      _$StopTransmitterImpl _value, $Res Function(_$StopTransmitterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopTransmitterImpl implements _StopTransmitter {
  const _$StopTransmitterImpl();

  @override
  String toString() {
    return 'RemoteIdTransmitterEvent.stopTransmitter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopTransmitterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startTransmitter,
    required TResult Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)
        transmitRemoteId,
    required TResult Function() stopTransmitter,
  }) {
    return stopTransmitter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startTransmitter,
    TResult? Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)?
        transmitRemoteId,
    TResult? Function()? stopTransmitter,
  }) {
    return stopTransmitter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startTransmitter,
    TResult Function(RemoteIdReceiverOperationType operationType,
            RemoteIdEntity remoteID)?
        transmitRemoteId,
    TResult Function()? stopTransmitter,
    required TResult orElse(),
  }) {
    if (stopTransmitter != null) {
      return stopTransmitter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartTransmitter value) startTransmitter,
    required TResult Function(_TransmitRemoteId value) transmitRemoteId,
    required TResult Function(_StopTransmitter value) stopTransmitter,
  }) {
    return stopTransmitter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartTransmitter value)? startTransmitter,
    TResult? Function(_TransmitRemoteId value)? transmitRemoteId,
    TResult? Function(_StopTransmitter value)? stopTransmitter,
  }) {
    return stopTransmitter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartTransmitter value)? startTransmitter,
    TResult Function(_TransmitRemoteId value)? transmitRemoteId,
    TResult Function(_StopTransmitter value)? stopTransmitter,
    required TResult orElse(),
  }) {
    if (stopTransmitter != null) {
      return stopTransmitter(this);
    }
    return orElse();
  }
}

abstract class _StopTransmitter implements RemoteIdTransmitterEvent {
  const factory _StopTransmitter() = _$StopTransmitterImpl;
}

/// @nodoc
mixin _$RemoteIdTransmitterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() active,
    required TResult Function() transmitting,
    required TResult Function() stopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? active,
    TResult? Function()? transmitting,
    TResult? Function()? stopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? active,
    TResult Function()? transmitting,
    TResult Function()? stopping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Active value) active,
    required TResult Function(_Transmitting value) transmitting,
    required TResult Function(Stopping value) stopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Active value)? active,
    TResult? Function(_Transmitting value)? transmitting,
    TResult? Function(Stopping value)? stopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Active value)? active,
    TResult Function(_Transmitting value)? transmitting,
    TResult Function(Stopping value)? stopping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteIdTransmitterStateCopyWith<$Res> {
  factory $RemoteIdTransmitterStateCopyWith(RemoteIdTransmitterState value,
          $Res Function(RemoteIdTransmitterState) then) =
      _$RemoteIdTransmitterStateCopyWithImpl<$Res, RemoteIdTransmitterState>;
}

/// @nodoc
class _$RemoteIdTransmitterStateCopyWithImpl<$Res,
        $Val extends RemoteIdTransmitterState>
    implements $RemoteIdTransmitterStateCopyWith<$Res> {
  _$RemoteIdTransmitterStateCopyWithImpl(this._value, this._then);

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
    extends _$RemoteIdTransmitterStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RemoteIdTransmitterState.initial()';
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
    required TResult Function() active,
    required TResult Function() transmitting,
    required TResult Function() stopping,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? active,
    TResult? Function()? transmitting,
    TResult? Function()? stopping,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? active,
    TResult Function()? transmitting,
    TResult Function()? stopping,
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
    required TResult Function(_Active value) active,
    required TResult Function(_Transmitting value) transmitting,
    required TResult Function(Stopping value) stopping,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Active value)? active,
    TResult? Function(_Transmitting value)? transmitting,
    TResult? Function(Stopping value)? stopping,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Active value)? active,
    TResult Function(_Transmitting value)? transmitting,
    TResult Function(Stopping value)? stopping,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RemoteIdTransmitterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ActiveImplCopyWith<$Res> {
  factory _$$ActiveImplCopyWith(
          _$ActiveImpl value, $Res Function(_$ActiveImpl) then) =
      __$$ActiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ActiveImplCopyWithImpl<$Res>
    extends _$RemoteIdTransmitterStateCopyWithImpl<$Res, _$ActiveImpl>
    implements _$$ActiveImplCopyWith<$Res> {
  __$$ActiveImplCopyWithImpl(
      _$ActiveImpl _value, $Res Function(_$ActiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ActiveImpl implements _Active {
  const _$ActiveImpl();

  @override
  String toString() {
    return 'RemoteIdTransmitterState.active()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ActiveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() active,
    required TResult Function() transmitting,
    required TResult Function() stopping,
  }) {
    return active();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? active,
    TResult? Function()? transmitting,
    TResult? Function()? stopping,
  }) {
    return active?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? active,
    TResult Function()? transmitting,
    TResult Function()? stopping,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Active value) active,
    required TResult Function(_Transmitting value) transmitting,
    required TResult Function(Stopping value) stopping,
  }) {
    return active(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Active value)? active,
    TResult? Function(_Transmitting value)? transmitting,
    TResult? Function(Stopping value)? stopping,
  }) {
    return active?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Active value)? active,
    TResult Function(_Transmitting value)? transmitting,
    TResult Function(Stopping value)? stopping,
    required TResult orElse(),
  }) {
    if (active != null) {
      return active(this);
    }
    return orElse();
  }
}

abstract class _Active implements RemoteIdTransmitterState {
  const factory _Active() = _$ActiveImpl;
}

/// @nodoc
abstract class _$$TransmittingImplCopyWith<$Res> {
  factory _$$TransmittingImplCopyWith(
          _$TransmittingImpl value, $Res Function(_$TransmittingImpl) then) =
      __$$TransmittingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransmittingImplCopyWithImpl<$Res>
    extends _$RemoteIdTransmitterStateCopyWithImpl<$Res, _$TransmittingImpl>
    implements _$$TransmittingImplCopyWith<$Res> {
  __$$TransmittingImplCopyWithImpl(
      _$TransmittingImpl _value, $Res Function(_$TransmittingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransmittingImpl implements _Transmitting {
  const _$TransmittingImpl();

  @override
  String toString() {
    return 'RemoteIdTransmitterState.transmitting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransmittingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() active,
    required TResult Function() transmitting,
    required TResult Function() stopping,
  }) {
    return transmitting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? active,
    TResult? Function()? transmitting,
    TResult? Function()? stopping,
  }) {
    return transmitting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? active,
    TResult Function()? transmitting,
    TResult Function()? stopping,
    required TResult orElse(),
  }) {
    if (transmitting != null) {
      return transmitting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Active value) active,
    required TResult Function(_Transmitting value) transmitting,
    required TResult Function(Stopping value) stopping,
  }) {
    return transmitting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Active value)? active,
    TResult? Function(_Transmitting value)? transmitting,
    TResult? Function(Stopping value)? stopping,
  }) {
    return transmitting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Active value)? active,
    TResult Function(_Transmitting value)? transmitting,
    TResult Function(Stopping value)? stopping,
    required TResult orElse(),
  }) {
    if (transmitting != null) {
      return transmitting(this);
    }
    return orElse();
  }
}

abstract class _Transmitting implements RemoteIdTransmitterState {
  const factory _Transmitting() = _$TransmittingImpl;
}

/// @nodoc
abstract class _$$StoppingImplCopyWith<$Res> {
  factory _$$StoppingImplCopyWith(
          _$StoppingImpl value, $Res Function(_$StoppingImpl) then) =
      __$$StoppingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoppingImplCopyWithImpl<$Res>
    extends _$RemoteIdTransmitterStateCopyWithImpl<$Res, _$StoppingImpl>
    implements _$$StoppingImplCopyWith<$Res> {
  __$$StoppingImplCopyWithImpl(
      _$StoppingImpl _value, $Res Function(_$StoppingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoppingImpl implements Stopping {
  const _$StoppingImpl();

  @override
  String toString() {
    return 'RemoteIdTransmitterState.stopping()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoppingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() active,
    required TResult Function() transmitting,
    required TResult Function() stopping,
  }) {
    return stopping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? active,
    TResult? Function()? transmitting,
    TResult? Function()? stopping,
  }) {
    return stopping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? active,
    TResult Function()? transmitting,
    TResult Function()? stopping,
    required TResult orElse(),
  }) {
    if (stopping != null) {
      return stopping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Active value) active,
    required TResult Function(_Transmitting value) transmitting,
    required TResult Function(Stopping value) stopping,
  }) {
    return stopping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Active value)? active,
    TResult? Function(_Transmitting value)? transmitting,
    TResult? Function(Stopping value)? stopping,
  }) {
    return stopping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Active value)? active,
    TResult Function(_Transmitting value)? transmitting,
    TResult Function(Stopping value)? stopping,
    required TResult orElse(),
  }) {
    if (stopping != null) {
      return stopping(this);
    }
    return orElse();
  }
}

abstract class Stopping implements RemoteIdTransmitterState {
  const factory Stopping() = _$StoppingImpl;
}
