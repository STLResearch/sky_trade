// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReferralHistoryEvent {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit) getReferralHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit)? getReferralHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit)? getReferralHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReferralHistory value) getReferralHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReferralHistory value)? getReferralHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReferralHistory value)? getReferralHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ReferralHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralHistoryEventCopyWith<ReferralHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralHistoryEventCopyWith<$Res> {
  factory $ReferralHistoryEventCopyWith(ReferralHistoryEvent value,
          $Res Function(ReferralHistoryEvent) then) =
      _$ReferralHistoryEventCopyWithImpl<$Res, ReferralHistoryEvent>;
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class _$ReferralHistoryEventCopyWithImpl<$Res,
        $Val extends ReferralHistoryEvent>
    implements $ReferralHistoryEventCopyWith<$Res> {
  _$ReferralHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetReferralHistoryImplCopyWith<$Res>
    implements $ReferralHistoryEventCopyWith<$Res> {
  factory _$$GetReferralHistoryImplCopyWith(_$GetReferralHistoryImpl value,
          $Res Function(_$GetReferralHistoryImpl) then) =
      __$$GetReferralHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class __$$GetReferralHistoryImplCopyWithImpl<$Res>
    extends _$ReferralHistoryEventCopyWithImpl<$Res, _$GetReferralHistoryImpl>
    implements _$$GetReferralHistoryImplCopyWith<$Res> {
  __$$GetReferralHistoryImplCopyWithImpl(_$GetReferralHistoryImpl _value,
      $Res Function(_$GetReferralHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$GetReferralHistoryImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetReferralHistoryImpl implements _GetReferralHistory {
  const _$GetReferralHistoryImpl({required this.page, required this.limit});

  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'ReferralHistoryEvent.getReferralHistory(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReferralHistoryImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, limit);

  /// Create a copy of ReferralHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReferralHistoryImplCopyWith<_$GetReferralHistoryImpl> get copyWith =>
      __$$GetReferralHistoryImplCopyWithImpl<_$GetReferralHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int limit) getReferralHistory,
  }) {
    return getReferralHistory(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int limit)? getReferralHistory,
  }) {
    return getReferralHistory?.call(page, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int limit)? getReferralHistory,
    required TResult orElse(),
  }) {
    if (getReferralHistory != null) {
      return getReferralHistory(page, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetReferralHistory value) getReferralHistory,
  }) {
    return getReferralHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetReferralHistory value)? getReferralHistory,
  }) {
    return getReferralHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetReferralHistory value)? getReferralHistory,
    required TResult orElse(),
  }) {
    if (getReferralHistory != null) {
      return getReferralHistory(this);
    }
    return orElse();
  }
}

abstract class _GetReferralHistory implements ReferralHistoryEvent {
  const factory _GetReferralHistory(
      {required final int page,
      required final int limit}) = _$GetReferralHistoryImpl;

  @override
  int get page;
  @override
  int get limit;

  /// Create a copy of ReferralHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetReferralHistoryImplCopyWith<_$GetReferralHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReferralHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingReferralHistory,
    required TResult Function(ReferralHistoryEntity referralHistoryEntity)
        gotReferralHistory,
    required TResult Function(ReferralHistoryFailure referralHistoryFailure)
        failedToGetReferralHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingReferralHistory,
    TResult? Function(ReferralHistoryEntity referralHistoryEntity)?
        gotReferralHistory,
    TResult? Function(ReferralHistoryFailure referralHistoryFailure)?
        failedToGetReferralHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingReferralHistory,
    TResult Function(ReferralHistoryEntity referralHistoryEntity)?
        gotReferralHistory,
    TResult Function(ReferralHistoryFailure referralHistoryFailure)?
        failedToGetReferralHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingReferralHistory value)
        gettingReferralHistory,
    required TResult Function(_GotReferralHistory value) gotReferralHistory,
    required TResult Function(_FailedToGetReferralHistory value)
        failedToGetReferralHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingReferralHistory value)? gettingReferralHistory,
    TResult? Function(_GotReferralHistory value)? gotReferralHistory,
    TResult? Function(_FailedToGetReferralHistory value)?
        failedToGetReferralHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingReferralHistory value)? gettingReferralHistory,
    TResult Function(_GotReferralHistory value)? gotReferralHistory,
    TResult Function(_FailedToGetReferralHistory value)?
        failedToGetReferralHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralHistoryStateCopyWith<$Res> {
  factory $ReferralHistoryStateCopyWith(ReferralHistoryState value,
          $Res Function(ReferralHistoryState) then) =
      _$ReferralHistoryStateCopyWithImpl<$Res, ReferralHistoryState>;
}

