// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InviteEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendInvite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendInvite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendInvite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendInvite value) sendInvite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendInvite value)? sendInvite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendInvite value)? sendInvite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of InviteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InviteEventCopyWith<InviteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteEventCopyWith<$Res> {
  factory $InviteEventCopyWith(
          InviteEvent value, $Res Function(InviteEvent) then) =
      _$InviteEventCopyWithImpl<$Res, InviteEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$InviteEventCopyWithImpl<$Res, $Val extends InviteEvent>
    implements $InviteEventCopyWith<$Res> {
  _$InviteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InviteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendInviteImplCopyWith<$Res>
    implements $InviteEventCopyWith<$Res> {
  factory _$$SendInviteImplCopyWith(
          _$SendInviteImpl value, $Res Function(_$SendInviteImpl) then) =
      __$$SendInviteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendInviteImplCopyWithImpl<$Res>
    extends _$InviteEventCopyWithImpl<$Res, _$SendInviteImpl>
    implements _$$SendInviteImplCopyWith<$Res> {
  __$$SendInviteImplCopyWithImpl(
      _$SendInviteImpl _value, $Res Function(_$SendInviteImpl) _then)
      : super(_value, _then);

  /// Create a copy of InviteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendInviteImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendInviteImpl implements _SendInvite {
  const _$SendInviteImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'InviteEvent.sendInvite(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendInviteImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of InviteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendInviteImplCopyWith<_$SendInviteImpl> get copyWith =>
      __$$SendInviteImplCopyWithImpl<_$SendInviteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendInvite,
  }) {
    return sendInvite(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendInvite,
  }) {
    return sendInvite?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendInvite,
    required TResult orElse(),
  }) {
    if (sendInvite != null) {
      return sendInvite(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendInvite value) sendInvite,
  }) {
    return sendInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendInvite value)? sendInvite,
  }) {
    return sendInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendInvite value)? sendInvite,
    required TResult orElse(),
  }) {
    if (sendInvite != null) {
      return sendInvite(this);
    }
    return orElse();
  }
}

abstract class _SendInvite implements InviteEvent {
  const factory _SendInvite({required final String email}) = _$SendInviteImpl;

  @override
  String get email;

  /// Create a copy of InviteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendInviteImplCopyWith<_$SendInviteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InviteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInvite,
    required TResult Function(InviteEntity inviteEntity) sentInvite,
    required TResult Function(InviteFailure inviteFailure) failedToSendInvite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInvite,
    TResult? Function(InviteEntity inviteEntity)? sentInvite,
    TResult? Function(InviteFailure inviteFailure)? failedToSendInvite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInvite,
    TResult Function(InviteEntity inviteEntity)? sentInvite,
    TResult Function(InviteFailure inviteFailure)? failedToSendInvite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingInvite value) sendingInvite,
    required TResult Function(_SentInvite value) sentInvite,
    required TResult Function(_FailedToSendInvite value) failedToSendInvite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingInvite value)? sendingInvite,
    TResult? Function(_SentInvite value)? sentInvite,
    TResult? Function(_FailedToSendInvite value)? failedToSendInvite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingInvite value)? sendingInvite,
    TResult Function(_SentInvite value)? sentInvite,
    TResult Function(_FailedToSendInvite value)? failedToSendInvite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteStateCopyWith<$Res> {
  factory $InviteStateCopyWith(
          InviteState value, $Res Function(InviteState) then) =
      _$InviteStateCopyWithImpl<$Res, InviteState>;
}

