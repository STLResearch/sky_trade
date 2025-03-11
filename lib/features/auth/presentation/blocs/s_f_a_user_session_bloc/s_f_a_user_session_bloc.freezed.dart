// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's_f_a_user_session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SFAUserSessionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSession value) checkSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckSession value)? checkSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSession value)? checkSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SFAUserSessionEventCopyWith<$Res> {
  factory $SFAUserSessionEventCopyWith(
          SFAUserSessionEvent value, $Res Function(SFAUserSessionEvent) then) =
      _$SFAUserSessionEventCopyWithImpl<$Res, SFAUserSessionEvent>;
}

/// @nodoc
class _$SFAUserSessionEventCopyWithImpl<$Res, $Val extends SFAUserSessionEvent>
    implements $SFAUserSessionEventCopyWith<$Res> {
  _$SFAUserSessionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckSessionImplCopyWith<$Res> {
  factory _$$CheckSessionImplCopyWith(
          _$CheckSessionImpl value, $Res Function(_$CheckSessionImpl) then) =
      __$$CheckSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckSessionImplCopyWithImpl<$Res>
    extends _$SFAUserSessionEventCopyWithImpl<$Res, _$CheckSessionImpl>
    implements _$$CheckSessionImplCopyWith<$Res> {
  __$$CheckSessionImplCopyWithImpl(
      _$CheckSessionImpl _value, $Res Function(_$CheckSessionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckSessionImpl implements _CheckSession {
  const _$CheckSessionImpl();

  @override
  String toString() {
    return 'SFAUserSessionEvent.checkSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSession,
  }) {
    return checkSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSession,
  }) {
    return checkSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSession,
    required TResult orElse(),
  }) {
    if (checkSession != null) {
      return checkSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSession value) checkSession,
  }) {
    return checkSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckSession value)? checkSession,
  }) {
    return checkSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSession value)? checkSession,
    required TResult orElse(),
  }) {
    if (checkSession != null) {
      return checkSession(this);
    }
    return orElse();
  }
}

abstract class _CheckSession implements SFAUserSessionEvent {
  const factory _CheckSession() = _$CheckSessionImpl;
}

/// @nodoc
mixin _$SFAUserSessionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingSession,
    required TResult Function() sessionExist,
    required TResult Function() sessionNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingSession,
    TResult? Function()? sessionExist,
    TResult? Function()? sessionNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingSession,
    TResult Function()? sessionExist,
    TResult Function()? sessionNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingSession value) checkingSession,
    required TResult Function(_SessionExist value) sessionExist,
    required TResult Function(_SessionNotExist value) sessionNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingSession value)? checkingSession,
    TResult? Function(_SessionExist value)? sessionExist,
    TResult? Function(_SessionNotExist value)? sessionNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingSession value)? checkingSession,
    TResult Function(_SessionExist value)? sessionExist,
    TResult Function(_SessionNotExist value)? sessionNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SFAUserSessionStateCopyWith<$Res> {
  factory $SFAUserSessionStateCopyWith(
          SFAUserSessionState value, $Res Function(SFAUserSessionState) then) =
      _$SFAUserSessionStateCopyWithImpl<$Res, SFAUserSessionState>;
}

/// @nodoc
class _$SFAUserSessionStateCopyWithImpl<$Res, $Val extends SFAUserSessionState>
    implements $SFAUserSessionStateCopyWith<$Res> {
  _$SFAUserSessionStateCopyWithImpl(this._value, this._then);

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
    extends _$SFAUserSessionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SFAUserSessionState.initial()';
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
    required TResult Function() checkingSession,
    required TResult Function() sessionExist,
    required TResult Function() sessionNotExist,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingSession,
    TResult? Function()? sessionExist,
    TResult? Function()? sessionNotExist,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingSession,
    TResult Function()? sessionExist,
    TResult Function()? sessionNotExist,
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
    required TResult Function(_CheckingSession value) checkingSession,
    required TResult Function(_SessionExist value) sessionExist,
    required TResult Function(_SessionNotExist value) sessionNotExist,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingSession value)? checkingSession,
    TResult? Function(_SessionExist value)? sessionExist,
    TResult? Function(_SessionNotExist value)? sessionNotExist,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingSession value)? checkingSession,
    TResult Function(_SessionExist value)? sessionExist,
    TResult Function(_SessionNotExist value)? sessionNotExist,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SFAUserSessionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckingSessionImplCopyWith<$Res> {
  factory _$$CheckingSessionImplCopyWith(_$CheckingSessionImpl value,
          $Res Function(_$CheckingSessionImpl) then) =
      __$$CheckingSessionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingSessionImplCopyWithImpl<$Res>
    extends _$SFAUserSessionStateCopyWithImpl<$Res, _$CheckingSessionImpl>
    implements _$$CheckingSessionImplCopyWith<$Res> {
  __$$CheckingSessionImplCopyWithImpl(
      _$CheckingSessionImpl _value, $Res Function(_$CheckingSessionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckingSessionImpl implements _CheckingSession {
  const _$CheckingSessionImpl();

  @override
  String toString() {
    return 'SFAUserSessionState.checkingSession()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingSessionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingSession,
    required TResult Function() sessionExist,
    required TResult Function() sessionNotExist,
  }) {
    return checkingSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingSession,
    TResult? Function()? sessionExist,
    TResult? Function()? sessionNotExist,
  }) {
    return checkingSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingSession,
    TResult Function()? sessionExist,
    TResult Function()? sessionNotExist,
    required TResult orElse(),
  }) {
    if (checkingSession != null) {
      return checkingSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingSession value) checkingSession,
    required TResult Function(_SessionExist value) sessionExist,
    required TResult Function(_SessionNotExist value) sessionNotExist,
  }) {
    return checkingSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingSession value)? checkingSession,
    TResult? Function(_SessionExist value)? sessionExist,
    TResult? Function(_SessionNotExist value)? sessionNotExist,
  }) {
    return checkingSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingSession value)? checkingSession,
    TResult Function(_SessionExist value)? sessionExist,
    TResult Function(_SessionNotExist value)? sessionNotExist,
    required TResult orElse(),
  }) {
    if (checkingSession != null) {
      return checkingSession(this);
    }
    return orElse();
  }
}