/// @nodoc
class _$ReferralHistoryStateCopyWithImpl<$Res,
        $Val extends ReferralHistoryState>
    implements $ReferralHistoryStateCopyWith<$Res> {
  _$ReferralHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralHistoryState
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
    extends _$ReferralHistoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ReferralHistoryState.initial()';
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
    required TResult Function() gettingReferralHistory,
    required TResult Function(ReferralHistoryEntity referralHistoryEntity)
        gotReferralHistory,
    required TResult Function(ReferralHistoryFailure referralHistoryFailure)
        failedToGetReferralHistory,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingReferralHistory,
    TResult? Function(ReferralHistoryEntity referralHistoryEntity)?
        gotReferralHistory,
    TResult? Function(ReferralHistoryFailure referralHistoryFailure)?
        failedToGetReferralHistory,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingReferralHistory,
    TResult Function(ReferralHistoryEntity referralHistoryEntity)?
        gotReferralHistory,
    TResult Function(ReferralHistoryFailure referralHistoryFailure)?
        failedToGetReferralHistory,
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
    required TResult Function(_GettingReferralHistory value)
        gettingReferralHistory,
    required TResult Function(_GotReferralHistory value) gotReferralHistory,
    required TResult Function(_FailedToGetReferralHistory value)
        failedToGetReferralHistory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingReferralHistory value)? gettingReferralHistory,
    TResult? Function(_GotReferralHistory value)? gotReferralHistory,
    TResult? Function(_FailedToGetReferralHistory value)?
        failedToGetReferralHistory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingReferralHistory value)? gettingReferralHistory,
    TResult Function(_GotReferralHistory value)? gotReferralHistory,
    TResult Function(_FailedToGetReferralHistory value)?
        failedToGetReferralHistory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReferralHistoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingReferralHistoryImplCopyWith<$Res> {
  factory _$$GettingReferralHistoryImplCopyWith(
          _$GettingReferralHistoryImpl value,
          $Res Function(_$GettingReferralHistoryImpl) then) =
      __$$GettingReferralHistoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingReferralHistoryImplCopyWithImpl<$Res>
    extends _$ReferralHistoryStateCopyWithImpl<$Res,
        _$GettingReferralHistoryImpl>
    implements _$$GettingReferralHistoryImplCopyWith<$Res> {
  __$$GettingReferralHistoryImplCopyWithImpl(
      _$GettingReferralHistoryImpl _value,
      $Res Function(_$GettingReferralHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingReferralHistoryImpl implements _GettingReferralHistory {
  const _$GettingReferralHistoryImpl();

  @override
  String toString() {
    return 'ReferralHistoryState.gettingReferralHistory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingReferralHistoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingReferralHistory,
    required TResult Function(ReferralHistoryEntity referralHistoryEntity)
        gotReferralHistory,
    required TResult Function(ReferralHistoryFailure referralHistoryFailure)
        failedToGetReferralHistory,
  }) {
    return gettingReferralHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingReferralHistory,
    TResult? Function(ReferralHistoryEntity referralHistoryEntity)?
        gotReferralHistory,
    TResult? Function(ReferralHistoryFailure referralHistoryFailure)?
        failedToGetReferralHistory,
  }) {
    return gettingReferralHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingReferralHistory,
    TResult Function(ReferralHistoryEntity referralHistoryEntity)?
        gotReferralHistory,
    TResult Function(ReferralHistoryFailure referralHistoryFailure)?
        failedToGetReferralHistory,
    required TResult orElse(),
  }) {
    if (gettingReferralHistory != null) {
      return gettingReferralHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingReferralHistory value)
        gettingReferralHistory,
    required TResult Function(_GotReferralHistory value) gotReferralHistory,
    required TResult Function(_FailedToGetReferralHistory value)
        failedToGetReferralHistory,
  }) {
    return gettingReferralHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingReferralHistory value)? gettingReferralHistory,
    TResult? Function(_GotReferralHistory value)? gotReferralHistory,
    TResult? Function(_FailedToGetReferralHistory value)?
        failedToGetReferralHistory,
  }) {
    return gettingReferralHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingReferralHistory value)? gettingReferralHistory,
    TResult Function(_GotReferralHistory value)? gotReferralHistory,
    TResult Function(_FailedToGetReferralHistory value)?
        failedToGetReferralHistory,
    required TResult orElse(),
  }) {
    if (gettingReferralHistory != null) {
      return gettingReferralHistory(this);
    }
    return orElse();
  }
}

