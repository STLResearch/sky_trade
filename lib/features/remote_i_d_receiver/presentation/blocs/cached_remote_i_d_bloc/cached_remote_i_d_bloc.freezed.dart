// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_remote_i_d_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CachedRemoteIDEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RemoteIDEntity> remoteIDEntities,
            double? latitude, double? longitude)
        cacheRemoteIDs,
    required TResult Function() getCachedRemoteIDs,
    required TResult Function() clearCachedRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RemoteIDEntity> remoteIDEntities, double? latitude,
            double? longitude)?
        cacheRemoteIDs,
    TResult? Function()? getCachedRemoteIDs,
    TResult? Function()? clearCachedRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RemoteIDEntity> remoteIDEntities, double? latitude,
            double? longitude)?
        cacheRemoteIDs,
    TResult Function()? getCachedRemoteIDs,
    TResult Function()? clearCachedRemoteIDs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CacheRemoteIDs value) cacheRemoteIDs,
    required TResult Function(_GetCachedRemoteID value) getCachedRemoteIDs,
    required TResult Function(_ClearCachedRemoteIDs value) clearCachedRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CacheRemoteIDs value)? cacheRemoteIDs,
    TResult? Function(_GetCachedRemoteID value)? getCachedRemoteIDs,
    TResult? Function(_ClearCachedRemoteIDs value)? clearCachedRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CacheRemoteIDs value)? cacheRemoteIDs,
    TResult Function(_GetCachedRemoteID value)? getCachedRemoteIDs,
    TResult Function(_ClearCachedRemoteIDs value)? clearCachedRemoteIDs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedRemoteIDEventCopyWith<$Res> {
  factory $CachedRemoteIDEventCopyWith(
          CachedRemoteIDEvent value, $Res Function(CachedRemoteIDEvent) then) =
      _$CachedRemoteIDEventCopyWithImpl<$Res, CachedRemoteIDEvent>;
}

