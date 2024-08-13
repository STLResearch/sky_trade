// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CachedDataEvent {
  String get name => throw _privateConstructorUsedError;
  CacheType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, CacheType type) getCachedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, CacheType type)? getCachedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, CacheType type)? getCachedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCachedData value) getCachedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCachedData value)? getCachedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCachedData value)? getCachedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CachedDataEventCopyWith<CachedDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedDataEventCopyWith<$Res> {
  factory $CachedDataEventCopyWith(
          CachedDataEvent value, $Res Function(CachedDataEvent) then) =
      _$CachedDataEventCopyWithImpl<$Res, CachedDataEvent>;
  @useResult
  $Res call({String name, CacheType type});
}

/// @nodoc
class _$CachedDataEventCopyWithImpl<$Res, $Val extends CachedDataEvent>
    implements $CachedDataEventCopyWith<$Res> {
  _$CachedDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CacheType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCachedDataImplCopyWith<$Res>
    implements $CachedDataEventCopyWith<$Res> {
  factory _$$GetCachedDataImplCopyWith(
          _$GetCachedDataImpl value, $Res Function(_$GetCachedDataImpl) then) =
      __$$GetCachedDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, CacheType type});
}

/// @nodoc
class __$$GetCachedDataImplCopyWithImpl<$Res>
    extends _$CachedDataEventCopyWithImpl<$Res, _$GetCachedDataImpl>
    implements _$$GetCachedDataImplCopyWith<$Res> {
  __$$GetCachedDataImplCopyWithImpl(
      _$GetCachedDataImpl _value, $Res Function(_$GetCachedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$GetCachedDataImpl(
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

class _$GetCachedDataImpl implements _GetCachedData {
  const _$GetCachedDataImpl({required this.name, required this.type});

  @override
  final String name;
  @override
  final CacheType type;

  @override
  String toString() {
    return 'CachedDataEvent.getCachedData(name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCachedDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCachedDataImplCopyWith<_$GetCachedDataImpl> get copyWith =>
      __$$GetCachedDataImplCopyWithImpl<_$GetCachedDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, CacheType type) getCachedData,
  }) {
    return getCachedData(name, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, CacheType type)? getCachedData,
  }) {
    return getCachedData?.call(name, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, CacheType type)? getCachedData,
    required TResult orElse(),
  }) {
    if (getCachedData != null) {
      return getCachedData(name, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCachedData value) getCachedData,
  }) {
    return getCachedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCachedData value)? getCachedData,
  }) {
    return getCachedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCachedData value)? getCachedData,
    required TResult orElse(),
  }) {
    if (getCachedData != null) {
      return getCachedData(this);
    }
    return orElse();
  }
}

abstract class _GetCachedData implements CachedDataEvent {
  const factory _GetCachedData(
      {required final String name,
      required final CacheType type}) = _$GetCachedDataImpl;

  @override
  String get name;
  @override
  CacheType get type;
  @override
  @JsonKey(ignore: true)
  _$$GetCachedDataImplCopyWith<_$GetCachedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CachedDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CacheEntity cacheEntity) cacheExists,
    required TResult Function() cacheNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CacheEntity cacheEntity)? cacheExists,
    TResult? Function()? cacheNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CacheEntity cacheEntity)? cacheExists,
    TResult Function()? cacheNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CacheExists value) cacheExists,
    required TResult Function(_CacheNotExist value) cacheNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CacheExists value)? cacheExists,
    TResult? Function(_CacheNotExist value)? cacheNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CacheExists value)? cacheExists,
    TResult Function(_CacheNotExist value)? cacheNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedDataStateCopyWith<$Res> {
  factory $CachedDataStateCopyWith(
          CachedDataState value, $Res Function(CachedDataState) then) =
      _$CachedDataStateCopyWithImpl<$Res, CachedDataState>;
}

/// @nodoc
class _$CachedDataStateCopyWithImpl<$Res, $Val extends CachedDataState>
    implements $CachedDataStateCopyWith<$Res> {
  _$CachedDataStateCopyWithImpl(this._value, this._then);

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
    extends _$CachedDataStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CachedDataState.initial()';
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
    required TResult Function(CacheEntity cacheEntity) cacheExists,
    required TResult Function() cacheNotExist,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CacheEntity cacheEntity)? cacheExists,
    TResult? Function()? cacheNotExist,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CacheEntity cacheEntity)? cacheExists,
    TResult Function()? cacheNotExist,
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
    required TResult Function(_CacheExists value) cacheExists,
    required TResult Function(_CacheNotExist value) cacheNotExist,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CacheExists value)? cacheExists,
    TResult? Function(_CacheNotExist value)? cacheNotExist,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CacheExists value)? cacheExists,
    TResult Function(_CacheNotExist value)? cacheNotExist,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CachedDataState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CacheExistsImplCopyWith<$Res> {
  factory _$$CacheExistsImplCopyWith(
          _$CacheExistsImpl value, $Res Function(_$CacheExistsImpl) then) =
      __$$CacheExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CacheEntity cacheEntity});
}

