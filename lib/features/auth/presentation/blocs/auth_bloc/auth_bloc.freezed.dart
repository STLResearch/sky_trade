// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() authenticateUserWithAuth0,
    required TResult Function(String? email, String idToken)
        authenticateUserWithSFA,
    required TResult Function() checkSkyTradeUserExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function() createSkyTradeUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult? Function()? checkSkyTradeUserExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function()? createSkyTradeUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult Function()? checkSkyTradeUserExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function()? createSkyTradeUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateUserWithSFA value)
        authenticateUserWithSFA,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
    required TResult Function(
            _LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_CreateSkyTradeUser value) createSkyTradeUser,
    required TResult Function(
            _LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult? Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult? Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticateImplCopyWith<$Res> {
  factory _$$AuthenticateImplCopyWith(
          _$AuthenticateImpl value, $Res Function(_$AuthenticateImpl) then) =
      __$$AuthenticateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthenticateImpl>
    implements _$$AuthenticateImplCopyWith<$Res> {
  __$$AuthenticateImplCopyWithImpl(
      _$AuthenticateImpl _value, $Res Function(_$AuthenticateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticateImpl implements _Authenticate {
  const _$AuthenticateImpl();

  @override
  String toString() {
    return 'AuthEvent.authenticate()';
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
    required TResult Function() authenticateUserWithAuth0,
    required TResult Function(String? email, String idToken)
        authenticateUserWithSFA,
    required TResult Function() checkSkyTradeUserExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function() createSkyTradeUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult? Function()? checkSkyTradeUserExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function()? createSkyTradeUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult Function()? checkSkyTradeUserExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function()? createSkyTradeUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
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
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateUserWithSFA value)
        authenticateUserWithSFA,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
    required TResult Function(
            _LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_CreateSkyTradeUser value) createSkyTradeUser,
    required TResult Function(
            _LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult? Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult? Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements AuthEvent {
  const factory _Authenticate() = _$AuthenticateImpl;
}

/// @nodoc
abstract class _$$AuthenticateUserWithAuth0ImplCopyWith<$Res> {
  factory _$$AuthenticateUserWithAuth0ImplCopyWith(
          _$AuthenticateUserWithAuth0Impl value,
          $Res Function(_$AuthenticateUserWithAuth0Impl) then) =
      __$$AuthenticateUserWithAuth0ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateUserWithAuth0ImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthenticateUserWithAuth0Impl>
    implements _$$AuthenticateUserWithAuth0ImplCopyWith<$Res> {
  __$$AuthenticateUserWithAuth0ImplCopyWithImpl(
      _$AuthenticateUserWithAuth0Impl _value,
      $Res Function(_$AuthenticateUserWithAuth0Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticateUserWithAuth0Impl implements _AuthenticateUserWithAuth0 {
  const _$AuthenticateUserWithAuth0Impl();

  @override
  String toString() {
    return 'AuthEvent.authenticateUserWithAuth0()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateUserWithAuth0Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() authenticateUserWithAuth0,
    required TResult Function(String? email, String idToken)
        authenticateUserWithSFA,
    required TResult Function() checkSkyTradeUserExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function() createSkyTradeUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticateUserWithAuth0();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult? Function()? checkSkyTradeUserExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function()? createSkyTradeUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticateUserWithAuth0?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult Function()? checkSkyTradeUserExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function()? createSkyTradeUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (authenticateUserWithAuth0 != null) {
      return authenticateUserWithAuth0();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateUserWithSFA value)
        authenticateUserWithSFA,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
    required TResult Function(
            _LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_CreateSkyTradeUser value) createSkyTradeUser,
    required TResult Function(
            _LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticateUserWithAuth0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult? Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult? Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticateUserWithAuth0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (authenticateUserWithAuth0 != null) {
      return authenticateUserWithAuth0(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateUserWithAuth0 implements AuthEvent {
  const factory _AuthenticateUserWithAuth0() = _$AuthenticateUserWithAuth0Impl;
}

/// @nodoc
abstract class _$$AuthenticateUserWithSFAImplCopyWith<$Res> {
  factory _$$AuthenticateUserWithSFAImplCopyWith(
          _$AuthenticateUserWithSFAImpl value,
          $Res Function(_$AuthenticateUserWithSFAImpl) then) =
      __$$AuthenticateUserWithSFAImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email, String idToken});
}

/// @nodoc
class __$$AuthenticateUserWithSFAImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthenticateUserWithSFAImpl>
    implements _$$AuthenticateUserWithSFAImplCopyWith<$Res> {
  __$$AuthenticateUserWithSFAImplCopyWithImpl(
      _$AuthenticateUserWithSFAImpl _value,
      $Res Function(_$AuthenticateUserWithSFAImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? idToken = null,
  }) {
    return _then(_$AuthenticateUserWithSFAImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticateUserWithSFAImpl implements _AuthenticateUserWithSFA {
  const _$AuthenticateUserWithSFAImpl(
      {required this.email, required this.idToken});

  @override
  final String? email;
  @override
  final String idToken;

  @override
  String toString() {
    return 'AuthEvent.authenticateUserWithSFA(email: $email, idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateUserWithSFAImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, idToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateUserWithSFAImplCopyWith<_$AuthenticateUserWithSFAImpl>
      get copyWith => __$$AuthenticateUserWithSFAImplCopyWithImpl<
          _$AuthenticateUserWithSFAImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() authenticateUserWithAuth0,
    required TResult Function(String? email, String idToken)
        authenticateUserWithSFA,
    required TResult Function() checkSkyTradeUserExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function() createSkyTradeUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticateUserWithSFA(email, idToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult? Function()? checkSkyTradeUserExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function()? createSkyTradeUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticateUserWithSFA?.call(email, idToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult Function()? checkSkyTradeUserExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function()? createSkyTradeUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (authenticateUserWithSFA != null) {
      return authenticateUserWithSFA(email, idToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateUserWithSFA value)
        authenticateUserWithSFA,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
    required TResult Function(
            _LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_CreateSkyTradeUser value) createSkyTradeUser,
    required TResult Function(
            _LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticateUserWithSFA(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult? Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult? Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return authenticateUserWithSFA?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (authenticateUserWithSFA != null) {
      return authenticateUserWithSFA(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateUserWithSFA implements AuthEvent {
  const factory _AuthenticateUserWithSFA(
      {required final String? email,
      required final String idToken}) = _$AuthenticateUserWithSFAImpl;

  String? get email;
  String get idToken;
  @JsonKey(ignore: true)
  _$$AuthenticateUserWithSFAImplCopyWith<_$AuthenticateUserWithSFAImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckSkyTradeUserExistsImplCopyWith<$Res> {
  factory _$$CheckSkyTradeUserExistsImplCopyWith(
          _$CheckSkyTradeUserExistsImpl value,
          $Res Function(_$CheckSkyTradeUserExistsImpl) then) =
      __$$CheckSkyTradeUserExistsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckSkyTradeUserExistsImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckSkyTradeUserExistsImpl>
    implements _$$CheckSkyTradeUserExistsImplCopyWith<$Res> {
  __$$CheckSkyTradeUserExistsImplCopyWithImpl(
      _$CheckSkyTradeUserExistsImpl _value,
      $Res Function(_$CheckSkyTradeUserExistsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckSkyTradeUserExistsImpl implements _CheckSkyTradeUserExists {
  const _$CheckSkyTradeUserExistsImpl();

  @override
  String toString() {
    return 'AuthEvent.checkSkyTradeUserExists()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckSkyTradeUserExistsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() authenticateUserWithAuth0,
    required TResult Function(String? email, String idToken)
        authenticateUserWithSFA,
    required TResult Function() checkSkyTradeUserExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function() createSkyTradeUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return checkSkyTradeUserExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult? Function()? checkSkyTradeUserExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function()? createSkyTradeUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return checkSkyTradeUserExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult Function()? checkSkyTradeUserExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function()? createSkyTradeUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (checkSkyTradeUserExists != null) {
      return checkSkyTradeUserExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateUserWithSFA value)
        authenticateUserWithSFA,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
    required TResult Function(
            _LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_CreateSkyTradeUser value) createSkyTradeUser,
    required TResult Function(
            _LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return checkSkyTradeUserExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult? Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult? Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return checkSkyTradeUserExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (checkSkyTradeUserExists != null) {
      return checkSkyTradeUserExists(this);
    }
    return orElse();
  }
}

abstract class _CheckSkyTradeUserExists implements AuthEvent {
  const factory _CheckSkyTradeUserExists() = _$CheckSkyTradeUserExistsImpl;
}

/// @nodoc
abstract class _$$LogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWith<
    $Res> {
  factory _$$LogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWith(
          _$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl value,
          $Res Function(_$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl)
              then) =
      __$$LogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckSkyTradeUserFailure checkSkyTradeUserFailure});
}

/// @nodoc
class __$$LogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res,
        _$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl>
    implements
        _$$LogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWith<$Res> {
  __$$LogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWithImpl(
      _$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl _value,
      $Res Function(_$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkSkyTradeUserFailure = null,
  }) {
    return _then(_$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl(
      checkSkyTradeUserFailure: null == checkSkyTradeUserFailure
          ? _value.checkSkyTradeUserFailure
          : checkSkyTradeUserFailure // ignore: cast_nullable_to_non_nullable
              as CheckSkyTradeUserFailure,
    ));
  }
}

/// @nodoc

class _$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl
    implements _LogoutFailedSkyTradeUserCheckOperationFromAuth0 {
  const _$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl(
      {required this.checkSkyTradeUserFailure});

  @override
  final CheckSkyTradeUserFailure checkSkyTradeUserFailure;

  @override
  String toString() {
    return 'AuthEvent.logoutFailedSkyTradeUserCheckOperationFromAuth0(checkSkyTradeUserFailure: $checkSkyTradeUserFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl &&
            (identical(
                    other.checkSkyTradeUserFailure, checkSkyTradeUserFailure) ||
                other.checkSkyTradeUserFailure == checkSkyTradeUserFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkSkyTradeUserFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWith<
          _$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl>
      get copyWith =>
          __$$LogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWithImpl<
                  _$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() authenticateUserWithAuth0,
    required TResult Function(String? email, String idToken)
        authenticateUserWithSFA,
    required TResult Function() checkSkyTradeUserExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function() createSkyTradeUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return logoutFailedSkyTradeUserCheckOperationFromAuth0(
        checkSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult? Function()? checkSkyTradeUserExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function()? createSkyTradeUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return logoutFailedSkyTradeUserCheckOperationFromAuth0
        ?.call(checkSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult Function()? checkSkyTradeUserExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function()? createSkyTradeUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (logoutFailedSkyTradeUserCheckOperationFromAuth0 != null) {
      return logoutFailedSkyTradeUserCheckOperationFromAuth0(
          checkSkyTradeUserFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateUserWithSFA value)
        authenticateUserWithSFA,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
    required TResult Function(
            _LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_CreateSkyTradeUser value) createSkyTradeUser,
    required TResult Function(
            _LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return logoutFailedSkyTradeUserCheckOperationFromAuth0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult? Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult? Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return logoutFailedSkyTradeUserCheckOperationFromAuth0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (logoutFailedSkyTradeUserCheckOperationFromAuth0 != null) {
      return logoutFailedSkyTradeUserCheckOperationFromAuth0(this);
    }
    return orElse();
  }
}

abstract class _LogoutFailedSkyTradeUserCheckOperationFromAuth0
    implements AuthEvent {
  const factory _LogoutFailedSkyTradeUserCheckOperationFromAuth0(
          {required final CheckSkyTradeUserFailure checkSkyTradeUserFailure}) =
      _$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl;

  CheckSkyTradeUserFailure get checkSkyTradeUserFailure;
  @JsonKey(ignore: true)
  _$$LogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWith<
          _$LogoutFailedSkyTradeUserCheckOperationFromAuth0Impl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateSkyTradeUserImplCopyWith<$Res> {
  factory _$$CreateSkyTradeUserImplCopyWith(_$CreateSkyTradeUserImpl value,
          $Res Function(_$CreateSkyTradeUserImpl) then) =
      __$$CreateSkyTradeUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateSkyTradeUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CreateSkyTradeUserImpl>
    implements _$$CreateSkyTradeUserImplCopyWith<$Res> {
  __$$CreateSkyTradeUserImplCopyWithImpl(_$CreateSkyTradeUserImpl _value,
      $Res Function(_$CreateSkyTradeUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateSkyTradeUserImpl implements _CreateSkyTradeUser {
  const _$CreateSkyTradeUserImpl();

  @override
  String toString() {
    return 'AuthEvent.createSkyTradeUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateSkyTradeUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() authenticateUserWithAuth0,
    required TResult Function(String? email, String idToken)
        authenticateUserWithSFA,
    required TResult Function() checkSkyTradeUserExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function() createSkyTradeUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return createSkyTradeUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult? Function()? checkSkyTradeUserExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function()? createSkyTradeUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return createSkyTradeUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult Function()? checkSkyTradeUserExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function()? createSkyTradeUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (createSkyTradeUser != null) {
      return createSkyTradeUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateUserWithSFA value)
        authenticateUserWithSFA,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
    required TResult Function(
            _LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_CreateSkyTradeUser value) createSkyTradeUser,
    required TResult Function(
            _LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return createSkyTradeUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult? Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult? Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return createSkyTradeUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (createSkyTradeUser != null) {
      return createSkyTradeUser(this);
    }
    return orElse();
  }
}

abstract class _CreateSkyTradeUser implements AuthEvent {
  const factory _CreateSkyTradeUser() = _$CreateSkyTradeUserImpl;
}

/// @nodoc
abstract class _$$LogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWith<
    $Res> {
  factory _$$LogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWith(
          _$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl value,
          $Res Function(_$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl)
              then) =
      __$$LogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({CreateSkyTradeUserFailure createSkyTradeUserFailure});
}

/// @nodoc
class __$$LogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res,
        _$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl>
    implements
        _$$LogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWith<$Res> {
  __$$LogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWithImpl(
      _$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl _value,
      $Res Function(_$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createSkyTradeUserFailure = null,
  }) {
    return _then(_$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl(
      createSkyTradeUserFailure: null == createSkyTradeUserFailure
          ? _value.createSkyTradeUserFailure
          : createSkyTradeUserFailure // ignore: cast_nullable_to_non_nullable
              as CreateSkyTradeUserFailure,
    ));
  }
}

/// @nodoc

class _$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl
    implements _LogoutFailedSkyTradeUserCreateOperationFromAuth0 {
  const _$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl(
      {required this.createSkyTradeUserFailure});

  @override
  final CreateSkyTradeUserFailure createSkyTradeUserFailure;

  @override
  String toString() {
    return 'AuthEvent.logoutFailedSkyTradeUserCreateOperationFromAuth0(createSkyTradeUserFailure: $createSkyTradeUserFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl &&
            (identical(other.createSkyTradeUserFailure,
                    createSkyTradeUserFailure) ||
                other.createSkyTradeUserFailure == createSkyTradeUserFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createSkyTradeUserFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWith<
          _$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl>
      get copyWith =>
          __$$LogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWithImpl<
                  _$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() authenticateUserWithAuth0,
    required TResult Function(String? email, String idToken)
        authenticateUserWithSFA,
    required TResult Function() checkSkyTradeUserExists,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function() createSkyTradeUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return logoutFailedSkyTradeUserCreateOperationFromAuth0(
        createSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult? Function()? checkSkyTradeUserExists,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function()? createSkyTradeUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return logoutFailedSkyTradeUserCreateOperationFromAuth0
        ?.call(createSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(String? email, String idToken)? authenticateUserWithSFA,
    TResult Function()? checkSkyTradeUserExists,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function()? createSkyTradeUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (logoutFailedSkyTradeUserCreateOperationFromAuth0 != null) {
      return logoutFailedSkyTradeUserCreateOperationFromAuth0(
          createSkyTradeUserFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateUserWithSFA value)
        authenticateUserWithSFA,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
    required TResult Function(
            _LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_CreateSkyTradeUser value) createSkyTradeUser,
    required TResult Function(
            _LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return logoutFailedSkyTradeUserCreateOperationFromAuth0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult? Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult? Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
  }) {
    return logoutFailedSkyTradeUserCreateOperationFromAuth0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateUserWithSFA value)? authenticateUserWithSFA,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    TResult Function(_LogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_CreateSkyTradeUser value)? createSkyTradeUser,
    TResult Function(_LogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        logoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult orElse(),
  }) {
    if (logoutFailedSkyTradeUserCreateOperationFromAuth0 != null) {
      return logoutFailedSkyTradeUserCreateOperationFromAuth0(this);
    }
    return orElse();
  }
}

abstract class _LogoutFailedSkyTradeUserCreateOperationFromAuth0
    implements AuthEvent {
  const factory _LogoutFailedSkyTradeUserCreateOperationFromAuth0(
          {required final CreateSkyTradeUserFailure
              createSkyTradeUserFailure}) =
      _$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl;

  CreateSkyTradeUserFailure get createSkyTradeUserFailure;
  @JsonKey(ignore: true)
  _$$LogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWith<
          _$LogoutFailedSkyTradeUserCreateOperationFromAuth0Impl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AuthState.initial()';
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
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
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
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatingImpl>
    implements _$$AuthenticatingImplCopyWith<$Res> {
  __$$AuthenticatingImplCopyWithImpl(
      _$AuthenticatingImpl _value, $Res Function(_$AuthenticatingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatingImpl implements _Authenticating {
  const _$AuthenticatingImpl();

  @override
  String toString() {
    return 'AuthState.authenticating()';
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
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
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
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _Authenticating implements AuthState {
  const factory _Authenticating() = _$AuthenticatingImpl;
}

/// @nodoc
abstract class _$$EmailVerificationSentImplCopyWith<$Res> {
  factory _$$EmailVerificationSentImplCopyWith(
          _$EmailVerificationSentImpl value,
          $Res Function(_$EmailVerificationSentImpl) then) =
      __$$EmailVerificationSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$EmailVerificationSentImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$EmailVerificationSentImpl>
    implements _$$EmailVerificationSentImplCopyWith<$Res> {
  __$$EmailVerificationSentImplCopyWithImpl(_$EmailVerificationSentImpl _value,
      $Res Function(_$EmailVerificationSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$EmailVerificationSentImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmailVerificationSentImpl implements _EmailVerificationSent {
  const _$EmailVerificationSentImpl({required this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'AuthState.emailVerificationSent(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationSentImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailVerificationSentImplCopyWith<_$EmailVerificationSentImpl>
      get copyWith => __$$EmailVerificationSentImplCopyWithImpl<
          _$EmailVerificationSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return emailVerificationSent(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return emailVerificationSent?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (emailVerificationSent != null) {
      return emailVerificationSent(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return emailVerificationSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return emailVerificationSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (emailVerificationSent != null) {
      return emailVerificationSent(this);
    }
    return orElse();
  }
}

abstract class _EmailVerificationSent implements AuthState {
  const factory _EmailVerificationSent({required final String? email}) =
      _$EmailVerificationSentImpl;

  String? get email;
  @JsonKey(ignore: true)
  _$$EmailVerificationSentImplCopyWith<_$EmailVerificationSentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailNotVerifiedImplCopyWith<$Res> {
  factory _$$EmailNotVerifiedImplCopyWith(_$EmailNotVerifiedImpl value,
          $Res Function(_$EmailNotVerifiedImpl) then) =
      __$$EmailNotVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$EmailNotVerifiedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$EmailNotVerifiedImpl>
    implements _$$EmailNotVerifiedImplCopyWith<$Res> {
  __$$EmailNotVerifiedImplCopyWithImpl(_$EmailNotVerifiedImpl _value,
      $Res Function(_$EmailNotVerifiedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$EmailNotVerifiedImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EmailNotVerifiedImpl implements _EmailNotVerified {
  const _$EmailNotVerifiedImpl({required this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'AuthState.emailNotVerified(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailNotVerifiedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailNotVerifiedImplCopyWith<_$EmailNotVerifiedImpl> get copyWith =>
      __$$EmailNotVerifiedImplCopyWithImpl<_$EmailNotVerifiedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return emailNotVerified(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return emailNotVerified?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return emailNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class _EmailNotVerified implements AuthState {
  const factory _EmailNotVerified({required final String? email}) =
      _$EmailNotVerifiedImpl;

  String? get email;
  @JsonKey(ignore: true)
  _$$EmailNotVerifiedImplCopyWith<_$EmailNotVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$FailedToCheckSkyTradeUserImplCopyWith<$Res> {
  factory _$$FailedToCheckSkyTradeUserImplCopyWith(
          _$FailedToCheckSkyTradeUserImpl value,
          $Res Function(_$FailedToCheckSkyTradeUserImpl) then) =
      __$$FailedToCheckSkyTradeUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckSkyTradeUserFailure checkSkyTradeUserFailure});
}

/// @nodoc
class __$$FailedToCheckSkyTradeUserImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailedToCheckSkyTradeUserImpl>
    implements _$$FailedToCheckSkyTradeUserImplCopyWith<$Res> {
  __$$FailedToCheckSkyTradeUserImplCopyWithImpl(
      _$FailedToCheckSkyTradeUserImpl _value,
      $Res Function(_$FailedToCheckSkyTradeUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkSkyTradeUserFailure = null,
  }) {
    return _then(_$FailedToCheckSkyTradeUserImpl(
      checkSkyTradeUserFailure: null == checkSkyTradeUserFailure
          ? _value.checkSkyTradeUserFailure
          : checkSkyTradeUserFailure // ignore: cast_nullable_to_non_nullable
              as CheckSkyTradeUserFailure,
    ));
  }
}

/// @nodoc

class _$FailedToCheckSkyTradeUserImpl implements _FailedToCheckSkyTradeUser {
  const _$FailedToCheckSkyTradeUserImpl(
      {required this.checkSkyTradeUserFailure});

  @override
  final CheckSkyTradeUserFailure checkSkyTradeUserFailure;

  @override
  String toString() {
    return 'AuthState.failedToCheckSkyTradeUser(checkSkyTradeUserFailure: $checkSkyTradeUserFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToCheckSkyTradeUserImpl &&
            (identical(
                    other.checkSkyTradeUserFailure, checkSkyTradeUserFailure) ||
                other.checkSkyTradeUserFailure == checkSkyTradeUserFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkSkyTradeUserFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToCheckSkyTradeUserImplCopyWith<_$FailedToCheckSkyTradeUserImpl>
      get copyWith => __$$FailedToCheckSkyTradeUserImplCopyWithImpl<
          _$FailedToCheckSkyTradeUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToCheckSkyTradeUser(checkSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToCheckSkyTradeUser?.call(checkSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToCheckSkyTradeUser != null) {
      return failedToCheckSkyTradeUser(checkSkyTradeUserFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToCheckSkyTradeUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToCheckSkyTradeUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToCheckSkyTradeUser != null) {
      return failedToCheckSkyTradeUser(this);
    }
    return orElse();
  }
}

abstract class _FailedToCheckSkyTradeUser implements AuthState {
  const factory _FailedToCheckSkyTradeUser(
          {required final CheckSkyTradeUserFailure checkSkyTradeUserFailure}) =
      _$FailedToCheckSkyTradeUserImpl;

  CheckSkyTradeUserFailure get checkSkyTradeUserFailure;
  @JsonKey(ignore: true)
  _$$FailedToCheckSkyTradeUserImplCopyWith<_$FailedToCheckSkyTradeUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWith<
    $Res> {
  factory _$$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWith(
          _$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0Impl value,
          $Res Function(
                  _$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0Impl)
              then) =
      __$$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWithImpl<
          $Res>;
}

/// @nodoc
class __$$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWithImpl<
        $Res>
    extends _$AuthStateCopyWithImpl<$Res,
        _$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0Impl>
    implements
        _$$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWith<
            $Res> {
  __$$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0ImplCopyWithImpl(
      _$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0Impl _value,
      $Res Function(
              _$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0Impl)
          _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0Impl
    implements _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 {
  const _$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0Impl();

  @override
  String toString() {
    return 'AuthState.failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 != null) {
      return failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 != null) {
      return failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0(this);
    }
    return orElse();
  }
}

abstract class _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0
    implements AuthState {
  const factory _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0() =
      _$FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0Impl;
}

/// @nodoc
abstract class _$$FailedToCreateSkyTradeUserImplCopyWith<$Res> {
  factory _$$FailedToCreateSkyTradeUserImplCopyWith(
          _$FailedToCreateSkyTradeUserImpl value,
          $Res Function(_$FailedToCreateSkyTradeUserImpl) then) =
      __$$FailedToCreateSkyTradeUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateSkyTradeUserFailure createSkyTradeUserFailure});
}

/// @nodoc
class __$$FailedToCreateSkyTradeUserImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$FailedToCreateSkyTradeUserImpl>
    implements _$$FailedToCreateSkyTradeUserImplCopyWith<$Res> {
  __$$FailedToCreateSkyTradeUserImplCopyWithImpl(
      _$FailedToCreateSkyTradeUserImpl _value,
      $Res Function(_$FailedToCreateSkyTradeUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createSkyTradeUserFailure = null,
  }) {
    return _then(_$FailedToCreateSkyTradeUserImpl(
      createSkyTradeUserFailure: null == createSkyTradeUserFailure
          ? _value.createSkyTradeUserFailure
          : createSkyTradeUserFailure // ignore: cast_nullable_to_non_nullable
              as CreateSkyTradeUserFailure,
    ));
  }
}

/// @nodoc

class _$FailedToCreateSkyTradeUserImpl implements _FailedToCreateSkyTradeUser {
  const _$FailedToCreateSkyTradeUserImpl(
      {required this.createSkyTradeUserFailure});

  @override
  final CreateSkyTradeUserFailure createSkyTradeUserFailure;

  @override
  String toString() {
    return 'AuthState.failedToCreateSkyTradeUser(createSkyTradeUserFailure: $createSkyTradeUserFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToCreateSkyTradeUserImpl &&
            (identical(other.createSkyTradeUserFailure,
                    createSkyTradeUserFailure) ||
                other.createSkyTradeUserFailure == createSkyTradeUserFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createSkyTradeUserFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToCreateSkyTradeUserImplCopyWith<_$FailedToCreateSkyTradeUserImpl>
      get copyWith => __$$FailedToCreateSkyTradeUserImplCopyWithImpl<
          _$FailedToCreateSkyTradeUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToCreateSkyTradeUser(createSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToCreateSkyTradeUser?.call(createSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToCreateSkyTradeUser != null) {
      return failedToCreateSkyTradeUser(createSkyTradeUserFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToCreateSkyTradeUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToCreateSkyTradeUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToCreateSkyTradeUser != null) {
      return failedToCreateSkyTradeUser(this);
    }
    return orElse();
  }
}

abstract class _FailedToCreateSkyTradeUser implements AuthState {
  const factory _FailedToCreateSkyTradeUser(
      {required final CreateSkyTradeUserFailure
          createSkyTradeUserFailure}) = _$FailedToCreateSkyTradeUserImpl;

  CreateSkyTradeUserFailure get createSkyTradeUserFailure;
  @JsonKey(ignore: true)
  _$$FailedToCreateSkyTradeUserImplCopyWith<_$FailedToCreateSkyTradeUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWith<
    $Res> {
  factory _$$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWith(
          _$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0Impl value,
          $Res Function(
                  _$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0Impl)
              then) =
      __$$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWithImpl<
          $Res>;
}

/// @nodoc
class __$$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWithImpl<
        $Res>
    extends _$AuthStateCopyWithImpl<$Res,
        _$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0Impl>
    implements
        _$$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWith<
            $Res> {
  __$$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0ImplCopyWithImpl(
      _$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0Impl _value,
      $Res Function(
              _$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0Impl)
          _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0Impl
    implements _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 {
  const _$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0Impl();

  @override
  String toString() {
    return 'AuthState.failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 != null) {
      return failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 != null) {
      return failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0(this);
    }
    return orElse();
  }
}

abstract class _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0
    implements AuthState {
  const factory _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0() =
      _$FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0Impl;
}

/// @nodoc
abstract class _$$FailedToAuthenticateUserWithAuth0ImplCopyWith<$Res> {
  factory _$$FailedToAuthenticateUserWithAuth0ImplCopyWith(
          _$FailedToAuthenticateUserWithAuth0Impl value,
          $Res Function(_$FailedToAuthenticateUserWithAuth0Impl) then) =
      __$$FailedToAuthenticateUserWithAuth0ImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToAuthenticateUserWithAuth0ImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res,
        _$FailedToAuthenticateUserWithAuth0Impl>
    implements _$$FailedToAuthenticateUserWithAuth0ImplCopyWith<$Res> {
  __$$FailedToAuthenticateUserWithAuth0ImplCopyWithImpl(
      _$FailedToAuthenticateUserWithAuth0Impl _value,
      $Res Function(_$FailedToAuthenticateUserWithAuth0Impl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedToAuthenticateUserWithAuth0Impl
    implements _FailedToAuthenticateUserWithAuth0 {
  const _$FailedToAuthenticateUserWithAuth0Impl();

  @override
  String toString() {
    return 'AuthState.failedToAuthenticateUserWithAuth0()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToAuthenticateUserWithAuth0Impl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToAuthenticateUserWithAuth0();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToAuthenticateUserWithAuth0?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToAuthenticateUserWithAuth0 != null) {
      return failedToAuthenticateUserWithAuth0();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToAuthenticateUserWithAuth0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToAuthenticateUserWithAuth0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToAuthenticateUserWithAuth0 != null) {
      return failedToAuthenticateUserWithAuth0(this);
    }
    return orElse();
  }
}

abstract class _FailedToAuthenticateUserWithAuth0 implements AuthState {
  const factory _FailedToAuthenticateUserWithAuth0() =
      _$FailedToAuthenticateUserWithAuth0Impl;
}

/// @nodoc
abstract class _$$FailedToAuthenticateAuth0UserWithSFAImplCopyWith<$Res> {
  factory _$$FailedToAuthenticateAuth0UserWithSFAImplCopyWith(
          _$FailedToAuthenticateAuth0UserWithSFAImpl value,
          $Res Function(_$FailedToAuthenticateAuth0UserWithSFAImpl) then) =
      __$$FailedToAuthenticateAuth0UserWithSFAImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToAuthenticateAuth0UserWithSFAImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res,
        _$FailedToAuthenticateAuth0UserWithSFAImpl>
    implements _$$FailedToAuthenticateAuth0UserWithSFAImplCopyWith<$Res> {
  __$$FailedToAuthenticateAuth0UserWithSFAImplCopyWithImpl(
      _$FailedToAuthenticateAuth0UserWithSFAImpl _value,
      $Res Function(_$FailedToAuthenticateAuth0UserWithSFAImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedToAuthenticateAuth0UserWithSFAImpl
    implements _FailedToAuthenticateAuth0UserWithSFA {
  const _$FailedToAuthenticateAuth0UserWithSFAImpl();

  @override
  String toString() {
    return 'AuthState.failedToAuthenticateAuth0UserWithSFA()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToAuthenticateAuth0UserWithSFAImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) emailNotVerified,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateSkyTradeUser,
    required TResult Function()
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function() failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToAuthenticateAuth0UserWithSFA();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? emailNotVerified,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult? Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function()? failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToAuthenticateAuth0UserWithSFA?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? emailNotVerified,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateSkyTradeUser,
    TResult Function()?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function()? failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToAuthenticateAuth0UserWithSFA != null) {
      return failedToAuthenticateAuth0UserWithSFA();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_EmailNotVerified value) emailNotVerified,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    required TResult Function(_FailedToCreateSkyTradeUser value)
        failedToCreateSkyTradeUser,
    required TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToAuthenticateAuth0UserWithSFA(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_EmailNotVerified value)? emailNotVerified,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult? Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult? Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
  }) {
    return failedToAuthenticateAuth0UserWithSFA?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_EmailNotVerified value)? emailNotVerified,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCheckOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCheckOperationFromAuth0,
    TResult Function(_FailedToCreateSkyTradeUser value)?
        failedToCreateSkyTradeUser,
    TResult Function(
            _FailedToLogoutFailedSkyTradeUserCreateOperationFromAuth0 value)?
        failedToLogoutFailedSkyTradeUserCreateOperationFromAuth0,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_FailedToAuthenticateAuth0UserWithSFA value)?
        failedToAuthenticateAuth0UserWithSFA,
    required TResult orElse(),
  }) {
    if (failedToAuthenticateAuth0UserWithSFA != null) {
      return failedToAuthenticateAuth0UserWithSFA(this);
    }
    return orElse();
  }
}

abstract class _FailedToAuthenticateAuth0UserWithSFA implements AuthState {
  const factory _FailedToAuthenticateAuth0UserWithSFA() =
      _$FailedToAuthenticateAuth0UserWithSFAImpl;
}
