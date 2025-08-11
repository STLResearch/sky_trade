// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leaderboard_statistics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeaderboardStatisticsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsEntity leaderboardStatisticsEntity)
        getLeaderboardPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getLeaderboardStatistics,
    TResult? Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity)?
        getLeaderboardPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity)?
        getLeaderboardPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLeaderboardStatistics value)
        getLeaderboardStatistics,
    required TResult Function(_GetLeaderboardPosition value)
        getLeaderboardPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLeaderboardStatistics value)?
        getLeaderboardStatistics,
    TResult? Function(_GetLeaderboardPosition value)? getLeaderboardPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLeaderboardStatistics value)? getLeaderboardStatistics,
    TResult Function(_GetLeaderboardPosition value)? getLeaderboardPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardStatisticsEventCopyWith<$Res> {
  factory $LeaderboardStatisticsEventCopyWith(LeaderboardStatisticsEvent value,
          $Res Function(LeaderboardStatisticsEvent) then) =
      _$LeaderboardStatisticsEventCopyWithImpl<$Res,
          LeaderboardStatisticsEvent>;
}

/// @nodoc
class _$LeaderboardStatisticsEventCopyWithImpl<$Res,
        $Val extends LeaderboardStatisticsEvent>
    implements $LeaderboardStatisticsEventCopyWith<$Res> {
  _$LeaderboardStatisticsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardStatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetLeaderboardStatisticsImplCopyWith<$Res> {
  factory _$$GetLeaderboardStatisticsImplCopyWith(
          _$GetLeaderboardStatisticsImpl value,
          $Res Function(_$GetLeaderboardStatisticsImpl) then) =
      __$$GetLeaderboardStatisticsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$GetLeaderboardStatisticsImplCopyWithImpl<$Res>
    extends _$LeaderboardStatisticsEventCopyWithImpl<$Res,
        _$GetLeaderboardStatisticsImpl>
    implements _$$GetLeaderboardStatisticsImplCopyWith<$Res> {
  __$$GetLeaderboardStatisticsImplCopyWithImpl(
      _$GetLeaderboardStatisticsImpl _value,
      $Res Function(_$GetLeaderboardStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardStatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$GetLeaderboardStatisticsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetLeaderboardStatisticsImpl implements _GetLeaderboardStatistics {
  const _$GetLeaderboardStatisticsImpl({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'LeaderboardStatisticsEvent.getLeaderboardStatistics(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLeaderboardStatisticsImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of LeaderboardStatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLeaderboardStatisticsImplCopyWith<_$GetLeaderboardStatisticsImpl>
      get copyWith => __$$GetLeaderboardStatisticsImplCopyWithImpl<
          _$GetLeaderboardStatisticsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsEntity leaderboardStatisticsEntity)
        getLeaderboardPosition,
  }) {
    return getLeaderboardStatistics(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getLeaderboardStatistics,
    TResult? Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity)?
        getLeaderboardPosition,
  }) {
    return getLeaderboardStatistics?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity)?
        getLeaderboardPosition,
    required TResult orElse(),
  }) {
    if (getLeaderboardStatistics != null) {
      return getLeaderboardStatistics(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLeaderboardStatistics value)
        getLeaderboardStatistics,
    required TResult Function(_GetLeaderboardPosition value)
        getLeaderboardPosition,
  }) {
    return getLeaderboardStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLeaderboardStatistics value)?
        getLeaderboardStatistics,
    TResult? Function(_GetLeaderboardPosition value)? getLeaderboardPosition,
  }) {
    return getLeaderboardStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLeaderboardStatistics value)? getLeaderboardStatistics,
    TResult Function(_GetLeaderboardPosition value)? getLeaderboardPosition,
    required TResult orElse(),
  }) {
    if (getLeaderboardStatistics != null) {
      return getLeaderboardStatistics(this);
    }
    return orElse();
  }
}

abstract class _GetLeaderboardStatistics implements LeaderboardStatisticsEvent {
  const factory _GetLeaderboardStatistics({required final int page}) =
      _$GetLeaderboardStatisticsImpl;

  int get page;

