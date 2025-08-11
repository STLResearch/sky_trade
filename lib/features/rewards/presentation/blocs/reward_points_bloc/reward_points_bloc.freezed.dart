// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reward_points_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RewardPointsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPoints value) getPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPoints value)? getPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPoints value)? getPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardPointsEventCopyWith<$Res> {
  factory $RewardPointsEventCopyWith(
          RewardPointsEvent value, $Res Function(RewardPointsEvent) then) =
      _$RewardPointsEventCopyWithImpl<$Res, RewardPointsEvent>;
}

/// @nodoc
class _$RewardPointsEventCopyWithImpl<$Res, $Val extends RewardPointsEvent>
    implements $RewardPointsEventCopyWith<$Res> {
  _$RewardPointsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardPointsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPointsImplCopyWith<$Res> {
  factory _$$GetPointsImplCopyWith(
          _$GetPointsImpl value, $Res Function(_$GetPointsImpl) then) =
      __$$GetPointsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPointsImplCopyWithImpl<$Res>
    extends _$RewardPointsEventCopyWithImpl<$Res, _$GetPointsImpl>
    implements _$$GetPointsImplCopyWith<$Res> {
  __$$GetPointsImplCopyWithImpl(
      _$GetPointsImpl _value, $Res Function(_$GetPointsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardPointsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetPointsImpl implements _GetPoints {
  const _$GetPointsImpl();

  @override
  String toString() {
    return 'RewardPointsEvent.getPoints()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPointsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPoints,
  }) {
    return getPoints();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPoints,
  }) {
    return getPoints?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPoints,
    required TResult orElse(),
  }) {
    if (getPoints != null) {
      return getPoints();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPoints value) getPoints,
  }) {
    return getPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPoints value)? getPoints,
  }) {
    return getPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPoints value)? getPoints,
    required TResult orElse(),
  }) {
    if (getPoints != null) {
      return getPoints(this);
    }
    return orElse();
  }
}

abstract class _GetPoints implements RewardPointsEvent {
  const factory _GetPoints() = _$GetPointsImpl;
}

/// @nodoc
mixin _$RewardPointsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingPoints,
    required TResult Function(RewardPointsEntity rewardPointsEntity) gotPoints,
    required TResult Function(RewardPointsFailure rewardPointsFailure)
        failedToGetPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingPoints,
    TResult? Function(RewardPointsEntity rewardPointsEntity)? gotPoints,
    TResult? Function(RewardPointsFailure rewardPointsFailure)?
        failedToGetPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingPoints,
    TResult Function(RewardPointsEntity rewardPointsEntity)? gotPoints,
    TResult Function(RewardPointsFailure rewardPointsFailure)?
        failedToGetPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingPoints value) gettingPoints,
    required TResult Function(_GotPoints value) gotPoints,
    required TResult Function(_FailedToGetPoints value) failedToGetPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingPoints value)? gettingPoints,
    TResult? Function(_GotPoints value)? gotPoints,
    TResult? Function(_FailedToGetPoints value)? failedToGetPoints,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingPoints value)? gettingPoints,
    TResult Function(_GotPoints value)? gotPoints,
    TResult Function(_FailedToGetPoints value)? failedToGetPoints,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardPointsStateCopyWith<$Res> {
  factory $RewardPointsStateCopyWith(
          RewardPointsState value, $Res Function(RewardPointsState) then) =
      _$RewardPointsStateCopyWithImpl<$Res, RewardPointsState>;
}

