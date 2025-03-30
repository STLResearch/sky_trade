// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_0_credentials_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Auth0CredentialsEvent {
  String? get refreshToken => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? refreshToken) renewCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? refreshToken)? renewCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? refreshToken)? renewCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RenewCredentials value) renewCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RenewCredentials value)? renewCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RenewCredentials value)? renewCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Auth0CredentialsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Auth0CredentialsEventCopyWith<Auth0CredentialsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Auth0CredentialsEventCopyWith<$Res> {
  factory $Auth0CredentialsEventCopyWith(Auth0CredentialsEvent value,
          $Res Function(Auth0CredentialsEvent) then) =
      _$Auth0CredentialsEventCopyWithImpl<$Res, Auth0CredentialsEvent>;
  @useResult
  $Res call({String? refreshToken});
}

/// @nodoc
class _$Auth0CredentialsEventCopyWithImpl<$Res,
        $Val extends Auth0CredentialsEvent>
    implements $Auth0CredentialsEventCopyWith<$Res> {
  _$Auth0CredentialsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Auth0CredentialsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RenewCredentialsImplCopyWith<$Res>
    implements $Auth0CredentialsEventCopyWith<$Res> {
  factory _$$RenewCredentialsImplCopyWith(_$RenewCredentialsImpl value,
          $Res Function(_$RenewCredentialsImpl) then) =
      __$$RenewCredentialsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? refreshToken});
}

/// @nodoc
class __$$RenewCredentialsImplCopyWithImpl<$Res>
    extends _$Auth0CredentialsEventCopyWithImpl<$Res, _$RenewCredentialsImpl>
    implements _$$RenewCredentialsImplCopyWith<$Res> {
  __$$RenewCredentialsImplCopyWithImpl(_$RenewCredentialsImpl _value,
      $Res Function(_$RenewCredentialsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth0CredentialsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
  }) {
    return _then(_$RenewCredentialsImpl(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RenewCredentialsImpl implements _RenewCredentials {
  const _$RenewCredentialsImpl({required this.refreshToken});

  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'Auth0CredentialsEvent.renewCredentials(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenewCredentialsImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  /// Create a copy of Auth0CredentialsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RenewCredentialsImplCopyWith<_$RenewCredentialsImpl> get copyWith =>
      __$$RenewCredentialsImplCopyWithImpl<_$RenewCredentialsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? refreshToken) renewCredentials,
  }) {
    return renewCredentials(refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? refreshToken)? renewCredentials,
  }) {
    return renewCredentials?.call(refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? refreshToken)? renewCredentials,
    required TResult orElse(),
  }) {
    if (renewCredentials != null) {
      return renewCredentials(refreshToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RenewCredentials value) renewCredentials,
  }) {
    return renewCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RenewCredentials value)? renewCredentials,
  }) {
    return renewCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RenewCredentials value)? renewCredentials,
    required TResult orElse(),
  }) {
    if (renewCredentials != null) {
      return renewCredentials(this);
    }
    return orElse();
  }
}

abstract class _RenewCredentials implements Auth0CredentialsEvent {
  const factory _RenewCredentials({required final String? refreshToken}) =
      _$RenewCredentialsImpl;

  @override
  String? get refreshToken;

  /// Create a copy of Auth0CredentialsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RenewCredentialsImplCopyWith<_$RenewCredentialsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Auth0CredentialsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() renewingCredentials,
    required TResult Function() renewedCredentials,
    required TResult Function() failedToRenewCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? renewingCredentials,
    TResult? Function()? renewedCredentials,
    TResult? Function()? failedToRenewCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? renewingCredentials,
    TResult Function()? renewedCredentials,
    TResult Function()? failedToRenewCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RenewingCredentials value) renewingCredentials,
    required TResult Function(_RenewedCredentials value) renewedCredentials,
    required TResult Function(_FailedToRenewCredentials value)
        failedToRenewCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RenewingCredentials value)? renewingCredentials,
    TResult? Function(_RenewedCredentials value)? renewedCredentials,
    TResult? Function(_FailedToRenewCredentials value)?
        failedToRenewCredentials,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RenewingCredentials value)? renewingCredentials,
    TResult Function(_RenewedCredentials value)? renewedCredentials,
    TResult Function(_FailedToRenewCredentials value)? failedToRenewCredentials,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Auth0CredentialsStateCopyWith<$Res> {
  factory $Auth0CredentialsStateCopyWith(Auth0CredentialsState value,
          $Res Function(Auth0CredentialsState) then) =
      _$Auth0CredentialsStateCopyWithImpl<$Res, Auth0CredentialsState>;
}

