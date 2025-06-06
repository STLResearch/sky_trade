// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_quests_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DailyQuestsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuests value) getQuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuests value)? getQuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuests value)? getQuests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyQuestsEventCopyWith<$Res> {
  factory $DailyQuestsEventCopyWith(
          DailyQuestsEvent value, $Res Function(DailyQuestsEvent) then) =
      _$DailyQuestsEventCopyWithImpl<$Res, DailyQuestsEvent>;
}

/// @nodoc
class _$DailyQuestsEventCopyWithImpl<$Res, $Val extends DailyQuestsEvent>
    implements $DailyQuestsEventCopyWith<$Res> {
  _$DailyQuestsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyQuestsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetQuestsImplCopyWith<$Res> {
  factory _$$GetQuestsImplCopyWith(
          _$GetQuestsImpl value, $Res Function(_$GetQuestsImpl) then) =
      __$$GetQuestsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetQuestsImplCopyWithImpl<$Res>
    extends _$DailyQuestsEventCopyWithImpl<$Res, _$GetQuestsImpl>
    implements _$$GetQuestsImplCopyWith<$Res> {
  __$$GetQuestsImplCopyWithImpl(
      _$GetQuestsImpl _value, $Res Function(_$GetQuestsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyQuestsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetQuestsImpl implements _GetQuests {
  const _$GetQuestsImpl();

  @override
  String toString() {
    return 'DailyQuestsEvent.getQuests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetQuestsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuests,
  }) {
    return getQuests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuests,
  }) {
    return getQuests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuests,
    required TResult orElse(),
  }) {
    if (getQuests != null) {
      return getQuests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetQuests value) getQuests,
  }) {
    return getQuests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetQuests value)? getQuests,
  }) {
    return getQuests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetQuests value)? getQuests,
    required TResult orElse(),
  }) {
    if (getQuests != null) {
      return getQuests(this);
    }
    return orElse();
  }
}

abstract class _GetQuests implements DailyQuestsEvent {
  const factory _GetQuests() = _$GetQuestsImpl;
}

/// @nodoc
mixin _$DailyQuestsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingQuests,
    required TResult Function(List<QuestEntity> questEntities) gotQuests,
    required TResult Function(QuestFailure questFailure) failedToGetQuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingQuests,
    TResult? Function(List<QuestEntity> questEntities)? gotQuests,
    TResult? Function(QuestFailure questFailure)? failedToGetQuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingQuests,
    TResult Function(List<QuestEntity> questEntities)? gotQuests,
    TResult Function(QuestFailure questFailure)? failedToGetQuests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingQuests value) gettingQuests,
    required TResult Function(_GotQuests value) gotQuests,
    required TResult Function(_FailedToGetQuests value) failedToGetQuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingQuests value)? gettingQuests,
    TResult? Function(_GotQuests value)? gotQuests,
    TResult? Function(_FailedToGetQuests value)? failedToGetQuests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingQuests value)? gettingQuests,
    TResult Function(_GotQuests value)? gotQuests,
    TResult Function(_FailedToGetQuests value)? failedToGetQuests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyQuestsStateCopyWith<$Res> {
  factory $DailyQuestsStateCopyWith(
          DailyQuestsState value, $Res Function(DailyQuestsState) then) =
      _$DailyQuestsStateCopyWithImpl<$Res, DailyQuestsState>;
}

