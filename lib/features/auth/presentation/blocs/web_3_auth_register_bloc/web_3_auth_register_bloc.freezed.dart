// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'web_3_auth_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Web3AuthRegisterEvent {
  AuthProvider get provider => throw _privateConstructorUsedError;
  String? get credential => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthProvider provider, String? credential)
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthProvider provider, String? credential)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthProvider provider, String? credential)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Web3AuthRegisterEventCopyWith<Web3AuthRegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Web3AuthRegisterEventCopyWith<$Res> {
  factory $Web3AuthRegisterEventCopyWith(Web3AuthRegisterEvent value,
          $Res Function(Web3AuthRegisterEvent) then) =
      _$Web3AuthRegisterEventCopyWithImpl<$Res, Web3AuthRegisterEvent>;
  @useResult
  $Res call({AuthProvider provider, String? credential});
}

/// @nodoc
class _$Web3AuthRegisterEventCopyWithImpl<$Res,
        $Val extends Web3AuthRegisterEvent>
    implements $Web3AuthRegisterEventCopyWith<$Res> {
  _$Web3AuthRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? credential = freezed,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      credential: freezed == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res>
    implements $Web3AuthRegisterEventCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthProvider provider, String? credential});
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$Web3AuthRegisterEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? credential = freezed,
  }) {
    return _then(_$RegisterImpl(
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

class _$RegisterImpl implements _Register {
  const _$RegisterImpl({required this.provider, this.credential});

  @override
  final AuthProvider provider;
  @override
  final String? credential;

  @override
  String toString() {
    return 'Web3AuthRegisterEvent.register(provider: $provider, credential: $credential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterImpl &&
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
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      __$$RegisterImplCopyWithImpl<_$RegisterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthProvider provider, String? credential)
        register,
  }) {
    return register(provider, credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthProvider provider, String? credential)? register,
  }) {
    return register?.call(provider, credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthProvider provider, String? credential)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(provider, credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements Web3AuthRegisterEvent {
  const factory _Register(
      {required final AuthProvider provider,
      final String? credential}) = _$RegisterImpl;

  @override
  AuthProvider get provider;
  @override
  String? get credential;
  @override
  @JsonKey(ignore: true)
  _$$RegisterImplCopyWith<_$RegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Web3AuthRegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function(Web3AuthUserEntity web3AuthUserEntity) registered,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        failedToRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function(Web3AuthUserEntity web3AuthUserEntity)? registered,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function(Web3AuthUserEntity web3AuthUserEntity)? registered,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Registering value) registering,
    required TResult Function(_Registered value) registered,
    required TResult Function(_FailedToRegister value) failedToRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_FailedToRegister value)? failedToRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_Registered value)? registered,
    TResult Function(_FailedToRegister value)? failedToRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Web3AuthRegisterStateCopyWith<$Res> {
  factory $Web3AuthRegisterStateCopyWith(Web3AuthRegisterState value,
          $Res Function(Web3AuthRegisterState) then) =
      _$Web3AuthRegisterStateCopyWithImpl<$Res, Web3AuthRegisterState>;
}

/// @nodoc
class _$Web3AuthRegisterStateCopyWithImpl<$Res,
        $Val extends Web3AuthRegisterState>
    implements $Web3AuthRegisterStateCopyWith<$Res> {
  _$Web3AuthRegisterStateCopyWithImpl(this._value, this._then);

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
    extends _$Web3AuthRegisterStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'Web3AuthRegisterState.initial()';
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
    required TResult Function() registering,
    required TResult Function(Web3AuthUserEntity web3AuthUserEntity) registered,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        failedToRegister,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function(Web3AuthUserEntity web3AuthUserEntity)? registered,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToRegister,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function(Web3AuthUserEntity web3AuthUserEntity)? registered,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToRegister,
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
    required TResult Function(_Registering value) registering,
    required TResult Function(_Registered value) registered,
    required TResult Function(_FailedToRegister value) failedToRegister,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_FailedToRegister value)? failedToRegister,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_Registered value)? registered,
    TResult Function(_FailedToRegister value)? failedToRegister,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements Web3AuthRegisterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RegisteringImplCopyWith<$Res> {
  factory _$$RegisteringImplCopyWith(
          _$RegisteringImpl value, $Res Function(_$RegisteringImpl) then) =
      __$$RegisteringImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisteringImplCopyWithImpl<$Res>
    extends _$Web3AuthRegisterStateCopyWithImpl<$Res, _$RegisteringImpl>
    implements _$$RegisteringImplCopyWith<$Res> {
  __$$RegisteringImplCopyWithImpl(
      _$RegisteringImpl _value, $Res Function(_$RegisteringImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisteringImpl implements _Registering {
  const _$RegisteringImpl();

  @override
  String toString() {
    return 'Web3AuthRegisterState.registering()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisteringImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function(Web3AuthUserEntity web3AuthUserEntity) registered,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        failedToRegister,
  }) {
    return registering();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function(Web3AuthUserEntity web3AuthUserEntity)? registered,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToRegister,
  }) {
    return registering?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function(Web3AuthUserEntity web3AuthUserEntity)? registered,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToRegister,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Registering value) registering,
    required TResult Function(_Registered value) registered,
    required TResult Function(_FailedToRegister value) failedToRegister,
  }) {
    return registering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_FailedToRegister value)? failedToRegister,
  }) {
    return registering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_Registered value)? registered,
    TResult Function(_FailedToRegister value)? failedToRegister,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering(this);
    }
    return orElse();
  }
}

