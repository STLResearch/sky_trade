// SPDX-License-Identifier: UNLICENSED
                            
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
    required TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)
        authenticateAuth0UserWithSFA,
    required TResult Function(String? email, String idToken)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function() checkSkyTradeUserExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult? Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function()? checkSkyTradeUserExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function()? checkSkyTradeUserExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateAuth0UserWithSFA value)
        authenticateAuth0UserWithSFA,
    required TResult Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult? Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult Function(_ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
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

  /// Create a copy of AuthEvent
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
    extends _$AuthEventCopyWithImpl<$Res, _$AuthenticateImpl>
    implements _$$AuthenticateImplCopyWith<$Res> {
  __$$AuthenticateImplCopyWithImpl(
      _$AuthenticateImpl _value, $Res Function(_$AuthenticateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)
        authenticateAuth0UserWithSFA,
    required TResult Function(String? email, String idToken)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function() checkSkyTradeUserExists,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult? Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function()? checkSkyTradeUserExists,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function()? checkSkyTradeUserExists,
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
    required TResult Function(_AuthenticateAuth0UserWithSFA value)
        authenticateAuth0UserWithSFA,
    required TResult Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult? Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult Function(_ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)
        authenticateAuth0UserWithSFA,
    required TResult Function(String? email, String idToken)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function() checkSkyTradeUserExists,
  }) {
    return authenticateUserWithAuth0();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult? Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function()? checkSkyTradeUserExists,
  }) {
    return authenticateUserWithAuth0?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function()? checkSkyTradeUserExists,
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
    required TResult Function(_AuthenticateAuth0UserWithSFA value)
        authenticateAuth0UserWithSFA,
    required TResult Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
  }) {
    return authenticateUserWithAuth0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult? Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
  }) {
    return authenticateUserWithAuth0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult Function(_ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
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
abstract class _$$AuthenticateAuth0UserWithSFAImplCopyWith<$Res> {
  factory _$$AuthenticateAuth0UserWithSFAImplCopyWith(
          _$AuthenticateAuth0UserWithSFAImpl value,
          $Res Function(_$AuthenticateAuth0UserWithSFAImpl) then) =
      __$$AuthenticateAuth0UserWithSFAImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email, String idToken, bool isFreshSFAAuthentication});
}

/// @nodoc
class __$$AuthenticateAuth0UserWithSFAImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthenticateAuth0UserWithSFAImpl>
    implements _$$AuthenticateAuth0UserWithSFAImplCopyWith<$Res> {
  __$$AuthenticateAuth0UserWithSFAImplCopyWithImpl(
      _$AuthenticateAuth0UserWithSFAImpl _value,
      $Res Function(_$AuthenticateAuth0UserWithSFAImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? idToken = null,
    Object? isFreshSFAAuthentication = null,
  }) {
    return _then(_$AuthenticateAuth0UserWithSFAImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      isFreshSFAAuthentication: null == isFreshSFAAuthentication
          ? _value.isFreshSFAAuthentication
          : isFreshSFAAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthenticateAuth0UserWithSFAImpl
    implements _AuthenticateAuth0UserWithSFA {
  const _$AuthenticateAuth0UserWithSFAImpl(
      {required this.email,
      required this.idToken,
      required this.isFreshSFAAuthentication});

  @override
  final String? email;
  @override
  final String idToken;
  @override
  final bool isFreshSFAAuthentication;

  @override
  String toString() {
    return 'AuthEvent.authenticateAuth0UserWithSFA(email: $email, idToken: $idToken, isFreshSFAAuthentication: $isFreshSFAAuthentication)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateAuth0UserWithSFAImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(
                    other.isFreshSFAAuthentication, isFreshSFAAuthentication) ||
                other.isFreshSFAAuthentication == isFreshSFAAuthentication));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, idToken, isFreshSFAAuthentication);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateAuth0UserWithSFAImplCopyWith<
          _$AuthenticateAuth0UserWithSFAImpl>
      get copyWith => __$$AuthenticateAuth0UserWithSFAImplCopyWithImpl<
          _$AuthenticateAuth0UserWithSFAImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() authenticateUserWithAuth0,
    required TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)
        authenticateAuth0UserWithSFA,
    required TResult Function(String? email, String idToken)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function() checkSkyTradeUserExists,
  }) {
    return authenticateAuth0UserWithSFA(
        email, idToken, isFreshSFAAuthentication);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult? Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function()? checkSkyTradeUserExists,
  }) {
    return authenticateAuth0UserWithSFA?.call(
        email, idToken, isFreshSFAAuthentication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function()? checkSkyTradeUserExists,
    required TResult orElse(),
  }) {
    if (authenticateAuth0UserWithSFA != null) {
      return authenticateAuth0UserWithSFA(
          email, idToken, isFreshSFAAuthentication);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateAuth0UserWithSFA value)
        authenticateAuth0UserWithSFA,
    required TResult Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
  }) {
    return authenticateAuth0UserWithSFA(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult? Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
  }) {
    return authenticateAuth0UserWithSFA?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult Function(_ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    required TResult orElse(),
  }) {
    if (authenticateAuth0UserWithSFA != null) {
      return authenticateAuth0UserWithSFA(this);
    }
    return orElse();
  }
}

