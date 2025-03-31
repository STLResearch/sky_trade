// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tracking_authorization_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackingAuthorizationStatusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Check value) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Check value)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Check value)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingAuthorizationStatusEventCopyWith<$Res> {
  factory $TrackingAuthorizationStatusEventCopyWith(
          TrackingAuthorizationStatusEvent value,
          $Res Function(TrackingAuthorizationStatusEvent) then) =
      _$TrackingAuthorizationStatusEventCopyWithImpl<$Res,
          TrackingAuthorizationStatusEvent>;
}

/// @nodoc
class _$TrackingAuthorizationStatusEventCopyWithImpl<$Res,
        $Val extends TrackingAuthorizationStatusEvent>
    implements $TrackingAuthorizationStatusEventCopyWith<$Res> {
  _$TrackingAuthorizationStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackingAuthorizationStatusEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckImplCopyWith<$Res> {
  factory _$$CheckImplCopyWith(
          _$CheckImpl value, $Res Function(_$CheckImpl) then) =
      __$$CheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckImplCopyWithImpl<$Res>
    extends _$TrackingAuthorizationStatusEventCopyWithImpl<$Res, _$CheckImpl>
    implements _$$CheckImplCopyWith<$Res> {
  __$$CheckImplCopyWithImpl(
      _$CheckImpl _value, $Res Function(_$CheckImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackingAuthorizationStatusEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckImpl implements _Check {
  const _$CheckImpl();

  @override
  String toString() {
    return 'TrackingAuthorizationStatusEvent.check()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() check,
  }) {
    return check();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? check,
  }) {
    return check?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Check value) check,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Check value)? check,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Check value)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class _Check implements TrackingAuthorizationStatusEvent {
  const factory _Check() = _$CheckImpl;
}

/// @nodoc
mixin _$TrackingAuthorizationStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(TrackingStatusEntity trackingStatusEntity)
        maybeAuthorized,
    required TResult Function(TrackingStatusFailure trackingStatusFailure)
        cannotAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult? Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Checking value) checking,
    required TResult Function(_MaybeAuthorized value) maybeAuthorized,
    required TResult Function(_CannotAuthorize value) cannotAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult? Function(_CannotAuthorize value)? cannotAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Checking value)? checking,
    TResult Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult Function(_CannotAuthorize value)? cannotAuthorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackingAuthorizationStatusStateCopyWith<$Res> {
  factory $TrackingAuthorizationStatusStateCopyWith(
          TrackingAuthorizationStatusState value,
          $Res Function(TrackingAuthorizationStatusState) then) =
      _$TrackingAuthorizationStatusStateCopyWithImpl<$Res,
          TrackingAuthorizationStatusState>;
}