abstract class _Registering implements Web3AuthRegisterState {
  const factory _Registering() = _$RegisteringImpl;
}

/// @nodoc
abstract class _$$RegisteredImplCopyWith<$Res> {
  factory _$$RegisteredImplCopyWith(
          _$RegisteredImpl value, $Res Function(_$RegisteredImpl) then) =
      __$$RegisteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Web3AuthUserEntity web3AuthUserEntity});
}

/// @nodoc
class __$$RegisteredImplCopyWithImpl<$Res>
    extends _$Web3AuthRegisterStateCopyWithImpl<$Res, _$RegisteredImpl>
    implements _$$RegisteredImplCopyWith<$Res> {
  __$$RegisteredImplCopyWithImpl(
      _$RegisteredImpl _value, $Res Function(_$RegisteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? web3AuthUserEntity = null,
  }) {
    return _then(_$RegisteredImpl(
      web3AuthUserEntity: null == web3AuthUserEntity
          ? _value.web3AuthUserEntity
          : web3AuthUserEntity // ignore: cast_nullable_to_non_nullable
              as Web3AuthUserEntity,
    ));
  }
}

/// @nodoc

class _$RegisteredImpl implements _Registered {
  const _$RegisteredImpl({required this.web3AuthUserEntity});

  @override
  final Web3AuthUserEntity web3AuthUserEntity;

  @override
  String toString() {
    return 'Web3AuthRegisterState.registered(web3AuthUserEntity: $web3AuthUserEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisteredImpl &&
            (identical(other.web3AuthUserEntity, web3AuthUserEntity) ||
                other.web3AuthUserEntity == web3AuthUserEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, web3AuthUserEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteredImplCopyWith<_$RegisteredImpl> get copyWith =>
      __$$RegisteredImplCopyWithImpl<_$RegisteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function(Web3AuthUserEntity web3AuthUserEntity) registered,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        failedToRegister,
  }) {
    return registered(web3AuthUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function(Web3AuthUserEntity web3AuthUserEntity)? registered,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToRegister,
  }) {
    return registered?.call(web3AuthUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function(Web3AuthUserEntity web3AuthUserEntity)? registered,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToRegister,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(web3AuthUserEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Registering value) registering,
    required TResult Function(_Registered value) registered,
    required TResult Function(_FailedToRegister value) failedToRegister,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_FailedToRegister value)? failedToRegister,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_Registered value)? registered,
    TResult Function(_FailedToRegister value)? failedToRegister,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _Registered implements Web3AuthRegisterState {
  const factory _Registered(
          {required final Web3AuthUserEntity web3AuthUserEntity}) =
      _$RegisteredImpl;

  Web3AuthUserEntity get web3AuthUserEntity;
  @JsonKey(ignore: true)
  _$$RegisteredImplCopyWith<_$RegisteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToRegisterImplCopyWith<$Res> {
  factory _$$FailedToRegisterImplCopyWith(_$FailedToRegisterImpl value,
          $Res Function(_$FailedToRegisterImpl) then) =
      __$$FailedToRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Web3AuthAuthenticationFailure web3AuthAuthenticationFailure});
}

