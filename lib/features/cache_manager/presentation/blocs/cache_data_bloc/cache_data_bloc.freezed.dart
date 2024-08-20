// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CacheDataEvent {
  String get name => throw _privateConstructorUsedError;
  Object get content => throw _privateConstructorUsedError;
  CacheType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Object content, CacheType type)
        cacheData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, Object content, CacheType type)? cacheData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Object content, CacheType type)? cacheData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CacheData value) cacheData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CacheData value)? cacheData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CacheData value)? cacheData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CacheDataEventCopyWith<CacheDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheDataEventCopyWith<$Res> {
  factory $CacheDataEventCopyWith(
          CacheDataEvent value, $Res Function(CacheDataEvent) then) =
      _$CacheDataEventCopyWithImpl<$Res, CacheDataEvent>;
  @useResult
  $Res call({String name, Object content, CacheType type});
}

/// @nodoc
class _$CacheDataEventCopyWithImpl<$Res, $Val extends CacheDataEvent>
    implements $CacheDataEventCopyWith<$Res> {
  _$CacheDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content ? _value.content : content,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CacheType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CacheDataImplCopyWith<$Res>
    implements $CacheDataEventCopyWith<$Res> {
  factory _$$CacheDataImplCopyWith(
          _$CacheDataImpl value, $Res Function(_$CacheDataImpl) then) =
      __$$CacheDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Object content, CacheType type});
}

/// @nodoc
class __$$CacheDataImplCopyWithImpl<$Res>
    extends _$CacheDataEventCopyWithImpl<$Res, _$CacheDataImpl>
    implements _$$CacheDataImplCopyWith<$Res> {
  __$$CacheDataImplCopyWithImpl(
      _$CacheDataImpl _value, $Res Function(_$CacheDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_$CacheDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content ? _value.content : content,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CacheType,
    ));
  }
}

/// @nodoc

class _$CacheDataImpl implements _CacheData {
  const _$CacheDataImpl(
      {required this.name, required this.content, required this.type});

  @override
  final String name;
  @override
  final Object content;
  @override
  final CacheType type;

  @override
  String toString() {
    return 'CacheDataEvent.cacheData(name: $name, content: $content, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(content), type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheDataImplCopyWith<_$CacheDataImpl> get copyWith =>
      __$$CacheDataImplCopyWithImpl<_$CacheDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Object content, CacheType type)
        cacheData,
  }) {
    return cacheData(name, content, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, Object content, CacheType type)? cacheData,
  }) {
    return cacheData?.call(name, content, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Object content, CacheType type)? cacheData,
    required TResult orElse(),
  }) {
    if (cacheData != null) {
      return cacheData(name, content, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CacheData value) cacheData,
  }) {
    return cacheData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CacheData value)? cacheData,
  }) {
    return cacheData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CacheData value)? cacheData,
    required TResult orElse(),
  }) {
    if (cacheData != null) {
      return cacheData(this);
    }
    return orElse();
  }
}

abstract class _CacheData implements CacheDataEvent {
  const factory _CacheData(
      {required final String name,
      required final Object content,
      required final CacheType type}) = _$CacheDataImpl;

  @override
  String get name;
  @override
  Object get content;
  @override
  CacheType get type;
  @override
  @JsonKey(ignore: true)
  _$$CacheDataImplCopyWith<_$CacheDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CacheDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() caching,
    required TResult Function(String name, CacheType type) cached,
    required TResult Function() failedToCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? caching,
    TResult? Function(String name, CacheType type)? cached,
    TResult? Function()? failedToCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? caching,
    TResult Function(String name, CacheType type)? cached,
    TResult Function()? failedToCache,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Caching value) caching,
    required TResult Function(_Cached value) cached,
    required TResult Function(_FailedToCache value) failedToCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Caching value)? caching,
    TResult? Function(_Cached value)? cached,
    TResult? Function(_FailedToCache value)? failedToCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Caching value)? caching,
    TResult Function(_Cached value)? cached,
    TResult Function(_FailedToCache value)? failedToCache,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheDataStateCopyWith<$Res> {
  factory $CacheDataStateCopyWith(
          CacheDataState value, $Res Function(CacheDataState) then) =
      _$CacheDataStateCopyWithImpl<$Res, CacheDataState>;
}

/// @nodoc
class _$CacheDataStateCopyWithImpl<$Res, $Val extends CacheDataState>
    implements $CacheDataStateCopyWith<$Res> {
  _$CacheDataStateCopyWithImpl(this._value, this._then);

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
    extends _$CacheDataStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CacheDataState.initial()';
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
    required TResult Function() caching,
    required TResult Function(String name, CacheType type) cached,
    required TResult Function() failedToCache,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? caching,
    TResult? Function(String name, CacheType type)? cached,
    TResult? Function()? failedToCache,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? caching,
    TResult Function(String name, CacheType type)? cached,
    TResult Function()? failedToCache,
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
    required TResult Function(_Caching value) caching,
    required TResult Function(_Cached value) cached,
    required TResult Function(_FailedToCache value) failedToCache,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Caching value)? caching,
    TResult? Function(_Cached value)? cached,
    TResult? Function(_FailedToCache value)? failedToCache,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Caching value)? caching,
    TResult Function(_Cached value)? cached,
    TResult Function(_FailedToCache value)? failedToCache,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CacheDataState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CachingImplCopyWith<$Res> {
  factory _$$CachingImplCopyWith(
          _$CachingImpl value, $Res Function(_$CachingImpl) then) =
      __$$CachingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CachingImplCopyWithImpl<$Res>
    extends _$CacheDataStateCopyWithImpl<$Res, _$CachingImpl>
    implements _$$CachingImplCopyWith<$Res> {
  __$$CachingImplCopyWithImpl(
      _$CachingImpl _value, $Res Function(_$CachingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CachingImpl implements _Caching {
  const _$CachingImpl();

  @override
  String toString() {
    return 'CacheDataState.caching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CachingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() caching,
    required TResult Function(String name, CacheType type) cached,
    required TResult Function() failedToCache,
  }) {
    return caching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? caching,
    TResult? Function(String name, CacheType type)? cached,
    TResult? Function()? failedToCache,
  }) {
    return caching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? caching,
    TResult Function(String name, CacheType type)? cached,
    TResult Function()? failedToCache,
    required TResult orElse(),
  }) {
    if (caching != null) {
      return caching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Caching value) caching,
    required TResult Function(_Cached value) cached,
    required TResult Function(_FailedToCache value) failedToCache,
  }) {
    return caching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Caching value)? caching,
    TResult? Function(_Cached value)? cached,
    TResult? Function(_FailedToCache value)? failedToCache,
  }) {
    return caching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Caching value)? caching,
    TResult Function(_Cached value)? cached,
    TResult Function(_FailedToCache value)? failedToCache,
    required TResult orElse(),
  }) {
    if (caching != null) {
      return caching(this);
    }
    return orElse();
  }
}

