// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wifi_permission_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WifiPermissionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestPermission value) requestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestPermission value)? requestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestPermission value)? requestPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WifiPermissionEventCopyWith<$Res> {
  factory $WifiPermissionEventCopyWith(
          WifiPermissionEvent value, $Res Function(WifiPermissionEvent) then) =
      _$WifiPermissionEventCopyWithImpl<$Res, WifiPermissionEvent>;
}

/// @nodoc
class _$WifiPermissionEventCopyWithImpl<$Res, $Val extends WifiPermissionEvent>
    implements $WifiPermissionEventCopyWith<$Res> {
  _$WifiPermissionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WifiPermissionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RequestPermissionImplCopyWith<$Res> {
  factory _$$RequestPermissionImplCopyWith(_$RequestPermissionImpl value,
          $Res Function(_$RequestPermissionImpl) then) =
      __$$RequestPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestPermissionImplCopyWithImpl<$Res>
    extends _$WifiPermissionEventCopyWithImpl<$Res, _$RequestPermissionImpl>
    implements _$$RequestPermissionImplCopyWith<$Res> {
  __$$RequestPermissionImplCopyWithImpl(_$RequestPermissionImpl _value,
      $Res Function(_$RequestPermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiPermissionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestPermissionImpl implements _RequestPermission {
  const _$RequestPermissionImpl();

  @override
  String toString() {
    return 'WifiPermissionEvent.requestPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestPermission,
  }) {
    return requestPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestPermission,
  }) {
    return requestPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestPermission,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestPermission value) requestPermission,
  }) {
    return requestPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestPermission value)? requestPermission,
  }) {
    return requestPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestPermission value)? requestPermission,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestPermission implements WifiPermissionEvent {
  const factory _RequestPermission() = _$RequestPermissionImpl;
}

/// @nodoc
mixin _$WifiPermissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermission,
    required TResult Function(WifiPermissionEntity wifiPermissionEntity)
        maybeGrantedPermission,
    required TResult Function(WifiPermissionFailure wifiPermissionFailure)
        cannotRequestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(WifiPermissionEntity wifiPermissionEntity)?
        maybeGrantedPermission,
    TResult? Function(WifiPermissionFailure wifiPermissionFailure)?
        cannotRequestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(WifiPermissionEntity wifiPermissionEntity)?
        maybeGrantedPermission,
    TResult Function(WifiPermissionFailure wifiPermissionFailure)?
        cannotRequestPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_MaybeGrantedPermission value)
        maybeGrantedPermission,
    required TResult Function(_CannotRequestPermission value)
        cannotRequestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_MaybeGrantedPermission value)? maybeGrantedPermission,
    TResult? Function(_CannotRequestPermission value)? cannotRequestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_MaybeGrantedPermission value)? maybeGrantedPermission,
    TResult Function(_CannotRequestPermission value)? cannotRequestPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WifiPermissionStateCopyWith<$Res> {
  factory $WifiPermissionStateCopyWith(
          WifiPermissionState value, $Res Function(WifiPermissionState) then) =
      _$WifiPermissionStateCopyWithImpl<$Res, WifiPermissionState>;
}

