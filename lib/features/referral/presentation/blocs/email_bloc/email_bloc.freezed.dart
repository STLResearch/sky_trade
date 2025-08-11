// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEmail value) getEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEmail value)? getEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEmail value)? getEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailEventCopyWith<$Res> {
  factory $EmailEventCopyWith(
          EmailEvent value, $Res Function(EmailEvent) then) =
      _$EmailEventCopyWithImpl<$Res, EmailEvent>;
}

/// @nodoc
class _$EmailEventCopyWithImpl<$Res, $Val extends EmailEvent>
    implements $EmailEventCopyWith<$Res> {
  _$EmailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetEmailImplCopyWith<$Res> {
  factory _$$GetEmailImplCopyWith(
          _$GetEmailImpl value, $Res Function(_$GetEmailImpl) then) =
      __$$GetEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEmailImplCopyWithImpl<$Res>
    extends _$EmailEventCopyWithImpl<$Res, _$GetEmailImpl>
    implements _$$GetEmailImplCopyWith<$Res> {
  __$$GetEmailImplCopyWithImpl(
      _$GetEmailImpl _value, $Res Function(_$GetEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetEmailImpl implements _GetEmail {
  const _$GetEmailImpl();

  @override
  String toString() {
    return 'EmailEvent.getEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmail,
  }) {
    return getEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmail,
  }) {
    return getEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmail,
    required TResult orElse(),
  }) {
    if (getEmail != null) {
      return getEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEmail value) getEmail,
  }) {
    return getEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEmail value)? getEmail,
  }) {
    return getEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEmail value)? getEmail,
    required TResult orElse(),
  }) {
    if (getEmail != null) {
      return getEmail(this);
    }
    return orElse();
  }
}

abstract class _GetEmail implements EmailEvent {
  const factory _GetEmail() = _$GetEmailImpl;
}

/// @nodoc
mixin _$EmailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingEmail,
    required TResult Function(String email) gotEmail,
    required TResult Function() failedToGetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingEmail,
    TResult? Function(String email)? gotEmail,
    TResult? Function()? failedToGetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingEmail,
    TResult Function(String email)? gotEmail,
    TResult Function()? failedToGetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingEmail value) gettingEmail,
    required TResult Function(_GotEmail value) gotEmail,
    required TResult Function(_FailedToGetEmail value) failedToGetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingEmail value)? gettingEmail,
    TResult? Function(_GotEmail value)? gotEmail,
    TResult? Function(_FailedToGetEmail value)? failedToGetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingEmail value)? gettingEmail,
    TResult Function(_GotEmail value)? gotEmail,
    TResult Function(_FailedToGetEmail value)? failedToGetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailStateCopyWith<$Res> {
  factory $EmailStateCopyWith(
          EmailState value, $Res Function(EmailState) then) =
      _$EmailStateCopyWithImpl<$Res, EmailState>;
}

/// @nodoc
class _$EmailStateCopyWithImpl<$Res, $Val extends EmailState>
    implements $EmailStateCopyWith<$Res> {
  _$EmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailState
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
    extends _$EmailStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EmailState.initial()';
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
    required TResult Function() gettingEmail,
    required TResult Function(String email) gotEmail,
    required TResult Function() failedToGetEmail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingEmail,
    TResult? Function(String email)? gotEmail,
    TResult? Function()? failedToGetEmail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingEmail,
    TResult Function(String email)? gotEmail,
    TResult Function()? failedToGetEmail,
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
    required TResult Function(_GettingEmail value) gettingEmail,
    required TResult Function(_GotEmail value) gotEmail,
    required TResult Function(_FailedToGetEmail value) failedToGetEmail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingEmail value)? gettingEmail,
    TResult? Function(_GotEmail value)? gotEmail,
    TResult? Function(_FailedToGetEmail value)? failedToGetEmail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingEmail value)? gettingEmail,
    TResult Function(_GotEmail value)? gotEmail,
    TResult Function(_FailedToGetEmail value)? failedToGetEmail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EmailState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingEmailImplCopyWith<$Res> {
  factory _$$GettingEmailImplCopyWith(
          _$GettingEmailImpl value, $Res Function(_$GettingEmailImpl) then) =
      __$$GettingEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingEmailImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$GettingEmailImpl>
    implements _$$GettingEmailImplCopyWith<$Res> {
  __$$GettingEmailImplCopyWithImpl(
      _$GettingEmailImpl _value, $Res Function(_$GettingEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingEmailImpl implements _GettingEmail {
  const _$GettingEmailImpl();

  @override
  String toString() {
    return 'EmailState.gettingEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingEmail,
    required TResult Function(String email) gotEmail,
    required TResult Function() failedToGetEmail,
  }) {
    return gettingEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingEmail,
    TResult? Function(String email)? gotEmail,
    TResult? Function()? failedToGetEmail,
  }) {
    return gettingEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingEmail,
    TResult Function(String email)? gotEmail,
    TResult Function()? failedToGetEmail,
    required TResult orElse(),
  }) {
    if (gettingEmail != null) {
      return gettingEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingEmail value) gettingEmail,
    required TResult Function(_GotEmail value) gotEmail,
    required TResult Function(_FailedToGetEmail value) failedToGetEmail,
  }) {
    return gettingEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingEmail value)? gettingEmail,
    TResult? Function(_GotEmail value)? gotEmail,
    TResult? Function(_FailedToGetEmail value)? failedToGetEmail,
  }) {
    return gettingEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingEmail value)? gettingEmail,
    TResult Function(_GotEmail value)? gotEmail,
    TResult Function(_FailedToGetEmail value)? failedToGetEmail,
    required TResult orElse(),
  }) {
    if (gettingEmail != null) {
      return gettingEmail(this);
    }
    return orElse();
  }
}