/// @nodoc
class __$$CacheExistsImplCopyWithImpl<$Res>
    extends _$CachedDataStateCopyWithImpl<$Res, _$CacheExistsImpl>
    implements _$$CacheExistsImplCopyWith<$Res> {
  __$$CacheExistsImplCopyWithImpl(
      _$CacheExistsImpl _value, $Res Function(_$CacheExistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cacheEntity = null,
  }) {
    return _then(_$CacheExistsImpl(
      cacheEntity: null == cacheEntity
          ? _value.cacheEntity
          : cacheEntity // ignore: cast_nullable_to_non_nullable
              as CacheEntity,
    ));
  }
}

/// @nodoc

class _$CacheExistsImpl implements _CacheExists {
  const _$CacheExistsImpl({required this.cacheEntity});

  @override
  final CacheEntity cacheEntity;

  @override
  String toString() {
    return 'CachedDataState.cacheExists(cacheEntity: $cacheEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheExistsImpl &&
            (identical(other.cacheEntity, cacheEntity) ||
                other.cacheEntity == cacheEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cacheEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheExistsImplCopyWith<_$CacheExistsImpl> get copyWith =>
      __$$CacheExistsImplCopyWithImpl<_$CacheExistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CacheEntity cacheEntity) cacheExists,
    required TResult Function() cacheNotExist,
  }) {
    return cacheExists(cacheEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CacheEntity cacheEntity)? cacheExists,
    TResult? Function()? cacheNotExist,
  }) {
    return cacheExists?.call(cacheEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CacheEntity cacheEntity)? cacheExists,
    TResult Function()? cacheNotExist,
    required TResult orElse(),
  }) {
    if (cacheExists != null) {
      return cacheExists(cacheEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CacheExists value) cacheExists,
    required TResult Function(_CacheNotExist value) cacheNotExist,
  }) {
    return cacheExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CacheExists value)? cacheExists,
    TResult? Function(_CacheNotExist value)? cacheNotExist,
  }) {
    return cacheExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CacheExists value)? cacheExists,
    TResult Function(_CacheNotExist value)? cacheNotExist,
    required TResult orElse(),
  }) {
    if (cacheExists != null) {
      return cacheExists(this);
    }
    return orElse();
  }
}

abstract class _CacheExists implements CachedDataState {
  const factory _CacheExists({required final CacheEntity cacheEntity}) =
      _$CacheExistsImpl;

  CacheEntity get cacheEntity;
  @JsonKey(ignore: true)
  _$$CacheExistsImplCopyWith<_$CacheExistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheNotExistImplCopyWith<$Res> {
  factory _$$CacheNotExistImplCopyWith(
          _$CacheNotExistImpl value, $Res Function(_$CacheNotExistImpl) then) =
      __$$CacheNotExistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CacheNotExistImplCopyWithImpl<$Res>
    extends _$CachedDataStateCopyWithImpl<$Res, _$CacheNotExistImpl>
    implements _$$CacheNotExistImplCopyWith<$Res> {
  __$$CacheNotExistImplCopyWithImpl(
      _$CacheNotExistImpl _value, $Res Function(_$CacheNotExistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheNotExistImpl implements _CacheNotExist {
  const _$CacheNotExistImpl();

  @override
  String toString() {
    return 'CachedDataState.cacheNotExist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheNotExistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CacheEntity cacheEntity) cacheExists,
    required TResult Function() cacheNotExist,
  }) {
    return cacheNotExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CacheEntity cacheEntity)? cacheExists,
    TResult? Function()? cacheNotExist,
  }) {
    return cacheNotExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CacheEntity cacheEntity)? cacheExists,
    TResult Function()? cacheNotExist,
    required TResult orElse(),
  }) {
    if (cacheNotExist != null) {
      return cacheNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CacheExists value) cacheExists,
    required TResult Function(_CacheNotExist value) cacheNotExist,
  }) {
    return cacheNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CacheExists value)? cacheExists,
    TResult? Function(_CacheNotExist value)? cacheNotExist,
  }) {
    return cacheNotExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CacheExists value)? cacheExists,
    TResult Function(_CacheNotExist value)? cacheNotExist,
    required TResult orElse(),
  }) {
    if (cacheNotExist != null) {
      return cacheNotExist(this);
    }
    return orElse();
  }
}

abstract class _CacheNotExist implements CachedDataState {
  const factory _CacheNotExist() = _$CacheNotExistImpl;
}