  /// Create a copy of LeaderboardStatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLeaderboardStatisticsImplCopyWith<_$GetLeaderboardStatisticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLeaderboardPositionImplCopyWith<$Res> {
  factory _$$GetLeaderboardPositionImplCopyWith(
          _$GetLeaderboardPositionImpl value,
          $Res Function(_$GetLeaderboardPositionImpl) then) =
      __$$GetLeaderboardPositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LeaderboardStatisticsEntity leaderboardStatisticsEntity});
}

/// @nodoc
class __$$GetLeaderboardPositionImplCopyWithImpl<$Res>
    extends _$LeaderboardStatisticsEventCopyWithImpl<$Res,
        _$GetLeaderboardPositionImpl>
    implements _$$GetLeaderboardPositionImplCopyWith<$Res> {
  __$$GetLeaderboardPositionImplCopyWithImpl(
      _$GetLeaderboardPositionImpl _value,
      $Res Function(_$GetLeaderboardPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardStatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaderboardStatisticsEntity = null,
  }) {
    return _then(_$GetLeaderboardPositionImpl(
      leaderboardStatisticsEntity: null == leaderboardStatisticsEntity
          ? _value.leaderboardStatisticsEntity
          : leaderboardStatisticsEntity // ignore: cast_nullable_to_non_nullable
              as LeaderboardStatisticsEntity,
    ));
  }
}

/// @nodoc

class _$GetLeaderboardPositionImpl implements _GetLeaderboardPosition {
  const _$GetLeaderboardPositionImpl(
      {required this.leaderboardStatisticsEntity});

  @override
  final LeaderboardStatisticsEntity leaderboardStatisticsEntity;

  @override
  String toString() {
    return 'LeaderboardStatisticsEvent.getLeaderboardPosition(leaderboardStatisticsEntity: $leaderboardStatisticsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLeaderboardPositionImpl &&
            (identical(other.leaderboardStatisticsEntity,
                    leaderboardStatisticsEntity) ||
                other.leaderboardStatisticsEntity ==
                    leaderboardStatisticsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leaderboardStatisticsEntity);

  /// Create a copy of LeaderboardStatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLeaderboardPositionImplCopyWith<_$GetLeaderboardPositionImpl>
      get copyWith => __$$GetLeaderboardPositionImplCopyWithImpl<
          _$GetLeaderboardPositionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsEntity leaderboardStatisticsEntity)
        getLeaderboardPosition,
  }) {
    return getLeaderboardPosition(leaderboardStatisticsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getLeaderboardStatistics,
    TResult? Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity)?
        getLeaderboardPosition,
  }) {
    return getLeaderboardPosition?.call(leaderboardStatisticsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity)?
        getLeaderboardPosition,
    required TResult orElse(),
  }) {
    if (getLeaderboardPosition != null) {
      return getLeaderboardPosition(leaderboardStatisticsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLeaderboardStatistics value)
        getLeaderboardStatistics,
    required TResult Function(_GetLeaderboardPosition value)
        getLeaderboardPosition,
  }) {
    return getLeaderboardPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLeaderboardStatistics value)?
        getLeaderboardStatistics,
    TResult? Function(_GetLeaderboardPosition value)? getLeaderboardPosition,
  }) {
    return getLeaderboardPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLeaderboardStatistics value)? getLeaderboardStatistics,
    TResult Function(_GetLeaderboardPosition value)? getLeaderboardPosition,
    required TResult orElse(),
  }) {
    if (getLeaderboardPosition != null) {
      return getLeaderboardPosition(this);
    }
    return orElse();
  }
}

abstract class _GetLeaderboardPosition implements LeaderboardStatisticsEvent {
  const factory _GetLeaderboardPosition(
      {required final LeaderboardStatisticsEntity
          leaderboardStatisticsEntity}) = _$GetLeaderboardPositionImpl;

  LeaderboardStatisticsEntity get leaderboardStatisticsEntity;

