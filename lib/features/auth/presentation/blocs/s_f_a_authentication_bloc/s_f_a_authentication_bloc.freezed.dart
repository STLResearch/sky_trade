// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's_f_a_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SFAAuthenticationEvent {
  String? get email => throw _privateConstructorUsedError;
  String get idToken => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String idToken) authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String idToken)? authenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String idToken)? authenticate,
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

  @JsonKey(ignore: true)
  $SFAAuthenticationEventCopyWith<SFAAuthenticationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SFAAuthenticationEventCopyWith<$Res> {
  factory $SFAAuthenticationEventCopyWith(SFAAuthenticationEvent value,
          $Res Function(SFAAuthenticationEvent) then) =
      _$SFAAuthenticationEventCopyWithImpl<$Res, SFAAuthenticationEvent>;
  @useResult
  $Res call({String? email, String idToken});
}

/// @nodoc
class _$SFAAuthenticationEventCopyWithImpl<$Res,
        $Val extends SFAAuthenticationEvent>
    implements $SFAAuthenticationEventCopyWith<$Res> {
  _$SFAAuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? idToken = null,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      idToken: null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticateImplCopyWith<$Res>
    implements $SFAAuthenticationEventCopyWith<$Res> {
  factory _$$AuthenticateImplCopyWith(
          _$AuthenticateImpl value, $Res Function(_$AuthenticateImpl) then) =
      __$$AuthenticateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String idToken});
}