/// @nodoc
class _$CachedRemoteIDEventCopyWithImpl<$Res, $Val extends CachedRemoteIDEvent>
    implements $CachedRemoteIDEventCopyWith<$Res> {
  _$CachedRemoteIDEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CachedRemoteIDEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CacheRemoteIDsImplCopyWith<$Res> {
  factory _$$CacheRemoteIDsImplCopyWith(_$CacheRemoteIDsImpl value,
          $Res Function(_$CacheRemoteIDsImpl) then) =
      __$$CacheRemoteIDsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<RemoteIDEntity> remoteIDEntities,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$CacheRemoteIDsImplCopyWithImpl<$Res>
    extends _$CachedRemoteIDEventCopyWithImpl<$Res, _$CacheRemoteIDsImpl>
    implements _$$CacheRemoteIDsImplCopyWith<$Res> {
  __$$CacheRemoteIDsImplCopyWithImpl(
      _$CacheRemoteIDsImpl _value, $Res Function(_$CacheRemoteIDsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteIDEntities = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$CacheRemoteIDsImpl(
      remoteIDEntities: null == remoteIDEntities
          ? _value._remoteIDEntities
          : remoteIDEntities // ignore: cast_nullable_to_non_nullable
              as List<RemoteIDEntity>,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$CacheRemoteIDsImpl implements _CacheRemoteIDs {
  const _$CacheRemoteIDsImpl(
      {required final List<RemoteIDEntity> remoteIDEntities,
      required this.latitude,
      required this.longitude})
      : _remoteIDEntities = remoteIDEntities;

  final List<RemoteIDEntity> _remoteIDEntities;
  @override
  List<RemoteIDEntity> get remoteIDEntities {
    if (_remoteIDEntities is EqualUnmodifiableListView)
      return _remoteIDEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remoteIDEntities);
  }

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'CachedRemoteIDEvent.cacheRemoteIDs(remoteIDEntities: $remoteIDEntities, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheRemoteIDsImpl &&
            const DeepCollectionEquality()
                .equals(other._remoteIDEntities, _remoteIDEntities) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_remoteIDEntities),
      latitude,
      longitude);

  /// Create a copy of CachedRemoteIDEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheRemoteIDsImplCopyWith<_$CacheRemoteIDsImpl> get copyWith =>
      __$$CacheRemoteIDsImplCopyWithImpl<_$CacheRemoteIDsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RemoteIDEntity> remoteIDEntities,
            double? latitude, double? longitude)
        cacheRemoteIDs,
    required TResult Function() getCachedRemoteIDs,
    required TResult Function() clearCachedRemoteIDs,
  }) {
    return cacheRemoteIDs(remoteIDEntities, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RemoteIDEntity> remoteIDEntities, double? latitude,
            double? longitude)?
        cacheRemoteIDs,
    TResult? Function()? getCachedRemoteIDs,
    TResult? Function()? clearCachedRemoteIDs,
  }) {
    return cacheRemoteIDs?.call(remoteIDEntities, latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RemoteIDEntity> remoteIDEntities, double? latitude,
            double? longitude)?
        cacheRemoteIDs,
    TResult Function()? getCachedRemoteIDs,
    TResult Function()? clearCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (cacheRemoteIDs != null) {
      return cacheRemoteIDs(remoteIDEntities, latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CacheRemoteIDs value) cacheRemoteIDs,
    required TResult Function(_GetCachedRemoteID value) getCachedRemoteIDs,
    required TResult Function(_ClearCachedRemoteIDs value) clearCachedRemoteIDs,
  }) {
    return cacheRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CacheRemoteIDs value)? cacheRemoteIDs,
    TResult? Function(_GetCachedRemoteID value)? getCachedRemoteIDs,
    TResult? Function(_ClearCachedRemoteIDs value)? clearCachedRemoteIDs,
  }) {
    return cacheRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CacheRemoteIDs value)? cacheRemoteIDs,
    TResult Function(_GetCachedRemoteID value)? getCachedRemoteIDs,
    TResult Function(_ClearCachedRemoteIDs value)? clearCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (cacheRemoteIDs != null) {
      return cacheRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _CacheRemoteIDs implements CachedRemoteIDEvent {
  const factory _CacheRemoteIDs(
      {required final List<RemoteIDEntity> remoteIDEntities,
      required final double? latitude,
      required final double? longitude}) = _$CacheRemoteIDsImpl;

  List<RemoteIDEntity> get remoteIDEntities;
  double? get latitude;
  double? get longitude;

  /// Create a copy of CachedRemoteIDEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheRemoteIDsImplCopyWith<_$CacheRemoteIDsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCachedRemoteIDImplCopyWith<$Res> {
  factory _$$GetCachedRemoteIDImplCopyWith(_$GetCachedRemoteIDImpl value,
          $Res Function(_$GetCachedRemoteIDImpl) then) =
      __$$GetCachedRemoteIDImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCachedRemoteIDImplCopyWithImpl<$Res>
    extends _$CachedRemoteIDEventCopyWithImpl<$Res, _$GetCachedRemoteIDImpl>
    implements _$$GetCachedRemoteIDImplCopyWith<$Res> {
  __$$GetCachedRemoteIDImplCopyWithImpl(_$GetCachedRemoteIDImpl _value,
      $Res Function(_$GetCachedRemoteIDImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCachedRemoteIDImpl implements _GetCachedRemoteID {
  const _$GetCachedRemoteIDImpl();

  @override
  String toString() {
    return 'CachedRemoteIDEvent.getCachedRemoteIDs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCachedRemoteIDImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RemoteIDEntity> remoteIDEntities,
            double? latitude, double? longitude)
        cacheRemoteIDs,
    required TResult Function() getCachedRemoteIDs,
    required TResult Function() clearCachedRemoteIDs,
  }) {
    return getCachedRemoteIDs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RemoteIDEntity> remoteIDEntities, double? latitude,
            double? longitude)?
        cacheRemoteIDs,
    TResult? Function()? getCachedRemoteIDs,
    TResult? Function()? clearCachedRemoteIDs,
  }) {
    return getCachedRemoteIDs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RemoteIDEntity> remoteIDEntities, double? latitude,
            double? longitude)?
        cacheRemoteIDs,
    TResult Function()? getCachedRemoteIDs,
    TResult Function()? clearCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (getCachedRemoteIDs != null) {
      return getCachedRemoteIDs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CacheRemoteIDs value) cacheRemoteIDs,
    required TResult Function(_GetCachedRemoteID value) getCachedRemoteIDs,
    required TResult Function(_ClearCachedRemoteIDs value) clearCachedRemoteIDs,
  }) {
    return getCachedRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CacheRemoteIDs value)? cacheRemoteIDs,
    TResult? Function(_GetCachedRemoteID value)? getCachedRemoteIDs,
    TResult? Function(_ClearCachedRemoteIDs value)? clearCachedRemoteIDs,
  }) {
    return getCachedRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CacheRemoteIDs value)? cacheRemoteIDs,
    TResult Function(_GetCachedRemoteID value)? getCachedRemoteIDs,
    TResult Function(_ClearCachedRemoteIDs value)? clearCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (getCachedRemoteIDs != null) {
      return getCachedRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _GetCachedRemoteID implements CachedRemoteIDEvent {
  const factory _GetCachedRemoteID() = _$GetCachedRemoteIDImpl;
}

/// @nodoc
abstract class _$$ClearCachedRemoteIDsImplCopyWith<$Res> {
  factory _$$ClearCachedRemoteIDsImplCopyWith(_$ClearCachedRemoteIDsImpl value,
          $Res Function(_$ClearCachedRemoteIDsImpl) then) =
      __$$ClearCachedRemoteIDsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCachedRemoteIDsImplCopyWithImpl<$Res>
    extends _$CachedRemoteIDEventCopyWithImpl<$Res, _$ClearCachedRemoteIDsImpl>
    implements _$$ClearCachedRemoteIDsImplCopyWith<$Res> {
  __$$ClearCachedRemoteIDsImplCopyWithImpl(_$ClearCachedRemoteIDsImpl _value,
      $Res Function(_$ClearCachedRemoteIDsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCachedRemoteIDsImpl implements _ClearCachedRemoteIDs {
  const _$ClearCachedRemoteIDsImpl();

  @override
  String toString() {
    return 'CachedRemoteIDEvent.clearCachedRemoteIDs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCachedRemoteIDsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RemoteIDEntity> remoteIDEntities,
            double? latitude, double? longitude)
        cacheRemoteIDs,
    required TResult Function() getCachedRemoteIDs,
    required TResult Function() clearCachedRemoteIDs,
  }) {
    return clearCachedRemoteIDs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RemoteIDEntity> remoteIDEntities, double? latitude,
            double? longitude)?
        cacheRemoteIDs,
    TResult? Function()? getCachedRemoteIDs,
    TResult? Function()? clearCachedRemoteIDs,
  }) {
    return clearCachedRemoteIDs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RemoteIDEntity> remoteIDEntities, double? latitude,
            double? longitude)?
        cacheRemoteIDs,
    TResult Function()? getCachedRemoteIDs,
    TResult Function()? clearCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (clearCachedRemoteIDs != null) {
      return clearCachedRemoteIDs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CacheRemoteIDs value) cacheRemoteIDs,
    required TResult Function(_GetCachedRemoteID value) getCachedRemoteIDs,
    required TResult Function(_ClearCachedRemoteIDs value) clearCachedRemoteIDs,
  }) {
    return clearCachedRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CacheRemoteIDs value)? cacheRemoteIDs,
    TResult? Function(_GetCachedRemoteID value)? getCachedRemoteIDs,
    TResult? Function(_ClearCachedRemoteIDs value)? clearCachedRemoteIDs,
  }) {
    return clearCachedRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CacheRemoteIDs value)? cacheRemoteIDs,
    TResult Function(_GetCachedRemoteID value)? getCachedRemoteIDs,
    TResult Function(_ClearCachedRemoteIDs value)? clearCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (clearCachedRemoteIDs != null) {
      return clearCachedRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _ClearCachedRemoteIDs implements CachedRemoteIDEvent {
  const factory _ClearCachedRemoteIDs() = _$ClearCachedRemoteIDsImpl;
}

/// @nodoc
mixin _$CachedRemoteIDState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cachingRemoteIDs,
    required TResult Function() gettingCachedRemoteIDs,
    required TResult Function() clearingCachedRemoteIDs,
    required TResult Function() cachedRemoteIDs,
    required TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)
        gotCachedRemoteIDs,
    required TResult Function() clearedCachedRemoteIDs,
    required TResult Function() noCachedRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cachingRemoteIDs,
    TResult? Function()? gettingCachedRemoteIDs,
    TResult? Function()? clearingCachedRemoteIDs,
    TResult? Function()? cachedRemoteIDs,
    TResult? Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult? Function()? clearedCachedRemoteIDs,
    TResult? Function()? noCachedRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cachingRemoteIDs,
    TResult Function()? gettingCachedRemoteIDs,
    TResult Function()? clearingCachedRemoteIDs,
    TResult Function()? cachedRemoteIDs,
    TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult Function()? clearedCachedRemoteIDs,
    TResult Function()? noCachedRemoteIDs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CachingRemoteIDs value) cachingRemoteIDs,
    required TResult Function(_GettingCachedRemoteIDs value)
        gettingCachedRemoteIDs,
    required TResult Function(_ClearingCachedRemoteIDs value)
        clearingCachedRemoteIDs,
    required TResult Function(_CachedRemoteIDs value) cachedRemoteIDs,
    required TResult Function(_GotCachedRemoteIDs value) gotCachedRemoteIDs,
    required TResult Function(_ClearedCachedRemoteIDs value)
        clearedCachedRemoteIDs,
    required TResult Function(_NoCachedRemoteIDs value) noCachedRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult? Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult? Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult? Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult? Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult? Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult? Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedRemoteIDStateCopyWith<$Res> {
  factory $CachedRemoteIDStateCopyWith(
          CachedRemoteIDState value, $Res Function(CachedRemoteIDState) then) =
      _$CachedRemoteIDStateCopyWithImpl<$Res, CachedRemoteIDState>;
}