/// @nodoc
class _$InviteStateCopyWithImpl<$Res, $Val extends InviteState>
    implements $InviteStateCopyWith<$Res> {
  _$InviteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InviteState
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
    extends _$InviteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of InviteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'InviteState.initial()';
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
    required TResult Function() sendingInvite,
    required TResult Function(InviteEntity inviteEntity) sentInvite,
    required TResult Function(InviteFailure inviteFailure) failedToSendInvite,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInvite,
    TResult? Function(InviteEntity inviteEntity)? sentInvite,
    TResult? Function(InviteFailure inviteFailure)? failedToSendInvite,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInvite,
    TResult Function(InviteEntity inviteEntity)? sentInvite,
    TResult Function(InviteFailure inviteFailure)? failedToSendInvite,
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
    required TResult Function(_SendingInvite value) sendingInvite,
    required TResult Function(_SentInvite value) sentInvite,
    required TResult Function(_FailedToSendInvite value) failedToSendInvite,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingInvite value)? sendingInvite,
    TResult? Function(_SentInvite value)? sentInvite,
    TResult? Function(_FailedToSendInvite value)? failedToSendInvite,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingInvite value)? sendingInvite,
    TResult Function(_SentInvite value)? sentInvite,
    TResult Function(_FailedToSendInvite value)? failedToSendInvite,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InviteState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SendingInviteImplCopyWith<$Res> {
  factory _$$SendingInviteImplCopyWith(
          _$SendingInviteImpl value, $Res Function(_$SendingInviteImpl) then) =
      __$$SendingInviteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingInviteImplCopyWithImpl<$Res>
    extends _$InviteStateCopyWithImpl<$Res, _$SendingInviteImpl>
    implements _$$SendingInviteImplCopyWith<$Res> {
  __$$SendingInviteImplCopyWithImpl(
      _$SendingInviteImpl _value, $Res Function(_$SendingInviteImpl) _then)
      : super(_value, _then);

  /// Create a copy of InviteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendingInviteImpl implements _SendingInvite {
  const _$SendingInviteImpl();

  @override
  String toString() {
    return 'InviteState.sendingInvite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingInviteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInvite,
    required TResult Function(InviteEntity inviteEntity) sentInvite,
    required TResult Function(InviteFailure inviteFailure) failedToSendInvite,
  }) {
    return sendingInvite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInvite,
    TResult? Function(InviteEntity inviteEntity)? sentInvite,
    TResult? Function(InviteFailure inviteFailure)? failedToSendInvite,
  }) {
    return sendingInvite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInvite,
    TResult Function(InviteEntity inviteEntity)? sentInvite,
    TResult Function(InviteFailure inviteFailure)? failedToSendInvite,
    required TResult orElse(),
  }) {
    if (sendingInvite != null) {
      return sendingInvite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingInvite value) sendingInvite,
    required TResult Function(_SentInvite value) sentInvite,
    required TResult Function(_FailedToSendInvite value) failedToSendInvite,
  }) {
    return sendingInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingInvite value)? sendingInvite,
    TResult? Function(_SentInvite value)? sentInvite,
    TResult? Function(_FailedToSendInvite value)? failedToSendInvite,
  }) {
    return sendingInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingInvite value)? sendingInvite,
    TResult Function(_SentInvite value)? sentInvite,
    TResult Function(_FailedToSendInvite value)? failedToSendInvite,
    required TResult orElse(),
  }) {
    if (sendingInvite != null) {
      return sendingInvite(this);
    }
    return orElse();
  }
}

abstract class _SendingInvite implements InviteState {
  const factory _SendingInvite() = _$SendingInviteImpl;
}

/// @nodoc
abstract class _$$SentInviteImplCopyWith<$Res> {
  factory _$$SentInviteImplCopyWith(
          _$SentInviteImpl value, $Res Function(_$SentInviteImpl) then) =
      __$$SentInviteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InviteEntity inviteEntity});
}

/// @nodoc
class __$$SentInviteImplCopyWithImpl<$Res>
    extends _$InviteStateCopyWithImpl<$Res, _$SentInviteImpl>
    implements _$$SentInviteImplCopyWith<$Res> {
  __$$SentInviteImplCopyWithImpl(
      _$SentInviteImpl _value, $Res Function(_$SentInviteImpl) _then)
      : super(_value, _then);

  /// Create a copy of InviteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteEntity = null,
  }) {
    return _then(_$SentInviteImpl(
      inviteEntity: null == inviteEntity
          ? _value.inviteEntity
          : inviteEntity // ignore: cast_nullable_to_non_nullable
              as InviteEntity,
    ));
  }
}

/// @nodoc

class _$SentInviteImpl implements _SentInvite {
  const _$SentInviteImpl({required this.inviteEntity});

  @override
  final InviteEntity inviteEntity;

  @override
  String toString() {
    return 'InviteState.sentInvite(inviteEntity: $inviteEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentInviteImpl &&
            (identical(other.inviteEntity, inviteEntity) ||
                other.inviteEntity == inviteEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inviteEntity);

  /// Create a copy of InviteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentInviteImplCopyWith<_$SentInviteImpl> get copyWith =>
      __$$SentInviteImplCopyWithImpl<_$SentInviteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInvite,
    required TResult Function(InviteEntity inviteEntity) sentInvite,
    required TResult Function(InviteFailure inviteFailure) failedToSendInvite,
  }) {
    return sentInvite(inviteEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInvite,
    TResult? Function(InviteEntity inviteEntity)? sentInvite,
    TResult? Function(InviteFailure inviteFailure)? failedToSendInvite,
  }) {
    return sentInvite?.call(inviteEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInvite,
    TResult Function(InviteEntity inviteEntity)? sentInvite,
    TResult Function(InviteFailure inviteFailure)? failedToSendInvite,
    required TResult orElse(),
  }) {
    if (sentInvite != null) {
      return sentInvite(inviteEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingInvite value) sendingInvite,
    required TResult Function(_SentInvite value) sentInvite,
    required TResult Function(_FailedToSendInvite value) failedToSendInvite,
  }) {
    return sentInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingInvite value)? sendingInvite,
    TResult? Function(_SentInvite value)? sentInvite,
    TResult? Function(_FailedToSendInvite value)? failedToSendInvite,
  }) {
    return sentInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingInvite value)? sendingInvite,
    TResult Function(_SentInvite value)? sentInvite,
    TResult Function(_FailedToSendInvite value)? failedToSendInvite,
    required TResult orElse(),
  }) {
    if (sentInvite != null) {
      return sentInvite(this);
    }
    return orElse();
  }
}

