// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drone_flight_path_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DroneFlightPathEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String macAddress) requestFlightPathFor,
    required TResult Function() flightPathGetting,
    required TResult Function(DroneFlightPathEntity droneFlightPathEntity)
        flightPathGotten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String macAddress)? requestFlightPathFor,
    TResult? Function()? flightPathGetting,
    TResult? Function(DroneFlightPathEntity droneFlightPathEntity)?
        flightPathGotten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String macAddress)? requestFlightPathFor,
    TResult Function()? flightPathGetting,
    TResult Function(DroneFlightPathEntity droneFlightPathEntity)?
        flightPathGotten,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestFlightPathFor value) requestFlightPathFor,
    required TResult Function(_FlightPathGetting value) flightPathGetting,
    required TResult Function(_FlightPathGotten value) flightPathGotten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestFlightPathFor value)? requestFlightPathFor,
    TResult? Function(_FlightPathGetting value)? flightPathGetting,
    TResult? Function(_FlightPathGotten value)? flightPathGotten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestFlightPathFor value)? requestFlightPathFor,
    TResult Function(_FlightPathGetting value)? flightPathGetting,
    TResult Function(_FlightPathGotten value)? flightPathGotten,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DroneFlightPathEventCopyWith<$Res> {
  factory $DroneFlightPathEventCopyWith(DroneFlightPathEvent value,
          $Res Function(DroneFlightPathEvent) then) =
      _$DroneFlightPathEventCopyWithImpl<$Res, DroneFlightPathEvent>;
}

/// @nodoc
class _$DroneFlightPathEventCopyWithImpl<$Res,
        $Val extends DroneFlightPathEvent>
    implements $DroneFlightPathEventCopyWith<$Res> {
  _$DroneFlightPathEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DroneFlightPathEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RequestFlightPathForImplCopyWith<$Res> {
  factory _$$RequestFlightPathForImplCopyWith(_$RequestFlightPathForImpl value,
          $Res Function(_$RequestFlightPathForImpl) then) =
      __$$RequestFlightPathForImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String macAddress});
}

/// @nodoc
class __$$RequestFlightPathForImplCopyWithImpl<$Res>
    extends _$DroneFlightPathEventCopyWithImpl<$Res, _$RequestFlightPathForImpl>
    implements _$$RequestFlightPathForImplCopyWith<$Res> {
  __$$RequestFlightPathForImplCopyWithImpl(_$RequestFlightPathForImpl _value,
      $Res Function(_$RequestFlightPathForImpl) _then)
      : super(_value, _then);

  /// Create a copy of DroneFlightPathEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? macAddress = null,
  }) {
    return _then(_$RequestFlightPathForImpl(
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestFlightPathForImpl implements _RequestFlightPathFor {
  const _$RequestFlightPathForImpl({required this.macAddress});

  @override
  final String macAddress;

  @override
  String toString() {
    return 'DroneFlightPathEvent.requestFlightPathFor(macAddress: $macAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestFlightPathForImpl &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, macAddress);

  /// Create a copy of DroneFlightPathEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestFlightPathForImplCopyWith<_$RequestFlightPathForImpl>
      get copyWith =>
          __$$RequestFlightPathForImplCopyWithImpl<_$RequestFlightPathForImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String macAddress) requestFlightPathFor,
    required TResult Function() flightPathGetting,
    required TResult Function(DroneFlightPathEntity droneFlightPathEntity)
        flightPathGotten,
  }) {
    return requestFlightPathFor(macAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String macAddress)? requestFlightPathFor,
    TResult? Function()? flightPathGetting,
    TResult? Function(DroneFlightPathEntity droneFlightPathEntity)?
        flightPathGotten,
  }) {
    return requestFlightPathFor?.call(macAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String macAddress)? requestFlightPathFor,
    TResult Function()? flightPathGetting,
    TResult Function(DroneFlightPathEntity droneFlightPathEntity)?
        flightPathGotten,
    required TResult orElse(),
  }) {
    if (requestFlightPathFor != null) {
      return requestFlightPathFor(macAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestFlightPathFor value) requestFlightPathFor,
    required TResult Function(_FlightPathGetting value) flightPathGetting,
    required TResult Function(_FlightPathGotten value) flightPathGotten,
  }) {
    return requestFlightPathFor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestFlightPathFor value)? requestFlightPathFor,
    TResult? Function(_FlightPathGetting value)? flightPathGetting,
    TResult? Function(_FlightPathGotten value)? flightPathGotten,
  }) {
    return requestFlightPathFor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestFlightPathFor value)? requestFlightPathFor,
    TResult Function(_FlightPathGetting value)? flightPathGetting,
    TResult Function(_FlightPathGotten value)? flightPathGotten,
    required TResult orElse(),
  }) {
    if (requestFlightPathFor != null) {
      return requestFlightPathFor(this);
    }
    return orElse();
  }
}

