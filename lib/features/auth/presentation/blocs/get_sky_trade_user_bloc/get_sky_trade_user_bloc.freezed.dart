// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_sky_trade_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetSkyTradeUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSkyTradeUserEventCopyWith<$Res> {
  factory $GetSkyTradeUserEventCopyWith(GetSkyTradeUserEvent value,
          $Res Function(GetSkyTradeUserEvent) then) =
      _$GetSkyTradeUserEventCopyWithImpl<$Res, GetSkyTradeUserEvent>;
}

/// @nodoc
class _$GetSkyTradeUserEventCopyWithImpl<$Res,
        $Val extends GetSkyTradeUserEvent>
    implements $GetSkyTradeUserEventCopyWith<$Res> {
  _$GetSkyTradeUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetSkyTradeUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserImplCopyWith<$Res> {
  factory _$$GetUserImplCopyWith(
          _$GetUserImpl value, $Res Function(_$GetUserImpl) then) =
      __$$GetUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserImplCopyWithImpl<$Res>
    extends _$GetSkyTradeUserEventCopyWithImpl<$Res, _$GetUserImpl>
    implements _$$GetUserImplCopyWith<$Res> {
  __$$GetUserImplCopyWithImpl(
      _$GetUserImpl _value, $Res Function(_$GetUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSkyTradeUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserImpl implements _GetUser {
  const _$GetUserImpl();

  @override
  String toString() {
    return 'GetSkyTradeUserEvent.getUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUser,
  }) {
    return getUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUser,
  }) {
    return getUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetUser value) getUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetUser value)? getUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements GetSkyTradeUserEvent {
  const factory _GetUser() = _$GetUserImpl;
}

/// @nodoc
mixin _$GetSkyTradeUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity) gotUser,
    required TResult Function(GetSkyTradeUserFailure getSkyTradeUserFailure)
        failedToGetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? gotUser,
    TResult? Function(GetSkyTradeUserFailure getSkyTradeUserFailure)?
        failedToGetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? gotUser,
    TResult Function(GetSkyTradeUserFailure getSkyTradeUserFailure)?
        failedToGetUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingUser value) gettingUser,
    required TResult Function(_GotUser value) gotUser,
    required TResult Function(_FailedToGetUser value) failedToGetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingUser value)? gettingUser,
    TResult? Function(_GotUser value)? gotUser,
    TResult? Function(_FailedToGetUser value)? failedToGetUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingUser value)? gettingUser,
    TResult Function(_GotUser value)? gotUser,
    TResult Function(_FailedToGetUser value)? failedToGetUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSkyTradeUserStateCopyWith<$Res> {
  factory $GetSkyTradeUserStateCopyWith(GetSkyTradeUserState value,
          $Res Function(GetSkyTradeUserState) then) =
      _$GetSkyTradeUserStateCopyWithImpl<$Res, GetSkyTradeUserState>;
}

