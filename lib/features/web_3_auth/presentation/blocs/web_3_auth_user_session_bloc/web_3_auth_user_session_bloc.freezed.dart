// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_3_auth_user_session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Web3AuthUserSessionEvent {
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
abstract class $Web3AuthUserSessionEventCopyWith<$Res> {
  factory $Web3AuthUserSessionEventCopyWith(Web3AuthUserSessionEvent value,
          $Res Function(Web3AuthUserSessionEvent) then) =
      _$Web3AuthUserSessionEventCopyWithImpl<$Res, Web3AuthUserSessionEvent>;
}

/// @nodoc
class _$Web3AuthUserSessionEventCopyWithImpl<$Res,
        $Val extends Web3AuthUserSessionEvent>
    implements $Web3AuthUserSessionEventCopyWith<$Res> {
  _$Web3AuthUserSessionEventCopyWithImpl(this._value, this._then);

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
    extends _$Web3AuthUserSessionEventCopyWithImpl<$Res, _$CheckUserSessionImpl>
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
    return 'Web3AuthUserSessionEvent.checkUserSession()';
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

abstract class _CheckUserSession implements Web3AuthUserSessionEvent {
  const factory _CheckUserSession() = _$CheckUserSessionImpl;
}

/// @nodoc
mixin _$Web3AuthUserSessionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUserSession,
    required TResult Function() existingUserSession,
    required TResult Function() nonExistentUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUserSession,
    TResult? Function()? existingUserSession,
    TResult? Function()? nonExistentUserSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUserSession,
    TResult Function()? existingUserSession,
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
abstract class $Web3AuthUserSessionStateCopyWith<$Res> {
  factory $Web3AuthUserSessionStateCopyWith(Web3AuthUserSessionState value,
          $Res Function(Web3AuthUserSessionState) then) =
      _$Web3AuthUserSessionStateCopyWithImpl<$Res, Web3AuthUserSessionState>;
}

/// @nodoc
class _$Web3AuthUserSessionStateCopyWithImpl<$Res,
        $Val extends Web3AuthUserSessionState>
    implements $Web3AuthUserSessionStateCopyWith<$Res> {
  _$Web3AuthUserSessionStateCopyWithImpl(this._value, this._then);

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
    extends _$Web3AuthUserSessionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'Web3AuthUserSessionState.initial()';
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
    required TResult Function() existingUserSession,
    required TResult Function() nonExistentUserSession,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUserSession,
    TResult? Function()? existingUserSession,
    TResult? Function()? nonExistentUserSession,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUserSession,
    TResult Function()? existingUserSession,
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

abstract class _Initial implements Web3AuthUserSessionState {
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
    extends _$Web3AuthUserSessionStateCopyWithImpl<$Res,
        _$CheckingUserSessionImpl>
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
    return 'Web3AuthUserSessionState.checkingUserSession()';
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
    required TResult Function() existingUserSession,
    required TResult Function() nonExistentUserSession,
  }) {
    return checkingUserSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUserSession,
    TResult? Function()? existingUserSession,
    TResult? Function()? nonExistentUserSession,
  }) {
    return checkingUserSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUserSession,
    TResult Function()? existingUserSession,
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

abstract class _CheckingUserSession implements Web3AuthUserSessionState {
  const factory _CheckingUserSession() = _$CheckingUserSessionImpl;
}

/// @nodoc
abstract class _$$ExistingUserSessionImplCopyWith<$Res> {
  factory _$$ExistingUserSessionImplCopyWith(_$ExistingUserSessionImpl value,
          $Res Function(_$ExistingUserSessionImpl) then) =
      __$$ExistingUserSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExistingUserSessionImplCopyWithImpl<$Res>
    extends _$Web3AuthUserSessionStateCopyWithImpl<$Res,
        _$ExistingUserSessionImpl>
    implements _$$ExistingUserSessionImplCopyWith<$Res> {
  __$$ExistingUserSessionImplCopyWithImpl(_$ExistingUserSessionImpl _value,
      $Res Function(_$ExistingUserSessionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExistingUserSessionImpl implements _ExistingUserSession {
  const _$ExistingUserSessionImpl();

  @override
  String toString() {
    return 'Web3AuthUserSessionState.existingUserSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExistingUserSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingUserSession,
    required TResult Function() existingUserSession,
    required TResult Function() nonExistentUserSession,
  }) {
    return existingUserSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUserSession,
    TResult? Function()? existingUserSession,
    TResult? Function()? nonExistentUserSession,
  }) {
    return existingUserSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUserSession,
    TResult Function()? existingUserSession,
    TResult Function()? nonExistentUserSession,
    required TResult orElse(),
  }) {
    if (existingUserSession != null) {
      return existingUserSession();
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

abstract class _ExistingUserSession implements Web3AuthUserSessionState {
  const factory _ExistingUserSession() = _$ExistingUserSessionImpl;
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
    extends _$Web3AuthUserSessionStateCopyWithImpl<$Res,
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
    return 'Web3AuthUserSessionState.nonExistentUserSession()';
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
    required TResult Function() existingUserSession,
    required TResult Function() nonExistentUserSession,
  }) {
    return nonExistentUserSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingUserSession,
    TResult? Function()? existingUserSession,
    TResult? Function()? nonExistentUserSession,
  }) {
    return nonExistentUserSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingUserSession,
    TResult Function()? existingUserSession,
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

abstract class _NonExistentUserSession implements Web3AuthUserSessionState {
  const factory _NonExistentUserSession() = _$NonExistentUserSessionImpl;
}