abstract class _RequestFlightPathFor implements DroneFlightPathEvent {
  const factory _RequestFlightPathFor({required final String macAddress}) =
      _$RequestFlightPathForImpl;

  String get macAddress;

  /// Create a copy of DroneFlightPathEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestFlightPathForImplCopyWith<_$RequestFlightPathForImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FlightPathGettingImplCopyWith<$Res> {
  factory _$$FlightPathGettingImplCopyWith(_$FlightPathGettingImpl value,
          $Res Function(_$FlightPathGettingImpl) then) =
      __$$FlightPathGettingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlightPathGettingImplCopyWithImpl<$Res>
    extends _$DroneFlightPathEventCopyWithImpl<$Res, _$FlightPathGettingImpl>
    implements _$$FlightPathGettingImplCopyWith<$Res> {
  __$$FlightPathGettingImplCopyWithImpl(_$FlightPathGettingImpl _value,
      $Res Function(_$FlightPathGettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DroneFlightPathEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FlightPathGettingImpl implements _FlightPathGetting {
  const _$FlightPathGettingImpl();

  @override
  String toString() {
    return 'DroneFlightPathEvent.flightPathGetting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FlightPathGettingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String macAddress) requestFlightPathFor,
    required TResult Function() flightPathGetting,
    required TResult Function(DroneFlightPathEntity droneFlightPathEntity)
        flightPathGotten,
  }) {
    return flightPathGetting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String macAddress)? requestFlightPathFor,
    TResult? Function()? flightPathGetting,
    TResult? Function(DroneFlightPathEntity droneFlightPathEntity)?
        flightPathGotten,
  }) {
    return flightPathGetting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String macAddress)? requestFlightPathFor,
    TResult Function()? flightPathGetting,
    TResult Function(DroneFlightPathEntity droneFlightPathEntity)?
        flightPathGotten,
    required TResult orElse(),
  }) {
    if (flightPathGetting != null) {
      return flightPathGetting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestFlightPathFor value) requestFlightPathFor,
    required TResult Function(_FlightPathGetting value) flightPathGetting,
    required TResult Function(_FlightPathGotten value) flightPathGotten,
  }) {
    return flightPathGetting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestFlightPathFor value)? requestFlightPathFor,
    TResult? Function(_FlightPathGetting value)? flightPathGetting,
    TResult? Function(_FlightPathGotten value)? flightPathGotten,
  }) {
    return flightPathGetting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestFlightPathFor value)? requestFlightPathFor,
    TResult Function(_FlightPathGetting value)? flightPathGetting,
    TResult Function(_FlightPathGotten value)? flightPathGotten,
    required TResult orElse(),
  }) {
    if (flightPathGetting != null) {
      return flightPathGetting(this);
    }
    return orElse();
  }
}

abstract class _FlightPathGetting implements DroneFlightPathEvent {
  const factory _FlightPathGetting() = _$FlightPathGettingImpl;
}

