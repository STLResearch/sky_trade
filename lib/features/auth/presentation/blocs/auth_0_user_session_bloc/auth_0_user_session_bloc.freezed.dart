// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_0_user_session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Auth0UserSessionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserSession value) checkUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserSession value)? checkUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserSession value)? checkUserSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Auth0UserSessionEventCopyWith<$Res> {
  factory $Auth0UserSessionEventCopyWith(Auth0UserSessionEvent value,
          $Res Function(Auth0UserSessionEvent) then) =
      _$Auth0UserSessionEventCopyWithImpl<$Res, Auth0UserSessionEvent>;
}

/// @nodoc
class _$Auth0UserSessionEventCopyWithImpl<$Res,
        $Val extends Auth0UserSessionEvent>
    implements $Auth0UserSessionEventCopyWith<$Res> {
  _$Auth0UserSessionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckUserSessionImplCopyWith<$Res> {
  factory _$$CheckUserSessionImplCopyWith(_$CheckUserSessionImpl value,
          $Res Function(_$CheckUserSessionImpl) then) =
      __$$CheckUserSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserSessionImplCopyWithImpl<$Res>
    extends _$Auth0UserSessionEventCopyWithImpl<$Res, _$CheckUserSessionImpl>
    implements _$$CheckUserSessionImplCopyWith<$Res> {
  __$$CheckUserSessionImplCopyWithImpl(_$CheckUserSessionImpl _value,
      $Res Function(_$CheckUserSessionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckUserSessionImpl implements _CheckUserSession {
  const _$CheckUserSessionImpl();

  @override
  String toString() {
    return 'Auth0UserSessionEvent.checkUserSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUserSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserSession,
  }) {
    return checkUserSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUserSession,
  }) {
    return checkUserSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserSession,
    required TResult orElse(),
  }) {
    if (checkUserSession != null) {
      return checkUserSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserSession value) checkUserSession,
  }) {
    return checkUserSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserSession value)? checkUserSession,
  }) {
    return checkUserSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserSession value)? checkUserSession,
    required TResult orElse(),
  }) {
    if (checkUserSession != null) {
      return checkUserSession(this);
    }
    return orElse();
  }
}

abstract class _CheckUserSession implements Auth0UserSessionEvent {
  const factory _CheckUserSession() = _$CheckUserSessionImpl;
}

/// @nodoc
mixin _$Auth0UserSessionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUserSession,
    required TResult Function(Auth0UserEntity auth0UserEntity)
        existingUserSession,
    required TResult Function() nonExistentUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUserSession,
    TResult? Function(Auth0UserEntity auth0UserEntity)? existingUserSession,
    TResult? Function()? nonExistentUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUserSession,
    TResult Function(Auth0UserEntity auth0UserEntity)? existingUserSession,
    TResult Function()? nonExistentUserSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUserSession value) checkingUserSession,
    required TResult Function(_ExistingUserSession value) existingUserSession,
    required TResult Function(_NonExistentUserSession value)
        nonExistentUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUserSession value)? checkingUserSession,
    TResult? Function(_ExistingUserSession value)? existingUserSession,
    TResult? Function(_NonExistentUserSession value)? nonExistentUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUserSession value)? checkingUserSession,
    TResult Function(_ExistingUserSession value)? existingUserSession,
    TResult Function(_NonExistentUserSession value)? nonExistentUserSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Auth0UserSessionStateCopyWith<$Res> {
  factory $Auth0UserSessionStateCopyWith(Auth0UserSessionState value,
          $Res Function(Auth0UserSessionState) then) =
      _$Auth0UserSessionStateCopyWithImpl<$Res, Auth0UserSessionState>;
}