/// @nodoc
class _$WifiPermissionStateCopyWithImpl<$Res, $Val extends WifiPermissionState>
    implements $WifiPermissionStateCopyWith<$Res> {
  _$WifiPermissionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WifiPermissionState
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
    extends _$WifiPermissionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiPermissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WifiPermissionState.initial()';
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
    required TResult Function() requestingPermission,
    required TResult Function(WifiPermissionEntity wifiPermissionEntity)
        maybeGrantedPermission,
    required TResult Function(WifiPermissionFailure wifiPermissionFailure)
        cannotRequestPermission,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(WifiPermissionEntity wifiPermissionEntity)?
        maybeGrantedPermission,
    TResult? Function(WifiPermissionFailure wifiPermissionFailure)?
        cannotRequestPermission,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(WifiPermissionEntity wifiPermissionEntity)?
        maybeGrantedPermission,
    TResult Function(WifiPermissionFailure wifiPermissionFailure)?
        cannotRequestPermission,
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
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_MaybeGrantedPermission value)
        maybeGrantedPermission,
    required TResult Function(_CannotRequestPermission value)
        cannotRequestPermission,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_MaybeGrantedPermission value)? maybeGrantedPermission,
    TResult? Function(_CannotRequestPermission value)? cannotRequestPermission,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_MaybeGrantedPermission value)? maybeGrantedPermission,
    TResult Function(_CannotRequestPermission value)? cannotRequestPermission,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WifiPermissionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RequestingPermissionImplCopyWith<$Res> {
  factory _$$RequestingPermissionImplCopyWith(_$RequestingPermissionImpl value,
          $Res Function(_$RequestingPermissionImpl) then) =
      __$$RequestingPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestingPermissionImplCopyWithImpl<$Res>
    extends _$WifiPermissionStateCopyWithImpl<$Res, _$RequestingPermissionImpl>
    implements _$$RequestingPermissionImplCopyWith<$Res> {
  __$$RequestingPermissionImplCopyWithImpl(_$RequestingPermissionImpl _value,
      $Res Function(_$RequestingPermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiPermissionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestingPermissionImpl implements _RequestingPermission {
  const _$RequestingPermissionImpl();

  @override
  String toString() {
    return 'WifiPermissionState.requestingPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestingPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermission,
    required TResult Function(WifiPermissionEntity wifiPermissionEntity)
        maybeGrantedPermission,
    required TResult Function(WifiPermissionFailure wifiPermissionFailure)
        cannotRequestPermission,
  }) {
    return requestingPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(WifiPermissionEntity wifiPermissionEntity)?
        maybeGrantedPermission,
    TResult? Function(WifiPermissionFailure wifiPermissionFailure)?
        cannotRequestPermission,
  }) {
    return requestingPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(WifiPermissionEntity wifiPermissionEntity)?
        maybeGrantedPermission,
    TResult Function(WifiPermissionFailure wifiPermissionFailure)?
        cannotRequestPermission,
    required TResult orElse(),
  }) {
    if (requestingPermission != null) {
      return requestingPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_MaybeGrantedPermission value)
        maybeGrantedPermission,
    required TResult Function(_CannotRequestPermission value)
        cannotRequestPermission,
  }) {
    return requestingPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_MaybeGrantedPermission value)? maybeGrantedPermission,
    TResult? Function(_CannotRequestPermission value)? cannotRequestPermission,
  }) {
    return requestingPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_MaybeGrantedPermission value)? maybeGrantedPermission,
    TResult Function(_CannotRequestPermission value)? cannotRequestPermission,
    required TResult orElse(),
  }) {
    if (requestingPermission != null) {
      return requestingPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestingPermission implements WifiPermissionState {
  const factory _RequestingPermission() = _$RequestingPermissionImpl;
}

/// @nodoc
abstract class _$$MaybeGrantedPermissionImplCopyWith<$Res> {
  factory _$$MaybeGrantedPermissionImplCopyWith(
          _$MaybeGrantedPermissionImpl value,
          $Res Function(_$MaybeGrantedPermissionImpl) then) =
      __$$MaybeGrantedPermissionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WifiPermissionEntity wifiPermissionEntity});
}

/// @nodoc
class __$$MaybeGrantedPermissionImplCopyWithImpl<$Res>
    extends _$WifiPermissionStateCopyWithImpl<$Res,
        _$MaybeGrantedPermissionImpl>
    implements _$$MaybeGrantedPermissionImplCopyWith<$Res> {
  __$$MaybeGrantedPermissionImplCopyWithImpl(
      _$MaybeGrantedPermissionImpl _value,
      $Res Function(_$MaybeGrantedPermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiPermissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wifiPermissionEntity = null,
  }) {
    return _then(_$MaybeGrantedPermissionImpl(
      wifiPermissionEntity: null == wifiPermissionEntity
          ? _value.wifiPermissionEntity
          : wifiPermissionEntity // ignore: cast_nullable_to_non_nullable
              as WifiPermissionEntity,
    ));
  }
}

/// @nodoc

class _$MaybeGrantedPermissionImpl implements _MaybeGrantedPermission {
  const _$MaybeGrantedPermissionImpl({required this.wifiPermissionEntity});

  @override
  final WifiPermissionEntity wifiPermissionEntity;

  @override
  String toString() {
    return 'WifiPermissionState.maybeGrantedPermission(wifiPermissionEntity: $wifiPermissionEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaybeGrantedPermissionImpl &&
            (identical(other.wifiPermissionEntity, wifiPermissionEntity) ||
                other.wifiPermissionEntity == wifiPermissionEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wifiPermissionEntity);

  /// Create a copy of WifiPermissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaybeGrantedPermissionImplCopyWith<_$MaybeGrantedPermissionImpl>
      get copyWith => __$$MaybeGrantedPermissionImplCopyWithImpl<
          _$MaybeGrantedPermissionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermission,
    required TResult Function(WifiPermissionEntity wifiPermissionEntity)
        maybeGrantedPermission,
    required TResult Function(WifiPermissionFailure wifiPermissionFailure)
        cannotRequestPermission,
  }) {
    return maybeGrantedPermission(wifiPermissionEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(WifiPermissionEntity wifiPermissionEntity)?
        maybeGrantedPermission,
    TResult? Function(WifiPermissionFailure wifiPermissionFailure)?
        cannotRequestPermission,
  }) {
    return maybeGrantedPermission?.call(wifiPermissionEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(WifiPermissionEntity wifiPermissionEntity)?
        maybeGrantedPermission,
    TResult Function(WifiPermissionFailure wifiPermissionFailure)?
        cannotRequestPermission,
    required TResult orElse(),
  }) {
    if (maybeGrantedPermission != null) {
      return maybeGrantedPermission(wifiPermissionEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_MaybeGrantedPermission value)
        maybeGrantedPermission,
    required TResult Function(_CannotRequestPermission value)
        cannotRequestPermission,
  }) {
    return maybeGrantedPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_MaybeGrantedPermission value)? maybeGrantedPermission,
    TResult? Function(_CannotRequestPermission value)? cannotRequestPermission,
  }) {
    return maybeGrantedPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_MaybeGrantedPermission value)? maybeGrantedPermission,
    TResult Function(_CannotRequestPermission value)? cannotRequestPermission,
    required TResult orElse(),
  }) {
    if (maybeGrantedPermission != null) {
      return maybeGrantedPermission(this);
    }
    return orElse();
  }
}

