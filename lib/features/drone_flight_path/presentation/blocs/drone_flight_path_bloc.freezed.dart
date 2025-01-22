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
  String get macAddress => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String macAddress) getDroneFlightPathUpdatesFor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String macAddress)? getDroneFlightPathUpdatesFor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String macAddress)? getDroneFlightPathUpdatesFor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDroneFlightPathUpdatesFor value)
        getDroneFlightPathUpdatesFor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDroneFlightPathUpdatesFor value)?
        getDroneFlightPathUpdatesFor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDroneFlightPathUpdatesFor value)?
        getDroneFlightPathUpdatesFor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DroneFlightPathEventCopyWith<DroneFlightPathEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DroneFlightPathEventCopyWith<$Res> {
  factory $DroneFlightPathEventCopyWith(DroneFlightPathEvent value,
          $Res Function(DroneFlightPathEvent) then) =
      _$DroneFlightPathEventCopyWithImpl<$Res, DroneFlightPathEvent>;
  @useResult
  $Res call({String macAddress});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? macAddress = null,
  }) {
    return _then(_value.copyWith(
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDroneFlightPathUpdatesForImplCopyWith<$Res>
    implements $DroneFlightPathEventCopyWith<$Res> {
  factory _$$GetDroneFlightPathUpdatesForImplCopyWith(
          _$GetDroneFlightPathUpdatesForImpl value,
          $Res Function(_$GetDroneFlightPathUpdatesForImpl) then) =
      __$$GetDroneFlightPathUpdatesForImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String macAddress});
}

/// @nodoc
class __$$GetDroneFlightPathUpdatesForImplCopyWithImpl<$Res>
    extends _$DroneFlightPathEventCopyWithImpl<$Res,
        _$GetDroneFlightPathUpdatesForImpl>
    implements _$$GetDroneFlightPathUpdatesForImplCopyWith<$Res> {
  __$$GetDroneFlightPathUpdatesForImplCopyWithImpl(
      _$GetDroneFlightPathUpdatesForImpl _value,
      $Res Function(_$GetDroneFlightPathUpdatesForImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? macAddress = null,
  }) {
    return _then(_$GetDroneFlightPathUpdatesForImpl(
      macAddress: null == macAddress
          ? _value.macAddress
          : macAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDroneFlightPathUpdatesForImpl
    implements _GetDroneFlightPathUpdatesFor {
  const _$GetDroneFlightPathUpdatesForImpl({required this.macAddress});

  @override
  final String macAddress;

  @override
  String toString() {
    return 'DroneFlightPathEvent.getDroneFlightPathUpdatesFor(macAddress: $macAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDroneFlightPathUpdatesForImpl &&
            (identical(other.macAddress, macAddress) ||
                other.macAddress == macAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, macAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDroneFlightPathUpdatesForImplCopyWith<
          _$GetDroneFlightPathUpdatesForImpl>
      get copyWith => __$$GetDroneFlightPathUpdatesForImplCopyWithImpl<
          _$GetDroneFlightPathUpdatesForImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String macAddress) getDroneFlightPathUpdatesFor,
  }) {
    return getDroneFlightPathUpdatesFor(macAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String macAddress)? getDroneFlightPathUpdatesFor,
  }) {
    return getDroneFlightPathUpdatesFor?.call(macAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String macAddress)? getDroneFlightPathUpdatesFor,
    required TResult orElse(),
  }) {
    if (getDroneFlightPathUpdatesFor != null) {
      return getDroneFlightPathUpdatesFor(macAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDroneFlightPathUpdatesFor value)
        getDroneFlightPathUpdatesFor,
  }) {
    return getDroneFlightPathUpdatesFor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDroneFlightPathUpdatesFor value)?
        getDroneFlightPathUpdatesFor,
  }) {
    return getDroneFlightPathUpdatesFor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDroneFlightPathUpdatesFor value)?
        getDroneFlightPathUpdatesFor,
    required TResult orElse(),
  }) {
    if (getDroneFlightPathUpdatesFor != null) {
      return getDroneFlightPathUpdatesFor(this);
    }
    return orElse();
  }
}