abstract class _Caching implements CacheDataState {
  const factory _Caching() = _$CachingImpl;
}

/// @nodoc
abstract class _$$CachedImplCopyWith<$Res> {
  factory _$$CachedImplCopyWith(
          _$CachedImpl value, $Res Function(_$CachedImpl) then) =
      __$$CachedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, CacheType type});
}

/// @nodoc
class __$$CachedImplCopyWithImpl<$Res>
    extends _$CacheDataStateCopyWithImpl<$Res, _$CachedImpl>
    implements _$$CachedImplCopyWith<$Res> {
  __$$CachedImplCopyWithImpl(
      _$CachedImpl _value, $Res Function(_$CachedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$CachedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CacheType,
    ));
  }
}

/// @nodoc

class _$CachedImpl implements _Cached {
  const _$CachedImpl({required this.name, required this.type});

  @override
  final String name;
  @override
  final CacheType type;

  @override
  String toString() {
    return 'CacheDataState.cached(name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CachedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CachedImplCopyWith<_$CachedImpl> get copyWith =>
      __$$CachedImplCopyWithImpl<_$CachedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() caching,
    required TResult Function(String name, CacheType type) cached,
    required TResult Function() failedToCache,
  }) {
    return cached(name, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? caching,
    TResult? Function(String name, CacheType type)? cached,
    TResult? Function()? failedToCache,
  }) {
    return cached?.call(name, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? caching,
    TResult Function(String name, CacheType type)? cached,
    TResult Function()? failedToCache,
    required TResult orElse(),
  }) {
    if (cached != null) {
      return cached(name, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Caching value) caching,
    required TResult Function(_Cached value) cached,
    required TResult Function(_FailedToCache value) failedToCache,
  }) {
    return cached(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Caching value)? caching,
    TResult? Function(_Cached value)? cached,
    TResult? Function(_FailedToCache value)? failedToCache,
  }) {
    return cached?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Caching value)? caching,
    TResult Function(_Cached value)? cached,
    TResult Function(_FailedToCache value)? failedToCache,
    required TResult orElse(),
  }) {
    if (cached != null) {
      return cached(this);
    }
    return orElse();
  }
}

abstract class _Cached implements CacheDataState {
  const factory _Cached(
      {required final String name,
      required final CacheType type}) = _$CachedImpl;

  String get name;
  CacheType get type;
  @JsonKey(ignore: true)
  _$$CachedImplCopyWith<_$CachedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToCacheImplCopyWith<$Res> {
  factory _$$FailedToCacheImplCopyWith(
          _$FailedToCacheImpl value, $Res Function(_$FailedToCacheImpl) then) =
      __$$FailedToCacheImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToCacheImplCopyWithImpl<$Res>
    extends _$CacheDataStateCopyWithImpl<$Res, _$FailedToCacheImpl>
    implements _$$FailedToCacheImplCopyWith<$Res> {
  __$$FailedToCacheImplCopyWithImpl(
      _$FailedToCacheImpl _value, $Res Function(_$FailedToCacheImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedToCacheImpl implements _FailedToCache {
  const _$FailedToCacheImpl();

  @override
  String toString() {
    return 'CacheDataState.failedToCache()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedToCacheImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() caching,
    required TResult Function(String name, CacheType type) cached,
    required TResult Function() failedToCache,
  }) {
    return failedToCache();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? caching,
    TResult? Function(String name, CacheType type)? cached,
    TResult? Function()? failedToCache,
  }) {
    return failedToCache?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? caching,
    TResult Function(String name, CacheType type)? cached,
    TResult Function()? failedToCache,
    required TResult orElse(),
  }) {
    if (failedToCache != null) {
      return failedToCache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Caching value) caching,
    required TResult Function(_Cached value) cached,
    required TResult Function(_FailedToCache value) failedToCache,
  }) {
    return failedToCache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Caching value)? caching,
    TResult? Function(_Cached value)? cached,
    TResult? Function(_FailedToCache value)? failedToCache,
  }) {
    return failedToCache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Caching value)? caching,
    TResult Function(_Cached value)? cached,
    TResult Function(_FailedToCache value)? failedToCache,
    required TResult orElse(),
  }) {
    if (failedToCache != null) {
      return failedToCache(this);
    }
    return orElse();
  }
}

abstract class _FailedToCache implements CacheDataState {
  const factory _FailedToCache() = _$FailedToCacheImpl;
}