abstract class _MaybeGrantedPermission implements WifiPermissionState {
  const factory _MaybeGrantedPermission(
          {required final WifiPermissionEntity wifiPermissionEntity}) =
      _$MaybeGrantedPermissionImpl;

  WifiPermissionEntity get wifiPermissionEntity;

  /// Create a copy of WifiPermissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaybeGrantedPermissionImplCopyWith<_$MaybeGrantedPermissionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CannotRequestPermissionImplCopyWith<$Res> {
  factory _$$CannotRequestPermissionImplCopyWith(
          _$CannotRequestPermissionImpl value,
          $Res Function(_$CannotRequestPermissionImpl) then) =
      __$$CannotRequestPermissionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WifiPermissionFailure wifiPermissionFailure});
}

/// @nodoc
class __$$CannotRequestPermissionImplCopyWithImpl<$Res>
    extends _$WifiPermissionStateCopyWithImpl<$Res,
        _$CannotRequestPermissionImpl>
    implements _$$CannotRequestPermissionImplCopyWith<$Res> {
  __$$CannotRequestPermissionImplCopyWithImpl(
      _$CannotRequestPermissionImpl _value,
      $Res Function(_$CannotRequestPermissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WifiPermissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wifiPermissionFailure = null,
  }) {
    return _then(_$CannotRequestPermissionImpl(
      wifiPermissionFailure: null == wifiPermissionFailure
          ? _value.wifiPermissionFailure
          : wifiPermissionFailure // ignore: cast_nullable_to_non_nullable
              as WifiPermissionFailure,
    ));
  }
}

/// @nodoc

class _$CannotRequestPermissionImpl implements _CannotRequestPermission {
  const _$CannotRequestPermissionImpl({required this.wifiPermissionFailure});

  @override
  final WifiPermissionFailure wifiPermissionFailure;

  @override
  String toString() {
    return 'WifiPermissionState.cannotRequestPermission(wifiPermissionFailure: $wifiPermissionFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CannotRequestPermissionImpl &&
            (identical(other.wifiPermissionFailure, wifiPermissionFailure) ||
                other.wifiPermissionFailure == wifiPermissionFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wifiPermissionFailure);

  /// Create a copy of WifiPermissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CannotRequestPermissionImplCopyWith<_$CannotRequestPermissionImpl>
      get copyWith => __$$CannotRequestPermissionImplCopyWithImpl<
          _$CannotRequestPermissionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermission,
    required TResult Function(WifiPermissionEntity wifiPermissionEntity)
        maybeGrantedPermission,
    required TResult Function(WifiPermissionFailure wifiPermissionFailure)
        cannotRequestPermission,
  }) {
    return cannotRequestPermission(wifiPermissionFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermission,
    TResult? Function(WifiPermissionEntity wifiPermissionEntity)?
        maybeGrantedPermission,
    TResult? Function(WifiPermissionFailure wifiPermissionFailure)?
        cannotRequestPermission,
  }) {
    return cannotRequestPermission?.call(wifiPermissionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermission,
    TResult Function(WifiPermissionEntity wifiPermissionEntity)?
        maybeGrantedPermission,
    TResult Function(WifiPermissionFailure wifiPermissionFailure)?
        cannotRequestPermission,
    required TResult orElse(),
  }) {
    if (cannotRequestPermission != null) {
      return cannotRequestPermission(wifiPermissionFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermission value) requestingPermission,
    required TResult Function(_MaybeGrantedPermission value)
        maybeGrantedPermission,
    required TResult Function(_CannotRequestPermission value)
        cannotRequestPermission,
  }) {
    return cannotRequestPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermission value)? requestingPermission,
    TResult? Function(_MaybeGrantedPermission value)? maybeGrantedPermission,
    TResult? Function(_CannotRequestPermission value)? cannotRequestPermission,
  }) {
    return cannotRequestPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermission value)? requestingPermission,
    TResult Function(_MaybeGrantedPermission value)? maybeGrantedPermission,
    TResult Function(_CannotRequestPermission value)? cannotRequestPermission,
    required TResult orElse(),
  }) {
    if (cannotRequestPermission != null) {
      return cannotRequestPermission(this);
    }
    return orElse();
  }
}

abstract class _CannotRequestPermission implements WifiPermissionState {
  const factory _CannotRequestPermission(
          {required final WifiPermissionFailure wifiPermissionFailure}) =
      _$CannotRequestPermissionImpl;

  WifiPermissionFailure get wifiPermissionFailure;

  /// Create a copy of WifiPermissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CannotRequestPermissionImplCopyWith<_$CannotRequestPermissionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