/// @nodoc
class _$TrackingAuthorizationStatusStateCopyWithImpl<$Res,
        $Val extends TrackingAuthorizationStatusState>
    implements $TrackingAuthorizationStatusStateCopyWith<$Res> {
  _$TrackingAuthorizationStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackingAuthorizationStatusState
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
    extends _$TrackingAuthorizationStatusStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackingAuthorizationStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TrackingAuthorizationStatusState.initial()';
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
    required TResult Function() checking,
    required TResult Function(TrackingStatusEntity trackingStatusEntity)
        maybeAuthorized,
    required TResult Function(TrackingStatusFailure trackingStatusFailure)
        cannotAuthorize,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult? Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
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
    required TResult Function(_Checking value) checking,
    required TResult Function(_MaybeAuthorized value) maybeAuthorized,
    required TResult Function(_CannotAuthorize value) cannotAuthorize,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult? Function(_CannotAuthorize value)? cannotAuthorize,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Checking value)? checking,
    TResult Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult Function(_CannotAuthorize value)? cannotAuthorize,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TrackingAuthorizationStatusState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckingImplCopyWith<$Res> {
  factory _$$CheckingImplCopyWith(
          _$CheckingImpl value, $Res Function(_$CheckingImpl) then) =
      __$$CheckingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingImplCopyWithImpl<$Res>
    extends _$TrackingAuthorizationStatusStateCopyWithImpl<$Res, _$CheckingImpl>
    implements _$$CheckingImplCopyWith<$Res> {
  __$$CheckingImplCopyWithImpl(
      _$CheckingImpl _value, $Res Function(_$CheckingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackingAuthorizationStatusState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckingImpl implements _Checking {
  const _$CheckingImpl();

  @override
  String toString() {
    return 'TrackingAuthorizationStatusState.checking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(TrackingStatusEntity trackingStatusEntity)
        maybeAuthorized,
    required TResult Function(TrackingStatusFailure trackingStatusFailure)
        cannotAuthorize,
  }) {
    return checking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult? Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
  }) {
    return checking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Checking value) checking,
    required TResult Function(_MaybeAuthorized value) maybeAuthorized,
    required TResult Function(_CannotAuthorize value) cannotAuthorize,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult? Function(_CannotAuthorize value)? cannotAuthorize,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Checking value)? checking,
    TResult Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult Function(_CannotAuthorize value)? cannotAuthorize,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class _Checking implements TrackingAuthorizationStatusState {
  const factory _Checking() = _$CheckingImpl;
}

/// @nodoc
abstract class _$$MaybeAuthorizedImplCopyWith<$Res> {
  factory _$$MaybeAuthorizedImplCopyWith(_$MaybeAuthorizedImpl value,
          $Res Function(_$MaybeAuthorizedImpl) then) =
      __$$MaybeAuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackingStatusEntity trackingStatusEntity});
}

/// @nodoc
class __$$MaybeAuthorizedImplCopyWithImpl<$Res>
    extends _$TrackingAuthorizationStatusStateCopyWithImpl<$Res,
        _$MaybeAuthorizedImpl> implements _$$MaybeAuthorizedImplCopyWith<$Res> {
  __$$MaybeAuthorizedImplCopyWithImpl(
      _$MaybeAuthorizedImpl _value, $Res Function(_$MaybeAuthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackingAuthorizationStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingStatusEntity = null,
  }) {
    return _then(_$MaybeAuthorizedImpl(
      trackingStatusEntity: null == trackingStatusEntity
          ? _value.trackingStatusEntity
          : trackingStatusEntity // ignore: cast_nullable_to_non_nullable
              as TrackingStatusEntity,
    ));
  }
}

/// @nodoc

class _$MaybeAuthorizedImpl implements _MaybeAuthorized {
  const _$MaybeAuthorizedImpl({required this.trackingStatusEntity});

  @override
  final TrackingStatusEntity trackingStatusEntity;

  @override
  String toString() {
    return 'TrackingAuthorizationStatusState.maybeAuthorized(trackingStatusEntity: $trackingStatusEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaybeAuthorizedImpl &&
            (identical(other.trackingStatusEntity, trackingStatusEntity) ||
                other.trackingStatusEntity == trackingStatusEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackingStatusEntity);

  /// Create a copy of TrackingAuthorizationStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaybeAuthorizedImplCopyWith<_$MaybeAuthorizedImpl> get copyWith =>
      __$$MaybeAuthorizedImplCopyWithImpl<_$MaybeAuthorizedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(TrackingStatusEntity trackingStatusEntity)
        maybeAuthorized,
    required TResult Function(TrackingStatusFailure trackingStatusFailure)
        cannotAuthorize,
  }) {
    return maybeAuthorized(trackingStatusEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult? Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
  }) {
    return maybeAuthorized?.call(trackingStatusEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
    required TResult orElse(),
  }) {
    if (maybeAuthorized != null) {
      return maybeAuthorized(trackingStatusEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Checking value) checking,
    required TResult Function(_MaybeAuthorized value) maybeAuthorized,
    required TResult Function(_CannotAuthorize value) cannotAuthorize,
  }) {
    return maybeAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult? Function(_CannotAuthorize value)? cannotAuthorize,
  }) {
    return maybeAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Checking value)? checking,
    TResult Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult Function(_CannotAuthorize value)? cannotAuthorize,
    required TResult orElse(),
  }) {
    if (maybeAuthorized != null) {
      return maybeAuthorized(this);
    }
    return orElse();
  }
}

