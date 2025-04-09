// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_hash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GeoHashEvent {
  ({double latitude, double longitude}) get coordinates =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(({double latitude, double longitude}) coordinates)
        computeGeoHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(({double latitude, double longitude}) coordinates)?
        computeGeoHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(({double latitude, double longitude}) coordinates)?
        computeGeoHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComputeGeoHash value) computeGeoHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComputeGeoHash value)? computeGeoHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComputeGeoHash value)? computeGeoHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GeoHashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoHashEventCopyWith<GeoHashEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoHashEventCopyWith<$Res> {
  factory $GeoHashEventCopyWith(
          GeoHashEvent value, $Res Function(GeoHashEvent) then) =
      _$GeoHashEventCopyWithImpl<$Res, GeoHashEvent>;
  @useResult
  $Res call({({double latitude, double longitude}) coordinates});
}

/// @nodoc
class _$GeoHashEventCopyWithImpl<$Res, $Val extends GeoHashEvent>
    implements $GeoHashEventCopyWith<$Res> {
  _$GeoHashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoHashEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as ({double latitude, double longitude}),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComputeGeoHashImplCopyWith<$Res>
    implements $GeoHashEventCopyWith<$Res> {
  factory _$$ComputeGeoHashImplCopyWith(_$ComputeGeoHashImpl value,
          $Res Function(_$ComputeGeoHashImpl) then) =
      __$$ComputeGeoHashImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({({double latitude, double longitude}) coordinates});
}

/// @nodoc
class __$$ComputeGeoHashImplCopyWithImpl<$Res>
    extends _$GeoHashEventCopyWithImpl<$Res, _$ComputeGeoHashImpl>
    implements _$$ComputeGeoHashImplCopyWith<$Res> {
  __$$ComputeGeoHashImplCopyWithImpl(
      _$ComputeGeoHashImpl _value, $Res Function(_$ComputeGeoHashImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoHashEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_$ComputeGeoHashImpl(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as ({double latitude, double longitude}),
    ));
  }
}

/// @nodoc

class _$ComputeGeoHashImpl implements _ComputeGeoHash {
  const _$ComputeGeoHashImpl({required this.coordinates});

  @override
  final ({double latitude, double longitude}) coordinates;

  @override
  String toString() {
    return 'GeoHashEvent.computeGeoHash(coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComputeGeoHashImpl &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coordinates);

  /// Create a copy of GeoHashEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComputeGeoHashImplCopyWith<_$ComputeGeoHashImpl> get copyWith =>
      __$$ComputeGeoHashImplCopyWithImpl<_$ComputeGeoHashImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(({double latitude, double longitude}) coordinates)
        computeGeoHash,
  }) {
    return computeGeoHash(coordinates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(({double latitude, double longitude}) coordinates)?
        computeGeoHash,
  }) {
    return computeGeoHash?.call(coordinates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(({double latitude, double longitude}) coordinates)?
        computeGeoHash,
    required TResult orElse(),
  }) {
    if (computeGeoHash != null) {
      return computeGeoHash(coordinates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ComputeGeoHash value) computeGeoHash,
  }) {
    return computeGeoHash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ComputeGeoHash value)? computeGeoHash,
  }) {
    return computeGeoHash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ComputeGeoHash value)? computeGeoHash,
    required TResult orElse(),
  }) {
    if (computeGeoHash != null) {
      return computeGeoHash(this);
    }
    return orElse();
  }
}

abstract class _ComputeGeoHash implements GeoHashEvent {
  const factory _ComputeGeoHash(
          {required final ({double latitude, double longitude}) coordinates}) =
      _$ComputeGeoHashImpl;

  @override
  ({double latitude, double longitude}) get coordinates;

