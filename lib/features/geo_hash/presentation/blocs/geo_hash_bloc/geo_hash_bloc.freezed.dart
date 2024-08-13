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
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  int? get precision => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude, int? precision)
        computeGeoHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude, int? precision)?
        computeGeoHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude, int? precision)?
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

  @JsonKey(ignore: true)
  $GeoHashEventCopyWith<GeoHashEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoHashEventCopyWith<$Res> {
  factory $GeoHashEventCopyWith(
          GeoHashEvent value, $Res Function(GeoHashEvent) then) =
      _$GeoHashEventCopyWithImpl<$Res, GeoHashEvent>;
  @useResult
  $Res call({double latitude, double longitude, int? precision});
}

/// @nodoc
class _$GeoHashEventCopyWithImpl<$Res, $Val extends GeoHashEvent>
    implements $GeoHashEventCopyWith<$Res> {
  _$GeoHashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? precision = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call({double latitude, double longitude, int? precision});
}

/// @nodoc
class __$$ComputeGeoHashImplCopyWithImpl<$Res>
    extends _$GeoHashEventCopyWithImpl<$Res, _$ComputeGeoHashImpl>
    implements _$$ComputeGeoHashImplCopyWith<$Res> {
  __$$ComputeGeoHashImplCopyWithImpl(
      _$ComputeGeoHashImpl _value, $Res Function(_$ComputeGeoHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? precision = freezed,
  }) {
    return _then(_$ComputeGeoHashImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      precision: freezed == precision
          ? _value.precision
          : precision // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ComputeGeoHashImpl implements _ComputeGeoHash {
  const _$ComputeGeoHashImpl(
      {required this.latitude, required this.longitude, this.precision});

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final int? precision;

  @override
  String toString() {
    return 'GeoHashEvent.computeGeoHash(latitude: $latitude, longitude: $longitude, precision: $precision)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComputeGeoHashImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.precision, precision) ||
                other.precision == precision));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, precision);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComputeGeoHashImplCopyWith<_$ComputeGeoHashImpl> get copyWith =>
      __$$ComputeGeoHashImplCopyWithImpl<_$ComputeGeoHashImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double latitude, double longitude, int? precision)
        computeGeoHash,
  }) {
    return computeGeoHash(latitude, longitude, precision);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double latitude, double longitude, int? precision)?
        computeGeoHash,
  }) {
    return computeGeoHash?.call(latitude, longitude, precision);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double latitude, double longitude, int? precision)?
        computeGeoHash,
    required TResult orElse(),
  }) {
    if (computeGeoHash != null) {
      return computeGeoHash(latitude, longitude, precision);
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
      {required final double latitude,
      required final double longitude,
      final int? precision}) = _$ComputeGeoHashImpl;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  int? get precision;
  @override
  @JsonKey(ignore: true)
  _$$ComputeGeoHashImplCopyWith<_$ComputeGeoHashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GeoHashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String geoHash) computedGeoHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHash)? computedGeoHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHash)? computedGeoHash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ComputedGeoHash value) computedGeoHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHash value)? computedGeoHash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHash value)? computedGeoHash,
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
    required TResult Function(String geoHash) computedGeoHash,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHash)? computedGeoHash,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHash)? computedGeoHash,
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
    required TResult Function(_ComputedGeoHash value) computedGeoHash,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHash value)? computedGeoHash,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHash value)? computedGeoHash,
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
abstract class _$$ComputedGeoHashImplCopyWith<$Res> {
  factory _$$ComputedGeoHashImplCopyWith(_$ComputedGeoHashImpl value,
          $Res Function(_$ComputedGeoHashImpl) then) =
      __$$ComputedGeoHashImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String geoHash});
}

/// @nodoc
class __$$ComputedGeoHashImplCopyWithImpl<$Res>
    extends _$GeoHashStateCopyWithImpl<$Res, _$ComputedGeoHashImpl>
    implements _$$ComputedGeoHashImplCopyWith<$Res> {
  __$$ComputedGeoHashImplCopyWithImpl(
      _$ComputedGeoHashImpl _value, $Res Function(_$ComputedGeoHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHash = null,
  }) {
    return _then(_$ComputedGeoHashImpl(
      geoHash: null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ComputedGeoHashImpl implements _ComputedGeoHash {
  const _$ComputedGeoHashImpl({required this.geoHash});

  @override
  final String geoHash;

  @override
  String toString() {
    return 'GeoHashState.computedGeoHash(geoHash: $geoHash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComputedGeoHashImpl &&
            (identical(other.geoHash, geoHash) || other.geoHash == geoHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComputedGeoHashImplCopyWith<_$ComputedGeoHashImpl> get copyWith =>
      __$$ComputedGeoHashImplCopyWithImpl<_$ComputedGeoHashImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String geoHash) computedGeoHash,
  }) {
    return computedGeoHash(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHash)? computedGeoHash,
  }) {
    return computedGeoHash?.call(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHash)? computedGeoHash,
    required TResult orElse(),
  }) {
    if (computedGeoHash != null) {
      return computedGeoHash(geoHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ComputedGeoHash value) computedGeoHash,
  }) {
    return computedGeoHash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHash value)? computedGeoHash,
  }) {
    return computedGeoHash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHash value)? computedGeoHash,
    required TResult orElse(),
  }) {
    if (computedGeoHash != null) {
      return computedGeoHash(this);
    }
    return orElse();
  }
}

abstract class _ComputedGeoHash implements GeoHashState {
  const factory _ComputedGeoHash({required final String geoHash}) =
      _$ComputedGeoHashImpl;

  String get geoHash;
  @JsonKey(ignore: true)
  _$$ComputedGeoHashImplCopyWith<_$ComputedGeoHashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
