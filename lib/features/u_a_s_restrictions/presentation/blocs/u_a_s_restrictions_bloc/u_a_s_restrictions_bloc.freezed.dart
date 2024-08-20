// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'u_a_s_restrictions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UASRestrictionsEvent {
  String get geoHash => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String geoHash) getRestrictions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String geoHash)? getRestrictions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String geoHash)? getRestrictions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestrictions value) getRestrictions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRestrictions value)? getRestrictions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestrictions value)? getRestrictions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UASRestrictionsEventCopyWith<UASRestrictionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UASRestrictionsEventCopyWith<$Res> {
  factory $UASRestrictionsEventCopyWith(UASRestrictionsEvent value,
          $Res Function(UASRestrictionsEvent) then) =
      _$UASRestrictionsEventCopyWithImpl<$Res, UASRestrictionsEvent>;
  @useResult
  $Res call({String geoHash});
}

/// @nodoc
class _$UASRestrictionsEventCopyWithImpl<$Res,
        $Val extends UASRestrictionsEvent>
    implements $UASRestrictionsEventCopyWith<$Res> {
  _$UASRestrictionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHash = null,
  }) {
    return _then(_value.copyWith(
      geoHash: null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRestrictionsImplCopyWith<$Res>
    implements $UASRestrictionsEventCopyWith<$Res> {
  factory _$$GetRestrictionsImplCopyWith(_$GetRestrictionsImpl value,
          $Res Function(_$GetRestrictionsImpl) then) =
      __$$GetRestrictionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String geoHash});
}

/// @nodoc
class __$$GetRestrictionsImplCopyWithImpl<$Res>
    extends _$UASRestrictionsEventCopyWithImpl<$Res, _$GetRestrictionsImpl>
    implements _$$GetRestrictionsImplCopyWith<$Res> {
  __$$GetRestrictionsImplCopyWithImpl(
      _$GetRestrictionsImpl _value, $Res Function(_$GetRestrictionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHash = null,
  }) {
    return _then(_$GetRestrictionsImpl(
      geoHash: null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRestrictionsImpl implements _GetRestrictions {
  const _$GetRestrictionsImpl({required this.geoHash});

  @override
  final String geoHash;

  @override
  String toString() {
    return 'UASRestrictionsEvent.getRestrictions(geoHash: $geoHash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestrictionsImpl &&
            (identical(other.geoHash, geoHash) || other.geoHash == geoHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestrictionsImplCopyWith<_$GetRestrictionsImpl> get copyWith =>
      __$$GetRestrictionsImplCopyWithImpl<_$GetRestrictionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String geoHash) getRestrictions,
  }) {
    return getRestrictions(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String geoHash)? getRestrictions,
  }) {
    return getRestrictions?.call(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String geoHash)? getRestrictions,
    required TResult orElse(),
  }) {
    if (getRestrictions != null) {
      return getRestrictions(geoHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestrictions value) getRestrictions,
  }) {
    return getRestrictions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRestrictions value)? getRestrictions,
  }) {
    return getRestrictions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestrictions value)? getRestrictions,
    required TResult orElse(),
  }) {
    if (getRestrictions != null) {
      return getRestrictions(this);
    }
    return orElse();
  }
}

abstract class _GetRestrictions implements UASRestrictionsEvent {
  const factory _GetRestrictions({required final String geoHash}) =
      _$GetRestrictionsImpl;