/// @nodoc
class __$$AuthenticateImplCopyWithImpl<$Res>
    extends _$SFAAuthenticationEventCopyWithImpl<$Res, _$AuthenticateImpl>
    implements _$$AuthenticateImplCopyWith<$Res> {
  __$$AuthenticateImplCopyWithImpl(
      _$AuthenticateImpl _value, $Res Function(_$AuthenticateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? idToken = null,
  }) {
    return _then(_$AuthenticateImpl(
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

class _$AuthenticateImpl implements _Authenticate {
  const _$AuthenticateImpl({required this.email, required this.idToken});

  @override
  final String? email;
  @override
  final String idToken;

  @override
  String toString() {
    return 'SFAAuthenticationEvent.authenticate(email: $email, idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, idToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticateImplCopyWith<_$AuthenticateImpl> get copyWith =>
      __$$AuthenticateImplCopyWithImpl<_$AuthenticateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String idToken) authenticate,
  }) {
    return authenticate(email, idToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String idToken)? authenticate,
  }) {
    return authenticate?.call(email, idToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String idToken)? authenticate,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(email, idToken);
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

abstract class _Authenticate implements SFAAuthenticationEvent {
  const factory _Authenticate(
      {required final String? email,
      required final String idToken}) = _$AuthenticateImpl;

  @override
  String? get email;
  @override
  String get idToken;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticateImplCopyWith<_$AuthenticateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SFAAuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(SFAUserEntity sFAUserEntity) authenticated,
    required TResult Function(SFAAuthenticationFailure sFAAuthenticationFailure)
        failedToAuthenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(SFAUserEntity sFAUserEntity)? authenticated,
    TResult? Function(SFAAuthenticationFailure sFAAuthenticationFailure)?
        failedToAuthenticate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(SFAUserEntity sFAUserEntity)? authenticated,
    TResult Function(SFAAuthenticationFailure sFAAuthenticationFailure)?
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
abstract class $SFAAuthenticationStateCopyWith<$Res> {
  factory $SFAAuthenticationStateCopyWith(SFAAuthenticationState value,
          $Res Function(SFAAuthenticationState) then) =
      _$SFAAuthenticationStateCopyWithImpl<$Res, SFAAuthenticationState>;
}

/// @nodoc
class _$SFAAuthenticationStateCopyWithImpl<$Res,
        $Val extends SFAAuthenticationState>
    implements $SFAAuthenticationStateCopyWith<$Res> {
  _$SFAAuthenticationStateCopyWithImpl(this._value, this._then);

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
    extends _$SFAAuthenticationStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SFAAuthenticationState.initial()';
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
    required TResult Function(SFAUserEntity sFAUserEntity) authenticated,
    required TResult Function(SFAAuthenticationFailure sFAAuthenticationFailure)
        failedToAuthenticate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(SFAUserEntity sFAUserEntity)? authenticated,
    TResult? Function(SFAAuthenticationFailure sFAAuthenticationFailure)?
        failedToAuthenticate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(SFAUserEntity sFAUserEntity)? authenticated,
    TResult Function(SFAAuthenticationFailure sFAAuthenticationFailure)?
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

abstract class _Initial implements SFAAuthenticationState {
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
    extends _$SFAAuthenticationStateCopyWithImpl<$Res, _$AuthenticatingImpl>
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
    return 'SFAAuthenticationState.authenticating()';
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
    required TResult Function(SFAUserEntity sFAUserEntity) authenticated,
    required TResult Function(SFAAuthenticationFailure sFAAuthenticationFailure)
        failedToAuthenticate,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(SFAUserEntity sFAUserEntity)? authenticated,
    TResult? Function(SFAAuthenticationFailure sFAAuthenticationFailure)?
        failedToAuthenticate,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(SFAUserEntity sFAUserEntity)? authenticated,
    TResult Function(SFAAuthenticationFailure sFAAuthenticationFailure)?
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

abstract class _Authenticating implements SFAAuthenticationState {
  const factory _Authenticating() = _$AuthenticatingImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SFAUserEntity sFAUserEntity});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$SFAAuthenticationStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sFAUserEntity = null,
  }) {
    return _then(_$AuthenticatedImpl(
      sFAUserEntity: null == sFAUserEntity
          ? _value.sFAUserEntity
          : sFAUserEntity // ignore: cast_nullable_to_non_nullable
              as SFAUserEntity,
    ));
  }
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl({required this.sFAUserEntity});

  @override
  final SFAUserEntity sFAUserEntity;

  @override
  String toString() {
    return 'SFAAuthenticationState.authenticated(sFAUserEntity: $sFAUserEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.sFAUserEntity, sFAUserEntity) ||
                other.sFAUserEntity == sFAUserEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sFAUserEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticating,
    required TResult Function(SFAUserEntity sFAUserEntity) authenticated,
    required TResult Function(SFAAuthenticationFailure sFAAuthenticationFailure)
        failedToAuthenticate,
  }) {
    return authenticated(sFAUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(SFAUserEntity sFAUserEntity)? authenticated,
    TResult? Function(SFAAuthenticationFailure sFAAuthenticationFailure)?
        failedToAuthenticate,
  }) {
    return authenticated?.call(sFAUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(SFAUserEntity sFAUserEntity)? authenticated,
    TResult Function(SFAAuthenticationFailure sFAAuthenticationFailure)?
        failedToAuthenticate,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(sFAUserEntity);
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

abstract class _Authenticated implements SFAAuthenticationState {
  const factory _Authenticated({required final SFAUserEntity sFAUserEntity}) =
      _$AuthenticatedImpl;

  SFAUserEntity get sFAUserEntity;
  @JsonKey(ignore: true)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToAuthenticateImplCopyWith<$Res> {
  factory _$$FailedToAuthenticateImplCopyWith(_$FailedToAuthenticateImpl value,
          $Res Function(_$FailedToAuthenticateImpl) then) =
      __$$FailedToAuthenticateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SFAAuthenticationFailure sFAAuthenticationFailure});
}

/// @nodoc
class __$$FailedToAuthenticateImplCopyWithImpl<$Res>
    extends _$SFAAuthenticationStateCopyWithImpl<$Res,
        _$FailedToAuthenticateImpl>
    implements _$$FailedToAuthenticateImplCopyWith<$Res> {
  __$$FailedToAuthenticateImplCopyWithImpl(_$FailedToAuthenticateImpl _value,
      $Res Function(_$FailedToAuthenticateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sFAAuthenticationFailure = null,
  }) {
    return _then(_$FailedToAuthenticateImpl(
      sFAAuthenticationFailure: null == sFAAuthenticationFailure
          ? _value.sFAAuthenticationFailure
          : sFAAuthenticationFailure // ignore: cast_nullable_to_non_nullable
              as SFAAuthenticationFailure,
    ));
  }
}

/// @nodoc

class _$FailedToAuthenticateImpl implements _FailedToAuthenticate {
  const _$FailedToAuthenticateImpl({required this.sFAAuthenticationFailure});

  @override
  final SFAAuthenticationFailure sFAAuthenticationFailure;

  @override
  String toString() {
    return 'SFAAuthenticationState.failedToAuthenticate(sFAAuthenticationFailure: $sFAAuthenticationFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToAuthenticateImpl &&
            (identical(
                    other.sFAAuthenticationFailure, sFAAuthenticationFailure) ||
                other.sFAAuthenticationFailure == sFAAuthenticationFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sFAAuthenticationFailure);

  @JsonKey(ignore: true)
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
    required TResult Function(SFAUserEntity sFAUserEntity) authenticated,
    required TResult Function(SFAAuthenticationFailure sFAAuthenticationFailure)
        failedToAuthenticate,
  }) {
    return failedToAuthenticate(sFAAuthenticationFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticating,
    TResult? Function(SFAUserEntity sFAUserEntity)? authenticated,
    TResult? Function(SFAAuthenticationFailure sFAAuthenticationFailure)?
        failedToAuthenticate,
  }) {
    return failedToAuthenticate?.call(sFAAuthenticationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticating,
    TResult Function(SFAUserEntity sFAUserEntity)? authenticated,
    TResult Function(SFAAuthenticationFailure sFAAuthenticationFailure)?
        failedToAuthenticate,
    required TResult orElse(),
  }) {
    if (failedToAuthenticate != null) {
      return failedToAuthenticate(sFAAuthenticationFailure);
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

abstract class _FailedToAuthenticate implements SFAAuthenticationState {
  const factory _FailedToAuthenticate(
          {required final SFAAuthenticationFailure sFAAuthenticationFailure}) =
      _$FailedToAuthenticateImpl;

  SFAAuthenticationFailure get sFAAuthenticationFailure;
  @JsonKey(ignore: true)
  _$$FailedToAuthenticateImplCopyWith<_$FailedToAuthenticateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