/// @nodoc
class _$CachedRemoteIDStateCopyWithImpl<$Res, $Val extends CachedRemoteIDState>
    implements $CachedRemoteIDStateCopyWith<$Res> {
  _$CachedRemoteIDStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CachedRemoteIDState
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
    extends _$CachedRemoteIDStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CachedRemoteIDState.initial()';
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
    required TResult Function() cachingRemoteIDs,
    required TResult Function() gettingCachedRemoteIDs,
    required TResult Function() clearingCachedRemoteIDs,
    required TResult Function() cachedRemoteIDs,
    required TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)
        gotCachedRemoteIDs,
    required TResult Function() clearedCachedRemoteIDs,
    required TResult Function() noCachedRemoteIDs,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cachingRemoteIDs,
    TResult? Function()? gettingCachedRemoteIDs,
    TResult? Function()? clearingCachedRemoteIDs,
    TResult? Function()? cachedRemoteIDs,
    TResult? Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult? Function()? clearedCachedRemoteIDs,
    TResult? Function()? noCachedRemoteIDs,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cachingRemoteIDs,
    TResult Function()? gettingCachedRemoteIDs,
    TResult Function()? clearingCachedRemoteIDs,
    TResult Function()? cachedRemoteIDs,
    TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult Function()? clearedCachedRemoteIDs,
    TResult Function()? noCachedRemoteIDs,
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
    required TResult Function(_CachingRemoteIDs value) cachingRemoteIDs,
    required TResult Function(_GettingCachedRemoteIDs value)
        gettingCachedRemoteIDs,
    required TResult Function(_ClearingCachedRemoteIDs value)
        clearingCachedRemoteIDs,
    required TResult Function(_CachedRemoteIDs value) cachedRemoteIDs,
    required TResult Function(_GotCachedRemoteIDs value) gotCachedRemoteIDs,
    required TResult Function(_ClearedCachedRemoteIDs value)
        clearedCachedRemoteIDs,
    required TResult Function(_NoCachedRemoteIDs value) noCachedRemoteIDs,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult? Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult? Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult? Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult? Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult? Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult? Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CachedRemoteIDState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CachingRemoteIDsImplCopyWith<$Res> {
  factory _$$CachingRemoteIDsImplCopyWith(_$CachingRemoteIDsImpl value,
          $Res Function(_$CachingRemoteIDsImpl) then) =
      __$$CachingRemoteIDsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CachingRemoteIDsImplCopyWithImpl<$Res>
    extends _$CachedRemoteIDStateCopyWithImpl<$Res, _$CachingRemoteIDsImpl>
    implements _$$CachingRemoteIDsImplCopyWith<$Res> {
  __$$CachingRemoteIDsImplCopyWithImpl(_$CachingRemoteIDsImpl _value,
      $Res Function(_$CachingRemoteIDsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CachingRemoteIDsImpl implements _CachingRemoteIDs {
  const _$CachingRemoteIDsImpl();

  @override
  String toString() {
    return 'CachedRemoteIDState.cachingRemoteIDs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CachingRemoteIDsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cachingRemoteIDs,
    required TResult Function() gettingCachedRemoteIDs,
    required TResult Function() clearingCachedRemoteIDs,
    required TResult Function() cachedRemoteIDs,
    required TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)
        gotCachedRemoteIDs,
    required TResult Function() clearedCachedRemoteIDs,
    required TResult Function() noCachedRemoteIDs,
  }) {
    return cachingRemoteIDs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cachingRemoteIDs,
    TResult? Function()? gettingCachedRemoteIDs,
    TResult? Function()? clearingCachedRemoteIDs,
    TResult? Function()? cachedRemoteIDs,
    TResult? Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult? Function()? clearedCachedRemoteIDs,
    TResult? Function()? noCachedRemoteIDs,
  }) {
    return cachingRemoteIDs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cachingRemoteIDs,
    TResult Function()? gettingCachedRemoteIDs,
    TResult Function()? clearingCachedRemoteIDs,
    TResult Function()? cachedRemoteIDs,
    TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult Function()? clearedCachedRemoteIDs,
    TResult Function()? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (cachingRemoteIDs != null) {
      return cachingRemoteIDs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CachingRemoteIDs value) cachingRemoteIDs,
    required TResult Function(_GettingCachedRemoteIDs value)
        gettingCachedRemoteIDs,
    required TResult Function(_ClearingCachedRemoteIDs value)
        clearingCachedRemoteIDs,
    required TResult Function(_CachedRemoteIDs value) cachedRemoteIDs,
    required TResult Function(_GotCachedRemoteIDs value) gotCachedRemoteIDs,
    required TResult Function(_ClearedCachedRemoteIDs value)
        clearedCachedRemoteIDs,
    required TResult Function(_NoCachedRemoteIDs value) noCachedRemoteIDs,
  }) {
    return cachingRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult? Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult? Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult? Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult? Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult? Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult? Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
  }) {
    return cachingRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (cachingRemoteIDs != null) {
      return cachingRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _CachingRemoteIDs implements CachedRemoteIDState {
  const factory _CachingRemoteIDs() = _$CachingRemoteIDsImpl;
}

/// @nodoc
abstract class _$$GettingCachedRemoteIDsImplCopyWith<$Res> {
  factory _$$GettingCachedRemoteIDsImplCopyWith(
          _$GettingCachedRemoteIDsImpl value,
          $Res Function(_$GettingCachedRemoteIDsImpl) then) =
      __$$GettingCachedRemoteIDsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingCachedRemoteIDsImplCopyWithImpl<$Res>
    extends _$CachedRemoteIDStateCopyWithImpl<$Res,
        _$GettingCachedRemoteIDsImpl>
    implements _$$GettingCachedRemoteIDsImplCopyWith<$Res> {
  __$$GettingCachedRemoteIDsImplCopyWithImpl(
      _$GettingCachedRemoteIDsImpl _value,
      $Res Function(_$GettingCachedRemoteIDsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingCachedRemoteIDsImpl implements _GettingCachedRemoteIDs {
  const _$GettingCachedRemoteIDsImpl();

  @override
  String toString() {
    return 'CachedRemoteIDState.gettingCachedRemoteIDs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingCachedRemoteIDsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cachingRemoteIDs,
    required TResult Function() gettingCachedRemoteIDs,
    required TResult Function() clearingCachedRemoteIDs,
    required TResult Function() cachedRemoteIDs,
    required TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)
        gotCachedRemoteIDs,
    required TResult Function() clearedCachedRemoteIDs,
    required TResult Function() noCachedRemoteIDs,
  }) {
    return gettingCachedRemoteIDs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cachingRemoteIDs,
    TResult? Function()? gettingCachedRemoteIDs,
    TResult? Function()? clearingCachedRemoteIDs,
    TResult? Function()? cachedRemoteIDs,
    TResult? Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult? Function()? clearedCachedRemoteIDs,
    TResult? Function()? noCachedRemoteIDs,
  }) {
    return gettingCachedRemoteIDs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cachingRemoteIDs,
    TResult Function()? gettingCachedRemoteIDs,
    TResult Function()? clearingCachedRemoteIDs,
    TResult Function()? cachedRemoteIDs,
    TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult Function()? clearedCachedRemoteIDs,
    TResult Function()? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (gettingCachedRemoteIDs != null) {
      return gettingCachedRemoteIDs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CachingRemoteIDs value) cachingRemoteIDs,
    required TResult Function(_GettingCachedRemoteIDs value)
        gettingCachedRemoteIDs,
    required TResult Function(_ClearingCachedRemoteIDs value)
        clearingCachedRemoteIDs,
    required TResult Function(_CachedRemoteIDs value) cachedRemoteIDs,
    required TResult Function(_GotCachedRemoteIDs value) gotCachedRemoteIDs,
    required TResult Function(_ClearedCachedRemoteIDs value)
        clearedCachedRemoteIDs,
    required TResult Function(_NoCachedRemoteIDs value) noCachedRemoteIDs,
  }) {
    return gettingCachedRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult? Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult? Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult? Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult? Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult? Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult? Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
  }) {
    return gettingCachedRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (gettingCachedRemoteIDs != null) {
      return gettingCachedRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _GettingCachedRemoteIDs implements CachedRemoteIDState {
  const factory _GettingCachedRemoteIDs() = _$GettingCachedRemoteIDsImpl;
}

/// @nodoc
abstract class _$$ClearingCachedRemoteIDsImplCopyWith<$Res> {
  factory _$$ClearingCachedRemoteIDsImplCopyWith(
          _$ClearingCachedRemoteIDsImpl value,
          $Res Function(_$ClearingCachedRemoteIDsImpl) then) =
      __$$ClearingCachedRemoteIDsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearingCachedRemoteIDsImplCopyWithImpl<$Res>
    extends _$CachedRemoteIDStateCopyWithImpl<$Res,
        _$ClearingCachedRemoteIDsImpl>
    implements _$$ClearingCachedRemoteIDsImplCopyWith<$Res> {
  __$$ClearingCachedRemoteIDsImplCopyWithImpl(
      _$ClearingCachedRemoteIDsImpl _value,
      $Res Function(_$ClearingCachedRemoteIDsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearingCachedRemoteIDsImpl implements _ClearingCachedRemoteIDs {
  const _$ClearingCachedRemoteIDsImpl();

  @override
  String toString() {
    return 'CachedRemoteIDState.clearingCachedRemoteIDs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearingCachedRemoteIDsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cachingRemoteIDs,
    required TResult Function() gettingCachedRemoteIDs,
    required TResult Function() clearingCachedRemoteIDs,
    required TResult Function() cachedRemoteIDs,
    required TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)
        gotCachedRemoteIDs,
    required TResult Function() clearedCachedRemoteIDs,
    required TResult Function() noCachedRemoteIDs,
  }) {
    return clearingCachedRemoteIDs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cachingRemoteIDs,
    TResult? Function()? gettingCachedRemoteIDs,
    TResult? Function()? clearingCachedRemoteIDs,
    TResult? Function()? cachedRemoteIDs,
    TResult? Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult? Function()? clearedCachedRemoteIDs,
    TResult? Function()? noCachedRemoteIDs,
  }) {
    return clearingCachedRemoteIDs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cachingRemoteIDs,
    TResult Function()? gettingCachedRemoteIDs,
    TResult Function()? clearingCachedRemoteIDs,
    TResult Function()? cachedRemoteIDs,
    TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult Function()? clearedCachedRemoteIDs,
    TResult Function()? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (clearingCachedRemoteIDs != null) {
      return clearingCachedRemoteIDs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CachingRemoteIDs value) cachingRemoteIDs,
    required TResult Function(_GettingCachedRemoteIDs value)
        gettingCachedRemoteIDs,
    required TResult Function(_ClearingCachedRemoteIDs value)
        clearingCachedRemoteIDs,
    required TResult Function(_CachedRemoteIDs value) cachedRemoteIDs,
    required TResult Function(_GotCachedRemoteIDs value) gotCachedRemoteIDs,
    required TResult Function(_ClearedCachedRemoteIDs value)
        clearedCachedRemoteIDs,
    required TResult Function(_NoCachedRemoteIDs value) noCachedRemoteIDs,
  }) {
    return clearingCachedRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult? Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult? Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult? Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult? Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult? Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult? Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
  }) {
    return clearingCachedRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (clearingCachedRemoteIDs != null) {
      return clearingCachedRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _ClearingCachedRemoteIDs implements CachedRemoteIDState {
  const factory _ClearingCachedRemoteIDs() = _$ClearingCachedRemoteIDsImpl;
}

/// @nodoc
abstract class _$$CachedRemoteIDsImplCopyWith<$Res> {
  factory _$$CachedRemoteIDsImplCopyWith(_$CachedRemoteIDsImpl value,
          $Res Function(_$CachedRemoteIDsImpl) then) =
      __$$CachedRemoteIDsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CachedRemoteIDsImplCopyWithImpl<$Res>
    extends _$CachedRemoteIDStateCopyWithImpl<$Res, _$CachedRemoteIDsImpl>
    implements _$$CachedRemoteIDsImplCopyWith<$Res> {
  __$$CachedRemoteIDsImplCopyWithImpl(
      _$CachedRemoteIDsImpl _value, $Res Function(_$CachedRemoteIDsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CachedRemoteIDsImpl implements _CachedRemoteIDs {
  const _$CachedRemoteIDsImpl();

  @override
  String toString() {
    return 'CachedRemoteIDState.cachedRemoteIDs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CachedRemoteIDsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cachingRemoteIDs,
    required TResult Function() gettingCachedRemoteIDs,
    required TResult Function() clearingCachedRemoteIDs,
    required TResult Function() cachedRemoteIDs,
    required TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)
        gotCachedRemoteIDs,
    required TResult Function() clearedCachedRemoteIDs,
    required TResult Function() noCachedRemoteIDs,
  }) {
    return cachedRemoteIDs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cachingRemoteIDs,
    TResult? Function()? gettingCachedRemoteIDs,
    TResult? Function()? clearingCachedRemoteIDs,
    TResult? Function()? cachedRemoteIDs,
    TResult? Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult? Function()? clearedCachedRemoteIDs,
    TResult? Function()? noCachedRemoteIDs,
  }) {
    return cachedRemoteIDs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cachingRemoteIDs,
    TResult Function()? gettingCachedRemoteIDs,
    TResult Function()? clearingCachedRemoteIDs,
    TResult Function()? cachedRemoteIDs,
    TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult Function()? clearedCachedRemoteIDs,
    TResult Function()? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (cachedRemoteIDs != null) {
      return cachedRemoteIDs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CachingRemoteIDs value) cachingRemoteIDs,
    required TResult Function(_GettingCachedRemoteIDs value)
        gettingCachedRemoteIDs,
    required TResult Function(_ClearingCachedRemoteIDs value)
        clearingCachedRemoteIDs,
    required TResult Function(_CachedRemoteIDs value) cachedRemoteIDs,
    required TResult Function(_GotCachedRemoteIDs value) gotCachedRemoteIDs,
    required TResult Function(_ClearedCachedRemoteIDs value)
        clearedCachedRemoteIDs,
    required TResult Function(_NoCachedRemoteIDs value) noCachedRemoteIDs,
  }) {
    return cachedRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult? Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult? Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult? Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult? Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult? Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult? Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
  }) {
    return cachedRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (cachedRemoteIDs != null) {
      return cachedRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _CachedRemoteIDs implements CachedRemoteIDState {
  const factory _CachedRemoteIDs() = _$CachedRemoteIDsImpl;
}

/// @nodoc
abstract class _$$GotCachedRemoteIDsImplCopyWith<$Res> {
  factory _$$GotCachedRemoteIDsImplCopyWith(_$GotCachedRemoteIDsImpl value,
          $Res Function(_$GotCachedRemoteIDsImpl) then) =
      __$$GotCachedRemoteIDsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<GeolocatedRemoteIDCollectionEntity>
          geolocatedRemoteIDCollectionEntities});
}

/// @nodoc
class __$$GotCachedRemoteIDsImplCopyWithImpl<$Res>
    extends _$CachedRemoteIDStateCopyWithImpl<$Res, _$GotCachedRemoteIDsImpl>
    implements _$$GotCachedRemoteIDsImplCopyWith<$Res> {
  __$$GotCachedRemoteIDsImplCopyWithImpl(_$GotCachedRemoteIDsImpl _value,
      $Res Function(_$GotCachedRemoteIDsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geolocatedRemoteIDCollectionEntities = null,
  }) {
    return _then(_$GotCachedRemoteIDsImpl(
      geolocatedRemoteIDCollectionEntities: null ==
              geolocatedRemoteIDCollectionEntities
          ? _value._geolocatedRemoteIDCollectionEntities
          : geolocatedRemoteIDCollectionEntities // ignore: cast_nullable_to_non_nullable
              as List<GeolocatedRemoteIDCollectionEntity>,
    ));
  }
}

/// @nodoc

class _$GotCachedRemoteIDsImpl implements _GotCachedRemoteIDs {
  const _$GotCachedRemoteIDsImpl(
      {required final List<GeolocatedRemoteIDCollectionEntity>
          geolocatedRemoteIDCollectionEntities})
      : _geolocatedRemoteIDCollectionEntities =
            geolocatedRemoteIDCollectionEntities;

  final List<GeolocatedRemoteIDCollectionEntity>
      _geolocatedRemoteIDCollectionEntities;
  @override
  List<GeolocatedRemoteIDCollectionEntity>
      get geolocatedRemoteIDCollectionEntities {
    if (_geolocatedRemoteIDCollectionEntities is EqualUnmodifiableListView)
      return _geolocatedRemoteIDCollectionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_geolocatedRemoteIDCollectionEntities);
  }

  @override
  String toString() {
    return 'CachedRemoteIDState.gotCachedRemoteIDs(geolocatedRemoteIDCollectionEntities: $geolocatedRemoteIDCollectionEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotCachedRemoteIDsImpl &&
            const DeepCollectionEquality().equals(
                other._geolocatedRemoteIDCollectionEntities,
                _geolocatedRemoteIDCollectionEntities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality()
          .hash(_geolocatedRemoteIDCollectionEntities));

  /// Create a copy of CachedRemoteIDState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotCachedRemoteIDsImplCopyWith<_$GotCachedRemoteIDsImpl> get copyWith =>
      __$$GotCachedRemoteIDsImplCopyWithImpl<_$GotCachedRemoteIDsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cachingRemoteIDs,
    required TResult Function() gettingCachedRemoteIDs,
    required TResult Function() clearingCachedRemoteIDs,
    required TResult Function() cachedRemoteIDs,
    required TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)
        gotCachedRemoteIDs,
    required TResult Function() clearedCachedRemoteIDs,
    required TResult Function() noCachedRemoteIDs,
  }) {
    return gotCachedRemoteIDs(geolocatedRemoteIDCollectionEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cachingRemoteIDs,
    TResult? Function()? gettingCachedRemoteIDs,
    TResult? Function()? clearingCachedRemoteIDs,
    TResult? Function()? cachedRemoteIDs,
    TResult? Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult? Function()? clearedCachedRemoteIDs,
    TResult? Function()? noCachedRemoteIDs,
  }) {
    return gotCachedRemoteIDs?.call(geolocatedRemoteIDCollectionEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cachingRemoteIDs,
    TResult Function()? gettingCachedRemoteIDs,
    TResult Function()? clearingCachedRemoteIDs,
    TResult Function()? cachedRemoteIDs,
    TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult Function()? clearedCachedRemoteIDs,
    TResult Function()? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (gotCachedRemoteIDs != null) {
      return gotCachedRemoteIDs(geolocatedRemoteIDCollectionEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CachingRemoteIDs value) cachingRemoteIDs,
    required TResult Function(_GettingCachedRemoteIDs value)
        gettingCachedRemoteIDs,
    required TResult Function(_ClearingCachedRemoteIDs value)
        clearingCachedRemoteIDs,
    required TResult Function(_CachedRemoteIDs value) cachedRemoteIDs,
    required TResult Function(_GotCachedRemoteIDs value) gotCachedRemoteIDs,
    required TResult Function(_ClearedCachedRemoteIDs value)
        clearedCachedRemoteIDs,
    required TResult Function(_NoCachedRemoteIDs value) noCachedRemoteIDs,
  }) {
    return gotCachedRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult? Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult? Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult? Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult? Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult? Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult? Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
  }) {
    return gotCachedRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (gotCachedRemoteIDs != null) {
      return gotCachedRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _GotCachedRemoteIDs implements CachedRemoteIDState {
  const factory _GotCachedRemoteIDs(
      {required final List<GeolocatedRemoteIDCollectionEntity>
          geolocatedRemoteIDCollectionEntities}) = _$GotCachedRemoteIDsImpl;

  List<GeolocatedRemoteIDCollectionEntity>
      get geolocatedRemoteIDCollectionEntities;

  /// Create a copy of CachedRemoteIDState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotCachedRemoteIDsImplCopyWith<_$GotCachedRemoteIDsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearedCachedRemoteIDsImplCopyWith<$Res> {
  factory _$$ClearedCachedRemoteIDsImplCopyWith(
          _$ClearedCachedRemoteIDsImpl value,
          $Res Function(_$ClearedCachedRemoteIDsImpl) then) =
      __$$ClearedCachedRemoteIDsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearedCachedRemoteIDsImplCopyWithImpl<$Res>
    extends _$CachedRemoteIDStateCopyWithImpl<$Res,
        _$ClearedCachedRemoteIDsImpl>
    implements _$$ClearedCachedRemoteIDsImplCopyWith<$Res> {
  __$$ClearedCachedRemoteIDsImplCopyWithImpl(
      _$ClearedCachedRemoteIDsImpl _value,
      $Res Function(_$ClearedCachedRemoteIDsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearedCachedRemoteIDsImpl implements _ClearedCachedRemoteIDs {
  const _$ClearedCachedRemoteIDsImpl();

  @override
  String toString() {
    return 'CachedRemoteIDState.clearedCachedRemoteIDs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearedCachedRemoteIDsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cachingRemoteIDs,
    required TResult Function() gettingCachedRemoteIDs,
    required TResult Function() clearingCachedRemoteIDs,
    required TResult Function() cachedRemoteIDs,
    required TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)
        gotCachedRemoteIDs,
    required TResult Function() clearedCachedRemoteIDs,
    required TResult Function() noCachedRemoteIDs,
  }) {
    return clearedCachedRemoteIDs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cachingRemoteIDs,
    TResult? Function()? gettingCachedRemoteIDs,
    TResult? Function()? clearingCachedRemoteIDs,
    TResult? Function()? cachedRemoteIDs,
    TResult? Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult? Function()? clearedCachedRemoteIDs,
    TResult? Function()? noCachedRemoteIDs,
  }) {
    return clearedCachedRemoteIDs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cachingRemoteIDs,
    TResult Function()? gettingCachedRemoteIDs,
    TResult Function()? clearingCachedRemoteIDs,
    TResult Function()? cachedRemoteIDs,
    TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult Function()? clearedCachedRemoteIDs,
    TResult Function()? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (clearedCachedRemoteIDs != null) {
      return clearedCachedRemoteIDs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CachingRemoteIDs value) cachingRemoteIDs,
    required TResult Function(_GettingCachedRemoteIDs value)
        gettingCachedRemoteIDs,
    required TResult Function(_ClearingCachedRemoteIDs value)
        clearingCachedRemoteIDs,
    required TResult Function(_CachedRemoteIDs value) cachedRemoteIDs,
    required TResult Function(_GotCachedRemoteIDs value) gotCachedRemoteIDs,
    required TResult Function(_ClearedCachedRemoteIDs value)
        clearedCachedRemoteIDs,
    required TResult Function(_NoCachedRemoteIDs value) noCachedRemoteIDs,
  }) {
    return clearedCachedRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult? Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult? Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult? Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult? Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult? Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult? Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
  }) {
    return clearedCachedRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (clearedCachedRemoteIDs != null) {
      return clearedCachedRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _ClearedCachedRemoteIDs implements CachedRemoteIDState {
  const factory _ClearedCachedRemoteIDs() = _$ClearedCachedRemoteIDsImpl;
}

/// @nodoc
abstract class _$$NoCachedRemoteIDsImplCopyWith<$Res> {
  factory _$$NoCachedRemoteIDsImplCopyWith(_$NoCachedRemoteIDsImpl value,
          $Res Function(_$NoCachedRemoteIDsImpl) then) =
      __$$NoCachedRemoteIDsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoCachedRemoteIDsImplCopyWithImpl<$Res>
    extends _$CachedRemoteIDStateCopyWithImpl<$Res, _$NoCachedRemoteIDsImpl>
    implements _$$NoCachedRemoteIDsImplCopyWith<$Res> {
  __$$NoCachedRemoteIDsImplCopyWithImpl(_$NoCachedRemoteIDsImpl _value,
      $Res Function(_$NoCachedRemoteIDsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CachedRemoteIDState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoCachedRemoteIDsImpl implements _NoCachedRemoteIDs {
  const _$NoCachedRemoteIDsImpl();

  @override
  String toString() {
    return 'CachedRemoteIDState.noCachedRemoteIDs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoCachedRemoteIDsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cachingRemoteIDs,
    required TResult Function() gettingCachedRemoteIDs,
    required TResult Function() clearingCachedRemoteIDs,
    required TResult Function() cachedRemoteIDs,
    required TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)
        gotCachedRemoteIDs,
    required TResult Function() clearedCachedRemoteIDs,
    required TResult Function() noCachedRemoteIDs,
  }) {
    return noCachedRemoteIDs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cachingRemoteIDs,
    TResult? Function()? gettingCachedRemoteIDs,
    TResult? Function()? clearingCachedRemoteIDs,
    TResult? Function()? cachedRemoteIDs,
    TResult? Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult? Function()? clearedCachedRemoteIDs,
    TResult? Function()? noCachedRemoteIDs,
  }) {
    return noCachedRemoteIDs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cachingRemoteIDs,
    TResult Function()? gettingCachedRemoteIDs,
    TResult Function()? clearingCachedRemoteIDs,
    TResult Function()? cachedRemoteIDs,
    TResult Function(
            List<GeolocatedRemoteIDCollectionEntity>
                geolocatedRemoteIDCollectionEntities)?
        gotCachedRemoteIDs,
    TResult Function()? clearedCachedRemoteIDs,
    TResult Function()? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (noCachedRemoteIDs != null) {
      return noCachedRemoteIDs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CachingRemoteIDs value) cachingRemoteIDs,
    required TResult Function(_GettingCachedRemoteIDs value)
        gettingCachedRemoteIDs,
    required TResult Function(_ClearingCachedRemoteIDs value)
        clearingCachedRemoteIDs,
    required TResult Function(_CachedRemoteIDs value) cachedRemoteIDs,
    required TResult Function(_GotCachedRemoteIDs value) gotCachedRemoteIDs,
    required TResult Function(_ClearedCachedRemoteIDs value)
        clearedCachedRemoteIDs,
    required TResult Function(_NoCachedRemoteIDs value) noCachedRemoteIDs,
  }) {
    return noCachedRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult? Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult? Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult? Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult? Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult? Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult? Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
  }) {
    return noCachedRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CachingRemoteIDs value)? cachingRemoteIDs,
    TResult Function(_GettingCachedRemoteIDs value)? gettingCachedRemoteIDs,
    TResult Function(_ClearingCachedRemoteIDs value)? clearingCachedRemoteIDs,
    TResult Function(_CachedRemoteIDs value)? cachedRemoteIDs,
    TResult Function(_GotCachedRemoteIDs value)? gotCachedRemoteIDs,
    TResult Function(_ClearedCachedRemoteIDs value)? clearedCachedRemoteIDs,
    TResult Function(_NoCachedRemoteIDs value)? noCachedRemoteIDs,
    required TResult orElse(),
  }) {
    if (noCachedRemoteIDs != null) {
      return noCachedRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _NoCachedRemoteIDs implements CachedRemoteIDState {
  const factory _NoCachedRemoteIDs() = _$NoCachedRemoteIDsImpl;
}