  /// Create a copy of LeaderboardStatisticsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLeaderboardPositionImplCopyWith<_$GetLeaderboardPositionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeaderboardStatisticsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)
        gotLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsFailure leaderboardStatisticsFailure)
        failedToGetLeaderboardStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLeaderboardStatistics,
    TResult? Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)?
        gotLeaderboardStatistics,
    TResult? Function(
            LeaderboardStatisticsFailure leaderboardStatisticsFailure)?
        failedToGetLeaderboardStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)?
        gotLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsFailure leaderboardStatisticsFailure)?
        failedToGetLeaderboardStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingLeaderboardStatistics value)
        gettingLeaderboardStatistics,
    required TResult Function(_GotLeaderboardStatistics value)
        gotLeaderboardStatistics,
    required TResult Function(_FailedToGetLeaderboardStatistics value)
        failedToGetLeaderboardStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLeaderboardStatistics value)?
        gettingLeaderboardStatistics,
    TResult? Function(_GotLeaderboardStatistics value)?
        gotLeaderboardStatistics,
    TResult? Function(_FailedToGetLeaderboardStatistics value)?
        failedToGetLeaderboardStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLeaderboardStatistics value)?
        gettingLeaderboardStatistics,
    TResult Function(_GotLeaderboardStatistics value)? gotLeaderboardStatistics,
    TResult Function(_FailedToGetLeaderboardStatistics value)?
        failedToGetLeaderboardStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardStatisticsStateCopyWith<$Res> {
  factory $LeaderboardStatisticsStateCopyWith(LeaderboardStatisticsState value,
          $Res Function(LeaderboardStatisticsState) then) =
      _$LeaderboardStatisticsStateCopyWithImpl<$Res,
          LeaderboardStatisticsState>;
}

/// @nodoc
class _$LeaderboardStatisticsStateCopyWithImpl<$Res,
        $Val extends LeaderboardStatisticsState>
    implements $LeaderboardStatisticsStateCopyWith<$Res> {
  _$LeaderboardStatisticsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaderboardStatisticsState
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
    extends _$LeaderboardStatisticsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardStatisticsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LeaderboardStatisticsState.initial()';
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
    required TResult Function() gettingLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)
        gotLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsFailure leaderboardStatisticsFailure)
        failedToGetLeaderboardStatistics,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLeaderboardStatistics,
    TResult? Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)?
        gotLeaderboardStatistics,
    TResult? Function(
            LeaderboardStatisticsFailure leaderboardStatisticsFailure)?
        failedToGetLeaderboardStatistics,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)?
        gotLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsFailure leaderboardStatisticsFailure)?
        failedToGetLeaderboardStatistics,
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
    required TResult Function(_GettingLeaderboardStatistics value)
        gettingLeaderboardStatistics,
    required TResult Function(_GotLeaderboardStatistics value)
        gotLeaderboardStatistics,
    required TResult Function(_FailedToGetLeaderboardStatistics value)
        failedToGetLeaderboardStatistics,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLeaderboardStatistics value)?
        gettingLeaderboardStatistics,
    TResult? Function(_GotLeaderboardStatistics value)?
        gotLeaderboardStatistics,
    TResult? Function(_FailedToGetLeaderboardStatistics value)?
        failedToGetLeaderboardStatistics,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLeaderboardStatistics value)?
        gettingLeaderboardStatistics,
    TResult Function(_GotLeaderboardStatistics value)? gotLeaderboardStatistics,
    TResult Function(_FailedToGetLeaderboardStatistics value)?
        failedToGetLeaderboardStatistics,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LeaderboardStatisticsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingLeaderboardStatisticsImplCopyWith<$Res> {
  factory _$$GettingLeaderboardStatisticsImplCopyWith(
          _$GettingLeaderboardStatisticsImpl value,
          $Res Function(_$GettingLeaderboardStatisticsImpl) then) =
      __$$GettingLeaderboardStatisticsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingLeaderboardStatisticsImplCopyWithImpl<$Res>
    extends _$LeaderboardStatisticsStateCopyWithImpl<$Res,
        _$GettingLeaderboardStatisticsImpl>
    implements _$$GettingLeaderboardStatisticsImplCopyWith<$Res> {
  __$$GettingLeaderboardStatisticsImplCopyWithImpl(
      _$GettingLeaderboardStatisticsImpl _value,
      $Res Function(_$GettingLeaderboardStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardStatisticsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingLeaderboardStatisticsImpl
    implements _GettingLeaderboardStatistics {
  const _$GettingLeaderboardStatisticsImpl();

  @override
  String toString() {
    return 'LeaderboardStatisticsState.gettingLeaderboardStatistics()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingLeaderboardStatisticsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)
        gotLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsFailure leaderboardStatisticsFailure)
        failedToGetLeaderboardStatistics,
  }) {
    return gettingLeaderboardStatistics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLeaderboardStatistics,
    TResult? Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)?
        gotLeaderboardStatistics,
    TResult? Function(
            LeaderboardStatisticsFailure leaderboardStatisticsFailure)?
        failedToGetLeaderboardStatistics,
  }) {
    return gettingLeaderboardStatistics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)?
        gotLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsFailure leaderboardStatisticsFailure)?
        failedToGetLeaderboardStatistics,
    required TResult orElse(),
  }) {
    if (gettingLeaderboardStatistics != null) {
      return gettingLeaderboardStatistics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingLeaderboardStatistics value)
        gettingLeaderboardStatistics,
    required TResult Function(_GotLeaderboardStatistics value)
        gotLeaderboardStatistics,
    required TResult Function(_FailedToGetLeaderboardStatistics value)
        failedToGetLeaderboardStatistics,
  }) {
    return gettingLeaderboardStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLeaderboardStatistics value)?
        gettingLeaderboardStatistics,
    TResult? Function(_GotLeaderboardStatistics value)?
        gotLeaderboardStatistics,
    TResult? Function(_FailedToGetLeaderboardStatistics value)?
        failedToGetLeaderboardStatistics,
  }) {
    return gettingLeaderboardStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLeaderboardStatistics value)?
        gettingLeaderboardStatistics,
    TResult Function(_GotLeaderboardStatistics value)? gotLeaderboardStatistics,
    TResult Function(_FailedToGetLeaderboardStatistics value)?
        failedToGetLeaderboardStatistics,
    required TResult orElse(),
  }) {
    if (gettingLeaderboardStatistics != null) {
      return gettingLeaderboardStatistics(this);
    }
    return orElse();
  }
}