abstract class _GetDroneFlightPathUpdatesFor implements DroneFlightPathEvent {
  const factory _GetDroneFlightPathUpdatesFor(
      {required final String macAddress}) = _$GetDroneFlightPathUpdatesForImpl;

  @override
  String get macAddress;
  @override
  @JsonKey(ignore: true)
  _$$GetDroneFlightPathUpdatesForImplCopyWith<
          _$GetDroneFlightPathUpdatesForImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DroneFlightPathState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingDroneFlightPathUpdates,
    required TResult Function(DroneFlightPathEntity droneFlightPath)
        gotDroneFlightPathUpdates,
    required TResult Function() failedToGetDroneFlightPathUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingDroneFlightPathUpdates,
    TResult? Function(DroneFlightPathEntity droneFlightPath)?
        gotDroneFlightPathUpdates,
    TResult? Function()? failedToGetDroneFlightPathUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingDroneFlightPathUpdates,
    TResult Function(DroneFlightPathEntity droneFlightPath)?
        gotDroneFlightPathUpdates,
    TResult Function()? failedToGetDroneFlightPathUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingDroneFlightPathUpdates value)
        gettingDroneFlightPathUpdates,
    required TResult Function(_GotDroneFlightPathUpdates value)
        gotDroneFlightPathUpdates,
    required TResult Function(_FailedToGetDroneFlightPathUpdate value)
        failedToGetDroneFlightPathUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingDroneFlightPathUpdates value)?
        gettingDroneFlightPathUpdates,
    TResult? Function(_GotDroneFlightPathUpdates value)?
        gotDroneFlightPathUpdates,
    TResult? Function(_FailedToGetDroneFlightPathUpdate value)?
        failedToGetDroneFlightPathUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingDroneFlightPathUpdates value)?
        gettingDroneFlightPathUpdates,
    TResult Function(_GotDroneFlightPathUpdates value)?
        gotDroneFlightPathUpdates,
    TResult Function(_FailedToGetDroneFlightPathUpdate value)?
        failedToGetDroneFlightPathUpdate,
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
    required TResult Function() gettingDroneFlightPathUpdates,
    required TResult Function(DroneFlightPathEntity droneFlightPath)
        gotDroneFlightPathUpdates,
    required TResult Function() failedToGetDroneFlightPathUpdate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingDroneFlightPathUpdates,
    TResult? Function(DroneFlightPathEntity droneFlightPath)?
        gotDroneFlightPathUpdates,
    TResult? Function()? failedToGetDroneFlightPathUpdate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingDroneFlightPathUpdates,
    TResult Function(DroneFlightPathEntity droneFlightPath)?
        gotDroneFlightPathUpdates,
    TResult Function()? failedToGetDroneFlightPathUpdate,
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
    required TResult Function(_GettingDroneFlightPathUpdates value)
        gettingDroneFlightPathUpdates,
    required TResult Function(_GotDroneFlightPathUpdates value)
        gotDroneFlightPathUpdates,
    required TResult Function(_FailedToGetDroneFlightPathUpdate value)
        failedToGetDroneFlightPathUpdate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingDroneFlightPathUpdates value)?
        gettingDroneFlightPathUpdates,
    TResult? Function(_GotDroneFlightPathUpdates value)?
        gotDroneFlightPathUpdates,
    TResult? Function(_FailedToGetDroneFlightPathUpdate value)?
        failedToGetDroneFlightPathUpdate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingDroneFlightPathUpdates value)?
        gettingDroneFlightPathUpdates,
    TResult Function(_GotDroneFlightPathUpdates value)?
        gotDroneFlightPathUpdates,
    TResult Function(_FailedToGetDroneFlightPathUpdate value)?
        failedToGetDroneFlightPathUpdate,
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
abstract class _$$GettingDroneFlightPathUpdatesImplCopyWith<$Res> {
  factory _$$GettingDroneFlightPathUpdatesImplCopyWith(
          _$GettingDroneFlightPathUpdatesImpl value,
          $Res Function(_$GettingDroneFlightPathUpdatesImpl) then) =
      __$$GettingDroneFlightPathUpdatesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingDroneFlightPathUpdatesImplCopyWithImpl<$Res>
    extends _$DroneFlightPathStateCopyWithImpl<$Res,
        _$GettingDroneFlightPathUpdatesImpl>
    implements _$$GettingDroneFlightPathUpdatesImplCopyWith<$Res> {
  __$$GettingDroneFlightPathUpdatesImplCopyWithImpl(
      _$GettingDroneFlightPathUpdatesImpl _value,
      $Res Function(_$GettingDroneFlightPathUpdatesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GettingDroneFlightPathUpdatesImpl
    implements _GettingDroneFlightPathUpdates {
  const _$GettingDroneFlightPathUpdatesImpl();

  @override
  String toString() {
    return 'DroneFlightPathState.gettingDroneFlightPathUpdates()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingDroneFlightPathUpdatesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingDroneFlightPathUpdates,
    required TResult Function(DroneFlightPathEntity droneFlightPath)
        gotDroneFlightPathUpdates,
    required TResult Function() failedToGetDroneFlightPathUpdate,
  }) {
    return gettingDroneFlightPathUpdates();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingDroneFlightPathUpdates,
    TResult? Function(DroneFlightPathEntity droneFlightPath)?
        gotDroneFlightPathUpdates,
    TResult? Function()? failedToGetDroneFlightPathUpdate,
  }) {
    return gettingDroneFlightPathUpdates?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingDroneFlightPathUpdates,
    TResult Function(DroneFlightPathEntity droneFlightPath)?
        gotDroneFlightPathUpdates,
    TResult Function()? failedToGetDroneFlightPathUpdate,
    required TResult orElse(),
  }) {
    if (gettingDroneFlightPathUpdates != null) {
      return gettingDroneFlightPathUpdates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingDroneFlightPathUpdates value)
        gettingDroneFlightPathUpdates,
    required TResult Function(_GotDroneFlightPathUpdates value)
        gotDroneFlightPathUpdates,
    required TResult Function(_FailedToGetDroneFlightPathUpdate value)
        failedToGetDroneFlightPathUpdate,
  }) {
    return gettingDroneFlightPathUpdates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingDroneFlightPathUpdates value)?
        gettingDroneFlightPathUpdates,
    TResult? Function(_GotDroneFlightPathUpdates value)?
        gotDroneFlightPathUpdates,
    TResult? Function(_FailedToGetDroneFlightPathUpdate value)?
        failedToGetDroneFlightPathUpdate,
  }) {
    return gettingDroneFlightPathUpdates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingDroneFlightPathUpdates value)?
        gettingDroneFlightPathUpdates,
    TResult Function(_GotDroneFlightPathUpdates value)?
        gotDroneFlightPathUpdates,
    TResult Function(_FailedToGetDroneFlightPathUpdate value)?
        failedToGetDroneFlightPathUpdate,
    required TResult orElse(),
  }) {
    if (gettingDroneFlightPathUpdates != null) {
      return gettingDroneFlightPathUpdates(this);
    }
    return orElse();
  }
}