abstract class _MaybeAuthorized implements TrackingAuthorizationStatusState {
  const factory _MaybeAuthorized(
          {required final TrackingStatusEntity trackingStatusEntity}) =
      _$MaybeAuthorizedImpl;

  TrackingStatusEntity get trackingStatusEntity;

  /// Create a copy of TrackingAuthorizationStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaybeAuthorizedImplCopyWith<_$MaybeAuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CannotAuthorizeImplCopyWith<$Res> {
  factory _$$CannotAuthorizeImplCopyWith(_$CannotAuthorizeImpl value,
          $Res Function(_$CannotAuthorizeImpl) then) =
      __$$CannotAuthorizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackingStatusFailure trackingStatusFailure});
}

/// @nodoc
class __$$CannotAuthorizeImplCopyWithImpl<$Res>
    extends _$TrackingAuthorizationStatusStateCopyWithImpl<$Res,
        _$CannotAuthorizeImpl> implements _$$CannotAuthorizeImplCopyWith<$Res> {
  __$$CannotAuthorizeImplCopyWithImpl(
      _$CannotAuthorizeImpl _value, $Res Function(_$CannotAuthorizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackingAuthorizationStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingStatusFailure = null,
  }) {
    return _then(_$CannotAuthorizeImpl(
      trackingStatusFailure: null == trackingStatusFailure
          ? _value.trackingStatusFailure
          : trackingStatusFailure // ignore: cast_nullable_to_non_nullable
              as TrackingStatusFailure,
    ));
  }
}

/// @nodoc

class _$CannotAuthorizeImpl implements _CannotAuthorize {
  const _$CannotAuthorizeImpl({required this.trackingStatusFailure});

  @override
  final TrackingStatusFailure trackingStatusFailure;

  @override
  String toString() {
    return 'TrackingAuthorizationStatusState.cannotAuthorize(trackingStatusFailure: $trackingStatusFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CannotAuthorizeImpl &&
            (identical(other.trackingStatusFailure, trackingStatusFailure) ||
                other.trackingStatusFailure == trackingStatusFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackingStatusFailure);

  /// Create a copy of TrackingAuthorizationStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CannotAuthorizeImplCopyWith<_$CannotAuthorizeImpl> get copyWith =>
      __$$CannotAuthorizeImplCopyWithImpl<_$CannotAuthorizeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(TrackingStatusEntity trackingStatusEntity)
        maybeAuthorized,
    required TResult Function(TrackingStatusFailure trackingStatusFailure)
        cannotAuthorize,
  }) {
    return cannotAuthorize(trackingStatusFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult? Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
  }) {
    return cannotAuthorize?.call(trackingStatusFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
    required TResult orElse(),
  }) {
    if (cannotAuthorize != null) {
      return cannotAuthorize(trackingStatusFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Checking value) checking,
    required TResult Function(_MaybeAuthorized value) maybeAuthorized,
    required TResult Function(_CannotAuthorize value) cannotAuthorize,
  }) {
    return cannotAuthorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult? Function(_CannotAuthorize value)? cannotAuthorize,
  }) {
    return cannotAuthorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Checking value)? checking,
    TResult Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult Function(_CannotAuthorize value)? cannotAuthorize,
    required TResult orElse(),
  }) {
    if (cannotAuthorize != null) {
      return cannotAuthorize(this);
    }
    return orElse();
  }
}

abstract class _CannotAuthorize implements TrackingAuthorizationStatusState {
  const factory _CannotAuthorize(
          {required final TrackingStatusFailure trackingStatusFailure}) =
      _$CannotAuthorizeImpl;

  TrackingStatusFailure get trackingStatusFailure;

  /// Create a copy of TrackingAuthorizationStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CannotAuthorizeImplCopyWith<_$CannotAuthorizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
