// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_metadata_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceMetadataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendDeviceMetadata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendDeviceMetadata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendDeviceMetadata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendDeviceMetadata value) sendDeviceMetadata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendDeviceMetadata value)? sendDeviceMetadata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendDeviceMetadata value)? sendDeviceMetadata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceMetadataEventCopyWith<$Res> {
  factory $DeviceMetadataEventCopyWith(
          DeviceMetadataEvent value, $Res Function(DeviceMetadataEvent) then) =
      _$DeviceMetadataEventCopyWithImpl<$Res, DeviceMetadataEvent>;
}

/// @nodoc
class _$DeviceMetadataEventCopyWithImpl<$Res, $Val extends DeviceMetadataEvent>
    implements $DeviceMetadataEventCopyWith<$Res> {
  _$DeviceMetadataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceMetadataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendDeviceMetadataImplCopyWith<$Res> {
  factory _$$SendDeviceMetadataImplCopyWith(_$SendDeviceMetadataImpl value,
          $Res Function(_$SendDeviceMetadataImpl) then) =
      __$$SendDeviceMetadataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendDeviceMetadataImplCopyWithImpl<$Res>
    extends _$DeviceMetadataEventCopyWithImpl<$Res, _$SendDeviceMetadataImpl>
    implements _$$SendDeviceMetadataImplCopyWith<$Res> {
  __$$SendDeviceMetadataImplCopyWithImpl(_$SendDeviceMetadataImpl _value,
      $Res Function(_$SendDeviceMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceMetadataEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendDeviceMetadataImpl implements _SendDeviceMetadata {
  const _$SendDeviceMetadataImpl();

  @override
  String toString() {
    return 'DeviceMetadataEvent.sendDeviceMetadata()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendDeviceMetadataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendDeviceMetadata,
  }) {
    return sendDeviceMetadata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendDeviceMetadata,
  }) {
    return sendDeviceMetadata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendDeviceMetadata,
    required TResult orElse(),
  }) {
    if (sendDeviceMetadata != null) {
      return sendDeviceMetadata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendDeviceMetadata value) sendDeviceMetadata,
  }) {
    return sendDeviceMetadata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendDeviceMetadata value)? sendDeviceMetadata,
  }) {
    return sendDeviceMetadata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendDeviceMetadata value)? sendDeviceMetadata,
    required TResult orElse(),
  }) {
    if (sendDeviceMetadata != null) {
      return sendDeviceMetadata(this);
    }
    return orElse();
  }
}

abstract class _SendDeviceMetadata implements DeviceMetadataEvent {
  const factory _SendDeviceMetadata() = _$SendDeviceMetadataImpl;
}

/// @nodoc
mixin _$DeviceMetadataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingDeviceMetadata,
    required TResult Function() sentDeviceMetadata,
    required TResult Function(DeviceMetadataFailure deviceMetadataFailure)
        failedToSendDeviceMetadata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingDeviceMetadata,
    TResult? Function()? sentDeviceMetadata,
    TResult? Function(DeviceMetadataFailure deviceMetadataFailure)?
        failedToSendDeviceMetadata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingDeviceMetadata,
    TResult Function()? sentDeviceMetadata,
    TResult Function(DeviceMetadataFailure deviceMetadataFailure)?
        failedToSendDeviceMetadata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingDeviceMetadata value)
        sendingDeviceMetadata,
    required TResult Function(_SentDeviceMetadataSent value) sentDeviceMetadata,
    required TResult Function(_FailedToSendDeviceMetadata value)
        failedToSendDeviceMetadata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingDeviceMetadata value)? sendingDeviceMetadata,
    TResult? Function(_SentDeviceMetadataSent value)? sentDeviceMetadata,
    TResult? Function(_FailedToSendDeviceMetadata value)?
        failedToSendDeviceMetadata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingDeviceMetadata value)? sendingDeviceMetadata,
    TResult Function(_SentDeviceMetadataSent value)? sentDeviceMetadata,
    TResult Function(_FailedToSendDeviceMetadata value)?
        failedToSendDeviceMetadata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceMetadataStateCopyWith<$Res> {
  factory $DeviceMetadataStateCopyWith(
          DeviceMetadataState value, $Res Function(DeviceMetadataState) then) =
      _$DeviceMetadataStateCopyWithImpl<$Res, DeviceMetadataState>;
}