abstract class _GettingDroneFlightPathUpdates implements DroneFlightPathState {
  const factory _GettingDroneFlightPathUpdates() =
      _$GettingDroneFlightPathUpdatesImpl;
}

/// @nodoc
abstract class _$$GotDroneFlightPathUpdatesImplCopyWith<$Res> {
  factory _$$GotDroneFlightPathUpdatesImplCopyWith(
          _$GotDroneFlightPathUpdatesImpl value,
          $Res Function(_$GotDroneFlightPathUpdatesImpl) then) =
      __$$GotDroneFlightPathUpdatesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DroneFlightPathEntity droneFlightPath});
}

/// @nodoc
class __$$GotDroneFlightPathUpdatesImplCopyWithImpl<$Res>
    extends _$DroneFlightPathStateCopyWithImpl<$Res,
        _$GotDroneFlightPathUpdatesImpl>
    implements _$$GotDroneFlightPathUpdatesImplCopyWith<$Res> {
  __$$GotDroneFlightPathUpdatesImplCopyWithImpl(
      _$GotDroneFlightPathUpdatesImpl _value,
      $Res Function(_$GotDroneFlightPathUpdatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? droneFlightPath = null,
  }) {
    return _then(_$GotDroneFlightPathUpdatesImpl(
      droneFlightPath: null == droneFlightPath
          ? _value.droneFlightPath
          : droneFlightPath // ignore: cast_nullable_to_non_nullable
              as DroneFlightPathEntity,
    ));
  }
}