/// @nodoc
class _$DailyQuestsStateCopyWithImpl<$Res, $Val extends DailyQuestsState>
    implements $DailyQuestsStateCopyWith<$Res> {
  _$DailyQuestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyQuestsState
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
    extends _$DailyQuestsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyQuestsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DailyQuestsState.initial()';
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
    required TResult Function() gettingQuests,
    required TResult Function(List<QuestEntity> questEntities) gotQuests,
    required TResult Function(QuestFailure questFailure) failedToGetQuests,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingQuests,
    TResult? Function(List<QuestEntity> questEntities)? gotQuests,
    TResult? Function(QuestFailure questFailure)? failedToGetQuests,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingQuests,
    TResult Function(List<QuestEntity> questEntities)? gotQuests,
    TResult Function(QuestFailure questFailure)? failedToGetQuests,
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
    required TResult Function(_GettingQuests value) gettingQuests,
    required TResult Function(_GotQuests value) gotQuests,
    required TResult Function(_FailedToGetQuests value) failedToGetQuests,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingQuests value)? gettingQuests,
    TResult? Function(_GotQuests value)? gotQuests,
    TResult? Function(_FailedToGetQuests value)? failedToGetQuests,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingQuests value)? gettingQuests,
    TResult Function(_GotQuests value)? gotQuests,
    TResult Function(_FailedToGetQuests value)? failedToGetQuests,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DailyQuestsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingQuestsImplCopyWith<$Res> {
  factory _$$GettingQuestsImplCopyWith(
          _$GettingQuestsImpl value, $Res Function(_$GettingQuestsImpl) then) =
      __$$GettingQuestsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingQuestsImplCopyWithImpl<$Res>
    extends _$DailyQuestsStateCopyWithImpl<$Res, _$GettingQuestsImpl>
    implements _$$GettingQuestsImplCopyWith<$Res> {
  __$$GettingQuestsImplCopyWithImpl(
      _$GettingQuestsImpl _value, $Res Function(_$GettingQuestsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyQuestsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingQuestsImpl implements _GettingQuests {
  const _$GettingQuestsImpl();

  @override
  String toString() {
    return 'DailyQuestsState.gettingQuests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingQuestsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingQuests,
    required TResult Function(List<QuestEntity> questEntities) gotQuests,
    required TResult Function(QuestFailure questFailure) failedToGetQuests,
  }) {
    return gettingQuests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingQuests,
    TResult? Function(List<QuestEntity> questEntities)? gotQuests,
    TResult? Function(QuestFailure questFailure)? failedToGetQuests,
  }) {
    return gettingQuests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingQuests,
    TResult Function(List<QuestEntity> questEntities)? gotQuests,
    TResult Function(QuestFailure questFailure)? failedToGetQuests,
    required TResult orElse(),
  }) {
    if (gettingQuests != null) {
      return gettingQuests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingQuests value) gettingQuests,
    required TResult Function(_GotQuests value) gotQuests,
    required TResult Function(_FailedToGetQuests value) failedToGetQuests,
  }) {
    return gettingQuests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingQuests value)? gettingQuests,
    TResult? Function(_GotQuests value)? gotQuests,
    TResult? Function(_FailedToGetQuests value)? failedToGetQuests,
  }) {
    return gettingQuests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingQuests value)? gettingQuests,
    TResult Function(_GotQuests value)? gotQuests,
    TResult Function(_FailedToGetQuests value)? failedToGetQuests,
    required TResult orElse(),
  }) {
    if (gettingQuests != null) {
      return gettingQuests(this);
    }
    return orElse();
  }
}

abstract class _GettingQuests implements DailyQuestsState {
  const factory _GettingQuests() = _$GettingQuestsImpl;
}

/// @nodoc
abstract class _$$GotQuestsImplCopyWith<$Res> {
  factory _$$GotQuestsImplCopyWith(
          _$GotQuestsImpl value, $Res Function(_$GotQuestsImpl) then) =
      __$$GotQuestsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QuestEntity> questEntities});
}

/// @nodoc
class __$$GotQuestsImplCopyWithImpl<$Res>
    extends _$DailyQuestsStateCopyWithImpl<$Res, _$GotQuestsImpl>
    implements _$$GotQuestsImplCopyWith<$Res> {
  __$$GotQuestsImplCopyWithImpl(
      _$GotQuestsImpl _value, $Res Function(_$GotQuestsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyQuestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questEntities = null,
  }) {
    return _then(_$GotQuestsImpl(
      questEntities: null == questEntities
          ? _value._questEntities
          : questEntities // ignore: cast_nullable_to_non_nullable
              as List<QuestEntity>,
    ));
  }
}

/// @nodoc

class _$GotQuestsImpl implements _GotQuests {
  const _$GotQuestsImpl({required final List<QuestEntity> questEntities})
      : _questEntities = questEntities;

  final List<QuestEntity> _questEntities;
  @override
  List<QuestEntity> get questEntities {
    if (_questEntities is EqualUnmodifiableListView) return _questEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questEntities);
  }

  @override
  String toString() {
    return 'DailyQuestsState.gotQuests(questEntities: $questEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotQuestsImpl &&
            const DeepCollectionEquality()
                .equals(other._questEntities, _questEntities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questEntities));

  /// Create a copy of DailyQuestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotQuestsImplCopyWith<_$GotQuestsImpl> get copyWith =>
      __$$GotQuestsImplCopyWithImpl<_$GotQuestsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingQuests,
    required TResult Function(List<QuestEntity> questEntities) gotQuests,
    required TResult Function(QuestFailure questFailure) failedToGetQuests,
  }) {
    return gotQuests(questEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingQuests,
    TResult? Function(List<QuestEntity> questEntities)? gotQuests,
    TResult? Function(QuestFailure questFailure)? failedToGetQuests,
  }) {
    return gotQuests?.call(questEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingQuests,
    TResult Function(List<QuestEntity> questEntities)? gotQuests,
    TResult Function(QuestFailure questFailure)? failedToGetQuests,
    required TResult orElse(),
  }) {
    if (gotQuests != null) {
      return gotQuests(questEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingQuests value) gettingQuests,
    required TResult Function(_GotQuests value) gotQuests,
    required TResult Function(_FailedToGetQuests value) failedToGetQuests,
  }) {
    return gotQuests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingQuests value)? gettingQuests,
    TResult? Function(_GotQuests value)? gotQuests,
    TResult? Function(_FailedToGetQuests value)? failedToGetQuests,
  }) {
    return gotQuests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingQuests value)? gettingQuests,
    TResult Function(_GotQuests value)? gotQuests,
    TResult Function(_FailedToGetQuests value)? failedToGetQuests,
    required TResult orElse(),
  }) {
    if (gotQuests != null) {
      return gotQuests(this);
    }
    return orElse();
  }
}