abstract class _GettingLeaderboardStatistics
    implements LeaderboardStatisticsState {
  const factory _GettingLeaderboardStatistics() =
      _$GettingLeaderboardStatisticsImpl;
}

/// @nodoc
abstract class _$$GotLeaderboardStatisticsImplCopyWith<$Res> {
  factory _$$GotLeaderboardStatisticsImplCopyWith(
          _$GotLeaderboardStatisticsImpl value,
          $Res Function(_$GotLeaderboardStatisticsImpl) then) =
      __$$GotLeaderboardStatisticsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {LeaderboardStatisticsEntity leaderboardStatisticsEntity,
      LeaderboardPositionEntity? leaderboardPositionEntity});
}

/// @nodoc
class __$$GotLeaderboardStatisticsImplCopyWithImpl<$Res>
    extends _$LeaderboardStatisticsStateCopyWithImpl<$Res,
        _$GotLeaderboardStatisticsImpl>
    implements _$$GotLeaderboardStatisticsImplCopyWith<$Res> {
  __$$GotLeaderboardStatisticsImplCopyWithImpl(
      _$GotLeaderboardStatisticsImpl _value,
      $Res Function(_$GotLeaderboardStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaderboardStatisticsEntity = null,
    Object? leaderboardPositionEntity = freezed,
  }) {
    return _then(_$GotLeaderboardStatisticsImpl(
      leaderboardStatisticsEntity: null == leaderboardStatisticsEntity
          ? _value.leaderboardStatisticsEntity
          : leaderboardStatisticsEntity // ignore: cast_nullable_to_non_nullable
              as LeaderboardStatisticsEntity,
      leaderboardPositionEntity: freezed == leaderboardPositionEntity
          ? _value.leaderboardPositionEntity
          : leaderboardPositionEntity // ignore: cast_nullable_to_non_nullable
              as LeaderboardPositionEntity?,
    ));
  }
}

/// @nodoc

class _$GotLeaderboardStatisticsImpl implements _GotLeaderboardStatistics {
  const _$GotLeaderboardStatisticsImpl(
      {required this.leaderboardStatisticsEntity,
      required this.leaderboardPositionEntity});

  @override
  final LeaderboardStatisticsEntity leaderboardStatisticsEntity;
  @override
  final LeaderboardPositionEntity? leaderboardPositionEntity;