/// @nodoc
class _$GetSkyTradeUserStateCopyWithImpl<$Res,
        $Val extends GetSkyTradeUserState>
    implements $GetSkyTradeUserStateCopyWith<$Res> {
  _$GetSkyTradeUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetSkyTradeUserState
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
    extends _$GetSkyTradeUserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GetSkyTradeUserState.initial()';
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
    required TResult Function() gettingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity) gotUser,
    required TResult Function(GetSkyTradeUserFailure getSkyTradeUserFailure)
        failedToGetUser,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? gotUser,
    TResult? Function(GetSkyTradeUserFailure getSkyTradeUserFailure)?
        failedToGetUser,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? gotUser,
    TResult Function(GetSkyTradeUserFailure getSkyTradeUserFailure)?
        failedToGetUser,
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
    required TResult Function(_GettingUser value) gettingUser,
    required TResult Function(_GotUser value) gotUser,
    required TResult Function(_FailedToGetUser value) failedToGetUser,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingUser value)? gettingUser,
    TResult? Function(_GotUser value)? gotUser,
    TResult? Function(_FailedToGetUser value)? failedToGetUser,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingUser value)? gettingUser,
    TResult Function(_GotUser value)? gotUser,
    TResult Function(_FailedToGetUser value)? failedToGetUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetSkyTradeUserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingUserImplCopyWith<$Res> {
  factory _$$GettingUserImplCopyWith(
          _$GettingUserImpl value, $Res Function(_$GettingUserImpl) then) =
      __$$GettingUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingUserImplCopyWithImpl<$Res>
    extends _$GetSkyTradeUserStateCopyWithImpl<$Res, _$GettingUserImpl>
    implements _$$GettingUserImplCopyWith<$Res> {
  __$$GettingUserImplCopyWithImpl(
      _$GettingUserImpl _value, $Res Function(_$GettingUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingUserImpl implements _GettingUser {
  const _$GettingUserImpl();

  @override
  String toString() {
    return 'GetSkyTradeUserState.gettingUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity) gotUser,
    required TResult Function(GetSkyTradeUserFailure getSkyTradeUserFailure)
        failedToGetUser,
  }) {
    return gettingUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? gotUser,
    TResult? Function(GetSkyTradeUserFailure getSkyTradeUserFailure)?
        failedToGetUser,
  }) {
    return gettingUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? gotUser,
    TResult Function(GetSkyTradeUserFailure getSkyTradeUserFailure)?
        failedToGetUser,
    required TResult orElse(),
  }) {
    if (gettingUser != null) {
      return gettingUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingUser value) gettingUser,
    required TResult Function(_GotUser value) gotUser,
    required TResult Function(_FailedToGetUser value) failedToGetUser,
  }) {
    return gettingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingUser value)? gettingUser,
    TResult? Function(_GotUser value)? gotUser,
    TResult? Function(_FailedToGetUser value)? failedToGetUser,
  }) {
    return gettingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingUser value)? gettingUser,
    TResult Function(_GotUser value)? gotUser,
    TResult Function(_FailedToGetUser value)? failedToGetUser,
    required TResult orElse(),
  }) {
    if (gettingUser != null) {
      return gettingUser(this);
    }
    return orElse();
  }
}

abstract class _GettingUser implements GetSkyTradeUserState {
  const factory _GettingUser() = _$GettingUserImpl;
}

/// @nodoc
abstract class _$$GotUserImplCopyWith<$Res> {
  factory _$$GotUserImplCopyWith(
          _$GotUserImpl value, $Res Function(_$GotUserImpl) then) =
      __$$GotUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SkyTradeUserEntity skyTradeUserEntity});
}

/// @nodoc
class __$$GotUserImplCopyWithImpl<$Res>
    extends _$GetSkyTradeUserStateCopyWithImpl<$Res, _$GotUserImpl>
    implements _$$GotUserImplCopyWith<$Res> {
  __$$GotUserImplCopyWithImpl(
      _$GotUserImpl _value, $Res Function(_$GotUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skyTradeUserEntity = null,
  }) {
    return _then(_$GotUserImpl(
      skyTradeUserEntity: null == skyTradeUserEntity
          ? _value.skyTradeUserEntity
          : skyTradeUserEntity // ignore: cast_nullable_to_non_nullable
              as SkyTradeUserEntity,
    ));
  }
}

/// @nodoc

class _$GotUserImpl implements _GotUser {
  const _$GotUserImpl({required this.skyTradeUserEntity});

  @override
  final SkyTradeUserEntity skyTradeUserEntity;

  @override
  String toString() {
    return 'GetSkyTradeUserState.gotUser(skyTradeUserEntity: $skyTradeUserEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotUserImpl &&
            (identical(other.skyTradeUserEntity, skyTradeUserEntity) ||
                other.skyTradeUserEntity == skyTradeUserEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skyTradeUserEntity);

  /// Create a copy of GetSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotUserImplCopyWith<_$GotUserImpl> get copyWith =>
      __$$GotUserImplCopyWithImpl<_$GotUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity) gotUser,
    required TResult Function(GetSkyTradeUserFailure getSkyTradeUserFailure)
        failedToGetUser,
  }) {
    return gotUser(skyTradeUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? gotUser,
    TResult? Function(GetSkyTradeUserFailure getSkyTradeUserFailure)?
        failedToGetUser,
  }) {
    return gotUser?.call(skyTradeUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? gotUser,
    TResult Function(GetSkyTradeUserFailure getSkyTradeUserFailure)?
        failedToGetUser,
    required TResult orElse(),
  }) {
    if (gotUser != null) {
      return gotUser(skyTradeUserEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingUser value) gettingUser,
    required TResult Function(_GotUser value) gotUser,
    required TResult Function(_FailedToGetUser value) failedToGetUser,
  }) {
    return gotUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingUser value)? gettingUser,
    TResult? Function(_GotUser value)? gotUser,
    TResult? Function(_FailedToGetUser value)? failedToGetUser,
  }) {
    return gotUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingUser value)? gettingUser,
    TResult Function(_GotUser value)? gotUser,
    TResult Function(_FailedToGetUser value)? failedToGetUser,
    required TResult orElse(),
  }) {
    if (gotUser != null) {
      return gotUser(this);
    }
    return orElse();
  }
}