abstract class _GotQuests implements DailyQuestsState {
  const factory _GotQuests({required final List<QuestEntity> questEntities}) =
      _$GotQuestsImpl;

  List<QuestEntity> get questEntities;

  /// Create a copy of DailyQuestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotQuestsImplCopyWith<_$GotQuestsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetQuestsImplCopyWith<$Res> {
  factory _$$FailedToGetQuestsImplCopyWith(_$FailedToGetQuestsImpl value,
          $Res Function(_$FailedToGetQuestsImpl) then) =
      __$$FailedToGetQuestsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestFailure questFailure});
}

/// @nodoc
class __$$FailedToGetQuestsImplCopyWithImpl<$Res>
    extends _$DailyQuestsStateCopyWithImpl<$Res, _$FailedToGetQuestsImpl>
    implements _$$FailedToGetQuestsImplCopyWith<$Res> {
  __$$FailedToGetQuestsImplCopyWithImpl(_$FailedToGetQuestsImpl _value,
      $Res Function(_$FailedToGetQuestsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyQuestsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questFailure = null,
  }) {
    return _then(_$FailedToGetQuestsImpl(
      questFailure: null == questFailure
          ? _value.questFailure
          : questFailure // ignore: cast_nullable_to_non_nullable
              as QuestFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetQuestsImpl implements _FailedToGetQuests {
  const _$FailedToGetQuestsImpl({required this.questFailure});

  @override
  final QuestFailure questFailure;

  @override
  String toString() {
    return 'DailyQuestsState.failedToGetQuests(questFailure: $questFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetQuestsImpl &&
            (identical(other.questFailure, questFailure) ||
                other.questFailure == questFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questFailure);

  /// Create a copy of DailyQuestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetQuestsImplCopyWith<_$FailedToGetQuestsImpl> get copyWith =>
      __$$FailedToGetQuestsImplCopyWithImpl<_$FailedToGetQuestsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingQuests,
    required TResult Function(List<QuestEntity> questEntities) gotQuests,
    required TResult Function(QuestFailure questFailure) failedToGetQuests,
  }) {
    return failedToGetQuests(questFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingQuests,
    TResult? Function(List<QuestEntity> questEntities)? gotQuests,
    TResult? Function(QuestFailure questFailure)? failedToGetQuests,
  }) {
    return failedToGetQuests?.call(questFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingQuests,
    TResult Function(List<QuestEntity> questEntities)? gotQuests,
    TResult Function(QuestFailure questFailure)? failedToGetQuests,
    required TResult orElse(),
  }) {
    if (failedToGetQuests != null) {
      return failedToGetQuests(questFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingQuests value) gettingQuests,
    required TResult Function(_GotQuests value) gotQuests,
    required TResult Function(_FailedToGetQuests value) failedToGetQuests,
  }) {
    return failedToGetQuests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingQuests value)? gettingQuests,
    TResult? Function(_GotQuests value)? gotQuests,
    TResult? Function(_FailedToGetQuests value)? failedToGetQuests,
  }) {
    return failedToGetQuests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingQuests value)? gettingQuests,
    TResult Function(_GotQuests value)? gotQuests,
    TResult Function(_FailedToGetQuests value)? failedToGetQuests,
    required TResult orElse(),
  }) {
    if (failedToGetQuests != null) {
      return failedToGetQuests(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetQuests implements DailyQuestsState {
  const factory _FailedToGetQuests({required final QuestFailure questFailure}) =
      _$FailedToGetQuestsImpl;

  QuestFailure get questFailure;

  /// Create a copy of DailyQuestsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToGetQuestsImplCopyWith<_$FailedToGetQuestsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