/// @nodoc
class _$RewardPointsStateCopyWithImpl<$Res, $Val extends RewardPointsState>
    implements $RewardPointsStateCopyWith<$Res> {
  _$RewardPointsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RewardPointsState
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
    extends _$RewardPointsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardPointsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RewardPointsState.initial()';
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
    required TResult Function() gettingPoints,
    required TResult Function(RewardPointsEntity rewardPointsEntity) gotPoints,
    required TResult Function(RewardPointsFailure rewardPointsFailure)
        failedToGetPoints,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingPoints,
    TResult? Function(RewardPointsEntity rewardPointsEntity)? gotPoints,
    TResult? Function(RewardPointsFailure rewardPointsFailure)?
        failedToGetPoints,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingPoints,
    TResult Function(RewardPointsEntity rewardPointsEntity)? gotPoints,
    TResult Function(RewardPointsFailure rewardPointsFailure)?
        failedToGetPoints,
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
    required TResult Function(_GettingPoints value) gettingPoints,
    required TResult Function(_GotPoints value) gotPoints,
    required TResult Function(_FailedToGetPoints value) failedToGetPoints,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingPoints value)? gettingPoints,
    TResult? Function(_GotPoints value)? gotPoints,
    TResult? Function(_FailedToGetPoints value)? failedToGetPoints,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingPoints value)? gettingPoints,
    TResult Function(_GotPoints value)? gotPoints,
    TResult Function(_FailedToGetPoints value)? failedToGetPoints,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RewardPointsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingPointsImplCopyWith<$Res> {
  factory _$$GettingPointsImplCopyWith(
          _$GettingPointsImpl value, $Res Function(_$GettingPointsImpl) then) =
      __$$GettingPointsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingPointsImplCopyWithImpl<$Res>
    extends _$RewardPointsStateCopyWithImpl<$Res, _$GettingPointsImpl>
    implements _$$GettingPointsImplCopyWith<$Res> {
  __$$GettingPointsImplCopyWithImpl(
      _$GettingPointsImpl _value, $Res Function(_$GettingPointsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardPointsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingPointsImpl implements _GettingPoints {
  const _$GettingPointsImpl();

  @override
  String toString() {
    return 'RewardPointsState.gettingPoints()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingPointsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingPoints,
    required TResult Function(RewardPointsEntity rewardPointsEntity) gotPoints,
    required TResult Function(RewardPointsFailure rewardPointsFailure)
        failedToGetPoints,
  }) {
    return gettingPoints();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingPoints,
    TResult? Function(RewardPointsEntity rewardPointsEntity)? gotPoints,
    TResult? Function(RewardPointsFailure rewardPointsFailure)?
        failedToGetPoints,
  }) {
    return gettingPoints?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingPoints,
    TResult Function(RewardPointsEntity rewardPointsEntity)? gotPoints,
    TResult Function(RewardPointsFailure rewardPointsFailure)?
        failedToGetPoints,
    required TResult orElse(),
  }) {
    if (gettingPoints != null) {
      return gettingPoints();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingPoints value) gettingPoints,
    required TResult Function(_GotPoints value) gotPoints,
    required TResult Function(_FailedToGetPoints value) failedToGetPoints,
  }) {
    return gettingPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingPoints value)? gettingPoints,
    TResult? Function(_GotPoints value)? gotPoints,
    TResult? Function(_FailedToGetPoints value)? failedToGetPoints,
  }) {
    return gettingPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingPoints value)? gettingPoints,
    TResult Function(_GotPoints value)? gotPoints,
    TResult Function(_FailedToGetPoints value)? failedToGetPoints,
    required TResult orElse(),
  }) {
    if (gettingPoints != null) {
      return gettingPoints(this);
    }
    return orElse();
  }
}

abstract class _GettingPoints implements RewardPointsState {
  const factory _GettingPoints() = _$GettingPointsImpl;
}

/// @nodoc
abstract class _$$GotPointsImplCopyWith<$Res> {
  factory _$$GotPointsImplCopyWith(
          _$GotPointsImpl value, $Res Function(_$GotPointsImpl) then) =
      __$$GotPointsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RewardPointsEntity rewardPointsEntity});
}

/// @nodoc
class __$$GotPointsImplCopyWithImpl<$Res>
    extends _$RewardPointsStateCopyWithImpl<$Res, _$GotPointsImpl>
    implements _$$GotPointsImplCopyWith<$Res> {
  __$$GotPointsImplCopyWithImpl(
      _$GotPointsImpl _value, $Res Function(_$GotPointsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardPointsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardPointsEntity = null,
  }) {
    return _then(_$GotPointsImpl(
      rewardPointsEntity: null == rewardPointsEntity
          ? _value.rewardPointsEntity
          : rewardPointsEntity // ignore: cast_nullable_to_non_nullable
              as RewardPointsEntity,
    ));
  }
}

/// @nodoc

class _$GotPointsImpl implements _GotPoints {
  const _$GotPointsImpl({required this.rewardPointsEntity});

  @override
  final RewardPointsEntity rewardPointsEntity;

  @override
  String toString() {
    return 'RewardPointsState.gotPoints(rewardPointsEntity: $rewardPointsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotPointsImpl &&
            (identical(other.rewardPointsEntity, rewardPointsEntity) ||
                other.rewardPointsEntity == rewardPointsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rewardPointsEntity);

  /// Create a copy of RewardPointsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotPointsImplCopyWith<_$GotPointsImpl> get copyWith =>
      __$$GotPointsImplCopyWithImpl<_$GotPointsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingPoints,
    required TResult Function(RewardPointsEntity rewardPointsEntity) gotPoints,
    required TResult Function(RewardPointsFailure rewardPointsFailure)
        failedToGetPoints,
  }) {
    return gotPoints(rewardPointsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingPoints,
    TResult? Function(RewardPointsEntity rewardPointsEntity)? gotPoints,
    TResult? Function(RewardPointsFailure rewardPointsFailure)?
        failedToGetPoints,
  }) {
    return gotPoints?.call(rewardPointsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingPoints,
    TResult Function(RewardPointsEntity rewardPointsEntity)? gotPoints,
    TResult Function(RewardPointsFailure rewardPointsFailure)?
        failedToGetPoints,
    required TResult orElse(),
  }) {
    if (gotPoints != null) {
      return gotPoints(rewardPointsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingPoints value) gettingPoints,
    required TResult Function(_GotPoints value) gotPoints,
    required TResult Function(_FailedToGetPoints value) failedToGetPoints,
  }) {
    return gotPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingPoints value)? gettingPoints,
    TResult? Function(_GotPoints value)? gotPoints,
    TResult? Function(_FailedToGetPoints value)? failedToGetPoints,
  }) {
    return gotPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingPoints value)? gettingPoints,
    TResult Function(_GotPoints value)? gotPoints,
    TResult Function(_FailedToGetPoints value)? failedToGetPoints,
    required TResult orElse(),
  }) {
    if (gotPoints != null) {
      return gotPoints(this);
    }
    return orElse();
  }
}

