// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_3_auth_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Web3AuthLoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthProvider provider, String? credential) login,
    required TResult Function(UserEntity userEntity) loginSuccess,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthProvider provider, String? credential)? login,
    TResult? Function(UserEntity userEntity)? loginSuccess,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthProvider provider, String? credential)? login,
    TResult Function(UserEntity userEntity)? loginSuccess,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Web3AuthLoginEventCopyWith<$Res> {
  factory $Web3AuthLoginEventCopyWith(
          Web3AuthLoginEvent value, $Res Function(Web3AuthLoginEvent) then) =
      _$Web3AuthLoginEventCopyWithImpl<$Res, Web3AuthLoginEvent>;
}

/// @nodoc
class _$Web3AuthLoginEventCopyWithImpl<$Res, $Val extends Web3AuthLoginEvent>
    implements $Web3AuthLoginEventCopyWith<$Res> {
  _$Web3AuthLoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthProvider provider, String? credential});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$Web3AuthLoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? credential = freezed,
  }) {
    return _then(_$LoginImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      credential: freezed == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.provider, this.credential});

  @override
  final AuthProvider provider;
  @override
  final String? credential;

  @override
  String toString() {
    return 'Web3AuthLoginEvent.login(provider: $provider, credential: $credential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provider, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthProvider provider, String? credential) login,
    required TResult Function(UserEntity userEntity) loginSuccess,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        loginFailure,
  }) {
    return login(provider, credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthProvider provider, String? credential)? login,
    TResult? Function(UserEntity userEntity)? loginSuccess,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        loginFailure,
  }) {
    return login?.call(provider, credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthProvider provider, String? credential)? login,
    TResult Function(UserEntity userEntity)? loginSuccess,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        loginFailure,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(provider, credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements Web3AuthLoginEvent {
  const factory _Login(
      {required final AuthProvider provider,
      final String? credential}) = _$LoginImpl;

  AuthProvider get provider;
  String? get credential;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity userEntity});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$Web3AuthLoginEventCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
  }) {
    return _then(_$LoginSuccessImpl(
      userEntity: null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl implements _LoginSuccess {
  const _$LoginSuccessImpl({required this.userEntity});

  @override
  final UserEntity userEntity;

  @override
  String toString() {
    return 'Web3AuthLoginEvent.loginSuccess(userEntity: $userEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthProvider provider, String? credential) login,
    required TResult Function(UserEntity userEntity) loginSuccess,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        loginFailure,
  }) {
    return loginSuccess(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthProvider provider, String? credential)? login,
    TResult? Function(UserEntity userEntity)? loginSuccess,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        loginFailure,
  }) {
    return loginSuccess?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthProvider provider, String? credential)? login,
    TResult Function(UserEntity userEntity)? loginSuccess,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoginSuccess implements Web3AuthLoginEvent {
  const factory _LoginSuccess({required final UserEntity userEntity}) =
      _$LoginSuccessImpl;

  UserEntity get userEntity;
  @JsonKey(ignore: true)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginFailureImplCopyWith<$Res> {
  factory _$$LoginFailureImplCopyWith(
          _$LoginFailureImpl value, $Res Function(_$LoginFailureImpl) then) =
      __$$LoginFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Web3AuthAuthenticationFailure web3AuthAuthenticationFailure});
}

/// @nodoc
class __$$LoginFailureImplCopyWithImpl<$Res>
    extends _$Web3AuthLoginEventCopyWithImpl<$Res, _$LoginFailureImpl>
    implements _$$LoginFailureImplCopyWith<$Res> {
  __$$LoginFailureImplCopyWithImpl(
      _$LoginFailureImpl _value, $Res Function(_$LoginFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? web3AuthAuthenticationFailure = null,
  }) {
    return _then(_$LoginFailureImpl(
      web3AuthAuthenticationFailure: null == web3AuthAuthenticationFailure
          ? _value.web3AuthAuthenticationFailure
          : web3AuthAuthenticationFailure // ignore: cast_nullable_to_non_nullable
              as Web3AuthAuthenticationFailure,
    ));
  }
}

/// @nodoc

class _$LoginFailureImpl implements _LoginFailure {
  const _$LoginFailureImpl({required this.web3AuthAuthenticationFailure});

  @override
  final Web3AuthAuthenticationFailure web3AuthAuthenticationFailure;

  @override
  String toString() {
    return 'Web3AuthLoginEvent.loginFailure(web3AuthAuthenticationFailure: $web3AuthAuthenticationFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFailureImpl &&
            (identical(other.web3AuthAuthenticationFailure,
                    web3AuthAuthenticationFailure) ||
                other.web3AuthAuthenticationFailure ==
                    web3AuthAuthenticationFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, web3AuthAuthenticationFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      __$$LoginFailureImplCopyWithImpl<_$LoginFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthProvider provider, String? credential) login,
    required TResult Function(UserEntity userEntity) loginSuccess,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        loginFailure,
  }) {
    return loginFailure(web3AuthAuthenticationFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthProvider provider, String? credential)? login,
    TResult? Function(UserEntity userEntity)? loginSuccess,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        loginFailure,
  }) {
    return loginFailure?.call(web3AuthAuthenticationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthProvider provider, String? credential)? login,
    TResult Function(UserEntity userEntity)? loginSuccess,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(web3AuthAuthenticationFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_LoginSuccess value) loginSuccess,
    required TResult Function(_LoginFailure value) loginFailure,
  }) {
    return loginFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_LoginSuccess value)? loginSuccess,
    TResult? Function(_LoginFailure value)? loginFailure,
  }) {
    return loginFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_LoginSuccess value)? loginSuccess,
    TResult Function(_LoginFailure value)? loginFailure,
    required TResult orElse(),
  }) {
    if (loginFailure != null) {
      return loginFailure(this);
    }
    return orElse();
  }
}