/// @nodoc
abstract class _$$FlightPathGottenImplCopyWith<$Res> {
  factory _$$FlightPathGottenImplCopyWith(_$FlightPathGottenImpl value,
          $Res Function(_$FlightPathGottenImpl) then) =
      __$$FlightPathGottenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DroneFlightPathEntity droneFlightPathEntity});
}

/// @nodoc
class __$$FlightPathGottenImplCopyWithImpl<$Res>
    extends _$DroneFlightPathEventCopyWithImpl<$Res, _$FlightPathGottenImpl>
    implements _$$FlightPathGottenImplCopyWith<$Res> {
  __$$FlightPathGottenImplCopyWithImpl(_$FlightPathGottenImpl _value,
      $Res Function(_$FlightPathGottenImpl) _then)
      : super(_value, _then);

  /// Create a copy of DroneFlightPathEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? droneFlightPathEntity = null,
  }) {
    return _then(_$FlightPathGottenImpl(
      droneFlightPathEntity: null == droneFlightPathEntity
          ? _value.droneFlightPathEntity
          : droneFlightPathEntity // ignore: cast_nullable_to_non_nullable
              as DroneFlightPathEntity,
    ));
  }
}

/// @nodoc

class _$FlightPathGottenImpl implements _FlightPathGotten {
  const _$FlightPathGottenImpl({required this.droneFlightPathEntity});

  @override
  final DroneFlightPathEntity droneFlightPathEntity;

  @override
  String toString() {
    return 'DroneFlightPathEvent.flightPathGotten(droneFlightPathEntity: $droneFlightPathEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlightPathGottenImpl &&
            (identical(other.droneFlightPathEntity, droneFlightPathEntity) ||
                other.droneFlightPathEntity == droneFlightPathEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, droneFlightPathEntity);

  /// Create a copy of DroneFlightPathEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlightPathGottenImplCopyWith<_$FlightPathGottenImpl> get copyWith =>
      __$$FlightPathGottenImplCopyWithImpl<_$FlightPathGottenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String macAddress) requestFlightPathFor,
    required TResult Function() flightPathGetting,
    required TResult Function(DroneFlightPathEntity droneFlightPathEntity)
        flightPathGotten,
  }) {
    return flightPathGotten(droneFlightPathEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String macAddress)? requestFlightPathFor,
    TResult? Function()? flightPathGetting,
    TResult? Function(DroneFlightPathEntity droneFlightPathEntity)?
        flightPathGotten,
  }) {
    return flightPathGotten?.call(droneFlightPathEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String macAddress)? requestFlightPathFor,
    TResult Function()? flightPathGetting,
    TResult Function(DroneFlightPathEntity droneFlightPathEntity)?
        flightPathGotten,
    required TResult orElse(),
  }) {
    if (flightPathGotten != null) {
      return flightPathGotten(droneFlightPathEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestFlightPathFor value) requestFlightPathFor,
    required TResult Function(_FlightPathGetting value) flightPathGetting,
    required TResult Function(_FlightPathGotten value) flightPathGotten,
  }) {
    return flightPathGotten(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestFlightPathFor value)? requestFlightPathFor,
    TResult? Function(_FlightPathGetting value)? flightPathGetting,
    TResult? Function(_FlightPathGotten value)? flightPathGotten,
  }) {
    return flightPathGotten?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestFlightPathFor value)? requestFlightPathFor,
    TResult Function(_FlightPathGetting value)? flightPathGetting,
    TResult Function(_FlightPathGotten value)? flightPathGotten,
    required TResult orElse(),
  }) {
    if (flightPathGotten != null) {
      return flightPathGotten(this);
    }
    return orElse();
  }
}

abstract class _FlightPathGotten implements DroneFlightPathEvent {
  const factory _FlightPathGotten(
          {required final DroneFlightPathEntity droneFlightPathEntity}) =
      _$FlightPathGottenImpl;

  DroneFlightPathEntity get droneFlightPathEntity;