abstract class _GotPoints implements RewardPointsState {
  const factory _GotPoints(
      {required final RewardPointsEntity rewardPointsEntity}) = _$GotPointsImpl;

  RewardPointsEntity get rewardPointsEntity;

  /// Create a copy of RewardPointsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotPointsImplCopyWith<_$GotPointsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetPointsImplCopyWith<$Res> {
  factory _$$FailedToGetPointsImplCopyWith(_$FailedToGetPointsImpl value,
          $Res Function(_$FailedToGetPointsImpl) then) =
      __$$FailedToGetPointsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RewardPointsFailure rewardPointsFailure});
}

/// @nodoc
class __$$FailedToGetPointsImplCopyWithImpl<$Res>
    extends _$RewardPointsStateCopyWithImpl<$Res, _$FailedToGetPointsImpl>
    implements _$$FailedToGetPointsImplCopyWith<$Res> {
  __$$FailedToGetPointsImplCopyWithImpl(_$FailedToGetPointsImpl _value,
      $Res Function(_$FailedToGetPointsImpl) _then)
      : super(_value, _then);

  /// Create a copy of RewardPointsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewardPointsFailure = null,
  }) {
    return _then(_$FailedToGetPointsImpl(
      rewardPointsFailure: null == rewardPointsFailure
          ? _value.rewardPointsFailure
          : rewardPointsFailure // ignore: cast_nullable_to_non_nullable
              as RewardPointsFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetPointsImpl implements _FailedToGetPoints {
  const _$FailedToGetPointsImpl({required this.rewardPointsFailure});

  @override
  final RewardPointsFailure rewardPointsFailure;

  @override
  String toString() {
    return 'RewardPointsState.failedToGetPoints(rewardPointsFailure: $rewardPointsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetPointsImpl &&
            (identical(other.rewardPointsFailure, rewardPointsFailure) ||
                other.rewardPointsFailure == rewardPointsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rewardPointsFailure);

  /// Create a copy of RewardPointsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetPointsImplCopyWith<_$FailedToGetPointsImpl> get copyWith =>
      __$$FailedToGetPointsImplCopyWithImpl<_$FailedToGetPointsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingPoints,
    required TResult Function(RewardPointsEntity rewardPointsEntity) gotPoints,
    required TResult Function(RewardPointsFailure rewardPointsFailure)
        failedToGetPoints,
  }) {
    return failedToGetPoints(rewardPointsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingPoints,
    TResult? Function(RewardPointsEntity rewardPointsEntity)? gotPoints,
    TResult? Function(RewardPointsFailure rewardPointsFailure)?
        failedToGetPoints,
  }) {
    return failedToGetPoints?.call(rewardPointsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingPoints,
    TResult Function(RewardPointsEntity rewardPointsEntity)? gotPoints,
    TResult Function(RewardPointsFailure rewardPointsFailure)?
        failedToGetPoints,
    required TResult orElse(),
  }) {
    if (failedToGetPoints != null) {
      return failedToGetPoints(rewardPointsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingPoints value) gettingPoints,
    required TResult Function(_GotPoints value) gotPoints,
    required TResult Function(_FailedToGetPoints value) failedToGetPoints,
  }) {
    return failedToGetPoints(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingPoints value)? gettingPoints,
    TResult? Function(_GotPoints value)? gotPoints,
    TResult? Function(_FailedToGetPoints value)? failedToGetPoints,
  }) {
    return failedToGetPoints?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingPoints value)? gettingPoints,
    TResult Function(_GotPoints value)? gotPoints,
    TResult Function(_FailedToGetPoints value)? failedToGetPoints,
    required TResult orElse(),
  }) {
    if (failedToGetPoints != null) {
      return failedToGetPoints(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetPoints implements RewardPointsState {
  const factory _FailedToGetPoints(
          {required final RewardPointsFailure rewardPointsFailure}) =
      _$FailedToGetPointsImpl;

  RewardPointsFailure get rewardPointsFailure;

  /// Create a copy of RewardPointsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToGetPointsImplCopyWith<_$FailedToGetPointsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