  /// Create a copy of GeoHashEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComputeGeoHashImplCopyWith<_$ComputeGeoHashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GeoHashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String geoHash) computedGeoHashOfPrecision3,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHash)? computedGeoHashOfPrecision3,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHash)? computedGeoHashOfPrecision3,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ComputedGeoHashOfPrecision3 value)
        computedGeoHashOfPrecision3,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoHashStateCopyWith<$Res> {
  factory $GeoHashStateCopyWith(
          GeoHashState value, $Res Function(GeoHashState) then) =
      _$GeoHashStateCopyWithImpl<$Res, GeoHashState>;
}

/// @nodoc
class _$GeoHashStateCopyWithImpl<$Res, $Val extends GeoHashState>
    implements $GeoHashStateCopyWith<$Res> {
  _$GeoHashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoHashState
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
    extends _$GeoHashStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoHashState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GeoHashState.initial()';
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
    required TResult Function(String geoHash) computedGeoHashOfPrecision3,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHash)? computedGeoHashOfPrecision3,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHash)? computedGeoHashOfPrecision3,
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
    required TResult Function(_ComputedGeoHashOfPrecision3 value)
        computedGeoHashOfPrecision3,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GeoHashState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ComputedGeoHashOfPrecision3ImplCopyWith<$Res> {
  factory _$$ComputedGeoHashOfPrecision3ImplCopyWith(
          _$ComputedGeoHashOfPrecision3Impl value,
          $Res Function(_$ComputedGeoHashOfPrecision3Impl) then) =
      __$$ComputedGeoHashOfPrecision3ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String geoHash});
}

/// @nodoc
class __$$ComputedGeoHashOfPrecision3ImplCopyWithImpl<$Res>
    extends _$GeoHashStateCopyWithImpl<$Res, _$ComputedGeoHashOfPrecision3Impl>
    implements _$$ComputedGeoHashOfPrecision3ImplCopyWith<$Res> {
  __$$ComputedGeoHashOfPrecision3ImplCopyWithImpl(
      _$ComputedGeoHashOfPrecision3Impl _value,
      $Res Function(_$ComputedGeoHashOfPrecision3Impl) _then)
      : super(_value, _then);

  /// Create a copy of GeoHashState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHash = null,
  }) {
    return _then(_$ComputedGeoHashOfPrecision3Impl(
      geoHash: null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ComputedGeoHashOfPrecision3Impl
    implements _ComputedGeoHashOfPrecision3 {
  const _$ComputedGeoHashOfPrecision3Impl({required this.geoHash});

  @override
  final String geoHash;

  @override
  String toString() {
    return 'GeoHashState.computedGeoHashOfPrecision3(geoHash: $geoHash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComputedGeoHashOfPrecision3Impl &&
            (identical(other.geoHash, geoHash) || other.geoHash == geoHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHash);

  /// Create a copy of GeoHashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComputedGeoHashOfPrecision3ImplCopyWith<_$ComputedGeoHashOfPrecision3Impl>
      get copyWith => __$$ComputedGeoHashOfPrecision3ImplCopyWithImpl<
          _$ComputedGeoHashOfPrecision3Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String geoHash) computedGeoHashOfPrecision3,
  }) {
    return computedGeoHashOfPrecision3(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHash)? computedGeoHashOfPrecision3,
  }) {
    return computedGeoHashOfPrecision3?.call(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHash)? computedGeoHashOfPrecision3,
    required TResult orElse(),
  }) {
    if (computedGeoHashOfPrecision3 != null) {
      return computedGeoHashOfPrecision3(geoHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ComputedGeoHashOfPrecision3 value)
        computedGeoHashOfPrecision3,
  }) {
    return computedGeoHashOfPrecision3(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
  }) {
    return computedGeoHashOfPrecision3?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    required TResult orElse(),
  }) {
    if (computedGeoHashOfPrecision3 != null) {
      return computedGeoHashOfPrecision3(this);
    }
    return orElse();
  }
}

abstract class _ComputedGeoHashOfPrecision3 implements GeoHashState {
  const factory _ComputedGeoHashOfPrecision3({required final String geoHash}) =
      _$ComputedGeoHashOfPrecision3Impl;

  String get geoHash;

  /// Create a copy of GeoHashState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComputedGeoHashOfPrecision3ImplCopyWith<_$ComputedGeoHashOfPrecision3Impl>
      get copyWith => throw _privateConstructorUsedError;
}