/// @nodoc
class _$DeviceMetadataStateCopyWithImpl<$Res, $Val extends DeviceMetadataState>
    implements $DeviceMetadataStateCopyWith<$Res> {
  _$DeviceMetadataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceMetadataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DeviceMetadataStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceMetadataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DeviceMetadataState.initial()';
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
    required TResult Function() sendingDeviceMetadata,
    required TResult Function() sentDeviceMetadata,
    required TResult Function(DeviceMetadataFailure deviceMetadataFailure)
        failedToSendDeviceMetadata,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingDeviceMetadata,
    TResult? Function()? sentDeviceMetadata,
    TResult? Function(DeviceMetadataFailure deviceMetadataFailure)?
        failedToSendDeviceMetadata,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingDeviceMetadata,
    TResult Function()? sentDeviceMetadata,
    TResult Function(DeviceMetadataFailure deviceMetadataFailure)?
        failedToSendDeviceMetadata,
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
    required TResult Function(_SendingDeviceMetadata value)
        sendingDeviceMetadata,
    required TResult Function(_SentDeviceMetadataSent value) sentDeviceMetadata,
    required TResult Function(_FailedToSendDeviceMetadata value)
        failedToSendDeviceMetadata,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingDeviceMetadata value)? sendingDeviceMetadata,
    TResult? Function(_SentDeviceMetadataSent value)? sentDeviceMetadata,
    TResult? Function(_FailedToSendDeviceMetadata value)?
        failedToSendDeviceMetadata,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingDeviceMetadata value)? sendingDeviceMetadata,
    TResult Function(_SentDeviceMetadataSent value)? sentDeviceMetadata,
    TResult Function(_FailedToSendDeviceMetadata value)?
        failedToSendDeviceMetadata,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeviceMetadataState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SendingDeviceMetadataImplCopyWith<$Res> {
  factory _$$SendingDeviceMetadataImplCopyWith(
          _$SendingDeviceMetadataImpl value,
          $Res Function(_$SendingDeviceMetadataImpl) then) =
      __$$SendingDeviceMetadataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingDeviceMetadataImplCopyWithImpl<$Res>
    extends _$DeviceMetadataStateCopyWithImpl<$Res, _$SendingDeviceMetadataImpl>
    implements _$$SendingDeviceMetadataImplCopyWith<$Res> {
  __$$SendingDeviceMetadataImplCopyWithImpl(_$SendingDeviceMetadataImpl _value,
      $Res Function(_$SendingDeviceMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceMetadataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendingDeviceMetadataImpl implements _SendingDeviceMetadata {
  const _$SendingDeviceMetadataImpl();

  @override
  String toString() {
    return 'DeviceMetadataState.sendingDeviceMetadata()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendingDeviceMetadataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingDeviceMetadata,
    required TResult Function() sentDeviceMetadata,
    required TResult Function(DeviceMetadataFailure deviceMetadataFailure)
        failedToSendDeviceMetadata,
  }) {
    return sendingDeviceMetadata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingDeviceMetadata,
    TResult? Function()? sentDeviceMetadata,
    TResult? Function(DeviceMetadataFailure deviceMetadataFailure)?
        failedToSendDeviceMetadata,
  }) {
    return sendingDeviceMetadata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingDeviceMetadata,
    TResult Function()? sentDeviceMetadata,
    TResult Function(DeviceMetadataFailure deviceMetadataFailure)?
        failedToSendDeviceMetadata,
    required TResult orElse(),
  }) {
    if (sendingDeviceMetadata != null) {
      return sendingDeviceMetadata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingDeviceMetadata value)
        sendingDeviceMetadata,
    required TResult Function(_SentDeviceMetadataSent value) sentDeviceMetadata,
    required TResult Function(_FailedToSendDeviceMetadata value)
        failedToSendDeviceMetadata,
  }) {
    return sendingDeviceMetadata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingDeviceMetadata value)? sendingDeviceMetadata,
    TResult? Function(_SentDeviceMetadataSent value)? sentDeviceMetadata,
    TResult? Function(_FailedToSendDeviceMetadata value)?
        failedToSendDeviceMetadata,
  }) {
    return sendingDeviceMetadata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingDeviceMetadata value)? sendingDeviceMetadata,
    TResult Function(_SentDeviceMetadataSent value)? sentDeviceMetadata,
    TResult Function(_FailedToSendDeviceMetadata value)?
        failedToSendDeviceMetadata,
    required TResult orElse(),
  }) {
    if (sendingDeviceMetadata != null) {
      return sendingDeviceMetadata(this);
    }
    return orElse();
  }
}