  /// Create a copy of DroneFlightPathEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlightPathGottenImplCopyWith<_$FlightPathGottenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DroneFlightPathState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingFlightPath,
    required TResult Function(DroneFlightPathEntity droneFlightPathEntity)
        gotFlightPath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingFlightPath,
    TResult? Function(DroneFlightPathEntity droneFlightPathEntity)?
        gotFlightPath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingFlightPath,
    TResult Function(DroneFlightPathEntity droneFlightPathEntity)?
        gotFlightPath,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingFlightPath value) gettingFlightPath,
    required TResult Function(_GotFlightPath value) gotFlightPath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingFlightPath value)? gettingFlightPath,
    TResult? Function(_GotFlightPath value)? gotFlightPath,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingFlightPath value)? gettingFlightPath,
    TResult Function(_GotFlightPath value)? gotFlightPath,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DroneFlightPathStateCopyWith<$Res> {
  factory $DroneFlightPathStateCopyWith(DroneFlightPathState value,
          $Res Function(DroneFlightPathState) then) =
      _$DroneFlightPathStateCopyWithImpl<$Res, DroneFlightPathState>;
}

/// @nodoc
class _$DroneFlightPathStateCopyWithImpl<$Res,
        $Val extends DroneFlightPathState>
    implements $DroneFlightPathStateCopyWith<$Res> {
  _$DroneFlightPathStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DroneFlightPathState
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
    extends _$DroneFlightPathStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DroneFlightPathState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DroneFlightPathState.initial()';
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
    required TResult Function() gettingFlightPath,
    required TResult Function(DroneFlightPathEntity droneFlightPathEntity)
        gotFlightPath,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingFlightPath,
    TResult? Function(DroneFlightPathEntity droneFlightPathEntity)?
        gotFlightPath,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingFlightPath,
    TResult Function(DroneFlightPathEntity droneFlightPathEntity)?
        gotFlightPath,
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
    required TResult Function(_GettingFlightPath value) gettingFlightPath,
    required TResult Function(_GotFlightPath value) gotFlightPath,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingFlightPath value)? gettingFlightPath,
    TResult? Function(_GotFlightPath value)? gotFlightPath,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingFlightPath value)? gettingFlightPath,
    TResult Function(_GotFlightPath value)? gotFlightPath,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DroneFlightPathState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingFlightPathImplCopyWith<$Res> {
  factory _$$GettingFlightPathImplCopyWith(_$GettingFlightPathImpl value,
          $Res Function(_$GettingFlightPathImpl) then) =
      __$$GettingFlightPathImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingFlightPathImplCopyWithImpl<$Res>
    extends _$DroneFlightPathStateCopyWithImpl<$Res, _$GettingFlightPathImpl>
    implements _$$GettingFlightPathImplCopyWith<$Res> {
  __$$GettingFlightPathImplCopyWithImpl(_$GettingFlightPathImpl _value,
      $Res Function(_$GettingFlightPathImpl) _then)
      : super(_value, _then);

  /// Create a copy of DroneFlightPathState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingFlightPathImpl implements _GettingFlightPath {
  const _$GettingFlightPathImpl();

  @override
  String toString() {
    return 'DroneFlightPathState.gettingFlightPath()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingFlightPathImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingFlightPath,
    required TResult Function(DroneFlightPathEntity droneFlightPathEntity)
        gotFlightPath,
  }) {
    return gettingFlightPath();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingFlightPath,
    TResult? Function(DroneFlightPathEntity droneFlightPathEntity)?
        gotFlightPath,
  }) {
    return gettingFlightPath?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingFlightPath,
    TResult Function(DroneFlightPathEntity droneFlightPathEntity)?
        gotFlightPath,
    required TResult orElse(),
  }) {
    if (gettingFlightPath != null) {
      return gettingFlightPath();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingFlightPath value) gettingFlightPath,
    required TResult Function(_GotFlightPath value) gotFlightPath,
  }) {
    return gettingFlightPath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingFlightPath value)? gettingFlightPath,
    TResult? Function(_GotFlightPath value)? gotFlightPath,
  }) {
    return gettingFlightPath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingFlightPath value)? gettingFlightPath,
    TResult Function(_GotFlightPath value)? gotFlightPath,
    required TResult orElse(),
  }) {
    if (gettingFlightPath != null) {
      return gettingFlightPath(this);
    }
    return orElse();
  }
}