/// @nodoc
class _$Auth0CredentialsStateCopyWithImpl<$Res,
        $Val extends Auth0CredentialsState>
    implements $Auth0CredentialsStateCopyWith<$Res> {
  _$Auth0CredentialsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Auth0CredentialsState
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
    extends _$Auth0CredentialsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth0CredentialsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'Auth0CredentialsState.initial()';
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
    required TResult Function() renewingCredentials,
    required TResult Function() renewedCredentials,
    required TResult Function() failedToRenewCredentials,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? renewingCredentials,
    TResult? Function()? renewedCredentials,
    TResult? Function()? failedToRenewCredentials,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? renewingCredentials,
    TResult Function()? renewedCredentials,
    TResult Function()? failedToRenewCredentials,
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
    required TResult Function(_RenewingCredentials value) renewingCredentials,
    required TResult Function(_RenewedCredentials value) renewedCredentials,
    required TResult Function(_FailedToRenewCredentials value)
        failedToRenewCredentials,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RenewingCredentials value)? renewingCredentials,
    TResult? Function(_RenewedCredentials value)? renewedCredentials,
    TResult? Function(_FailedToRenewCredentials value)?
        failedToRenewCredentials,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RenewingCredentials value)? renewingCredentials,
    TResult Function(_RenewedCredentials value)? renewedCredentials,
    TResult Function(_FailedToRenewCredentials value)? failedToRenewCredentials,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements Auth0CredentialsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RenewingCredentialsImplCopyWith<$Res> {
  factory _$$RenewingCredentialsImplCopyWith(_$RenewingCredentialsImpl value,
          $Res Function(_$RenewingCredentialsImpl) then) =
      __$$RenewingCredentialsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RenewingCredentialsImplCopyWithImpl<$Res>
    extends _$Auth0CredentialsStateCopyWithImpl<$Res, _$RenewingCredentialsImpl>
    implements _$$RenewingCredentialsImplCopyWith<$Res> {
  __$$RenewingCredentialsImplCopyWithImpl(_$RenewingCredentialsImpl _value,
      $Res Function(_$RenewingCredentialsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth0CredentialsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RenewingCredentialsImpl implements _RenewingCredentials {
  const _$RenewingCredentialsImpl();

  @override
  String toString() {
    return 'Auth0CredentialsState.renewingCredentials()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenewingCredentialsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() renewingCredentials,
    required TResult Function() renewedCredentials,
    required TResult Function() failedToRenewCredentials,
  }) {
    return renewingCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? renewingCredentials,
    TResult? Function()? renewedCredentials,
    TResult? Function()? failedToRenewCredentials,
  }) {
    return renewingCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? renewingCredentials,
    TResult Function()? renewedCredentials,
    TResult Function()? failedToRenewCredentials,
    required TResult orElse(),
  }) {
    if (renewingCredentials != null) {
      return renewingCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RenewingCredentials value) renewingCredentials,
    required TResult Function(_RenewedCredentials value) renewedCredentials,
    required TResult Function(_FailedToRenewCredentials value)
        failedToRenewCredentials,
  }) {
    return renewingCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RenewingCredentials value)? renewingCredentials,
    TResult? Function(_RenewedCredentials value)? renewedCredentials,
    TResult? Function(_FailedToRenewCredentials value)?
        failedToRenewCredentials,
  }) {
    return renewingCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RenewingCredentials value)? renewingCredentials,
    TResult Function(_RenewedCredentials value)? renewedCredentials,
    TResult Function(_FailedToRenewCredentials value)? failedToRenewCredentials,
    required TResult orElse(),
  }) {
    if (renewingCredentials != null) {
      return renewingCredentials(this);
    }
    return orElse();
  }
}

abstract class _RenewingCredentials implements Auth0CredentialsState {
  const factory _RenewingCredentials() = _$RenewingCredentialsImpl;
}