/// @nodoc
class _$Auth0UserSessionStateCopyWithImpl<$Res,
        $Val extends Auth0UserSessionState>
    implements $Auth0UserSessionStateCopyWith<$Res> {
  _$Auth0UserSessionStateCopyWithImpl(this._value, this._then);

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
    extends _$Auth0UserSessionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'Auth0UserSessionState.initial()';
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
    required TResult Function() checkingUserSession,
    required TResult Function(Auth0UserEntity auth0UserEntity)
        existingUserSession,
    required TResult Function() nonExistentUserSession,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUserSession,
    TResult? Function(Auth0UserEntity auth0UserEntity)? existingUserSession,
    TResult? Function()? nonExistentUserSession,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUserSession,
    TResult Function(Auth0UserEntity auth0UserEntity)? existingUserSession,
    TResult Function()? nonExistentUserSession,
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
    required TResult Function(_CheckingUserSession value) checkingUserSession,
    required TResult Function(_ExistingUserSession value) existingUserSession,
    required TResult Function(_NonExistentUserSession value)
        nonExistentUserSession,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUserSession value)? checkingUserSession,
    TResult? Function(_ExistingUserSession value)? existingUserSession,
    TResult? Function(_NonExistentUserSession value)? nonExistentUserSession,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUserSession value)? checkingUserSession,
    TResult Function(_ExistingUserSession value)? existingUserSession,
    TResult Function(_NonExistentUserSession value)? nonExistentUserSession,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements Auth0UserSessionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckingUserSessionImplCopyWith<$Res> {
  factory _$$CheckingUserSessionImplCopyWith(_$CheckingUserSessionImpl value,
          $Res Function(_$CheckingUserSessionImpl) then) =
      __$$CheckingUserSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingUserSessionImplCopyWithImpl<$Res>
    extends _$Auth0UserSessionStateCopyWithImpl<$Res, _$CheckingUserSessionImpl>
    implements _$$CheckingUserSessionImplCopyWith<$Res> {
  __$$CheckingUserSessionImplCopyWithImpl(_$CheckingUserSessionImpl _value,
      $Res Function(_$CheckingUserSessionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckingUserSessionImpl implements _CheckingUserSession {
  const _$CheckingUserSessionImpl();

  @override
  String toString() {
    return 'Auth0UserSessionState.checkingUserSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckingUserSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUserSession,
    required TResult Function(Auth0UserEntity auth0UserEntity)
        existingUserSession,
    required TResult Function() nonExistentUserSession,
  }) {
    return checkingUserSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUserSession,
    TResult? Function(Auth0UserEntity auth0UserEntity)? existingUserSession,
    TResult? Function()? nonExistentUserSession,
  }) {
    return checkingUserSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUserSession,
    TResult Function(Auth0UserEntity auth0UserEntity)? existingUserSession,
    TResult Function()? nonExistentUserSession,
    required TResult orElse(),
  }) {
    if (checkingUserSession != null) {
      return checkingUserSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUserSession value) checkingUserSession,
    required TResult Function(_ExistingUserSession value) existingUserSession,
    required TResult Function(_NonExistentUserSession value)
        nonExistentUserSession,
  }) {
    return checkingUserSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUserSession value)? checkingUserSession,
    TResult? Function(_ExistingUserSession value)? existingUserSession,
    TResult? Function(_NonExistentUserSession value)? nonExistentUserSession,
  }) {
    return checkingUserSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUserSession value)? checkingUserSession,
    TResult Function(_ExistingUserSession value)? existingUserSession,
    TResult Function(_NonExistentUserSession value)? nonExistentUserSession,
    required TResult orElse(),
  }) {
    if (checkingUserSession != null) {
      return checkingUserSession(this);
    }
    return orElse();
  }
}

abstract class _CheckingUserSession implements Auth0UserSessionState {
  const factory _CheckingUserSession() = _$CheckingUserSessionImpl;
}

/// @nodoc
abstract class _$$ExistingUserSessionImplCopyWith<$Res> {
  factory _$$ExistingUserSessionImplCopyWith(_$ExistingUserSessionImpl value,
          $Res Function(_$ExistingUserSessionImpl) then) =
      __$$ExistingUserSessionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Auth0UserEntity auth0UserEntity});
}

/// @nodoc
class __$$ExistingUserSessionImplCopyWithImpl<$Res>
    extends _$Auth0UserSessionStateCopyWithImpl<$Res, _$ExistingUserSessionImpl>
    implements _$$ExistingUserSessionImplCopyWith<$Res> {
  __$$ExistingUserSessionImplCopyWithImpl(_$ExistingUserSessionImpl _value,
      $Res Function(_$ExistingUserSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth0UserEntity = null,
  }) {
    return _then(_$ExistingUserSessionImpl(
      auth0UserEntity: null == auth0UserEntity
          ? _value.auth0UserEntity
          : auth0UserEntity // ignore: cast_nullable_to_non_nullable
              as Auth0UserEntity,
    ));
  }
}

/// @nodoc

class _$ExistingUserSessionImpl implements _ExistingUserSession {
  const _$ExistingUserSessionImpl({required this.auth0UserEntity});

  @override
  final Auth0UserEntity auth0UserEntity;