abstract class _AuthenticateAuth0UserWithSFA implements AuthEvent {
  const factory _AuthenticateAuth0UserWithSFA(
          {required final String? email,
          required final String idToken,
          required final bool isFreshSFAAuthentication}) =
      _$AuthenticateAuth0UserWithSFAImpl;

  String? get email;
  String get idToken;
  bool get isFreshSFAAuthentication;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticateAuth0UserWithSFAImplCopyWith<
          _$AuthenticateAuth0UserWithSFAImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReAuthenticateFailedSFAUserAuthenticationWithAuth0ImplCopyWith<
    $Res> {
  factory _$$ReAuthenticateFailedSFAUserAuthenticationWithAuth0ImplCopyWith(
          _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl value,
          $Res Function(
                  _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl)
              then) =
      __$$ReAuthenticateFailedSFAUserAuthenticationWithAuth0ImplCopyWithImpl<
          $Res>;
  @useResult
  $Res call({String? email, String idToken});
}

/// @nodoc
class __$$ReAuthenticateFailedSFAUserAuthenticationWithAuth0ImplCopyWithImpl<
        $Res>
    extends _$AuthEventCopyWithImpl<$Res,
        _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl>
    implements
        _$$ReAuthenticateFailedSFAUserAuthenticationWithAuth0ImplCopyWith<
            $Res> {
  __$$ReAuthenticateFailedSFAUserAuthenticationWithAuth0ImplCopyWithImpl(
      _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl _value,
      $Res Function(_$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl)
          _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? idToken = null,
  }) {
    return _then(_$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl(
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

class _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl
    implements _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 {
  const _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl(
      {required this.email, required this.idToken});

  @override
  final String? email;
  @override
  final String idToken;

  @override
  String toString() {
    return 'AuthEvent.reAuthenticateFailedSFAUserAuthenticationWithAuth0(email: $email, idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, idToken);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReAuthenticateFailedSFAUserAuthenticationWithAuth0ImplCopyWith<
          _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl>
      get copyWith =>
          __$$ReAuthenticateFailedSFAUserAuthenticationWithAuth0ImplCopyWithImpl<
                  _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticate,
    required TResult Function() authenticateUserWithAuth0,
    required TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)
        authenticateAuth0UserWithSFA,
    required TResult Function(String? email, String idToken)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function() checkSkyTradeUserExists,
  }) {
    return reAuthenticateFailedSFAUserAuthenticationWithAuth0(email, idToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult? Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function()? checkSkyTradeUserExists,
  }) {
    return reAuthenticateFailedSFAUserAuthenticationWithAuth0?.call(
        email, idToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function()? checkSkyTradeUserExists,
    required TResult orElse(),
  }) {
    if (reAuthenticateFailedSFAUserAuthenticationWithAuth0 != null) {
      return reAuthenticateFailedSFAUserAuthenticationWithAuth0(email, idToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_AuthenticateUserWithAuth0 value)
        authenticateUserWithAuth0,
    required TResult Function(_AuthenticateAuth0UserWithSFA value)
        authenticateAuth0UserWithSFA,
    required TResult Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
  }) {
    return reAuthenticateFailedSFAUserAuthenticationWithAuth0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult? Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
  }) {
    return reAuthenticateFailedSFAUserAuthenticationWithAuth0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult Function(_ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
    required TResult orElse(),
  }) {
    if (reAuthenticateFailedSFAUserAuthenticationWithAuth0 != null) {
      return reAuthenticateFailedSFAUserAuthenticationWithAuth0(this);
    }
    return orElse();
  }
}

abstract class _ReAuthenticateFailedSFAUserAuthenticationWithAuth0
    implements AuthEvent {
  const factory _ReAuthenticateFailedSFAUserAuthenticationWithAuth0(
          {required final String? email, required final String idToken}) =
      _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl;

  String? get email;
  String get idToken;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReAuthenticateFailedSFAUserAuthenticationWithAuth0ImplCopyWith<
          _$ReAuthenticateFailedSFAUserAuthenticationWithAuth0Impl>
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)
        authenticateAuth0UserWithSFA,
    required TResult Function(String? email, String idToken)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function() checkSkyTradeUserExists,
  }) {
    return checkSkyTradeUserExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticate,
    TResult? Function()? authenticateUserWithAuth0,
    TResult? Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult? Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function()? checkSkyTradeUserExists,
  }) {
    return checkSkyTradeUserExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticate,
    TResult Function()? authenticateUserWithAuth0,
    TResult Function(
            String? email, String idToken, bool isFreshSFAAuthentication)?
        authenticateAuth0UserWithSFA,
    TResult Function(String? email, String idToken)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function()? checkSkyTradeUserExists,
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
    required TResult Function(_AuthenticateAuth0UserWithSFA value)
        authenticateAuth0UserWithSFA,
    required TResult Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    required TResult Function(_CheckSkyTradeUserExists value)
        checkSkyTradeUserExists,
  }) {
    return checkSkyTradeUserExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult? Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult? Function(
            _ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult? Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
  }) {
    return checkSkyTradeUserExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_AuthenticateUserWithAuth0 value)?
        authenticateUserWithAuth0,
    TResult Function(_AuthenticateAuth0UserWithSFA value)?
        authenticateAuth0UserWithSFA,
    TResult Function(_ReAuthenticateFailedSFAUserAuthenticationWithAuth0 value)?
        reAuthenticateFailedSFAUserAuthenticationWithAuth0,
    TResult Function(_CheckSkyTradeUserExists value)? checkSkyTradeUserExists,
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
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) unverifiedAuth0UserExists,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function(String? email) sFAUserShouldLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? unverifiedAuth0UserExists,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function(String? email)? sFAUserShouldLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? unverifiedAuth0UserExists,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function(String? email)? sFAUserShouldLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticating value) authenticating,
    required TResult Function(_EmailVerificationSent value)
        emailVerificationSent,
    required TResult Function(_UnverifiedAuth0UserExists value)
        unverifiedAuth0UserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_SFAUserShouldLogout value) sFAUserShouldLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
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

  /// Create a copy of AuthState
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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String? email) unverifiedAuth0UserExists,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function(String? email) sFAUserShouldLogout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? unverifiedAuth0UserExists,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function(String? email)? sFAUserShouldLogout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? unverifiedAuth0UserExists,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function(String? email)? sFAUserShouldLogout,
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
    required TResult Function(_UnverifiedAuth0UserExists value)
        unverifiedAuth0UserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_SFAUserShouldLogout value) sFAUserShouldLogout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String? email) unverifiedAuth0UserExists,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function(String? email) sFAUserShouldLogout,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? unverifiedAuth0UserExists,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function(String? email)? sFAUserShouldLogout,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? unverifiedAuth0UserExists,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function(String? email)? sFAUserShouldLogout,
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
    required TResult Function(_UnverifiedAuth0UserExists value)
        unverifiedAuth0UserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_SFAUserShouldLogout value) sFAUserShouldLogout,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String? email) unverifiedAuth0UserExists,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function(String? email) sFAUserShouldLogout,
  }) {
    return emailVerificationSent(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? unverifiedAuth0UserExists,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function(String? email)? sFAUserShouldLogout,
  }) {
    return emailVerificationSent?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? unverifiedAuth0UserExists,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function(String? email)? sFAUserShouldLogout,
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
    required TResult Function(_UnverifiedAuth0UserExists value)
        unverifiedAuth0UserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_SFAUserShouldLogout value) sFAUserShouldLogout,
  }) {
    return emailVerificationSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
  }) {
    return emailVerificationSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailVerificationSentImplCopyWith<_$EmailVerificationSentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnverifiedAuth0UserExistsImplCopyWith<$Res> {
  factory _$$UnverifiedAuth0UserExistsImplCopyWith(
          _$UnverifiedAuth0UserExistsImpl value,
          $Res Function(_$UnverifiedAuth0UserExistsImpl) then) =
      __$$UnverifiedAuth0UserExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$UnverifiedAuth0UserExistsImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnverifiedAuth0UserExistsImpl>
    implements _$$UnverifiedAuth0UserExistsImplCopyWith<$Res> {
  __$$UnverifiedAuth0UserExistsImplCopyWithImpl(
      _$UnverifiedAuth0UserExistsImpl _value,
      $Res Function(_$UnverifiedAuth0UserExistsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$UnverifiedAuth0UserExistsImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnverifiedAuth0UserExistsImpl implements _UnverifiedAuth0UserExists {
  const _$UnverifiedAuth0UserExistsImpl({required this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'AuthState.unverifiedAuth0UserExists(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnverifiedAuth0UserExistsImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnverifiedAuth0UserExistsImplCopyWith<_$UnverifiedAuth0UserExistsImpl>
      get copyWith => __$$UnverifiedAuth0UserExistsImplCopyWithImpl<
          _$UnverifiedAuth0UserExistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) unverifiedAuth0UserExists,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function(String? email) sFAUserShouldLogout,
  }) {
    return unverifiedAuth0UserExists(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? unverifiedAuth0UserExists,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function(String? email)? sFAUserShouldLogout,
  }) {
    return unverifiedAuth0UserExists?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? unverifiedAuth0UserExists,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function(String? email)? sFAUserShouldLogout,
    required TResult orElse(),
  }) {
    if (unverifiedAuth0UserExists != null) {
      return unverifiedAuth0UserExists(email);
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
    required TResult Function(_UnverifiedAuth0UserExists value)
        unverifiedAuth0UserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_SFAUserShouldLogout value) sFAUserShouldLogout,
  }) {
    return unverifiedAuth0UserExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
  }) {
    return unverifiedAuth0UserExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
    required TResult orElse(),
  }) {
    if (unverifiedAuth0UserExists != null) {
      return unverifiedAuth0UserExists(this);
    }
    return orElse();
  }
}