/// @nodoc
abstract class _$$RenewedCredentialsImplCopyWith<$Res> {
  factory _$$RenewedCredentialsImplCopyWith(_$RenewedCredentialsImpl value,
          $Res Function(_$RenewedCredentialsImpl) then) =
      __$$RenewedCredentialsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RenewedCredentialsImplCopyWithImpl<$Res>
    extends _$Auth0CredentialsStateCopyWithImpl<$Res, _$RenewedCredentialsImpl>
    implements _$$RenewedCredentialsImplCopyWith<$Res> {
  __$$RenewedCredentialsImplCopyWithImpl(_$RenewedCredentialsImpl _value,
      $Res Function(_$RenewedCredentialsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth0CredentialsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RenewedCredentialsImpl implements _RenewedCredentials {
  const _$RenewedCredentialsImpl();

  @override
  String toString() {
    return 'Auth0CredentialsState.renewedCredentials()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RenewedCredentialsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() renewingCredentials,
    required TResult Function() renewedCredentials,
    required TResult Function() failedToRenewCredentials,
  }) {
    return renewedCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? renewingCredentials,
    TResult? Function()? renewedCredentials,
    TResult? Function()? failedToRenewCredentials,
  }) {
    return renewedCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? renewingCredentials,
    TResult Function()? renewedCredentials,
    TResult Function()? failedToRenewCredentials,
    required TResult orElse(),
  }) {
    if (renewedCredentials != null) {
      return renewedCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RenewingCredentials value) renewingCredentials,
    required TResult Function(_RenewedCredentials value) renewedCredentials,
    required TResult Function(_FailedToRenewCredentials value)
        failedToRenewCredentials,
  }) {
    return renewedCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RenewingCredentials value)? renewingCredentials,
    TResult? Function(_RenewedCredentials value)? renewedCredentials,
    TResult? Function(_FailedToRenewCredentials value)?
        failedToRenewCredentials,
  }) {
    return renewedCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RenewingCredentials value)? renewingCredentials,
    TResult Function(_RenewedCredentials value)? renewedCredentials,
    TResult Function(_FailedToRenewCredentials value)? failedToRenewCredentials,
    required TResult orElse(),
  }) {
    if (renewedCredentials != null) {
      return renewedCredentials(this);
    }
    return orElse();
  }
}

abstract class _RenewedCredentials implements Auth0CredentialsState {
  const factory _RenewedCredentials() = _$RenewedCredentialsImpl;
}

/// @nodoc
abstract class _$$FailedToRenewCredentialsImplCopyWith<$Res> {
  factory _$$FailedToRenewCredentialsImplCopyWith(
          _$FailedToRenewCredentialsImpl value,
          $Res Function(_$FailedToRenewCredentialsImpl) then) =
      __$$FailedToRenewCredentialsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToRenewCredentialsImplCopyWithImpl<$Res>
    extends _$Auth0CredentialsStateCopyWithImpl<$Res,
        _$FailedToRenewCredentialsImpl>
    implements _$$FailedToRenewCredentialsImplCopyWith<$Res> {
  __$$FailedToRenewCredentialsImplCopyWithImpl(
      _$FailedToRenewCredentialsImpl _value,
      $Res Function(_$FailedToRenewCredentialsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Auth0CredentialsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedToRenewCredentialsImpl implements _FailedToRenewCredentials {
  const _$FailedToRenewCredentialsImpl();

  @override
  String toString() {
    return 'Auth0CredentialsState.failedToRenewCredentials()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToRenewCredentialsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() renewingCredentials,
    required TResult Function() renewedCredentials,
    required TResult Function() failedToRenewCredentials,
  }) {
    return failedToRenewCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? renewingCredentials,
    TResult? Function()? renewedCredentials,
    TResult? Function()? failedToRenewCredentials,
  }) {
    return failedToRenewCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? renewingCredentials,
    TResult Function()? renewedCredentials,
    TResult Function()? failedToRenewCredentials,
    required TResult orElse(),
  }) {
    if (failedToRenewCredentials != null) {
      return failedToRenewCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RenewingCredentials value) renewingCredentials,
    required TResult Function(_RenewedCredentials value) renewedCredentials,
    required TResult Function(_FailedToRenewCredentials value)
        failedToRenewCredentials,
  }) {
    return failedToRenewCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RenewingCredentials value)? renewingCredentials,
    TResult? Function(_RenewedCredentials value)? renewedCredentials,
    TResult? Function(_FailedToRenewCredentials value)?
        failedToRenewCredentials,
  }) {
    return failedToRenewCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RenewingCredentials value)? renewingCredentials,
    TResult Function(_RenewedCredentials value)? renewedCredentials,
    TResult Function(_FailedToRenewCredentials value)? failedToRenewCredentials,
    required TResult orElse(),
  }) {
    if (failedToRenewCredentials != null) {
      return failedToRenewCredentials(this);
    }
    return orElse();
  }
}

abstract class _FailedToRenewCredentials implements Auth0CredentialsState {
  const factory _FailedToRenewCredentials() = _$FailedToRenewCredentialsImpl;
}