abstract class _GettingEmail implements EmailState {
  const factory _GettingEmail() = _$GettingEmailImpl;
}

/// @nodoc
abstract class _$$GotEmailImplCopyWith<$Res> {
  factory _$$GotEmailImplCopyWith(
          _$GotEmailImpl value, $Res Function(_$GotEmailImpl) then) =
      __$$GotEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$GotEmailImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$GotEmailImpl>
    implements _$$GotEmailImplCopyWith<$Res> {
  __$$GotEmailImplCopyWithImpl(
      _$GotEmailImpl _value, $Res Function(_$GotEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$GotEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GotEmailImpl implements _GotEmail {
  const _$GotEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'EmailState.gotEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotEmailImplCopyWith<_$GotEmailImpl> get copyWith =>
      __$$GotEmailImplCopyWithImpl<_$GotEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingEmail,
    required TResult Function(String email) gotEmail,
    required TResult Function() failedToGetEmail,
  }) {
    return gotEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingEmail,
    TResult? Function(String email)? gotEmail,
    TResult? Function()? failedToGetEmail,
  }) {
    return gotEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingEmail,
    TResult Function(String email)? gotEmail,
    TResult Function()? failedToGetEmail,
    required TResult orElse(),
  }) {
    if (gotEmail != null) {
      return gotEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingEmail value) gettingEmail,
    required TResult Function(_GotEmail value) gotEmail,
    required TResult Function(_FailedToGetEmail value) failedToGetEmail,
  }) {
    return gotEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingEmail value)? gettingEmail,
    TResult? Function(_GotEmail value)? gotEmail,
    TResult? Function(_FailedToGetEmail value)? failedToGetEmail,
  }) {
    return gotEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingEmail value)? gettingEmail,
    TResult Function(_GotEmail value)? gotEmail,
    TResult Function(_FailedToGetEmail value)? failedToGetEmail,
    required TResult orElse(),
  }) {
    if (gotEmail != null) {
      return gotEmail(this);
    }
    return orElse();
  }
}

abstract class _GotEmail implements EmailState {
  const factory _GotEmail({required final String email}) = _$GotEmailImpl;

  String get email;

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotEmailImplCopyWith<_$GotEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetEmailImplCopyWith<$Res> {
  factory _$$FailedToGetEmailImplCopyWith(_$FailedToGetEmailImpl value,
          $Res Function(_$FailedToGetEmailImpl) then) =
      __$$FailedToGetEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToGetEmailImplCopyWithImpl<$Res>
    extends _$EmailStateCopyWithImpl<$Res, _$FailedToGetEmailImpl>
    implements _$$FailedToGetEmailImplCopyWith<$Res> {
  __$$FailedToGetEmailImplCopyWithImpl(_$FailedToGetEmailImpl _value,
      $Res Function(_$FailedToGetEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FailedToGetEmailImpl implements _FailedToGetEmail {
  const _$FailedToGetEmailImpl();

  @override
  String toString() {
    return 'EmailState.failedToGetEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedToGetEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingEmail,
    required TResult Function(String email) gotEmail,
    required TResult Function() failedToGetEmail,
  }) {
    return failedToGetEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingEmail,
    TResult? Function(String email)? gotEmail,
    TResult? Function()? failedToGetEmail,
  }) {
    return failedToGetEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingEmail,
    TResult Function(String email)? gotEmail,
    TResult Function()? failedToGetEmail,
    required TResult orElse(),
  }) {
    if (failedToGetEmail != null) {
      return failedToGetEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingEmail value) gettingEmail,
    required TResult Function(_GotEmail value) gotEmail,
    required TResult Function(_FailedToGetEmail value) failedToGetEmail,
  }) {
    return failedToGetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingEmail value)? gettingEmail,
    TResult? Function(_GotEmail value)? gotEmail,
    TResult? Function(_FailedToGetEmail value)? failedToGetEmail,
  }) {
    return failedToGetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingEmail value)? gettingEmail,
    TResult Function(_GotEmail value)? gotEmail,
    TResult Function(_FailedToGetEmail value)? failedToGetEmail,
    required TResult orElse(),
  }) {
    if (failedToGetEmail != null) {
      return failedToGetEmail(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetEmail implements EmailState {
  const factory _FailedToGetEmail() = _$FailedToGetEmailImpl;
}