abstract class _CheckingSession implements SFAUserSessionState {
  const factory _CheckingSession() = _$CheckingSessionImpl;
}

/// @nodoc
abstract class _$$SessionExistImplCopyWith<$Res> {
  factory _$$SessionExistImplCopyWith(
          _$SessionExistImpl value, $Res Function(_$SessionExistImpl) then) =
      __$$SessionExistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionExistImplCopyWithImpl<$Res>
    extends _$SFAUserSessionStateCopyWithImpl<$Res, _$SessionExistImpl>
    implements _$$SessionExistImplCopyWith<$Res> {
  __$$SessionExistImplCopyWithImpl(
      _$SessionExistImpl _value, $Res Function(_$SessionExistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionExistImpl implements _SessionExist {
  const _$SessionExistImpl();

  @override
  String toString() {
    return 'SFAUserSessionState.sessionExist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionExistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingSession,
    required TResult Function() sessionExist,
    required TResult Function() sessionNotExist,
  }) {
    return sessionExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingSession,
    TResult? Function()? sessionExist,
    TResult? Function()? sessionNotExist,
  }) {
    return sessionExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingSession,
    TResult Function()? sessionExist,
    TResult Function()? sessionNotExist,
    required TResult orElse(),
  }) {
    if (sessionExist != null) {
      return sessionExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingSession value) checkingSession,
    required TResult Function(_SessionExist value) sessionExist,
    required TResult Function(_SessionNotExist value) sessionNotExist,
  }) {
    return sessionExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingSession value)? checkingSession,
    TResult? Function(_SessionExist value)? sessionExist,
    TResult? Function(_SessionNotExist value)? sessionNotExist,
  }) {
    return sessionExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingSession value)? checkingSession,
    TResult Function(_SessionExist value)? sessionExist,
    TResult Function(_SessionNotExist value)? sessionNotExist,
    required TResult orElse(),
  }) {
    if (sessionExist != null) {
      return sessionExist(this);
    }
    return orElse();
  }
}

abstract class _SessionExist implements SFAUserSessionState {
  const factory _SessionExist() = _$SessionExistImpl;
}

/// @nodoc
abstract class _$$SessionNotExistImplCopyWith<$Res> {
  factory _$$SessionNotExistImplCopyWith(_$SessionNotExistImpl value,
          $Res Function(_$SessionNotExistImpl) then) =
      __$$SessionNotExistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionNotExistImplCopyWithImpl<$Res>
    extends _$SFAUserSessionStateCopyWithImpl<$Res, _$SessionNotExistImpl>
    implements _$$SessionNotExistImplCopyWith<$Res> {
  __$$SessionNotExistImplCopyWithImpl(
      _$SessionNotExistImpl _value, $Res Function(_$SessionNotExistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionNotExistImpl implements _SessionNotExist {
  const _$SessionNotExistImpl();

  @override
  String toString() {
    return 'SFAUserSessionState.sessionNotExist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionNotExistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingSession,
    required TResult Function() sessionExist,
    required TResult Function() sessionNotExist,
  }) {
    return sessionNotExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingSession,
    TResult? Function()? sessionExist,
    TResult? Function()? sessionNotExist,
  }) {
    return sessionNotExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingSession,
    TResult Function()? sessionExist,
    TResult Function()? sessionNotExist,
    required TResult orElse(),
  }) {
    if (sessionNotExist != null) {
      return sessionNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingSession value) checkingSession,
    required TResult Function(_SessionExist value) sessionExist,
    required TResult Function(_SessionNotExist value) sessionNotExist,
  }) {
    return sessionNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingSession value)? checkingSession,
    TResult? Function(_SessionExist value)? sessionExist,
    TResult? Function(_SessionNotExist value)? sessionNotExist,
  }) {
    return sessionNotExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingSession value)? checkingSession,
    TResult Function(_SessionExist value)? sessionExist,
    TResult Function(_SessionNotExist value)? sessionNotExist,
    required TResult orElse(),
  }) {
    if (sessionNotExist != null) {
      return sessionNotExist(this);
    }
    return orElse();
  }
}

abstract class _SessionNotExist implements SFAUserSessionState {
  const factory _SessionNotExist() = _$SessionNotExistImpl;
}