/// @nodoc
class __$$FailedToRegisterImplCopyWithImpl<$Res>
    extends _$Web3AuthRegisterStateCopyWithImpl<$Res, _$FailedToRegisterImpl>
    implements _$$FailedToRegisterImplCopyWith<$Res> {
  __$$FailedToRegisterImplCopyWithImpl(_$FailedToRegisterImpl _value,
      $Res Function(_$FailedToRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? web3AuthAuthenticationFailure = null,
  }) {
    return _then(_$FailedToRegisterImpl(
      web3AuthAuthenticationFailure: null == web3AuthAuthenticationFailure
          ? _value.web3AuthAuthenticationFailure
          : web3AuthAuthenticationFailure // ignore: cast_nullable_to_non_nullable
              as Web3AuthAuthenticationFailure,
    ));
  }
}

/// @nodoc

class _$FailedToRegisterImpl implements _FailedToRegister {
  const _$FailedToRegisterImpl({required this.web3AuthAuthenticationFailure});

  @override
  final Web3AuthAuthenticationFailure web3AuthAuthenticationFailure;

  @override
  String toString() {
    return 'Web3AuthRegisterState.failedToRegister(web3AuthAuthenticationFailure: $web3AuthAuthenticationFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToRegisterImpl &&
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
  _$$FailedToRegisterImplCopyWith<_$FailedToRegisterImpl> get copyWith =>
      __$$FailedToRegisterImplCopyWithImpl<_$FailedToRegisterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function(Web3AuthUserEntity web3AuthUserEntity) registered,
    required TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)
        failedToRegister,
  }) {
    return failedToRegister(web3AuthAuthenticationFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function(Web3AuthUserEntity web3AuthUserEntity)? registered,
    TResult? Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToRegister,
  }) {
    return failedToRegister?.call(web3AuthAuthenticationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function(Web3AuthUserEntity web3AuthUserEntity)? registered,
    TResult Function(
            Web3AuthAuthenticationFailure web3AuthAuthenticationFailure)?
        failedToRegister,
    required TResult orElse(),
  }) {
    if (failedToRegister != null) {
      return failedToRegister(web3AuthAuthenticationFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Registering value) registering,
    required TResult Function(_Registered value) registered,
    required TResult Function(_FailedToRegister value) failedToRegister,
  }) {
    return failedToRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_Registered value)? registered,
    TResult? Function(_FailedToRegister value)? failedToRegister,
  }) {
    return failedToRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_Registered value)? registered,
    TResult Function(_FailedToRegister value)? failedToRegister,
    required TResult orElse(),
  }) {
    if (failedToRegister != null) {
      return failedToRegister(this);
    }
    return orElse();
  }
}

abstract class _FailedToRegister implements Web3AuthRegisterState {
  const factory _FailedToRegister(
      {required final Web3AuthAuthenticationFailure
          web3AuthAuthenticationFailure}) = _$FailedToRegisterImpl;

  Web3AuthAuthenticationFailure get web3AuthAuthenticationFailure;
  @JsonKey(ignore: true)
  _$$FailedToRegisterImplCopyWith<_$FailedToRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
