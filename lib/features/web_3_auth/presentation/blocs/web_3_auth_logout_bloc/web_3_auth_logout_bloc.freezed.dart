// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_3_auth_logout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Web3AuthLogoutEvent {
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
abstract class $Web3AuthLogoutEventCopyWith<$Res> {
  factory $Web3AuthLogoutEventCopyWith(
          Web3AuthLogoutEvent value, $Res Function(Web3AuthLogoutEvent) then) =
      _$Web3AuthLogoutEventCopyWithImpl<$Res, Web3AuthLogoutEvent>;
}

/// @nodoc
class _$Web3AuthLogoutEventCopyWithImpl<$Res, $Val extends Web3AuthLogoutEvent>
    implements $Web3AuthLogoutEventCopyWith<$Res> {
  _$Web3AuthLogoutEventCopyWithImpl(this._value, this._then);

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
    extends _$Web3AuthLogoutEventCopyWithImpl<$Res, _$LogoutImpl>
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
    return 'Web3AuthLogoutEvent.logout()';
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

abstract class _Logout implements Web3AuthLogoutEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$Web3AuthLogoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingOut,
    required TResult Function() loggedOut,
    required TResult Function(Web3AuthLogoutFailure failure) failedToLogOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
    TResult? Function(Web3AuthLogoutFailure failure)? failedToLogOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    TResult Function(Web3AuthLogoutFailure failure)? failedToLogOut,
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
abstract class $Web3AuthLogoutStateCopyWith<$Res> {
  factory $Web3AuthLogoutStateCopyWith(
          Web3AuthLogoutState value, $Res Function(Web3AuthLogoutState) then) =
      _$Web3AuthLogoutStateCopyWithImpl<$Res, Web3AuthLogoutState>;
}

/// @nodoc
class _$Web3AuthLogoutStateCopyWithImpl<$Res, $Val extends Web3AuthLogoutState>
    implements $Web3AuthLogoutStateCopyWith<$Res> {
  _$Web3AuthLogoutStateCopyWithImpl(this._value, this._then);

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
    extends _$Web3AuthLogoutStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'Web3AuthLogoutState.initial()';
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
    required TResult Function(Web3AuthLogoutFailure failure) failedToLogOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
    TResult? Function(Web3AuthLogoutFailure failure)? failedToLogOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    TResult Function(Web3AuthLogoutFailure failure)? failedToLogOut,
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

abstract class _Initial implements Web3AuthLogoutState {
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
    extends _$Web3AuthLogoutStateCopyWithImpl<$Res, _$LoggingOutImpl>
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
    return 'Web3AuthLogoutState.loggingOut()';
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
    required TResult Function(Web3AuthLogoutFailure failure) failedToLogOut,
  }) {
    return loggingOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
    TResult? Function(Web3AuthLogoutFailure failure)? failedToLogOut,
  }) {
    return loggingOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    TResult Function(Web3AuthLogoutFailure failure)? failedToLogOut,
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

abstract class _LoggingOut implements Web3AuthLogoutState {
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
    extends _$Web3AuthLogoutStateCopyWithImpl<$Res, _$LoggedOutImpl>
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
    return 'Web3AuthLogoutState.loggedOut()';
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
    required TResult Function(Web3AuthLogoutFailure failure) failedToLogOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
    TResult? Function(Web3AuthLogoutFailure failure)? failedToLogOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    TResult Function(Web3AuthLogoutFailure failure)? failedToLogOut,
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

abstract class _LoggedOut implements Web3AuthLogoutState {
  const factory _LoggedOut() = _$LoggedOutImpl;
}

/// @nodoc
abstract class _$$FailedToLogOutImplCopyWith<$Res> {
  factory _$$FailedToLogOutImplCopyWith(_$FailedToLogOutImpl value,
          $Res Function(_$FailedToLogOutImpl) then) =
      __$$FailedToLogOutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Web3AuthLogoutFailure failure});
}

/// @nodoc
class __$$FailedToLogOutImplCopyWithImpl<$Res>
    extends _$Web3AuthLogoutStateCopyWithImpl<$Res, _$FailedToLogOutImpl>
    implements _$$FailedToLogOutImplCopyWith<$Res> {
  __$$FailedToLogOutImplCopyWithImpl(
      _$FailedToLogOutImpl _value, $Res Function(_$FailedToLogOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailedToLogOutImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Web3AuthLogoutFailure,
    ));
  }
}

/// @nodoc

class _$FailedToLogOutImpl implements _FailedToLogOut {
  const _$FailedToLogOutImpl({required this.failure});

  @override
  final Web3AuthLogoutFailure failure;

  @override
  String toString() {
    return 'Web3AuthLogoutState.failedToLogOut(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToLogOutImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

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
    required TResult Function(Web3AuthLogoutFailure failure) failedToLogOut,
  }) {
    return failedToLogOut(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingOut,
    TResult? Function()? loggedOut,
    TResult? Function(Web3AuthLogoutFailure failure)? failedToLogOut,
  }) {
    return failedToLogOut?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingOut,
    TResult Function()? loggedOut,
    TResult Function(Web3AuthLogoutFailure failure)? failedToLogOut,
    required TResult orElse(),
  }) {
    if (failedToLogOut != null) {
      return failedToLogOut(failure);
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

abstract class _FailedToLogOut implements Web3AuthLogoutState {
  const factory _FailedToLogOut(
      {required final Web3AuthLogoutFailure failure}) = _$FailedToLogOutImpl;

  Web3AuthLogoutFailure get failure;
  @JsonKey(ignore: true)
  _$$FailedToLogOutImplCopyWith<_$FailedToLogOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
