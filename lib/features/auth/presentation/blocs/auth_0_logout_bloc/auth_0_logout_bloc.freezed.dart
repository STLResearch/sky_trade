// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_0_logout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Auth0LogoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Auth0LogoutEventCopyWith<$Res> {
  factory $Auth0LogoutEventCopyWith(
          Auth0LogoutEvent value, $Res Function(Auth0LogoutEvent) then) =
      _$Auth0LogoutEventCopyWithImpl<$Res, Auth0LogoutEvent>;
}

/// @nodoc
class _$Auth0LogoutEventCopyWithImpl<$Res, $Val extends Auth0LogoutEvent>
    implements $Auth0LogoutEventCopyWith<$Res> {
  _$Auth0LogoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$Auth0LogoutEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'Auth0LogoutEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements Auth0LogoutEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$Auth0LogoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
    required TResult Function(Auth0LogoutFailure auth0LogoutFailure)
        failedToLogOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
    TResult? Function(Auth0LogoutFailure auth0LogoutFailure)? failedToLogOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    TResult Function(Auth0LogoutFailure auth0LogoutFailure)? failedToLogOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_FailedToLogOut value) failedToLogOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_FailedToLogOut value)? failedToLogOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_FailedToLogOut value)? failedToLogOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Auth0LogoutStateCopyWith<$Res> {
  factory $Auth0LogoutStateCopyWith(
          Auth0LogoutState value, $Res Function(Auth0LogoutState) then) =
      _$Auth0LogoutStateCopyWithImpl<$Res, Auth0LogoutState>;
}

/// @nodoc
class _$Auth0LogoutStateCopyWithImpl<$Res, $Val extends Auth0LogoutState>
    implements $Auth0LogoutStateCopyWith<$Res> {
  _$Auth0LogoutStateCopyWithImpl(this._value, this._then);

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
    extends _$Auth0LogoutStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'Auth0LogoutState.initial()';
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
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
    required TResult Function(Auth0LogoutFailure auth0LogoutFailure)
        failedToLogOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
    TResult? Function(Auth0LogoutFailure auth0LogoutFailure)? failedToLogOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    TResult Function(Auth0LogoutFailure auth0LogoutFailure)? failedToLogOut,
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
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_FailedToLogOut value) failedToLogOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_FailedToLogOut value)? failedToLogOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_FailedToLogOut value)? failedToLogOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements Auth0LogoutState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoggingOutImplCopyWith<$Res> {
  factory _$$LoggingOutImplCopyWith(
          _$LoggingOutImpl value, $Res Function(_$LoggingOutImpl) then) =
      __$$LoggingOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingOutImplCopyWithImpl<$Res>
    extends _$Auth0LogoutStateCopyWithImpl<$Res, _$LoggingOutImpl>
    implements _$$LoggingOutImplCopyWith<$Res> {
  __$$LoggingOutImplCopyWithImpl(
      _$LoggingOutImpl _value, $Res Function(_$LoggingOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingOutImpl implements _LoggingOut {
  const _$LoggingOutImpl();

  @override
  String toString() {
    return 'Auth0LogoutState.loggingOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
    required TResult Function(Auth0LogoutFailure auth0LogoutFailure)
        failedToLogOut,
  }) {
    return loggingOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
    TResult? Function(Auth0LogoutFailure auth0LogoutFailure)? failedToLogOut,
  }) {
    return loggingOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    TResult Function(Auth0LogoutFailure auth0LogoutFailure)? failedToLogOut,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_FailedToLogOut value) failedToLogOut,
  }) {
    return loggingOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_FailedToLogOut value)? failedToLogOut,
  }) {
    return loggingOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_FailedToLogOut value)? failedToLogOut,
    required TResult orElse(),
  }) {
    if (loggingOut != null) {
      return loggingOut(this);
    }
    return orElse();
  }
}

abstract class _LoggingOut implements Auth0LogoutState {
  const factory _LoggingOut() = _$LoggingOutImpl;
}