  @override
  String get geoHash;
  @override
  @JsonKey(ignore: true)
  _$$GetRestrictionsImplCopyWith<_$GetRestrictionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UASRestrictionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRestrictions,
    required TResult Function(List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UASRestrictionsStateCopyWith<$Res> {
  factory $UASRestrictionsStateCopyWith(UASRestrictionsState value,
          $Res Function(UASRestrictionsState) then) =
      _$UASRestrictionsStateCopyWithImpl<$Res, UASRestrictionsState>;
}

/// @nodoc
class _$UASRestrictionsStateCopyWithImpl<$Res,
        $Val extends UASRestrictionsState>
    implements $UASRestrictionsStateCopyWith<$Res> {
  _$UASRestrictionsStateCopyWithImpl(this._value, this._then);

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
    extends _$UASRestrictionsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'UASRestrictionsState.initial()';
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
    required TResult Function() gettingRestrictions,
    required TResult Function(List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
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
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UASRestrictionsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingRestrictionsImplCopyWith<$Res> {
  factory _$$GettingRestrictionsImplCopyWith(_$GettingRestrictionsImpl value,
          $Res Function(_$GettingRestrictionsImpl) then) =
      __$$GettingRestrictionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingRestrictionsImplCopyWithImpl<$Res>
    extends _$UASRestrictionsStateCopyWithImpl<$Res, _$GettingRestrictionsImpl>
    implements _$$GettingRestrictionsImplCopyWith<$Res> {
  __$$GettingRestrictionsImplCopyWithImpl(_$GettingRestrictionsImpl _value,
      $Res Function(_$GettingRestrictionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GettingRestrictionsImpl implements _GettingRestrictions {
  const _$GettingRestrictionsImpl();

  @override
  String toString() {
    return 'UASRestrictionsState.gettingRestrictions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingRestrictionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRestrictions,
    required TResult Function(List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
  }) {
    return gettingRestrictions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
  }) {
    return gettingRestrictions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    required TResult orElse(),
  }) {
    if (gettingRestrictions != null) {
      return gettingRestrictions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
  }) {
    return gettingRestrictions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
  }) {
    return gettingRestrictions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    required TResult orElse(),
  }) {
    if (gettingRestrictions != null) {
      return gettingRestrictions(this);
    }
    return orElse();
  }
}

abstract class _GettingRestrictions implements UASRestrictionsState {
  const factory _GettingRestrictions() = _$GettingRestrictionsImpl;
}

/// @nodoc
abstract class _$$GotRestrictionsImplCopyWith<$Res> {
  factory _$$GotRestrictionsImplCopyWith(_$GotRestrictionsImpl value,
          $Res Function(_$GotRestrictionsImpl) then) =
      __$$GotRestrictionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RestrictionEntity> restrictionEntities});
}

/// @nodoc
class __$$GotRestrictionsImplCopyWithImpl<$Res>
    extends _$UASRestrictionsStateCopyWithImpl<$Res, _$GotRestrictionsImpl>
    implements _$$GotRestrictionsImplCopyWith<$Res> {
  __$$GotRestrictionsImplCopyWithImpl(
      _$GotRestrictionsImpl _value, $Res Function(_$GotRestrictionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restrictionEntities = null,
  }) {
    return _then(_$GotRestrictionsImpl(
      restrictionEntities: null == restrictionEntities
          ? _value._restrictionEntities
          : restrictionEntities // ignore: cast_nullable_to_non_nullable
              as List<RestrictionEntity>,
    ));
  }
}

/// @nodoc

class _$GotRestrictionsImpl implements _GotRestrictions {
  const _$GotRestrictionsImpl(
      {required final List<RestrictionEntity> restrictionEntities})
      : _restrictionEntities = restrictionEntities;

  final List<RestrictionEntity> _restrictionEntities;
  @override
  List<RestrictionEntity> get restrictionEntities {
    if (_restrictionEntities is EqualUnmodifiableListView)
      return _restrictionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restrictionEntities);
  }

  @override
  String toString() {
    return 'UASRestrictionsState.gotRestrictions(restrictionEntities: $restrictionEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotRestrictionsImpl &&
            const DeepCollectionEquality()
                .equals(other._restrictionEntities, _restrictionEntities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_restrictionEntities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotRestrictionsImplCopyWith<_$GotRestrictionsImpl> get copyWith =>
      __$$GotRestrictionsImplCopyWithImpl<_$GotRestrictionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRestrictions,
    required TResult Function(List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
  }) {
    return gotRestrictions(restrictionEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
  }) {
    return gotRestrictions?.call(restrictionEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    required TResult orElse(),
  }) {
    if (gotRestrictions != null) {
      return gotRestrictions(restrictionEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
  }) {
    return gotRestrictions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
  }) {
    return gotRestrictions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    required TResult orElse(),
  }) {
    if (gotRestrictions != null) {
      return gotRestrictions(this);
    }
    return orElse();
  }
}

abstract class _GotRestrictions implements UASRestrictionsState {
  const factory _GotRestrictions(
          {required final List<RestrictionEntity> restrictionEntities}) =
      _$GotRestrictionsImpl;