abstract class _SendingDeviceMetadata implements DeviceMetadataState {
  const factory _SendingDeviceMetadata() = _$SendingDeviceMetadataImpl;
}

/// @nodoc
abstract class _$$SentDeviceMetadataSentImplCopyWith<$Res> {
  factory _$$SentDeviceMetadataSentImplCopyWith(
          _$SentDeviceMetadataSentImpl value,
          $Res Function(_$SentDeviceMetadataSentImpl) then) =
      __$$SentDeviceMetadataSentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SentDeviceMetadataSentImplCopyWithImpl<$Res>
    extends _$DeviceMetadataStateCopyWithImpl<$Res,
        _$SentDeviceMetadataSentImpl>
    implements _$$SentDeviceMetadataSentImplCopyWith<$Res> {
  __$$SentDeviceMetadataSentImplCopyWithImpl(
      _$SentDeviceMetadataSentImpl _value,
      $Res Function(_$SentDeviceMetadataSentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceMetadataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SentDeviceMetadataSentImpl implements _SentDeviceMetadataSent {
  const _$SentDeviceMetadataSentImpl();

  @override
  String toString() {
    return 'DeviceMetadataState.sentDeviceMetadata()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentDeviceMetadataSentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingDeviceMetadata,
    required TResult Function() sentDeviceMetadata,
    required TResult Function(DeviceMetadataFailure deviceMetadataFailure)
        failedToSendDeviceMetadata,
  }) {
    return sentDeviceMetadata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingDeviceMetadata,
    TResult? Function()? sentDeviceMetadata,
    TResult? Function(DeviceMetadataFailure deviceMetadataFailure)?
        failedToSendDeviceMetadata,
  }) {
    return sentDeviceMetadata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingDeviceMetadata,
    TResult Function()? sentDeviceMetadata,
    TResult Function(DeviceMetadataFailure deviceMetadataFailure)?
        failedToSendDeviceMetadata,
    required TResult orElse(),
  }) {
    if (sentDeviceMetadata != null) {
      return sentDeviceMetadata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingDeviceMetadata value)
        sendingDeviceMetadata,
    required TResult Function(_SentDeviceMetadataSent value) sentDeviceMetadata,
    required TResult Function(_FailedToSendDeviceMetadata value)
        failedToSendDeviceMetadata,
  }) {
    return sentDeviceMetadata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingDeviceMetadata value)? sendingDeviceMetadata,
    TResult? Function(_SentDeviceMetadataSent value)? sentDeviceMetadata,
    TResult? Function(_FailedToSendDeviceMetadata value)?
        failedToSendDeviceMetadata,
  }) {
    return sentDeviceMetadata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingDeviceMetadata value)? sendingDeviceMetadata,
    TResult Function(_SentDeviceMetadataSent value)? sentDeviceMetadata,
    TResult Function(_FailedToSendDeviceMetadata value)?
        failedToSendDeviceMetadata,
    required TResult orElse(),
  }) {
    if (sentDeviceMetadata != null) {
      return sentDeviceMetadata(this);
    }
    return orElse();
  }
}

abstract class _SentDeviceMetadataSent implements DeviceMetadataState {
  const factory _SentDeviceMetadataSent() = _$SentDeviceMetadataSentImpl;
}

/// @nodoc
abstract class _$$FailedToSendDeviceMetadataImplCopyWith<$Res> {
  factory _$$FailedToSendDeviceMetadataImplCopyWith(
          _$FailedToSendDeviceMetadataImpl value,
          $Res Function(_$FailedToSendDeviceMetadataImpl) then) =
      __$$FailedToSendDeviceMetadataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeviceMetadataFailure deviceMetadataFailure});
}