abstract class _LoginFailure implements Web3AuthLoginEvent {
  const factory _LoginFailure(
      {required final Web3AuthAuthenticationFailure
          web3AuthAuthenticationFailure}) = _$LoginFailureImpl;

  Web3AuthAuthenticationFailure get web3AuthAuthenticationFailure;
  @JsonKey(ignore: true)
  _$$LoginFailureImplCopyWith<_$LoginFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Web3AuthLoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(UserEntity userEntity) loggedIn,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        failedToLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(UserEntity userEntity)? loggedIn,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(UserEntity userEntity)? loggedIn,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToLogIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_FailedToLogIn value) failedToLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_FailedToLogIn value)? failedToLogIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_FailedToLogIn value)? failedToLogIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Web3AuthLoginStateCopyWith<$Res> {
  factory $Web3AuthLoginStateCopyWith(
          Web3AuthLoginState value, $Res Function(Web3AuthLoginState) then) =
      _$Web3AuthLoginStateCopyWithImpl<$Res, Web3AuthLoginState>;
}

/// @nodoc
class _$Web3AuthLoginStateCopyWithImpl<$Res, $Val extends Web3AuthLoginState>
    implements $Web3AuthLoginStateCopyWith<$Res> {
  _$Web3AuthLoginStateCopyWithImpl(this._value, this._then);

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
    extends _$Web3AuthLoginStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'Web3AuthLoginState.initial()';
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
    required TResult Function() loggingIn,
    required TResult Function(UserEntity userEntity) loggedIn,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        failedToLogIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(UserEntity userEntity)? loggedIn,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToLogIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(UserEntity userEntity)? loggedIn,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToLogIn,
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
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_FailedToLogIn value) failedToLogIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_FailedToLogIn value)? failedToLogIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_FailedToLogIn value)? failedToLogIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements Web3AuthLoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoggingInImplCopyWith<$Res> {
  factory _$$LoggingInImplCopyWith(
          _$LoggingInImpl value, $Res Function(_$LoggingInImpl) then) =
      __$$LoggingInImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoggingInImplCopyWithImpl<$Res>
    extends _$Web3AuthLoginStateCopyWithImpl<$Res, _$LoggingInImpl>
    implements _$$LoggingInImplCopyWith<$Res> {
  __$$LoggingInImplCopyWithImpl(
      _$LoggingInImpl _value, $Res Function(_$LoggingInImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoggingInImpl implements _LoggingIn {
  const _$LoggingInImpl();

  @override
  String toString() {
    return 'Web3AuthLoginState.loggingIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoggingInImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(UserEntity userEntity) loggedIn,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        failedToLogIn,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(UserEntity userEntity)? loggedIn,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToLogIn,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(UserEntity userEntity)? loggedIn,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToLogIn,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_FailedToLogIn value) failedToLogIn,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_FailedToLogIn value)? failedToLogIn,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_FailedToLogIn value)? failedToLogIn,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }
}

abstract class _LoggingIn implements Web3AuthLoginState {
  const factory _LoggingIn() = _$LoggingInImpl;
}

/// @nodoc
abstract class _$$LoggedInImplCopyWith<$Res> {
  factory _$$LoggedInImplCopyWith(
          _$LoggedInImpl value, $Res Function(_$LoggedInImpl) then) =
      __$$LoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity userEntity});
}

/// @nodoc
class __$$LoggedInImplCopyWithImpl<$Res>
    extends _$Web3AuthLoginStateCopyWithImpl<$Res, _$LoggedInImpl>
    implements _$$LoggedInImplCopyWith<$Res> {
  __$$LoggedInImplCopyWithImpl(
      _$LoggedInImpl _value, $Res Function(_$LoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
  }) {
    return _then(_$LoggedInImpl(
      userEntity: null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc

class _$LoggedInImpl implements _LoggedIn {
  const _$LoggedInImpl({required this.userEntity});

  @override
  final UserEntity userEntity;

  @override
  String toString() {
    return 'Web3AuthLoginState.loggedIn(userEntity: $userEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedInImpl &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      __$$LoggedInImplCopyWithImpl<_$LoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(UserEntity userEntity) loggedIn,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        failedToLogIn,
  }) {
    return loggedIn(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(UserEntity userEntity)? loggedIn,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToLogIn,
  }) {
    return loggedIn?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(UserEntity userEntity)? loggedIn,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToLogIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_FailedToLogIn value) failedToLogIn,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_FailedToLogIn value)? failedToLogIn,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_FailedToLogIn value)? failedToLogIn,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements Web3AuthLoginState {
  const factory _LoggedIn({required final UserEntity userEntity}) =
      _$LoggedInImpl;

  UserEntity get userEntity;
  @JsonKey(ignore: true)
  _$$LoggedInImplCopyWith<_$LoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToLogInImplCopyWith<$Res> {
  factory _$$FailedToLogInImplCopyWith(
          _$FailedToLogInImpl value, $Res Function(_$FailedToLogInImpl) then) =
      __$$FailedToLogInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Web3AuthAuthenticationFailure web3AuthAuthenticationFailure});
}

/// @nodoc
class __$$FailedToLogInImplCopyWithImpl<$Res>
    extends _$Web3AuthLoginStateCopyWithImpl<$Res, _$FailedToLogInImpl>
    implements _$$FailedToLogInImplCopyWith<$Res> {
  __$$FailedToLogInImplCopyWithImpl(
      _$FailedToLogInImpl _value, $Res Function(_$FailedToLogInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? web3AuthAuthenticationFailure = null,
  }) {
    return _then(_$FailedToLogInImpl(
      web3AuthAuthenticationFailure: null == web3AuthAuthenticationFailure
          ? _value.web3AuthAuthenticationFailure
          : web3AuthAuthenticationFailure // ignore: cast_nullable_to_non_nullable
              as Web3AuthAuthenticationFailure,
    ));
  }
}

/// @nodoc

class _$FailedToLogInImpl implements _FailedToLogIn {
  const _$FailedToLogInImpl({required this.web3AuthAuthenticationFailure});

  @override
  final Web3AuthAuthenticationFailure web3AuthAuthenticationFailure;

  @override
  String toString() {
    return 'Web3AuthLoginState.failedToLogIn(web3AuthAuthenticationFailure: $web3AuthAuthenticationFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToLogInImpl &&
            (identical(other.web3AuthAuthenticationFailure,
                    web3AuthAuthenticationFailure) ||
                other.web3AuthAuthenticationFailure ==
                    web3AuthAuthenticationFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, web3AuthAuthenticationFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToLogInImplCopyWith<_$FailedToLogInImpl> get copyWith =>
      __$$FailedToLogInImplCopyWithImpl<_$FailedToLogInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function(UserEntity userEntity) loggedIn,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        failedToLogIn,
  }) {
    return failedToLogIn(web3AuthAuthenticationFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loggingIn,
    TResult? Function(UserEntity userEntity)? loggedIn,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToLogIn,
  }) {
    return failedToLogIn?.call(web3AuthAuthenticationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function(UserEntity userEntity)? loggedIn,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToLogIn,
    required TResult orElse(),
  }) {
    if (failedToLogIn != null) {
      return failedToLogIn(web3AuthAuthenticationFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_FailedToLogIn value) failedToLogIn,
  }) {
    return failedToLogIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoggingIn value)? loggingIn,
    TResult? Function(_LoggedIn value)? loggedIn,
    TResult? Function(_FailedToLogIn value)? failedToLogIn,
  }) {
    return failedToLogIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_FailedToLogIn value)? failedToLogIn,
    required TResult orElse(),
  }) {
    if (failedToLogIn != null) {
      return failedToLogIn(this);
    }
    return orElse();
  }
}

abstract class _FailedToLogIn implements Web3AuthLoginState {
  const factory _FailedToLogIn(
      {required final Web3AuthAuthenticationFailure
          web3AuthAuthenticationFailure}) = _$FailedToLogInImpl;

  Web3AuthAuthenticationFailure get web3AuthAuthenticationFailure;
  @JsonKey(ignore: true)
  _$$FailedToLogInImplCopyWith<_$FailedToLogInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
