// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_0_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Auth0AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Auth0AuthenticationEventCopyWith<$Res> {
  factory $Auth0AuthenticationEventCopyWith(Auth0AuthenticationEvent value,
          $Res Function(Auth0AuthenticationEvent) then) =
      _$Auth0AuthenticationEventCopyWithImpl<$Res, Auth0AuthenticationEvent>;
}

/// @nodoc
class _$Auth0AuthenticationEventCopyWithImpl<$Res,
        $Val extends Auth0AuthenticationEvent>
    implements $Auth0AuthenticationEventCopyWith<$Res> {
  _$Auth0AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Auth0AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthenticateImplCopyWith<$Res> {
  factory _$$AuthenticateImplCopyWith(
          _$AuthenticateImpl value, $Res Function(_$AuthenticateImpl) then) =
      __$$AuthenticateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateImplCopyWithImpl<$Res>
    extends _$Auth0AuthenticationEventCopyWithImpl<$Res, _$AuthenticateImpl>
    implements _$$AuthenticateImplCopyWith<$Res> {
  __$$AuthenticateImplCopyWithImpl(
      _$AuthenticateImpl _value, $Res Function(_$AuthenticateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth0AuthenticationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticateImpl implements _Authenticate {
  const _$AuthenticateImpl();

  @override
  String toString() {
    return 'Auth0AuthenticationEvent.authenticate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements Auth0AuthenticationEvent {
  const factory _Authenticate() = _$AuthenticateImpl;
}

/// @nodoc
mixin _$Auth0AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(Auth0UserEntity auth0UserEntity) authenticated,
    required TResult Function(
            Auth0AuthenticationFailure auth0AuthenticationFailure)
        failedToAuthenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(Auth0UserEntity auth0UserEntity)? authenticated,
    TResult? Function(Auth0AuthenticationFailure auth0AuthenticationFailure)?
        failedToAuthenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(Auth0UserEntity auth0UserEntity)? authenticated,
    TResult Function(Auth0AuthenticationFailure auth0AuthenticationFailure)?
        failedToAuthenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToAuthenticate value)? failedToAuthenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Auth0AuthenticationStateCopyWith<$Res> {
  factory $Auth0AuthenticationStateCopyWith(Auth0AuthenticationState value,
          $Res Function(Auth0AuthenticationState) then) =
      _$Auth0AuthenticationStateCopyWithImpl<$Res, Auth0AuthenticationState>;
}

/// @nodoc
class _$Auth0AuthenticationStateCopyWithImpl<$Res,
        $Val extends Auth0AuthenticationState>
    implements $Auth0AuthenticationStateCopyWith<$Res> {
  _$Auth0AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Auth0AuthenticationState
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
    extends _$Auth0AuthenticationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth0AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'Auth0AuthenticationState.initial()';
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
    required TResult Function() authenticating,
    required TResult Function(Auth0UserEntity auth0UserEntity) authenticated,
    required TResult Function(
            Auth0AuthenticationFailure auth0AuthenticationFailure)
        failedToAuthenticate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(Auth0UserEntity auth0UserEntity)? authenticated,
    TResult? Function(Auth0AuthenticationFailure auth0AuthenticationFailure)?
        failedToAuthenticate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(Auth0UserEntity auth0UserEntity)? authenticated,
    TResult Function(Auth0AuthenticationFailure auth0AuthenticationFailure)?
        failedToAuthenticate,
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
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToAuthenticate value)? failedToAuthenticate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements Auth0AuthenticationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthenticatingImplCopyWith<$Res> {
  factory _$$AuthenticatingImplCopyWith(_$AuthenticatingImpl value,
          $Res Function(_$AuthenticatingImpl) then) =
      __$$AuthenticatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatingImplCopyWithImpl<$Res>
    extends _$Auth0AuthenticationStateCopyWithImpl<$Res, _$AuthenticatingImpl>
    implements _$$AuthenticatingImplCopyWith<$Res> {
  __$$AuthenticatingImplCopyWithImpl(
      _$AuthenticatingImpl _value, $Res Function(_$AuthenticatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth0AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticatingImpl implements _Authenticating {
  const _$AuthenticatingImpl();

  @override
  String toString() {
    return 'Auth0AuthenticationState.authenticating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(Auth0UserEntity auth0UserEntity) authenticated,
    required TResult Function(
            Auth0AuthenticationFailure auth0AuthenticationFailure)
        failedToAuthenticate,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(Auth0UserEntity auth0UserEntity)? authenticated,
    TResult? Function(Auth0AuthenticationFailure auth0AuthenticationFailure)?
        failedToAuthenticate,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(Auth0UserEntity auth0UserEntity)? authenticated,
    TResult Function(Auth0AuthenticationFailure auth0AuthenticationFailure)?
        failedToAuthenticate,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToAuthenticate value)? failedToAuthenticate,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _Authenticating implements Auth0AuthenticationState {
  const factory _Authenticating() = _$AuthenticatingImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Auth0UserEntity auth0UserEntity});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$Auth0AuthenticationStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth0AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth0UserEntity = null,
  }) {
    return _then(_$AuthenticatedImpl(
      auth0UserEntity: null == auth0UserEntity
          ? _value.auth0UserEntity
          : auth0UserEntity // ignore: cast_nullable_to_non_nullable
              as Auth0UserEntity,
    ));
  }
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl({required this.auth0UserEntity});

  @override
  final Auth0UserEntity auth0UserEntity;

  @override
  String toString() {
    return 'Auth0AuthenticationState.authenticated(auth0UserEntity: $auth0UserEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.auth0UserEntity, auth0UserEntity) ||
                other.auth0UserEntity == auth0UserEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth0UserEntity);

  /// Create a copy of Auth0AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(Auth0UserEntity auth0UserEntity) authenticated,
    required TResult Function(
            Auth0AuthenticationFailure auth0AuthenticationFailure)
        failedToAuthenticate,
  }) {
    return authenticated(auth0UserEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(Auth0UserEntity auth0UserEntity)? authenticated,
    TResult? Function(Auth0AuthenticationFailure auth0AuthenticationFailure)?
        failedToAuthenticate,
  }) {
    return authenticated?.call(auth0UserEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(Auth0UserEntity auth0UserEntity)? authenticated,
    TResult Function(Auth0AuthenticationFailure auth0AuthenticationFailure)?
        failedToAuthenticate,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(auth0UserEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToAuthenticate value)? failedToAuthenticate,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements Auth0AuthenticationState {
  const factory _Authenticated(
      {required final Auth0UserEntity auth0UserEntity}) = _$AuthenticatedImpl;

  Auth0UserEntity get auth0UserEntity;

  /// Create a copy of Auth0AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToAuthenticateImplCopyWith<$Res> {
  factory _$$FailedToAuthenticateImplCopyWith(_$FailedToAuthenticateImpl value,
          $Res Function(_$FailedToAuthenticateImpl) then) =
      __$$FailedToAuthenticateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Auth0AuthenticationFailure auth0AuthenticationFailure});
}

/// @nodoc
class __$$FailedToAuthenticateImplCopyWithImpl<$Res>
    extends _$Auth0AuthenticationStateCopyWithImpl<$Res,
        _$FailedToAuthenticateImpl>
    implements _$$FailedToAuthenticateImplCopyWith<$Res> {
  __$$FailedToAuthenticateImplCopyWithImpl(_$FailedToAuthenticateImpl _value,
      $Res Function(_$FailedToAuthenticateImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth0AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth0AuthenticationFailure = null,
  }) {
    return _then(_$FailedToAuthenticateImpl(
      auth0AuthenticationFailure: null == auth0AuthenticationFailure
          ? _value.auth0AuthenticationFailure
          : auth0AuthenticationFailure // ignore: cast_nullable_to_non_nullable
              as Auth0AuthenticationFailure,
    ));
  }
}

/// @nodoc

class _$FailedToAuthenticateImpl implements _FailedToAuthenticate {
  const _$FailedToAuthenticateImpl({required this.auth0AuthenticationFailure});

  @override
  final Auth0AuthenticationFailure auth0AuthenticationFailure;

  @override
  String toString() {
    return 'Auth0AuthenticationState.failedToAuthenticate(auth0AuthenticationFailure: $auth0AuthenticationFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToAuthenticateImpl &&
            (identical(other.auth0AuthenticationFailure,
                    auth0AuthenticationFailure) ||
                other.auth0AuthenticationFailure ==
                    auth0AuthenticationFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth0AuthenticationFailure);

  /// Create a copy of Auth0AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToAuthenticateImplCopyWith<_$FailedToAuthenticateImpl>
      get copyWith =>
          __$$FailedToAuthenticateImplCopyWithImpl<_$FailedToAuthenticateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(Auth0UserEntity auth0UserEntity) authenticated,
    required TResult Function(
            Auth0AuthenticationFailure auth0AuthenticationFailure)
        failedToAuthenticate,
  }) {
    return failedToAuthenticate(auth0AuthenticationFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(Auth0UserEntity auth0UserEntity)? authenticated,
    TResult? Function(Auth0AuthenticationFailure auth0AuthenticationFailure)?
        failedToAuthenticate,
  }) {
    return failedToAuthenticate?.call(auth0AuthenticationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(Auth0UserEntity auth0UserEntity)? authenticated,
    TResult Function(Auth0AuthenticationFailure auth0AuthenticationFailure)?
        failedToAuthenticate,
    required TResult orElse(),
  }) {
    if (failedToAuthenticate != null) {
      return failedToAuthenticate(auth0AuthenticationFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToAuthenticate value) failedToAuthenticate,
  }) {
    return failedToAuthenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToAuthenticate value)? failedToAuthenticate,
  }) {
    return failedToAuthenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToAuthenticate value)? failedToAuthenticate,
    required TResult orElse(),
  }) {
    if (failedToAuthenticate != null) {
      return failedToAuthenticate(this);
    }
    return orElse();
  }
}

abstract class _FailedToAuthenticate implements Auth0AuthenticationState {
  const factory _FailedToAuthenticate(
      {required final Auth0AuthenticationFailure
          auth0AuthenticationFailure}) = _$FailedToAuthenticateImpl;

  Auth0AuthenticationFailure get auth0AuthenticationFailure;

  /// Create a copy of Auth0AuthenticationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToAuthenticateImplCopyWith<_$FailedToAuthenticateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