/// @nodoc

class _$GotDroneFlightPathUpdatesImpl implements _GotDroneFlightPathUpdates {
  const _$GotDroneFlightPathUpdatesImpl({required this.droneFlightPath});

  @override
  final DroneFlightPathEntity droneFlightPath;

  @override
  String toString() {
    return 'DroneFlightPathState.gotDroneFlightPathUpdates(droneFlightPath: $droneFlightPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotDroneFlightPathUpdatesImpl &&
            (identical(other.droneFlightPath, droneFlightPath) ||
                other.droneFlightPath == droneFlightPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, droneFlightPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotDroneFlightPathUpdatesImplCopyWith<_$GotDroneFlightPathUpdatesImpl>
      get copyWith => __$$GotDroneFlightPathUpdatesImplCopyWithImpl<
          _$GotDroneFlightPathUpdatesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingDroneFlightPathUpdates,
    required TResult Function(DroneFlightPathEntity droneFlightPath)
        gotDroneFlightPathUpdates,
    required TResult Function() failedToGetDroneFlightPathUpdate,
  }) {
    return gotDroneFlightPathUpdates(droneFlightPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingDroneFlightPathUpdates,
    TResult? Function(DroneFlightPathEntity droneFlightPath)?
        gotDroneFlightPathUpdates,
    TResult? Function()? failedToGetDroneFlightPathUpdate,
  }) {
    return gotDroneFlightPathUpdates?.call(droneFlightPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingDroneFlightPathUpdates,
    TResult Function(DroneFlightPathEntity droneFlightPath)?
        gotDroneFlightPathUpdates,
    TResult Function()? failedToGetDroneFlightPathUpdate,
    required TResult orElse(),
  }) {
    if (gotDroneFlightPathUpdates != null) {
      return gotDroneFlightPathUpdates(droneFlightPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingDroneFlightPathUpdates value)
        gettingDroneFlightPathUpdates,
    required TResult Function(_GotDroneFlightPathUpdates value)
        gotDroneFlightPathUpdates,
    required TResult Function(_FailedToGetDroneFlightPathUpdate value)
        failedToGetDroneFlightPathUpdate,
  }) {
    return gotDroneFlightPathUpdates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingDroneFlightPathUpdates value)?
        gettingDroneFlightPathUpdates,
    TResult? Function(_GotDroneFlightPathUpdates value)?
        gotDroneFlightPathUpdates,
    TResult? Function(_FailedToGetDroneFlightPathUpdate value)?
        failedToGetDroneFlightPathUpdate,
  }) {
    return gotDroneFlightPathUpdates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingDroneFlightPathUpdates value)?
        gettingDroneFlightPathUpdates,
    TResult Function(_GotDroneFlightPathUpdates value)?
        gotDroneFlightPathUpdates,
    TResult Function(_FailedToGetDroneFlightPathUpdate value)?
        failedToGetDroneFlightPathUpdate,
    required TResult orElse(),
  }) {
    if (gotDroneFlightPathUpdates != null) {
      return gotDroneFlightPathUpdates(this);
    }
    return orElse();
  }
}