/// @nodoc
abstract class _$$LoggedOutImplCopyWith<$Res> {
  factory _$$LoggedOutImplCopyWith(
          _$LoggedOutImpl value, $Res Function(_$LoggedOutImpl) then) =
      __$$LoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggedOutImplCopyWithImpl<$Res>
    extends _$Auth0LogoutStateCopyWithImpl<$Res, _$LoggedOutImpl>
    implements _$$LoggedOutImplCopyWith<$Res> {
  __$$LoggedOutImplCopyWithImpl(
      _$LoggedOutImpl _value, $Res Function(_$LoggedOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggedOutImpl implements _LoggedOut {
  const _$LoggedOutImpl();

  @override
  String toString() {
    return 'Auth0LogoutState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
    required TResult Function(Auth0LogoutFailure auth0LogoutFailure)
        failedToLogOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
    TResult? Function(Auth0LogoutFailure auth0LogoutFailure)? failedToLogOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    TResult Function(Auth0LogoutFailure auth0LogoutFailure)? failedToLogOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_FailedToLogOut value) failedToLogOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_FailedToLogOut value)? failedToLogOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_FailedToLogOut value)? failedToLogOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements Auth0LogoutState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
abstract class _$$FailedToLogOutImplCopyWith<$Res> {
  factory _$$FailedToLogOutImplCopyWith(_$FailedToLogOutImpl value,
          $Res Function(_$FailedToLogOutImpl) then) =
      __$$FailedToLogOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Auth0LogoutFailure auth0LogoutFailure});
}

/// @nodoc
class __$$FailedToLogOutImplCopyWithImpl<$Res>
    extends _$Auth0LogoutStateCopyWithImpl<$Res, _$FailedToLogOutImpl>
    implements _$$FailedToLogOutImplCopyWith<$Res> {
  __$$FailedToLogOutImplCopyWithImpl(
      _$FailedToLogOutImpl _value, $Res Function(_$FailedToLogOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth0LogoutFailure = null,
  }) {
    return _then(_$FailedToLogOutImpl(
      auth0LogoutFailure: null == auth0LogoutFailure
          ? _value.auth0LogoutFailure
          : auth0LogoutFailure // ignore: cast_nullable_to_non_nullable
              as Auth0LogoutFailure,
    ));
  }
}

/// @nodoc

class _$FailedToLogOutImpl implements _FailedToLogOut {
  const _$FailedToLogOutImpl({required this.auth0LogoutFailure});

  @override
  final Auth0LogoutFailure auth0LogoutFailure;

  @override
  String toString() {
    return 'Auth0LogoutState.failedToLogOut(auth0LogoutFailure: $auth0LogoutFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToLogOutImpl &&
            (identical(other.auth0LogoutFailure, auth0LogoutFailure) ||
                other.auth0LogoutFailure == auth0LogoutFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth0LogoutFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToLogOutImplCopyWith<_$FailedToLogOutImpl> get copyWith =>
      __$$FailedToLogOutImplCopyWithImpl<_$FailedToLogOutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
    required TResult Function(Auth0LogoutFailure auth0LogoutFailure)
        failedToLogOut,
  }) {
    return failedToLogOut(auth0LogoutFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
    TResult? Function(Auth0LogoutFailure auth0LogoutFailure)? failedToLogOut,
  }) {
    return failedToLogOut?.call(auth0LogoutFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    TResult Function(Auth0LogoutFailure auth0LogoutFailure)? failedToLogOut,
    required TResult orElse(),
  }) {
    if (failedToLogOut != null) {
      return failedToLogOut(auth0LogoutFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingOut value) loggingOut,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_FailedToLogOut value) failedToLogOut,
  }) {
    return failedToLogOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggingOut value)? loggingOut,
    TResult? Function(_LoggedOut value)? loggedOut,
    TResult? Function(_FailedToLogOut value)? failedToLogOut,
  }) {
    return failedToLogOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingOut value)? loggingOut,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_FailedToLogOut value)? failedToLogOut,
    required TResult orElse(),
  }) {
    if (failedToLogOut != null) {
      return failedToLogOut(this);
    }
    return orElse();
  }
}

abstract class _FailedToLogOut implements Auth0LogoutState {
  const factory _FailedToLogOut(
          {required final Auth0LogoutFailure auth0LogoutFailure}) =
      _$FailedToLogOutImpl;

  Auth0LogoutFailure get auth0LogoutFailure;
  @JsonKey(ignore: true)
  _$$FailedToLogOutImplCopyWith<_$FailedToLogOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