  @override
  String toString() {
    return 'LeaderboardStatisticsState.gotLeaderboardStatistics(leaderboardStatisticsEntity: $leaderboardStatisticsEntity, leaderboardPositionEntity: $leaderboardPositionEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotLeaderboardStatisticsImpl &&
            (identical(other.leaderboardStatisticsEntity,
                    leaderboardStatisticsEntity) ||
                other.leaderboardStatisticsEntity ==
                    leaderboardStatisticsEntity) &&
            (identical(other.leaderboardPositionEntity,
                    leaderboardPositionEntity) ||
                other.leaderboardPositionEntity == leaderboardPositionEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, leaderboardStatisticsEntity, leaderboardPositionEntity);

  /// Create a copy of LeaderboardStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotLeaderboardStatisticsImplCopyWith<_$GotLeaderboardStatisticsImpl>
      get copyWith => __$$GotLeaderboardStatisticsImplCopyWithImpl<
          _$GotLeaderboardStatisticsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)
        gotLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsFailure leaderboardStatisticsFailure)
        failedToGetLeaderboardStatistics,
  }) {
    return gotLeaderboardStatistics(
        leaderboardStatisticsEntity, leaderboardPositionEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLeaderboardStatistics,
    TResult? Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)?
        gotLeaderboardStatistics,
    TResult? Function(
            LeaderboardStatisticsFailure leaderboardStatisticsFailure)?
        failedToGetLeaderboardStatistics,
  }) {
    return gotLeaderboardStatistics?.call(
        leaderboardStatisticsEntity, leaderboardPositionEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)?
        gotLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsFailure leaderboardStatisticsFailure)?
        failedToGetLeaderboardStatistics,
    required TResult orElse(),
  }) {
    if (gotLeaderboardStatistics != null) {
      return gotLeaderboardStatistics(
          leaderboardStatisticsEntity, leaderboardPositionEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingLeaderboardStatistics value)
        gettingLeaderboardStatistics,
    required TResult Function(_GotLeaderboardStatistics value)
        gotLeaderboardStatistics,
    required TResult Function(_FailedToGetLeaderboardStatistics value)
        failedToGetLeaderboardStatistics,
  }) {
    return gotLeaderboardStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLeaderboardStatistics value)?
        gettingLeaderboardStatistics,
    TResult? Function(_GotLeaderboardStatistics value)?
        gotLeaderboardStatistics,
    TResult? Function(_FailedToGetLeaderboardStatistics value)?
        failedToGetLeaderboardStatistics,
  }) {
    return gotLeaderboardStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLeaderboardStatistics value)?
        gettingLeaderboardStatistics,
    TResult Function(_GotLeaderboardStatistics value)? gotLeaderboardStatistics,
    TResult Function(_FailedToGetLeaderboardStatistics value)?
        failedToGetLeaderboardStatistics,
    required TResult orElse(),
  }) {
    if (gotLeaderboardStatistics != null) {
      return gotLeaderboardStatistics(this);
    }
    return orElse();
  }
}

abstract class _GotLeaderboardStatistics implements LeaderboardStatisticsState {
  const factory _GotLeaderboardStatistics(
      {required final LeaderboardStatisticsEntity leaderboardStatisticsEntity,
      required final LeaderboardPositionEntity?
          leaderboardPositionEntity}) = _$GotLeaderboardStatisticsImpl;

  LeaderboardStatisticsEntity get leaderboardStatisticsEntity;
  LeaderboardPositionEntity? get leaderboardPositionEntity;

  /// Create a copy of LeaderboardStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotLeaderboardStatisticsImplCopyWith<_$GotLeaderboardStatisticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetLeaderboardStatisticsImplCopyWith<$Res> {
  factory _$$FailedToGetLeaderboardStatisticsImplCopyWith(
          _$FailedToGetLeaderboardStatisticsImpl value,
          $Res Function(_$FailedToGetLeaderboardStatisticsImpl) then) =
      __$$FailedToGetLeaderboardStatisticsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LeaderboardStatisticsFailure leaderboardStatisticsFailure});
}

