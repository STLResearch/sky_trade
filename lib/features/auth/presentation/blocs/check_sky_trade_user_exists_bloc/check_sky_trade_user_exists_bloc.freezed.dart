// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_sky_trade_user_exists_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckSkyTradeUserExistsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUserExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExists value) checkUserExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExists value)? checkUserExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExists value)? checkUserExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSkyTradeUserExistsEventCopyWith<$Res> {
  factory $CheckSkyTradeUserExistsEventCopyWith(
          CheckSkyTradeUserExistsEvent value,
          $Res Function(CheckSkyTradeUserExistsEvent) then) =
      _$CheckSkyTradeUserExistsEventCopyWithImpl<$Res,
          CheckSkyTradeUserExistsEvent>;
}

/// @nodoc
class _$CheckSkyTradeUserExistsEventCopyWithImpl<$Res,
        $Val extends CheckSkyTradeUserExistsEvent>
    implements $CheckSkyTradeUserExistsEventCopyWith<$Res> {
  _$CheckSkyTradeUserExistsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckSkyTradeUserExistsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckUserExistsImplCopyWith<$Res> {
  factory _$$CheckUserExistsImplCopyWith(_$CheckUserExistsImpl value,
          $Res Function(_$CheckUserExistsImpl) then) =
      __$$CheckUserExistsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserExistsImplCopyWithImpl<$Res>
    extends _$CheckSkyTradeUserExistsEventCopyWithImpl<$Res,
        _$CheckUserExistsImpl> implements _$$CheckUserExistsImplCopyWith<$Res> {
  __$$CheckUserExistsImplCopyWithImpl(
      _$CheckUserExistsImpl _value, $Res Function(_$CheckUserExistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckSkyTradeUserExistsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckUserExistsImpl implements _CheckUserExists {
  const _$CheckUserExistsImpl();

  @override
  String toString() {
    return 'CheckSkyTradeUserExistsEvent.checkUserExists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUserExistsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserExists,
  }) {
    return checkUserExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUserExists,
  }) {
    return checkUserExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserExists,
    required TResult orElse(),
  }) {
    if (checkUserExists != null) {
      return checkUserExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserExists value) checkUserExists,
  }) {
    return checkUserExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserExists value)? checkUserExists,
  }) {
    return checkUserExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserExists value)? checkUserExists,
    required TResult orElse(),
  }) {
    if (checkUserExists != null) {
      return checkUserExists(this);
    }
    return orElse();
  }
}

abstract class _CheckUserExists implements CheckSkyTradeUserExistsEvent {
  const factory _CheckUserExists() = _$CheckUserExistsImpl;
}

/// @nodoc
mixin _$CheckSkyTradeUserExistsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity) userExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? userExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? userExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUser value) checkingUser,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_FailedToCheckUser value) failedToCheckUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUser value)? checkingUser,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_FailedToCheckUser value)? failedToCheckUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUser value)? checkingUser,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_FailedToCheckUser value)? failedToCheckUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSkyTradeUserExistsStateCopyWith<$Res> {
  factory $CheckSkyTradeUserExistsStateCopyWith(
          CheckSkyTradeUserExistsState value,
          $Res Function(CheckSkyTradeUserExistsState) then) =
      _$CheckSkyTradeUserExistsStateCopyWithImpl<$Res,
          CheckSkyTradeUserExistsState>;
}