/// @nodoc
class __$$FailedToSendDeviceMetadataImplCopyWithImpl<$Res>
    extends _$DeviceMetadataStateCopyWithImpl<$Res,
        _$FailedToSendDeviceMetadataImpl>
    implements _$$FailedToSendDeviceMetadataImplCopyWith<$Res> {
  __$$FailedToSendDeviceMetadataImplCopyWithImpl(
      _$FailedToSendDeviceMetadataImpl _value,
      $Res Function(_$FailedToSendDeviceMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceMetadataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceMetadataFailure = null,
  }) {
    return _then(_$FailedToSendDeviceMetadataImpl(
      deviceMetadataFailure: null == deviceMetadataFailure
          ? _value.deviceMetadataFailure
          : deviceMetadataFailure // ignore: cast_nullable_to_non_nullable
              as DeviceMetadataFailure,
    ));
  }
}

/// @nodoc

class _$FailedToSendDeviceMetadataImpl implements _FailedToSendDeviceMetadata {
  const _$FailedToSendDeviceMetadataImpl({required this.deviceMetadataFailure});

  @override
  final DeviceMetadataFailure deviceMetadataFailure;

  @override
  String toString() {
    return 'DeviceMetadataState.failedToSendDeviceMetadata(deviceMetadataFailure: $deviceMetadataFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToSendDeviceMetadataImpl &&
            (identical(other.deviceMetadataFailure, deviceMetadataFailure) ||
                other.deviceMetadataFailure == deviceMetadataFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceMetadataFailure);

  /// Create a copy of DeviceMetadataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToSendDeviceMetadataImplCopyWith<_$FailedToSendDeviceMetadataImpl>
      get copyWith => __$$FailedToSendDeviceMetadataImplCopyWithImpl<
          _$FailedToSendDeviceMetadataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingDeviceMetadata,
    required TResult Function() sentDeviceMetadata,
    required TResult Function(DeviceMetadataFailure deviceMetadataFailure)
        failedToSendDeviceMetadata,
  }) {
    return failedToSendDeviceMetadata(deviceMetadataFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingDeviceMetadata,
    TResult? Function()? sentDeviceMetadata,
    TResult? Function(DeviceMetadataFailure deviceMetadataFailure)?
        failedToSendDeviceMetadata,
  }) {
    return failedToSendDeviceMetadata?.call(deviceMetadataFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingDeviceMetadata,
    TResult Function()? sentDeviceMetadata,
    TResult Function(DeviceMetadataFailure deviceMetadataFailure)?
        failedToSendDeviceMetadata,
    required TResult orElse(),
  }) {
    if (failedToSendDeviceMetadata != null) {
      return failedToSendDeviceMetadata(deviceMetadataFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingDeviceMetadata value)
        sendingDeviceMetadata,
    required TResult Function(_SentDeviceMetadataSent value) sentDeviceMetadata,
    required TResult Function(_FailedToSendDeviceMetadata value)
        failedToSendDeviceMetadata,
  }) {
    return failedToSendDeviceMetadata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingDeviceMetadata value)? sendingDeviceMetadata,
    TResult? Function(_SentDeviceMetadataSent value)? sentDeviceMetadata,
    TResult? Function(_FailedToSendDeviceMetadata value)?
        failedToSendDeviceMetadata,
  }) {
    return failedToSendDeviceMetadata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingDeviceMetadata value)? sendingDeviceMetadata,
    TResult Function(_SentDeviceMetadataSent value)? sentDeviceMetadata,
    TResult Function(_FailedToSendDeviceMetadata value)?
        failedToSendDeviceMetadata,
    required TResult orElse(),
  }) {
    if (failedToSendDeviceMetadata != null) {
      return failedToSendDeviceMetadata(this);
    }
    return orElse();
  }
}

abstract class _FailedToSendDeviceMetadata implements DeviceMetadataState {
  const factory _FailedToSendDeviceMetadata(
          {required final DeviceMetadataFailure deviceMetadataFailure}) =
      _$FailedToSendDeviceMetadataImpl;

  DeviceMetadataFailure get deviceMetadataFailure;

  /// Create a copy of DeviceMetadataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToSendDeviceMetadataImplCopyWith<_$FailedToSendDeviceMetadataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