abstract class _UnverifiedAuth0UserExists implements AuthState {
  const factory _UnverifiedAuth0UserExists({required final String? email}) =
      _$UnverifiedAuth0UserExistsImpl;

  String? get email;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnverifiedAuth0UserExistsImplCopyWith<_$UnverifiedAuth0UserExistsImpl>
      get copyWith => throw _privateConstructorUsedError;
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String? email) unverifiedAuth0UserExists,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function(String? email) sFAUserShouldLogout,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? unverifiedAuth0UserExists,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function(String? email)? sFAUserShouldLogout,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? unverifiedAuth0UserExists,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function(String? email)? sFAUserShouldLogout,
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
    required TResult Function(_UnverifiedAuth0UserExists value)
        unverifiedAuth0UserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_SFAUserShouldLogout value) sFAUserShouldLogout,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(String? email) unverifiedAuth0UserExists,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function(String? email) sFAUserShouldLogout,
  }) {
    return failedToCheckSkyTradeUser(checkSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? unverifiedAuth0UserExists,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function(String? email)? sFAUserShouldLogout,
  }) {
    return failedToCheckSkyTradeUser?.call(checkSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? unverifiedAuth0UserExists,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function(String? email)? sFAUserShouldLogout,
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
    required TResult Function(_UnverifiedAuth0UserExists value)
        unverifiedAuth0UserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_SFAUserShouldLogout value) sFAUserShouldLogout,
  }) {
    return failedToCheckSkyTradeUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
  }) {
    return failedToCheckSkyTradeUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToCheckSkyTradeUserImplCopyWith<_$FailedToCheckSkyTradeUserImpl>
      get copyWith => throw _privateConstructorUsedError;
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

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
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
    required TResult Function(String? email) unverifiedAuth0UserExists,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function(String? email) sFAUserShouldLogout,
  }) {
    return failedToAuthenticateUserWithAuth0();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? unverifiedAuth0UserExists,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function(String? email)? sFAUserShouldLogout,
  }) {
    return failedToAuthenticateUserWithAuth0?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? unverifiedAuth0UserExists,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function(String? email)? sFAUserShouldLogout,
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
    required TResult Function(_UnverifiedAuth0UserExists value)
        unverifiedAuth0UserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_SFAUserShouldLogout value) sFAUserShouldLogout,
  }) {
    return failedToAuthenticateUserWithAuth0(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
  }) {
    return failedToAuthenticateUserWithAuth0?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
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
abstract class _$$SFAUserShouldLogoutImplCopyWith<$Res> {
  factory _$$SFAUserShouldLogoutImplCopyWith(_$SFAUserShouldLogoutImpl value,
          $Res Function(_$SFAUserShouldLogoutImpl) then) =
      __$$SFAUserShouldLogoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$SFAUserShouldLogoutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SFAUserShouldLogoutImpl>
    implements _$$SFAUserShouldLogoutImplCopyWith<$Res> {
  __$$SFAUserShouldLogoutImplCopyWithImpl(_$SFAUserShouldLogoutImpl _value,
      $Res Function(_$SFAUserShouldLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$SFAUserShouldLogoutImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SFAUserShouldLogoutImpl implements _SFAUserShouldLogout {
  const _$SFAUserShouldLogoutImpl({required this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'AuthState.sFAUserShouldLogout(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SFAUserShouldLogoutImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SFAUserShouldLogoutImplCopyWith<_$SFAUserShouldLogoutImpl> get copyWith =>
      __$$SFAUserShouldLogoutImplCopyWithImpl<_$SFAUserShouldLogoutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(String? email) emailVerificationSent,
    required TResult Function(String? email) unverifiedAuth0UserExists,
    required TResult Function() authenticated,
    required TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)
        failedToCheckSkyTradeUser,
    required TResult Function() failedToAuthenticateUserWithAuth0,
    required TResult Function(String? email) sFAUserShouldLogout,
  }) {
    return sFAUserShouldLogout(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(String? email)? emailVerificationSent,
    TResult? Function(String? email)? unverifiedAuth0UserExists,
    TResult? Function()? authenticated,
    TResult? Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult? Function()? failedToAuthenticateUserWithAuth0,
    TResult? Function(String? email)? sFAUserShouldLogout,
  }) {
    return sFAUserShouldLogout?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(String? email)? emailVerificationSent,
    TResult Function(String? email)? unverifiedAuth0UserExists,
    TResult Function()? authenticated,
    TResult Function(CheckSkyTradeUserFailure checkSkyTradeUserFailure)?
        failedToCheckSkyTradeUser,
    TResult Function()? failedToAuthenticateUserWithAuth0,
    TResult Function(String? email)? sFAUserShouldLogout,
    required TResult orElse(),
  }) {
    if (sFAUserShouldLogout != null) {
      return sFAUserShouldLogout(email);
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
    required TResult Function(_UnverifiedAuth0UserExists value)
        unverifiedAuth0UserExists,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_FailedToCheckSkyTradeUser value)
        failedToCheckSkyTradeUser,
    required TResult Function(_FailedToAuthenticateUserWithAuth0 value)
        failedToAuthenticateUserWithAuth0,
    required TResult Function(_SFAUserShouldLogout value) sFAUserShouldLogout,
  }) {
    return sFAUserShouldLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticating value)? authenticating,
    TResult? Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult? Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult? Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult? Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
  }) {
    return sFAUserShouldLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticating value)? authenticating,
    TResult Function(_EmailVerificationSent value)? emailVerificationSent,
    TResult Function(_UnverifiedAuth0UserExists value)?
        unverifiedAuth0UserExists,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_FailedToCheckSkyTradeUser value)?
        failedToCheckSkyTradeUser,
    TResult Function(_FailedToAuthenticateUserWithAuth0 value)?
        failedToAuthenticateUserWithAuth0,
    TResult Function(_SFAUserShouldLogout value)? sFAUserShouldLogout,
    required TResult orElse(),
  }) {
    if (sFAUserShouldLogout != null) {
      return sFAUserShouldLogout(this);
    }
    return orElse();
  }
}

abstract class _SFAUserShouldLogout implements AuthState {
  const factory _SFAUserShouldLogout({required final String? email}) =
      _$SFAUserShouldLogoutImpl;

  String? get email;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SFAUserShouldLogoutImplCopyWith<_$SFAUserShouldLogoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