abstract class _GotUser implements GetSkyTradeUserState {
  const factory _GotUser(
      {required final SkyTradeUserEntity skyTradeUserEntity}) = _$GotUserImpl;

  SkyTradeUserEntity get skyTradeUserEntity;

  /// Create a copy of GetSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotUserImplCopyWith<_$GotUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetUserImplCopyWith<$Res> {
  factory _$$FailedToGetUserImplCopyWith(_$FailedToGetUserImpl value,
          $Res Function(_$FailedToGetUserImpl) then) =
      __$$FailedToGetUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetSkyTradeUserFailure getSkyTradeUserFailure});
}

/// @nodoc
class __$$FailedToGetUserImplCopyWithImpl<$Res>
    extends _$GetSkyTradeUserStateCopyWithImpl<$Res, _$FailedToGetUserImpl>
    implements _$$FailedToGetUserImplCopyWith<$Res> {
  __$$FailedToGetUserImplCopyWithImpl(
      _$FailedToGetUserImpl _value, $Res Function(_$FailedToGetUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getSkyTradeUserFailure = null,
  }) {
    return _then(_$FailedToGetUserImpl(
      getSkyTradeUserFailure: null == getSkyTradeUserFailure
          ? _value.getSkyTradeUserFailure
          : getSkyTradeUserFailure // ignore: cast_nullable_to_non_nullable
              as GetSkyTradeUserFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetUserImpl implements _FailedToGetUser {
  const _$FailedToGetUserImpl({required this.getSkyTradeUserFailure});

  @override
  final GetSkyTradeUserFailure getSkyTradeUserFailure;

  @override
  String toString() {
    return 'GetSkyTradeUserState.failedToGetUser(getSkyTradeUserFailure: $getSkyTradeUserFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetUserImpl &&
            (identical(other.getSkyTradeUserFailure, getSkyTradeUserFailure) ||
                other.getSkyTradeUserFailure == getSkyTradeUserFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getSkyTradeUserFailure);

  /// Create a copy of GetSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetUserImplCopyWith<_$FailedToGetUserImpl> get copyWith =>
      __$$FailedToGetUserImplCopyWithImpl<_$FailedToGetUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity) gotUser,
    required TResult Function(GetSkyTradeUserFailure getSkyTradeUserFailure)
        failedToGetUser,
  }) {
    return failedToGetUser(getSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? gotUser,
    TResult? Function(GetSkyTradeUserFailure getSkyTradeUserFailure)?
        failedToGetUser,
  }) {
    return failedToGetUser?.call(getSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? gotUser,
    TResult Function(GetSkyTradeUserFailure getSkyTradeUserFailure)?
        failedToGetUser,
    required TResult orElse(),
  }) {
    if (failedToGetUser != null) {
      return failedToGetUser(getSkyTradeUserFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingUser value) gettingUser,
    required TResult Function(_GotUser value) gotUser,
    required TResult Function(_FailedToGetUser value) failedToGetUser,
  }) {
    return failedToGetUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingUser value)? gettingUser,
    TResult? Function(_GotUser value)? gotUser,
    TResult? Function(_FailedToGetUser value)? failedToGetUser,
  }) {
    return failedToGetUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingUser value)? gettingUser,
    TResult Function(_GotUser value)? gotUser,
    TResult Function(_FailedToGetUser value)? failedToGetUser,
    required TResult orElse(),
  }) {
    if (failedToGetUser != null) {
      return failedToGetUser(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetUser implements GetSkyTradeUserState {
  const factory _FailedToGetUser(
          {required final GetSkyTradeUserFailure getSkyTradeUserFailure}) =
      _$FailedToGetUserImpl;

  GetSkyTradeUserFailure get getSkyTradeUserFailure;

  /// Create a copy of GetSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToGetUserImplCopyWith<_$FailedToGetUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
