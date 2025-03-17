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

  @JsonKey(ignore: true)
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
    required TResult Function(String geoHashOfPrecision3)
        computedGeoHashOfPrecision3,
    required TResult Function(String geoHashOfPrecision4)
        computedGeoHashOfPrecision4,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHashOfPrecision3)? computedGeoHashOfPrecision3,
    TResult? Function(String geoHashOfPrecision4)? computedGeoHashOfPrecision4,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHashOfPrecision3)? computedGeoHashOfPrecision3,
    TResult Function(String geoHashOfPrecision4)? computedGeoHashOfPrecision4,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ComputedGeoHashOfPrecision3 value)
        computedGeoHashOfPrecision3,
    required TResult Function(_ComputedGeoHashOfPrecision4 value)
        computedGeoHashOfPrecision4,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    TResult? Function(_ComputedGeoHashOfPrecision4 value)?
        computedGeoHashOfPrecision4,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    TResult Function(_ComputedGeoHashOfPrecision4 value)?
        computedGeoHashOfPrecision4,
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
    required TResult Function(String geoHashOfPrecision3)
        computedGeoHashOfPrecision3,
    required TResult Function(String geoHashOfPrecision4)
        computedGeoHashOfPrecision4,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHashOfPrecision3)? computedGeoHashOfPrecision3,
    TResult? Function(String geoHashOfPrecision4)? computedGeoHashOfPrecision4,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHashOfPrecision3)? computedGeoHashOfPrecision3,
    TResult Function(String geoHashOfPrecision4)? computedGeoHashOfPrecision4,
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
    required TResult Function(_ComputedGeoHashOfPrecision4 value)
        computedGeoHashOfPrecision4,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    TResult? Function(_ComputedGeoHashOfPrecision4 value)?
        computedGeoHashOfPrecision4,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    TResult Function(_ComputedGeoHashOfPrecision4 value)?
        computedGeoHashOfPrecision4,
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
  $Res call({String geoHashOfPrecision3});
}

/// @nodoc
class __$$ComputedGeoHashOfPrecision3ImplCopyWithImpl<$Res>
    extends _$GeoHashStateCopyWithImpl<$Res, _$ComputedGeoHashOfPrecision3Impl>
    implements _$$ComputedGeoHashOfPrecision3ImplCopyWith<$Res> {
  __$$ComputedGeoHashOfPrecision3ImplCopyWithImpl(
      _$ComputedGeoHashOfPrecision3Impl _value,
      $Res Function(_$ComputedGeoHashOfPrecision3Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHashOfPrecision3 = null,
  }) {
    return _then(_$ComputedGeoHashOfPrecision3Impl(
      geoHashOfPrecision3: null == geoHashOfPrecision3
          ? _value.geoHashOfPrecision3
          : geoHashOfPrecision3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ComputedGeoHashOfPrecision3Impl
    implements _ComputedGeoHashOfPrecision3 {
  const _$ComputedGeoHashOfPrecision3Impl({required this.geoHashOfPrecision3});

  @override
  final String geoHashOfPrecision3;

  @override
  String toString() {
    return 'GeoHashState.computedGeoHashOfPrecision3(geoHashOfPrecision3: $geoHashOfPrecision3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComputedGeoHashOfPrecision3Impl &&
            (identical(other.geoHashOfPrecision3, geoHashOfPrecision3) ||
                other.geoHashOfPrecision3 == geoHashOfPrecision3));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHashOfPrecision3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComputedGeoHashOfPrecision3ImplCopyWith<_$ComputedGeoHashOfPrecision3Impl>
      get copyWith => __$$ComputedGeoHashOfPrecision3ImplCopyWithImpl<
          _$ComputedGeoHashOfPrecision3Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String geoHashOfPrecision3)
        computedGeoHashOfPrecision3,
    required TResult Function(String geoHashOfPrecision4)
        computedGeoHashOfPrecision4,
  }) {
    return computedGeoHashOfPrecision3(geoHashOfPrecision3);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHashOfPrecision3)? computedGeoHashOfPrecision3,
    TResult? Function(String geoHashOfPrecision4)? computedGeoHashOfPrecision4,
  }) {
    return computedGeoHashOfPrecision3?.call(geoHashOfPrecision3);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHashOfPrecision3)? computedGeoHashOfPrecision3,
    TResult Function(String geoHashOfPrecision4)? computedGeoHashOfPrecision4,
    required TResult orElse(),
  }) {
    if (computedGeoHashOfPrecision3 != null) {
      return computedGeoHashOfPrecision3(geoHashOfPrecision3);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ComputedGeoHashOfPrecision3 value)
        computedGeoHashOfPrecision3,
    required TResult Function(_ComputedGeoHashOfPrecision4 value)
        computedGeoHashOfPrecision4,
  }) {
    return computedGeoHashOfPrecision3(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    TResult? Function(_ComputedGeoHashOfPrecision4 value)?
        computedGeoHashOfPrecision4,
  }) {
    return computedGeoHashOfPrecision3?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    TResult Function(_ComputedGeoHashOfPrecision4 value)?
        computedGeoHashOfPrecision4,
    required TResult orElse(),
  }) {
    if (computedGeoHashOfPrecision3 != null) {
      return computedGeoHashOfPrecision3(this);
    }
    return orElse();
  }
}

