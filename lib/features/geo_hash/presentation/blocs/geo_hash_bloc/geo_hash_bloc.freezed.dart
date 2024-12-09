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
    required TResult Function(String geoHashP4) computedGeoHashP4,
    required TResult Function(String geoHashP6) computedGeoHashP6,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHashP4)? computedGeoHashP4,
    TResult? Function(String geoHashP6)? computedGeoHashP6,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHashP4)? computedGeoHashP4,
    TResult Function(String geoHashP6)? computedGeoHashP6,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ComputedGeoHashP4 value) computedGeoHashP4,
    required TResult Function(_ComputedGeoHashP6 value) computedGeoHashP6,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashP4 value)? computedGeoHashP4,
    TResult? Function(_ComputedGeoHashP6 value)? computedGeoHashP6,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashP4 value)? computedGeoHashP4,
    TResult Function(_ComputedGeoHashP6 value)? computedGeoHashP6,
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
    required TResult Function(String geoHashP4) computedGeoHashP4,
    required TResult Function(String geoHashP6) computedGeoHashP6,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHashP4)? computedGeoHashP4,
    TResult? Function(String geoHashP6)? computedGeoHashP6,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHashP4)? computedGeoHashP4,
    TResult Function(String geoHashP6)? computedGeoHashP6,
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
    required TResult Function(_ComputedGeoHashP4 value) computedGeoHashP4,
    required TResult Function(_ComputedGeoHashP6 value) computedGeoHashP6,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashP4 value)? computedGeoHashP4,
    TResult? Function(_ComputedGeoHashP6 value)? computedGeoHashP6,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashP4 value)? computedGeoHashP4,
    TResult Function(_ComputedGeoHashP6 value)? computedGeoHashP6,
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
abstract class _$$ComputedGeoHashP4ImplCopyWith<$Res> {
  factory _$$ComputedGeoHashP4ImplCopyWith(_$ComputedGeoHashP4Impl value,
          $Res Function(_$ComputedGeoHashP4Impl) then) =
      __$$ComputedGeoHashP4ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String geoHashP4});
}

/// @nodoc
class __$$ComputedGeoHashP4ImplCopyWithImpl<$Res>
    extends _$GeoHashStateCopyWithImpl<$Res, _$ComputedGeoHashP4Impl>
    implements _$$ComputedGeoHashP4ImplCopyWith<$Res> {
  __$$ComputedGeoHashP4ImplCopyWithImpl(_$ComputedGeoHashP4Impl _value,
      $Res Function(_$ComputedGeoHashP4Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHashP4 = null,
  }) {
    return _then(_$ComputedGeoHashP4Impl(
      geoHashP4: null == geoHashP4
          ? _value.geoHashP4
          : geoHashP4 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ComputedGeoHashP4Impl implements _ComputedGeoHashP4 {
  const _$ComputedGeoHashP4Impl({required this.geoHashP4});

  @override
  final String geoHashP4;

  @override
  String toString() {
    return 'GeoHashState.computedGeoHashP4(geoHashP4: $geoHashP4)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComputedGeoHashP4Impl &&
            (identical(other.geoHashP4, geoHashP4) ||
                other.geoHashP4 == geoHashP4));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHashP4);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComputedGeoHashP4ImplCopyWith<_$ComputedGeoHashP4Impl> get copyWith =>
      __$$ComputedGeoHashP4ImplCopyWithImpl<_$ComputedGeoHashP4Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String geoHashP4) computedGeoHashP4,
    required TResult Function(String geoHashP6) computedGeoHashP6,
  }) {
    return computedGeoHashP4(geoHashP4);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHashP4)? computedGeoHashP4,
    TResult? Function(String geoHashP6)? computedGeoHashP6,
  }) {
    return computedGeoHashP4?.call(geoHashP4);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHashP4)? computedGeoHashP4,
    TResult Function(String geoHashP6)? computedGeoHashP6,
    required TResult orElse(),
  }) {
    if (computedGeoHashP4 != null) {
      return computedGeoHashP4(geoHashP4);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ComputedGeoHashP4 value) computedGeoHashP4,
    required TResult Function(_ComputedGeoHashP6 value) computedGeoHashP6,
  }) {
    return computedGeoHashP4(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashP4 value)? computedGeoHashP4,
    TResult? Function(_ComputedGeoHashP6 value)? computedGeoHashP6,
  }) {
    return computedGeoHashP4?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashP4 value)? computedGeoHashP4,
    TResult Function(_ComputedGeoHashP6 value)? computedGeoHashP6,
    required TResult orElse(),
  }) {
    if (computedGeoHashP4 != null) {
      return computedGeoHashP4(this);
    }
    return orElse();
  }
}