/// @nodoc
class _$CheckSkyTradeUserExistsStateCopyWithImpl<$Res,
        $Val extends CheckSkyTradeUserExistsState>
    implements $CheckSkyTradeUserExistsStateCopyWith<$Res> {
  _$CheckSkyTradeUserExistsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckSkyTradeUserExistsState
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
    extends _$CheckSkyTradeUserExistsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckSkyTradeUserExistsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CheckSkyTradeUserExistsState.initial()';
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
    required TResult Function() checkingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity) userExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckUser,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? userExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckUser,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? userExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckUser,
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
    required TResult Function(_CheckingUser value) checkingUser,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_FailedToCheckUser value) failedToCheckUser,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUser value)? checkingUser,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_FailedToCheckUser value)? failedToCheckUser,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUser value)? checkingUser,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_FailedToCheckUser value)? failedToCheckUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckSkyTradeUserExistsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckingUserImplCopyWith<$Res> {
  factory _$$CheckingUserImplCopyWith(
          _$CheckingUserImpl value, $Res Function(_$CheckingUserImpl) then) =
      __$$CheckingUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingUserImplCopyWithImpl<$Res>
    extends _$CheckSkyTradeUserExistsStateCopyWithImpl<$Res, _$CheckingUserImpl>
    implements _$$CheckingUserImplCopyWith<$Res> {
  __$$CheckingUserImplCopyWithImpl(
      _$CheckingUserImpl _value, $Res Function(_$CheckingUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckSkyTradeUserExistsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckingUserImpl implements _CheckingUser {
  const _$CheckingUserImpl();

  @override
  String toString() {
    return 'CheckSkyTradeUserExistsState.checkingUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity) userExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckUser,
  }) {
    return checkingUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? userExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckUser,
  }) {
    return checkingUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? userExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckUser,
    required TResult orElse(),
  }) {
    if (checkingUser != null) {
      return checkingUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUser value) checkingUser,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_FailedToCheckUser value) failedToCheckUser,
  }) {
    return checkingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUser value)? checkingUser,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_FailedToCheckUser value)? failedToCheckUser,
  }) {
    return checkingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUser value)? checkingUser,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_FailedToCheckUser value)? failedToCheckUser,
    required TResult orElse(),
  }) {
    if (checkingUser != null) {
      return checkingUser(this);
    }
    return orElse();
  }
}

abstract class _CheckingUser implements CheckSkyTradeUserExistsState {
  const factory _CheckingUser() = _$CheckingUserImpl;
}

/// @nodoc
abstract class _$$UserExistsImplCopyWith<$Res> {
  factory _$$UserExistsImplCopyWith(
          _$UserExistsImpl value, $Res Function(_$UserExistsImpl) then) =
      __$$UserExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SkyTradeUserEntity skyTradeUserEntity});
}

/// @nodoc
class __$$UserExistsImplCopyWithImpl<$Res>
    extends _$CheckSkyTradeUserExistsStateCopyWithImpl<$Res, _$UserExistsImpl>
    implements _$$UserExistsImplCopyWith<$Res> {
  __$$UserExistsImplCopyWithImpl(
      _$UserExistsImpl _value, $Res Function(_$UserExistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckSkyTradeUserExistsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skyTradeUserEntity = null,
  }) {
    return _then(_$UserExistsImpl(
      skyTradeUserEntity: null == skyTradeUserEntity
          ? _value.skyTradeUserEntity
          : skyTradeUserEntity // ignore: cast_nullable_to_non_nullable
              as SkyTradeUserEntity,
    ));
  }
}

/// @nodoc

class _$UserExistsImpl implements _UserExists {
  const _$UserExistsImpl({required this.skyTradeUserEntity});

  @override
  final SkyTradeUserEntity skyTradeUserEntity;

  @override
  String toString() {
    return 'CheckSkyTradeUserExistsState.userExists(skyTradeUserEntity: $skyTradeUserEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserExistsImpl &&
            (identical(other.skyTradeUserEntity, skyTradeUserEntity) ||
                other.skyTradeUserEntity == skyTradeUserEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skyTradeUserEntity);

  /// Create a copy of CheckSkyTradeUserExistsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserExistsImplCopyWith<_$UserExistsImpl> get copyWith =>
      __$$UserExistsImplCopyWithImpl<_$UserExistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity) userExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckUser,
  }) {
    return userExists(skyTradeUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? userExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckUser,
  }) {
    return userExists?.call(skyTradeUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? userExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckUser,
    required TResult orElse(),
  }) {
    if (userExists != null) {
      return userExists(skyTradeUserEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUser value) checkingUser,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_FailedToCheckUser value) failedToCheckUser,
  }) {
    return userExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUser value)? checkingUser,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_FailedToCheckUser value)? failedToCheckUser,
  }) {
    return userExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUser value)? checkingUser,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_FailedToCheckUser value)? failedToCheckUser,
    required TResult orElse(),
  }) {
    if (userExists != null) {
      return userExists(this);
    }
    return orElse();
  }
}