abstract class _ComputedGeoHashOfPrecision3 implements GeoHashState {
  const factory _ComputedGeoHashOfPrecision3(
          {required final String geoHashOfPrecision3}) =
      _$ComputedGeoHashOfPrecision3Impl;

  String get geoHashOfPrecision3;
  @JsonKey(ignore: true)
  _$$ComputedGeoHashOfPrecision3ImplCopyWith<_$ComputedGeoHashOfPrecision3Impl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ComputedGeoHashOfPrecision4ImplCopyWith<$Res> {
  factory _$$ComputedGeoHashOfPrecision4ImplCopyWith(
          _$ComputedGeoHashOfPrecision4Impl value,
          $Res Function(_$ComputedGeoHashOfPrecision4Impl) then) =
      __$$ComputedGeoHashOfPrecision4ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String geoHashOfPrecision4});
}

/// @nodoc
class __$$ComputedGeoHashOfPrecision4ImplCopyWithImpl<$Res>
    extends _$GeoHashStateCopyWithImpl<$Res, _$ComputedGeoHashOfPrecision4Impl>
    implements _$$ComputedGeoHashOfPrecision4ImplCopyWith<$Res> {
  __$$ComputedGeoHashOfPrecision4ImplCopyWithImpl(
      _$ComputedGeoHashOfPrecision4Impl _value,
      $Res Function(_$ComputedGeoHashOfPrecision4Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHashOfPrecision4 = null,
  }) {
    return _then(_$ComputedGeoHashOfPrecision4Impl(
      geoHashOfPrecision4: null == geoHashOfPrecision4
          ? _value.geoHashOfPrecision4
          : geoHashOfPrecision4 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ComputedGeoHashOfPrecision4Impl
    implements _ComputedGeoHashOfPrecision4 {
  const _$ComputedGeoHashOfPrecision4Impl({required this.geoHashOfPrecision4});

  @override
  final String geoHashOfPrecision4;

  @override
  String toString() {
    return 'GeoHashState.computedGeoHashOfPrecision4(geoHashOfPrecision4: $geoHashOfPrecision4)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComputedGeoHashOfPrecision4Impl &&
            (identical(other.geoHashOfPrecision4, geoHashOfPrecision4) ||
                other.geoHashOfPrecision4 == geoHashOfPrecision4));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHashOfPrecision4);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComputedGeoHashOfPrecision4ImplCopyWith<_$ComputedGeoHashOfPrecision4Impl>
      get copyWith => __$$ComputedGeoHashOfPrecision4ImplCopyWithImpl<
          _$ComputedGeoHashOfPrecision4Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String geoHashOfPrecision3)
        computedGeoHashOfPrecision3,
    required TResult Function(String geoHashOfPrecision4)
        computedGeoHashOfPrecision4,
  }) {
    return computedGeoHashOfPrecision4(geoHashOfPrecision4);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHashOfPrecision3)? computedGeoHashOfPrecision3,
    TResult? Function(String geoHashOfPrecision4)? computedGeoHashOfPrecision4,
  }) {
    return computedGeoHashOfPrecision4?.call(geoHashOfPrecision4);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHashOfPrecision3)? computedGeoHashOfPrecision3,
    TResult Function(String geoHashOfPrecision4)? computedGeoHashOfPrecision4,
    required TResult orElse(),
  }) {
    if (computedGeoHashOfPrecision4 != null) {
      return computedGeoHashOfPrecision4(geoHashOfPrecision4);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ComputedGeoHashOfPrecision3 value)
        computedGeoHashOfPrecision3,
    required TResult Function(_ComputedGeoHashOfPrecision4 value)
        computedGeoHashOfPrecision4,
  }) {
    return computedGeoHashOfPrecision4(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    TResult? Function(_ComputedGeoHashOfPrecision4 value)?
        computedGeoHashOfPrecision4,
  }) {
    return computedGeoHashOfPrecision4?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashOfPrecision3 value)?
        computedGeoHashOfPrecision3,
    TResult Function(_ComputedGeoHashOfPrecision4 value)?
        computedGeoHashOfPrecision4,
    required TResult orElse(),
  }) {
    if (computedGeoHashOfPrecision4 != null) {
      return computedGeoHashOfPrecision4(this);
    }
    return orElse();
  }
}

abstract class _ComputedGeoHashOfPrecision4 implements GeoHashState {
  const factory _ComputedGeoHashOfPrecision4(
          {required final String geoHashOfPrecision4}) =
      _$ComputedGeoHashOfPrecision4Impl;

  String get geoHashOfPrecision4;
  @JsonKey(ignore: true)
  _$$ComputedGeoHashOfPrecision4ImplCopyWith<_$ComputedGeoHashOfPrecision4Impl>
      get copyWith => throw _privateConstructorUsedError;
}