abstract class _GettingReferralHistory implements ReferralHistoryState {
  const factory _GettingReferralHistory() = _$GettingReferralHistoryImpl;
}

/// @nodoc
abstract class _$$GotReferralHistoryImplCopyWith<$Res> {
  factory _$$GotReferralHistoryImplCopyWith(_$GotReferralHistoryImpl value,
          $Res Function(_$GotReferralHistoryImpl) then) =
      __$$GotReferralHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReferralHistoryEntity referralHistoryEntity});
}

/// @nodoc
class __$$GotReferralHistoryImplCopyWithImpl<$Res>
    extends _$ReferralHistoryStateCopyWithImpl<$Res, _$GotReferralHistoryImpl>
    implements _$$GotReferralHistoryImplCopyWith<$Res> {
  __$$GotReferralHistoryImplCopyWithImpl(_$GotReferralHistoryImpl _value,
      $Res Function(_$GotReferralHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralHistoryEntity = null,
  }) {
    return _then(_$GotReferralHistoryImpl(
      referralHistoryEntity: null == referralHistoryEntity
          ? _value.referralHistoryEntity
          : referralHistoryEntity // ignore: cast_nullable_to_non_nullable
              as ReferralHistoryEntity,
    ));
  }
}

/// @nodoc

class _$GotReferralHistoryImpl implements _GotReferralHistory {
  const _$GotReferralHistoryImpl({required this.referralHistoryEntity});

  @override
  final ReferralHistoryEntity referralHistoryEntity;

  @override
  String toString() {
    return 'ReferralHistoryState.gotReferralHistory(referralHistoryEntity: $referralHistoryEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotReferralHistoryImpl &&
            (identical(other.referralHistoryEntity, referralHistoryEntity) ||
                other.referralHistoryEntity == referralHistoryEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, referralHistoryEntity);

  /// Create a copy of ReferralHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotReferralHistoryImplCopyWith<_$GotReferralHistoryImpl> get copyWith =>
      __$$GotReferralHistoryImplCopyWithImpl<_$GotReferralHistoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingReferralHistory,
    required TResult Function(ReferralHistoryEntity referralHistoryEntity)
        gotReferralHistory,
    required TResult Function(ReferralHistoryFailure referralHistoryFailure)
        failedToGetReferralHistory,
  }) {
    return gotReferralHistory(referralHistoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingReferralHistory,
    TResult? Function(ReferralHistoryEntity referralHistoryEntity)?
        gotReferralHistory,
    TResult? Function(ReferralHistoryFailure referralHistoryFailure)?
        failedToGetReferralHistory,
  }) {
    return gotReferralHistory?.call(referralHistoryEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingReferralHistory,
    TResult Function(ReferralHistoryEntity referralHistoryEntity)?
        gotReferralHistory,
    TResult Function(ReferralHistoryFailure referralHistoryFailure)?
        failedToGetReferralHistory,
    required TResult orElse(),
  }) {
    if (gotReferralHistory != null) {
      return gotReferralHistory(referralHistoryEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingReferralHistory value)
        gettingReferralHistory,
    required TResult Function(_GotReferralHistory value) gotReferralHistory,
    required TResult Function(_FailedToGetReferralHistory value)
        failedToGetReferralHistory,
  }) {
    return gotReferralHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingReferralHistory value)? gettingReferralHistory,
    TResult? Function(_GotReferralHistory value)? gotReferralHistory,
    TResult? Function(_FailedToGetReferralHistory value)?
        failedToGetReferralHistory,
  }) {
    return gotReferralHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingReferralHistory value)? gettingReferralHistory,
    TResult Function(_GotReferralHistory value)? gotReferralHistory,
    TResult Function(_FailedToGetReferralHistory value)?
        failedToGetReferralHistory,
    required TResult orElse(),
  }) {
    if (gotReferralHistory != null) {
      return gotReferralHistory(this);
    }
    return orElse();
  }
}

abstract class _GotReferralHistory implements ReferralHistoryState {
  const factory _GotReferralHistory(
          {required final ReferralHistoryEntity referralHistoryEntity}) =
      _$GotReferralHistoryImpl;