abstract class _UserExists implements CheckSkyTradeUserExistsState {
  const factory _UserExists(
          {required final SkyTradeUserEntity skyTradeUserEntity}) =
      _$UserExistsImpl;

  SkyTradeUserEntity get skyTradeUserEntity;

  /// Create a copy of CheckSkyTradeUserExistsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserExistsImplCopyWith<_$UserExistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToCheckUserImplCopyWith<$Res> {
  factory _$$FailedToCheckUserImplCopyWith(_$FailedToCheckUserImpl value,
          $Res Function(_$FailedToCheckUserImpl) then) =
      __$$FailedToCheckUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckSkyTradeUserFailure checkSkyTradeUserFailure});
}

/// @nodoc
class __$$FailedToCheckUserImplCopyWithImpl<$Res>
    extends _$CheckSkyTradeUserExistsStateCopyWithImpl<$Res,
        _$FailedToCheckUserImpl>
    implements _$$FailedToCheckUserImplCopyWith<$Res> {
  __$$FailedToCheckUserImplCopyWithImpl(_$FailedToCheckUserImpl _value,
      $Res Function(_$FailedToCheckUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckSkyTradeUserExistsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkSkyTradeUserFailure = null,
  }) {
    return _then(_$FailedToCheckUserImpl(
      checkSkyTradeUserFailure: null == checkSkyTradeUserFailure
          ? _value.checkSkyTradeUserFailure
          : checkSkyTradeUserFailure // ignore: cast_nullable_to_non_nullable
              as CheckSkyTradeUserFailure,
    ));
  }
}

/// @nodoc

class _$FailedToCheckUserImpl implements _FailedToCheckUser {
  const _$FailedToCheckUserImpl({required this.checkSkyTradeUserFailure});

  @override
  final CheckSkyTradeUserFailure checkSkyTradeUserFailure;

  @override
  String toString() {
    return 'CheckSkyTradeUserExistsState.failedToCheckUser(checkSkyTradeUserFailure: $checkSkyTradeUserFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToCheckUserImpl &&
            (identical(
                    other.checkSkyTradeUserFailure, checkSkyTradeUserFailure) ||
                other.checkSkyTradeUserFailure == checkSkyTradeUserFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkSkyTradeUserFailure);

  /// Create a copy of CheckSkyTradeUserExistsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToCheckUserImplCopyWith<_$FailedToCheckUserImpl> get copyWith =>
      __$$FailedToCheckUserImplCopyWithImpl<_$FailedToCheckUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity) userExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckUser,
  }) {
    return failedToCheckUser(checkSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? userExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckUser,
  }) {
    return failedToCheckUser?.call(checkSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? userExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckUser,
    required TResult orElse(),
  }) {
    if (failedToCheckUser != null) {
      return failedToCheckUser(checkSkyTradeUserFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUser value) checkingUser,
    required TResult Function(_UserExists value) userExists,
    required TResult Function(_FailedToCheckUser value) failedToCheckUser,
  }) {
    return failedToCheckUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUser value)? checkingUser,
    TResult? Function(_UserExists value)? userExists,
    TResult? Function(_FailedToCheckUser value)? failedToCheckUser,
  }) {
    return failedToCheckUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUser value)? checkingUser,
    TResult Function(_UserExists value)? userExists,
    TResult Function(_FailedToCheckUser value)? failedToCheckUser,
    required TResult orElse(),
  }) {
    if (failedToCheckUser != null) {
      return failedToCheckUser(this);
    }
    return orElse();
  }
}

abstract class _FailedToCheckUser implements CheckSkyTradeUserExistsState {
  const factory _FailedToCheckUser(
          {required final CheckSkyTradeUserFailure checkSkyTradeUserFailure}) =
      _$FailedToCheckUserImpl;

  CheckSkyTradeUserFailure get checkSkyTradeUserFailure;

  /// Create a copy of CheckSkyTradeUserExistsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToCheckUserImplCopyWith<_$FailedToCheckUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