  @override
  String toString() {
    return 'Auth0UserSessionState.existingUserSession(auth0UserEntity: $auth0UserEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExistingUserSessionImpl &&
            (identical(other.auth0UserEntity, auth0UserEntity) ||
                other.auth0UserEntity == auth0UserEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth0UserEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExistingUserSessionImplCopyWith<_$ExistingUserSessionImpl> get copyWith =>
      __$$ExistingUserSessionImplCopyWithImpl<_$ExistingUserSessionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUserSession,
    required TResult Function(Auth0UserEntity auth0UserEntity)
        existingUserSession,
    required TResult Function() nonExistentUserSession,
  }) {
    return existingUserSession(auth0UserEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUserSession,
    TResult? Function(Auth0UserEntity auth0UserEntity)? existingUserSession,
    TResult? Function()? nonExistentUserSession,
  }) {
    return existingUserSession?.call(auth0UserEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUserSession,
    TResult Function(Auth0UserEntity auth0UserEntity)? existingUserSession,
    TResult Function()? nonExistentUserSession,
    required TResult orElse(),
  }) {
    if (existingUserSession != null) {
      return existingUserSession(auth0UserEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUserSession value) checkingUserSession,
    required TResult Function(_ExistingUserSession value) existingUserSession,
    required TResult Function(_NonExistentUserSession value)
        nonExistentUserSession,
  }) {
    return existingUserSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUserSession value)? checkingUserSession,
    TResult? Function(_ExistingUserSession value)? existingUserSession,
    TResult? Function(_NonExistentUserSession value)? nonExistentUserSession,
  }) {
    return existingUserSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUserSession value)? checkingUserSession,
    TResult Function(_ExistingUserSession value)? existingUserSession,
    TResult Function(_NonExistentUserSession value)? nonExistentUserSession,
    required TResult orElse(),
  }) {
    if (existingUserSession != null) {
      return existingUserSession(this);
    }
    return orElse();
  }
}

abstract class _ExistingUserSession implements Auth0UserSessionState {
  const factory _ExistingUserSession(
          {required final Auth0UserEntity auth0UserEntity}) =
      _$ExistingUserSessionImpl;

  Auth0UserEntity get auth0UserEntity;
  @JsonKey(ignore: true)
  _$$ExistingUserSessionImplCopyWith<_$ExistingUserSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NonExistentUserSessionImplCopyWith<$Res> {
  factory _$$NonExistentUserSessionImplCopyWith(
          _$NonExistentUserSessionImpl value,
          $Res Function(_$NonExistentUserSessionImpl) then) =
      __$$NonExistentUserSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NonExistentUserSessionImplCopyWithImpl<$Res>
    extends _$Auth0UserSessionStateCopyWithImpl<$Res,
        _$NonExistentUserSessionImpl>
    implements _$$NonExistentUserSessionImplCopyWith<$Res> {
  __$$NonExistentUserSessionImplCopyWithImpl(
      _$NonExistentUserSessionImpl _value,
      $Res Function(_$NonExistentUserSessionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NonExistentUserSessionImpl implements _NonExistentUserSession {
  const _$NonExistentUserSessionImpl();

  @override
  String toString() {
    return 'Auth0UserSessionState.nonExistentUserSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NonExistentUserSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUserSession,
    required TResult Function(Auth0UserEntity auth0UserEntity)
        existingUserSession,
    required TResult Function() nonExistentUserSession,
  }) {
    return nonExistentUserSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUserSession,
    TResult? Function(Auth0UserEntity auth0UserEntity)? existingUserSession,
    TResult? Function()? nonExistentUserSession,
  }) {
    return nonExistentUserSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUserSession,
    TResult Function(Auth0UserEntity auth0UserEntity)? existingUserSession,
    TResult Function()? nonExistentUserSession,
    required TResult orElse(),
  }) {
    if (nonExistentUserSession != null) {
      return nonExistentUserSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingUserSession value) checkingUserSession,
    required TResult Function(_ExistingUserSession value) existingUserSession,
    required TResult Function(_NonExistentUserSession value)
        nonExistentUserSession,
  }) {
    return nonExistentUserSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingUserSession value)? checkingUserSession,
    TResult? Function(_ExistingUserSession value)? existingUserSession,
    TResult? Function(_NonExistentUserSession value)? nonExistentUserSession,
  }) {
    return nonExistentUserSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingUserSession value)? checkingUserSession,
    TResult Function(_ExistingUserSession value)? existingUserSession,
    TResult Function(_NonExistentUserSession value)? nonExistentUserSession,
    required TResult orElse(),
  }) {
    if (nonExistentUserSession != null) {
      return nonExistentUserSession(this);
    }
    return orElse();
  }
}

abstract class _NonExistentUserSession implements Auth0UserSessionState {
  const factory _NonExistentUserSession() = _$NonExistentUserSessionImpl;
}