abstract class _SentInvite implements InviteState {
  const factory _SentInvite({required final InviteEntity inviteEntity}) =
      _$SentInviteImpl;

  InviteEntity get inviteEntity;

  /// Create a copy of InviteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentInviteImplCopyWith<_$SentInviteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToSendInviteImplCopyWith<$Res> {
  factory _$$FailedToSendInviteImplCopyWith(_$FailedToSendInviteImpl value,
          $Res Function(_$FailedToSendInviteImpl) then) =
      __$$FailedToSendInviteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InviteFailure inviteFailure});
}

/// @nodoc
class __$$FailedToSendInviteImplCopyWithImpl<$Res>
    extends _$InviteStateCopyWithImpl<$Res, _$FailedToSendInviteImpl>
    implements _$$FailedToSendInviteImplCopyWith<$Res> {
  __$$FailedToSendInviteImplCopyWithImpl(_$FailedToSendInviteImpl _value,
      $Res Function(_$FailedToSendInviteImpl) _then)
      : super(_value, _then);

  /// Create a copy of InviteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteFailure = null,
  }) {
    return _then(_$FailedToSendInviteImpl(
      inviteFailure: null == inviteFailure
          ? _value.inviteFailure
          : inviteFailure // ignore: cast_nullable_to_non_nullable
              as InviteFailure,
    ));
  }
}

/// @nodoc

class _$FailedToSendInviteImpl implements _FailedToSendInvite {
  const _$FailedToSendInviteImpl({required this.inviteFailure});

  @override
  final InviteFailure inviteFailure;

  @override
  String toString() {
    return 'InviteState.failedToSendInvite(inviteFailure: $inviteFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToSendInviteImpl &&
            (identical(other.inviteFailure, inviteFailure) ||
                other.inviteFailure == inviteFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inviteFailure);

  /// Create a copy of InviteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToSendInviteImplCopyWith<_$FailedToSendInviteImpl> get copyWith =>
      __$$FailedToSendInviteImplCopyWithImpl<_$FailedToSendInviteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingInvite,
    required TResult Function(InviteEntity inviteEntity) sentInvite,
    required TResult Function(InviteFailure inviteFailure) failedToSendInvite,
  }) {
    return failedToSendInvite(inviteFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingInvite,
    TResult? Function(InviteEntity inviteEntity)? sentInvite,
    TResult? Function(InviteFailure inviteFailure)? failedToSendInvite,
  }) {
    return failedToSendInvite?.call(inviteFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingInvite,
    TResult Function(InviteEntity inviteEntity)? sentInvite,
    TResult Function(InviteFailure inviteFailure)? failedToSendInvite,
    required TResult orElse(),
  }) {
    if (failedToSendInvite != null) {
      return failedToSendInvite(inviteFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingInvite value) sendingInvite,
    required TResult Function(_SentInvite value) sentInvite,
    required TResult Function(_FailedToSendInvite value) failedToSendInvite,
  }) {
    return failedToSendInvite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingInvite value)? sendingInvite,
    TResult? Function(_SentInvite value)? sentInvite,
    TResult? Function(_FailedToSendInvite value)? failedToSendInvite,
  }) {
    return failedToSendInvite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingInvite value)? sendingInvite,
    TResult Function(_SentInvite value)? sentInvite,
    TResult Function(_FailedToSendInvite value)? failedToSendInvite,
    required TResult orElse(),
  }) {
    if (failedToSendInvite != null) {
      return failedToSendInvite(this);
    }
    return orElse();
  }
}

abstract class _FailedToSendInvite implements InviteState {
  const factory _FailedToSendInvite(
      {required final InviteFailure inviteFailure}) = _$FailedToSendInviteImpl;

  InviteFailure get inviteFailure;

  /// Create a copy of InviteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToSendInviteImplCopyWith<_$FailedToSendInviteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