  List<RestrictionEntity> get restrictionEntities;
  @JsonKey(ignore: true)
  _$$GotRestrictionsImplCopyWith<_$GotRestrictionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetRestrictionsImplCopyWith<$Res> {
  factory _$$FailedToGetRestrictionsImplCopyWith(
          _$FailedToGetRestrictionsImpl value,
          $Res Function(_$FailedToGetRestrictionsImpl) then) =
      __$$FailedToGetRestrictionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UASRestrictionsFailure uasRestrictionsFailure});
}

/// @nodoc
class __$$FailedToGetRestrictionsImplCopyWithImpl<$Res>
    extends _$UASRestrictionsStateCopyWithImpl<$Res,
        _$FailedToGetRestrictionsImpl>
    implements _$$FailedToGetRestrictionsImplCopyWith<$Res> {
  __$$FailedToGetRestrictionsImplCopyWithImpl(
      _$FailedToGetRestrictionsImpl _value,
      $Res Function(_$FailedToGetRestrictionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uasRestrictionsFailure = null,
  }) {
    return _then(_$FailedToGetRestrictionsImpl(
      uasRestrictionsFailure: null == uasRestrictionsFailure
          ? _value.uasRestrictionsFailure
          : uasRestrictionsFailure // ignore: cast_nullable_to_non_nullable
              as UASRestrictionsFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetRestrictionsImpl implements _FailedToGetRestrictions {
  const _$FailedToGetRestrictionsImpl({required this.uasRestrictionsFailure});

  @override
  final UASRestrictionsFailure uasRestrictionsFailure;

  @override
  String toString() {
    return 'UASRestrictionsState.failedToGetRestrictions(uasRestrictionsFailure: $uasRestrictionsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetRestrictionsImpl &&
            (identical(other.uasRestrictionsFailure, uasRestrictionsFailure) ||
                other.uasRestrictionsFailure == uasRestrictionsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uasRestrictionsFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetRestrictionsImplCopyWith<_$FailedToGetRestrictionsImpl>
      get copyWith => __$$FailedToGetRestrictionsImplCopyWithImpl<
          _$FailedToGetRestrictionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRestrictions,
    required TResult Function(List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
  }) {
    return failedToGetRestrictions(uasRestrictionsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
  }) {
    return failedToGetRestrictions?.call(uasRestrictionsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    required TResult orElse(),
  }) {
    if (failedToGetRestrictions != null) {
      return failedToGetRestrictions(uasRestrictionsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
  }) {
    return failedToGetRestrictions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
  }) {
    return failedToGetRestrictions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    required TResult orElse(),
  }) {
    if (failedToGetRestrictions != null) {
      return failedToGetRestrictions(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetRestrictions implements UASRestrictionsState {
  const factory _FailedToGetRestrictions(
          {required final UASRestrictionsFailure uasRestrictionsFailure}) =
      _$FailedToGetRestrictionsImpl;

  UASRestrictionsFailure get uasRestrictionsFailure;
  @JsonKey(ignore: true)
  _$$FailedToGetRestrictionsImplCopyWith<_$FailedToGetRestrictionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