abstract class _GotDroneFlightPathUpdates implements DroneFlightPathState {
  const factory _GotDroneFlightPathUpdates(
          {required final DroneFlightPathEntity droneFlightPath}) =
      _$GotDroneFlightPathUpdatesImpl;

  DroneFlightPathEntity get droneFlightPath;
  @JsonKey(ignore: true)
  _$$GotDroneFlightPathUpdatesImplCopyWith<_$GotDroneFlightPathUpdatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetDroneFlightPathUpdateImplCopyWith<$Res> {
  factory _$$FailedToGetDroneFlightPathUpdateImplCopyWith(
          _$FailedToGetDroneFlightPathUpdateImpl value,
          $Res Function(_$FailedToGetDroneFlightPathUpdateImpl) then) =
      __$$FailedToGetDroneFlightPathUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToGetDroneFlightPathUpdateImplCopyWithImpl<$Res>
    extends _$DroneFlightPathStateCopyWithImpl<$Res,
        _$FailedToGetDroneFlightPathUpdateImpl>
    implements _$$FailedToGetDroneFlightPathUpdateImplCopyWith<$Res> {
  __$$FailedToGetDroneFlightPathUpdateImplCopyWithImpl(
      _$FailedToGetDroneFlightPathUpdateImpl _value,
      $Res Function(_$FailedToGetDroneFlightPathUpdateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedToGetDroneFlightPathUpdateImpl
    implements _FailedToGetDroneFlightPathUpdate {
  const _$FailedToGetDroneFlightPathUpdateImpl();

  @override
  String toString() {
    return 'DroneFlightPathState.failedToGetDroneFlightPathUpdate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetDroneFlightPathUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingDroneFlightPathUpdates,
    required TResult Function(DroneFlightPathEntity droneFlightPath)
        gotDroneFlightPathUpdates,
    required TResult Function() failedToGetDroneFlightPathUpdate,
  }) {
    return failedToGetDroneFlightPathUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingDroneFlightPathUpdates,
    TResult? Function(DroneFlightPathEntity droneFlightPath)?
        gotDroneFlightPathUpdates,
    TResult? Function()? failedToGetDroneFlightPathUpdate,
  }) {
    return failedToGetDroneFlightPathUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingDroneFlightPathUpdates,
    TResult Function(DroneFlightPathEntity droneFlightPath)?
        gotDroneFlightPathUpdates,
    TResult Function()? failedToGetDroneFlightPathUpdate,
    required TResult orElse(),
  }) {
    if (failedToGetDroneFlightPathUpdate != null) {
      return failedToGetDroneFlightPathUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingDroneFlightPathUpdates value)
        gettingDroneFlightPathUpdates,
    required TResult Function(_GotDroneFlightPathUpdates value)
        gotDroneFlightPathUpdates,
    required TResult Function(_FailedToGetDroneFlightPathUpdate value)
        failedToGetDroneFlightPathUpdate,
  }) {
    return failedToGetDroneFlightPathUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingDroneFlightPathUpdates value)?
        gettingDroneFlightPathUpdates,
    TResult? Function(_GotDroneFlightPathUpdates value)?
        gotDroneFlightPathUpdates,
    TResult? Function(_FailedToGetDroneFlightPathUpdate value)?
        failedToGetDroneFlightPathUpdate,
  }) {
    return failedToGetDroneFlightPathUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingDroneFlightPathUpdates value)?
        gettingDroneFlightPathUpdates,
    TResult Function(_GotDroneFlightPathUpdates value)?
        gotDroneFlightPathUpdates,
    TResult Function(_FailedToGetDroneFlightPathUpdate value)?
        failedToGetDroneFlightPathUpdate,
    required TResult orElse(),
  }) {
    if (failedToGetDroneFlightPathUpdate != null) {
      return failedToGetDroneFlightPathUpdate(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetDroneFlightPathUpdate
    implements DroneFlightPathState {
  const factory _FailedToGetDroneFlightPathUpdate() =
      _$FailedToGetDroneFlightPathUpdateImpl;
}