  ReferralHistoryEntity get referralHistoryEntity;

  /// Create a copy of ReferralHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotReferralHistoryImplCopyWith<_$GotReferralHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetReferralHistoryImplCopyWith<$Res> {
  factory _$$FailedToGetReferralHistoryImplCopyWith(
          _$FailedToGetReferralHistoryImpl value,
          $Res Function(_$FailedToGetReferralHistoryImpl) then) =
      __$$FailedToGetReferralHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReferralHistoryFailure referralHistoryFailure});
}

/// @nodoc
class __$$FailedToGetReferralHistoryImplCopyWithImpl<$Res>
    extends _$ReferralHistoryStateCopyWithImpl<$Res,
        _$FailedToGetReferralHistoryImpl>
    implements _$$FailedToGetReferralHistoryImplCopyWith<$Res> {
  __$$FailedToGetReferralHistoryImplCopyWithImpl(
      _$FailedToGetReferralHistoryImpl _value,
      $Res Function(_$FailedToGetReferralHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralHistoryFailure = null,
  }) {
    return _then(_$FailedToGetReferralHistoryImpl(
      referralHistoryFailure: null == referralHistoryFailure
          ? _value.referralHistoryFailure
          : referralHistoryFailure // ignore: cast_nullable_to_non_nullable
              as ReferralHistoryFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetReferralHistoryImpl implements _FailedToGetReferralHistory {
  const _$FailedToGetReferralHistoryImpl(
      {required this.referralHistoryFailure});

  @override
  final ReferralHistoryFailure referralHistoryFailure;

  @override
  String toString() {
    return 'ReferralHistoryState.failedToGetReferralHistory(referralHistoryFailure: $referralHistoryFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetReferralHistoryImpl &&
            (identical(other.referralHistoryFailure, referralHistoryFailure) ||
                other.referralHistoryFailure == referralHistoryFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, referralHistoryFailure);

  /// Create a copy of ReferralHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetReferralHistoryImplCopyWith<_$FailedToGetReferralHistoryImpl>
      get copyWith => __$$FailedToGetReferralHistoryImplCopyWithImpl<
          _$FailedToGetReferralHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingReferralHistory,
    required TResult Function(ReferralHistoryEntity referralHistoryEntity)
        gotReferralHistory,
    required TResult Function(ReferralHistoryFailure referralHistoryFailure)
        failedToGetReferralHistory,
  }) {
    return failedToGetReferralHistory(referralHistoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingReferralHistory,
    TResult? Function(ReferralHistoryEntity referralHistoryEntity)?
        gotReferralHistory,
    TResult? Function(ReferralHistoryFailure referralHistoryFailure)?
        failedToGetReferralHistory,
  }) {
    return failedToGetReferralHistory?.call(referralHistoryFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingReferralHistory,
    TResult Function(ReferralHistoryEntity referralHistoryEntity)?
        gotReferralHistory,
    TResult Function(ReferralHistoryFailure referralHistoryFailure)?
        failedToGetReferralHistory,
    required TResult orElse(),
  }) {
    if (failedToGetReferralHistory != null) {
      return failedToGetReferralHistory(referralHistoryFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingReferralHistory value)
        gettingReferralHistory,
    required TResult Function(_GotReferralHistory value) gotReferralHistory,
    required TResult Function(_FailedToGetReferralHistory value)
        failedToGetReferralHistory,
  }) {
    return failedToGetReferralHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingReferralHistory value)? gettingReferralHistory,
    TResult? Function(_GotReferralHistory value)? gotReferralHistory,
    TResult? Function(_FailedToGetReferralHistory value)?
        failedToGetReferralHistory,
  }) {
    return failedToGetReferralHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingReferralHistory value)? gettingReferralHistory,
    TResult Function(_GotReferralHistory value)? gotReferralHistory,
    TResult Function(_FailedToGetReferralHistory value)?
        failedToGetReferralHistory,
    required TResult orElse(),
  }) {
    if (failedToGetReferralHistory != null) {
      return failedToGetReferralHistory(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetReferralHistory implements ReferralHistoryState {
  const factory _FailedToGetReferralHistory(
          {required final ReferralHistoryFailure referralHistoryFailure}) =
      _$FailedToGetReferralHistoryImpl;

  ReferralHistoryFailure get referralHistoryFailure;

  /// Create a copy of ReferralHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToGetReferralHistoryImplCopyWith<_$FailedToGetReferralHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