/// @nodoc
class __$$FailedToGetLeaderboardStatisticsImplCopyWithImpl<$Res>
    extends _$LeaderboardStatisticsStateCopyWithImpl<$Res,
        _$FailedToGetLeaderboardStatisticsImpl>
    implements _$$FailedToGetLeaderboardStatisticsImplCopyWith<$Res> {
  __$$FailedToGetLeaderboardStatisticsImplCopyWithImpl(
      _$FailedToGetLeaderboardStatisticsImpl _value,
      $Res Function(_$FailedToGetLeaderboardStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeaderboardStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leaderboardStatisticsFailure = null,
  }) {
    return _then(_$FailedToGetLeaderboardStatisticsImpl(
      leaderboardStatisticsFailure: null == leaderboardStatisticsFailure
          ? _value.leaderboardStatisticsFailure
          : leaderboardStatisticsFailure // ignore: cast_nullable_to_non_nullable
              as LeaderboardStatisticsFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetLeaderboardStatisticsImpl
    implements _FailedToGetLeaderboardStatistics {
  const _$FailedToGetLeaderboardStatisticsImpl(
      {required this.leaderboardStatisticsFailure});

  @override
  final LeaderboardStatisticsFailure leaderboardStatisticsFailure;

  @override
  String toString() {
    return 'LeaderboardStatisticsState.failedToGetLeaderboardStatistics(leaderboardStatisticsFailure: $leaderboardStatisticsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetLeaderboardStatisticsImpl &&
            (identical(other.leaderboardStatisticsFailure,
                    leaderboardStatisticsFailure) ||
                other.leaderboardStatisticsFailure ==
                    leaderboardStatisticsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leaderboardStatisticsFailure);

  /// Create a copy of LeaderboardStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetLeaderboardStatisticsImplCopyWith<
          _$FailedToGetLeaderboardStatisticsImpl>
      get copyWith => __$$FailedToGetLeaderboardStatisticsImplCopyWithImpl<
          _$FailedToGetLeaderboardStatisticsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)
        gotLeaderboardStatistics,
    required TResult Function(
            LeaderboardStatisticsFailure leaderboardStatisticsFailure)
        failedToGetLeaderboardStatistics,
  }) {
    return failedToGetLeaderboardStatistics(leaderboardStatisticsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLeaderboardStatistics,
    TResult? Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)?
        gotLeaderboardStatistics,
    TResult? Function(
            LeaderboardStatisticsFailure leaderboardStatisticsFailure)?
        failedToGetLeaderboardStatistics,
  }) {
    return failedToGetLeaderboardStatistics?.call(leaderboardStatisticsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsEntity leaderboardStatisticsEntity,
            LeaderboardPositionEntity? leaderboardPositionEntity)?
        gotLeaderboardStatistics,
    TResult Function(LeaderboardStatisticsFailure leaderboardStatisticsFailure)?
        failedToGetLeaderboardStatistics,
    required TResult orElse(),
  }) {
    if (failedToGetLeaderboardStatistics != null) {
      return failedToGetLeaderboardStatistics(leaderboardStatisticsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingLeaderboardStatistics value)
        gettingLeaderboardStatistics,
    required TResult Function(_GotLeaderboardStatistics value)
        gotLeaderboardStatistics,
    required TResult Function(_FailedToGetLeaderboardStatistics value)
        failedToGetLeaderboardStatistics,
  }) {
    return failedToGetLeaderboardStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLeaderboardStatistics value)?
        gettingLeaderboardStatistics,
    TResult? Function(_GotLeaderboardStatistics value)?
        gotLeaderboardStatistics,
    TResult? Function(_FailedToGetLeaderboardStatistics value)?
        failedToGetLeaderboardStatistics,
  }) {
    return failedToGetLeaderboardStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLeaderboardStatistics value)?
        gettingLeaderboardStatistics,
    TResult Function(_GotLeaderboardStatistics value)? gotLeaderboardStatistics,
    TResult Function(_FailedToGetLeaderboardStatistics value)?
        failedToGetLeaderboardStatistics,
    required TResult orElse(),
  }) {
    if (failedToGetLeaderboardStatistics != null) {
      return failedToGetLeaderboardStatistics(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetLeaderboardStatistics
    implements LeaderboardStatisticsState {
  const factory _FailedToGetLeaderboardStatistics(
          {required final LeaderboardStatisticsFailure
              leaderboardStatisticsFailure}) =
      _$FailedToGetLeaderboardStatisticsImpl;

  LeaderboardStatisticsFailure get leaderboardStatisticsFailure;

  /// Create a copy of LeaderboardStatisticsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToGetLeaderboardStatisticsImplCopyWith<
          _$FailedToGetLeaderboardStatisticsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