abstract class _ComputedGeoHashP4 implements GeoHashState {
  const factory _ComputedGeoHashP4({required final String geoHashP4}) =
      _$ComputedGeoHashP4Impl;

  String get geoHashP4;
  @JsonKey(ignore: true)
  _$$ComputedGeoHashP4ImplCopyWith<_$ComputedGeoHashP4Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ComputedGeoHashP6ImplCopyWith<$Res> {
  factory _$$ComputedGeoHashP6ImplCopyWith(_$ComputedGeoHashP6Impl value,
          $Res Function(_$ComputedGeoHashP6Impl) then) =
      __$$ComputedGeoHashP6ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String geoHashP6});
}

/// @nodoc
class __$$ComputedGeoHashP6ImplCopyWithImpl<$Res>
    extends _$GeoHashStateCopyWithImpl<$Res, _$ComputedGeoHashP6Impl>
    implements _$$ComputedGeoHashP6ImplCopyWith<$Res> {
  __$$ComputedGeoHashP6ImplCopyWithImpl(_$ComputedGeoHashP6Impl _value,
      $Res Function(_$ComputedGeoHashP6Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHashP6 = null,
  }) {
    return _then(_$ComputedGeoHashP6Impl(
      geoHashP6: null == geoHashP6
          ? _value.geoHashP6
          : geoHashP6 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ComputedGeoHashP6Impl implements _ComputedGeoHashP6 {
  const _$ComputedGeoHashP6Impl({required this.geoHashP6});

  @override
  final String geoHashP6;

  @override
  String toString() {
    return 'GeoHashState.computedGeoHashP6(geoHashP6: $geoHashP6)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComputedGeoHashP6Impl &&
            (identical(other.geoHashP6, geoHashP6) ||
                other.geoHashP6 == geoHashP6));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHashP6);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComputedGeoHashP6ImplCopyWith<_$ComputedGeoHashP6Impl> get copyWith =>
      __$$ComputedGeoHashP6ImplCopyWithImpl<_$ComputedGeoHashP6Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String geoHashP4) computedGeoHashP4,
    required TResult Function(String geoHashP6) computedGeoHashP6,
  }) {
    return computedGeoHashP6(geoHashP6);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String geoHashP4)? computedGeoHashP4,
    TResult? Function(String geoHashP6)? computedGeoHashP6,
  }) {
    return computedGeoHashP6?.call(geoHashP6);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String geoHashP4)? computedGeoHashP4,
    TResult Function(String geoHashP6)? computedGeoHashP6,
    required TResult orElse(),
  }) {
    if (computedGeoHashP6 != null) {
      return computedGeoHashP6(geoHashP6);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ComputedGeoHashP4 value) computedGeoHashP4,
    required TResult Function(_ComputedGeoHashP6 value) computedGeoHashP6,
  }) {
    return computedGeoHashP6(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ComputedGeoHashP4 value)? computedGeoHashP4,
    TResult? Function(_ComputedGeoHashP6 value)? computedGeoHashP6,
  }) {
    return computedGeoHashP6?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ComputedGeoHashP4 value)? computedGeoHashP4,
    TResult Function(_ComputedGeoHashP6 value)? computedGeoHashP6,
    required TResult orElse(),
  }) {
    if (computedGeoHashP6 != null) {
      return computedGeoHashP6(this);
    }
    return orElse();
  }
}

abstract class _ComputedGeoHashP6 implements GeoHashState {
  const factory _ComputedGeoHashP6({required final String geoHashP6}) =
      _$ComputedGeoHashP6Impl;

  String get geoHashP6;
  @JsonKey(ignore: true)
  _$$ComputedGeoHashP6ImplCopyWith<_$ComputedGeoHashP6Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