abstract class _GettingFlightPath implements DroneFlightPathState {
  const factory _GettingFlightPath() = _$GettingFlightPathImpl;
}

/// @nodoc
abstract class _$$GotFlightPathImplCopyWith<$Res> {
  factory _$$GotFlightPathImplCopyWith(
          _$GotFlightPathImpl value, $Res Function(_$GotFlightPathImpl) then) =
      __$$GotFlightPathImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DroneFlightPathEntity droneFlightPathEntity});
}

/// @nodoc
class __$$GotFlightPathImplCopyWithImpl<$Res>
    extends _$DroneFlightPathStateCopyWithImpl<$Res, _$GotFlightPathImpl>
    implements _$$GotFlightPathImplCopyWith<$Res> {
  __$$GotFlightPathImplCopyWithImpl(
      _$GotFlightPathImpl _value, $Res Function(_$GotFlightPathImpl) _then)
      : super(_value, _then);

  /// Create a copy of DroneFlightPathState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? droneFlightPathEntity = null,
  }) {
    return _then(_$GotFlightPathImpl(
      droneFlightPathEntity: null == droneFlightPathEntity
          ? _value.droneFlightPathEntity
          : droneFlightPathEntity // ignore: cast_nullable_to_non_nullable
              as DroneFlightPathEntity,
    ));
  }
}

/// @nodoc

class _$GotFlightPathImpl implements _GotFlightPath {
  const _$GotFlightPathImpl({required this.droneFlightPathEntity});

  @override
  final DroneFlightPathEntity droneFlightPathEntity;

  @override
  String toString() {
    return 'DroneFlightPathState.gotFlightPath(droneFlightPathEntity: $droneFlightPathEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotFlightPathImpl &&
            (identical(other.droneFlightPathEntity, droneFlightPathEntity) ||
                other.droneFlightPathEntity == droneFlightPathEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, droneFlightPathEntity);

  /// Create a copy of DroneFlightPathState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotFlightPathImplCopyWith<_$GotFlightPathImpl> get copyWith =>
      __$$GotFlightPathImplCopyWithImpl<_$GotFlightPathImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingFlightPath,
    required TResult Function(DroneFlightPathEntity droneFlightPathEntity)
        gotFlightPath,
  }) {
    return gotFlightPath(droneFlightPathEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingFlightPath,
    TResult? Function(DroneFlightPathEntity droneFlightPathEntity)?
        gotFlightPath,
  }) {
    return gotFlightPath?.call(droneFlightPathEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingFlightPath,
    TResult Function(DroneFlightPathEntity droneFlightPathEntity)?
        gotFlightPath,
    required TResult orElse(),
  }) {
    if (gotFlightPath != null) {
      return gotFlightPath(droneFlightPathEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingFlightPath value) gettingFlightPath,
    required TResult Function(_GotFlightPath value) gotFlightPath,
  }) {
    return gotFlightPath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingFlightPath value)? gettingFlightPath,
    TResult? Function(_GotFlightPath value)? gotFlightPath,
  }) {
    return gotFlightPath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingFlightPath value)? gettingFlightPath,
    TResult Function(_GotFlightPath value)? gotFlightPath,
    required TResult orElse(),
  }) {
    if (gotFlightPath != null) {
      return gotFlightPath(this);
    }
    return orElse();
  }
}

abstract class _GotFlightPath implements DroneFlightPathState {
  const factory _GotFlightPath(
          {required final DroneFlightPathEntity droneFlightPathEntity}) =
      _$GotFlightPathImpl;

  DroneFlightPathEntity get droneFlightPathEntity;

  /// Create a copy of DroneFlightPathState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotFlightPathImplCopyWith<_$GotFlightPathImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
