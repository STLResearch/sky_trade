// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insights_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InsightsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInsights value) getInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInsights value)? getInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInsights value)? getInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightsEventCopyWith<$Res> {
  factory $InsightsEventCopyWith(
          InsightsEvent value, $Res Function(InsightsEvent) then) =
      _$InsightsEventCopyWithImpl<$Res, InsightsEvent>;
}

/// @nodoc
class _$InsightsEventCopyWithImpl<$Res, $Val extends InsightsEvent>
    implements $InsightsEventCopyWith<$Res> {
  _$InsightsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetInsightsImplCopyWith<$Res> {
  factory _$$GetInsightsImplCopyWith(
          _$GetInsightsImpl value, $Res Function(_$GetInsightsImpl) then) =
      __$$GetInsightsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInsightsImplCopyWithImpl<$Res>
    extends _$InsightsEventCopyWithImpl<$Res, _$GetInsightsImpl>
    implements _$$GetInsightsImplCopyWith<$Res> {
  __$$GetInsightsImplCopyWithImpl(
      _$GetInsightsImpl _value, $Res Function(_$GetInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetInsightsImpl implements _GetInsights {
  const _$GetInsightsImpl();

  @override
  String toString() {
    return 'InsightsEvent.getInsights()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetInsightsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getInsights,
  }) {
    return getInsights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getInsights,
  }) {
    return getInsights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getInsights,
    required TResult orElse(),
  }) {
    if (getInsights != null) {
      return getInsights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetInsights value) getInsights,
  }) {
    return getInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetInsights value)? getInsights,
  }) {
    return getInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetInsights value)? getInsights,
    required TResult orElse(),
  }) {
    if (getInsights != null) {
      return getInsights(this);
    }
    return orElse();
  }
}

abstract class _GetInsights implements InsightsEvent {
  const factory _GetInsights() = _$GetInsightsImpl;
}

/// @nodoc
mixin _$InsightsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingInsights,
    required TResult Function(InsightsEntity insightsEntity) gotInsights,
    required TResult Function(InsightsFailure insightsFailure)
        failedToGetInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingInsights,
    TResult? Function(InsightsEntity insightsEntity)? gotInsights,
    TResult? Function(InsightsFailure insightsFailure)? failedToGetInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingInsights,
    TResult Function(InsightsEntity insightsEntity)? gotInsights,
    TResult Function(InsightsFailure insightsFailure)? failedToGetInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingInsights value) gettingInsights,
    required TResult Function(_GotInsights value) gotInsights,
    required TResult Function(_FailedToGetInsights value) failedToGetInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingInsights value)? gettingInsights,
    TResult? Function(_GotInsights value)? gotInsights,
    TResult? Function(_FailedToGetInsights value)? failedToGetInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingInsights value)? gettingInsights,
    TResult Function(_GotInsights value)? gotInsights,
    TResult Function(_FailedToGetInsights value)? failedToGetInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsightsStateCopyWith<$Res> {
  factory $InsightsStateCopyWith(
          InsightsState value, $Res Function(InsightsState) then) =
      _$InsightsStateCopyWithImpl<$Res, InsightsState>;
}

/// @nodoc
class _$InsightsStateCopyWithImpl<$Res, $Val extends InsightsState>
    implements $InsightsStateCopyWith<$Res> {
  _$InsightsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InsightsState
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
    extends _$InsightsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'InsightsState.initial()';
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
    required TResult Function() gettingInsights,
    required TResult Function(InsightsEntity insightsEntity) gotInsights,
    required TResult Function(InsightsFailure insightsFailure)
        failedToGetInsights,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingInsights,
    TResult? Function(InsightsEntity insightsEntity)? gotInsights,
    TResult? Function(InsightsFailure insightsFailure)? failedToGetInsights,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingInsights,
    TResult Function(InsightsEntity insightsEntity)? gotInsights,
    TResult Function(InsightsFailure insightsFailure)? failedToGetInsights,
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
    required TResult Function(_GettingInsights value) gettingInsights,
    required TResult Function(_GotInsights value) gotInsights,
    required TResult Function(_FailedToGetInsights value) failedToGetInsights,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingInsights value)? gettingInsights,
    TResult? Function(_GotInsights value)? gotInsights,
    TResult? Function(_FailedToGetInsights value)? failedToGetInsights,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingInsights value)? gettingInsights,
    TResult Function(_GotInsights value)? gotInsights,
    TResult Function(_FailedToGetInsights value)? failedToGetInsights,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InsightsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingInsightsImplCopyWith<$Res> {
  factory _$$GettingInsightsImplCopyWith(_$GettingInsightsImpl value,
          $Res Function(_$GettingInsightsImpl) then) =
      __$$GettingInsightsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingInsightsImplCopyWithImpl<$Res>
    extends _$InsightsStateCopyWithImpl<$Res, _$GettingInsightsImpl>
    implements _$$GettingInsightsImplCopyWith<$Res> {
  __$$GettingInsightsImplCopyWithImpl(
      _$GettingInsightsImpl _value, $Res Function(_$GettingInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingInsightsImpl implements _GettingInsights {
  const _$GettingInsightsImpl();

  @override
  String toString() {
    return 'InsightsState.gettingInsights()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingInsightsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingInsights,
    required TResult Function(InsightsEntity insightsEntity) gotInsights,
    required TResult Function(InsightsFailure insightsFailure)
        failedToGetInsights,
  }) {
    return gettingInsights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingInsights,
    TResult? Function(InsightsEntity insightsEntity)? gotInsights,
    TResult? Function(InsightsFailure insightsFailure)? failedToGetInsights,
  }) {
    return gettingInsights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingInsights,
    TResult Function(InsightsEntity insightsEntity)? gotInsights,
    TResult Function(InsightsFailure insightsFailure)? failedToGetInsights,
    required TResult orElse(),
  }) {
    if (gettingInsights != null) {
      return gettingInsights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingInsights value) gettingInsights,
    required TResult Function(_GotInsights value) gotInsights,
    required TResult Function(_FailedToGetInsights value) failedToGetInsights,
  }) {
    return gettingInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingInsights value)? gettingInsights,
    TResult? Function(_GotInsights value)? gotInsights,
    TResult? Function(_FailedToGetInsights value)? failedToGetInsights,
  }) {
    return gettingInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingInsights value)? gettingInsights,
    TResult Function(_GotInsights value)? gotInsights,
    TResult Function(_FailedToGetInsights value)? failedToGetInsights,
    required TResult orElse(),
  }) {
    if (gettingInsights != null) {
      return gettingInsights(this);
    }
    return orElse();
  }
}

abstract class _GettingInsights implements InsightsState {
  const factory _GettingInsights() = _$GettingInsightsImpl;
}

/// @nodoc
abstract class _$$GotInsightsImplCopyWith<$Res> {
  factory _$$GotInsightsImplCopyWith(
          _$GotInsightsImpl value, $Res Function(_$GotInsightsImpl) then) =
      __$$GotInsightsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InsightsEntity insightsEntity});
}

/// @nodoc
class __$$GotInsightsImplCopyWithImpl<$Res>
    extends _$InsightsStateCopyWithImpl<$Res, _$GotInsightsImpl>
    implements _$$GotInsightsImplCopyWith<$Res> {
  __$$GotInsightsImplCopyWithImpl(
      _$GotInsightsImpl _value, $Res Function(_$GotInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insightsEntity = null,
  }) {
    return _then(_$GotInsightsImpl(
      insightsEntity: null == insightsEntity
          ? _value.insightsEntity
          : insightsEntity // ignore: cast_nullable_to_non_nullable
              as InsightsEntity,
    ));
  }
}

/// @nodoc

class _$GotInsightsImpl implements _GotInsights {
  const _$GotInsightsImpl({required this.insightsEntity});

  @override
  final InsightsEntity insightsEntity;

  @override
  String toString() {
    return 'InsightsState.gotInsights(insightsEntity: $insightsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotInsightsImpl &&
            (identical(other.insightsEntity, insightsEntity) ||
                other.insightsEntity == insightsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, insightsEntity);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotInsightsImplCopyWith<_$GotInsightsImpl> get copyWith =>
      __$$GotInsightsImplCopyWithImpl<_$GotInsightsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingInsights,
    required TResult Function(InsightsEntity insightsEntity) gotInsights,
    required TResult Function(InsightsFailure insightsFailure)
        failedToGetInsights,
  }) {
    return gotInsights(insightsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingInsights,
    TResult? Function(InsightsEntity insightsEntity)? gotInsights,
    TResult? Function(InsightsFailure insightsFailure)? failedToGetInsights,
  }) {
    return gotInsights?.call(insightsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingInsights,
    TResult Function(InsightsEntity insightsEntity)? gotInsights,
    TResult Function(InsightsFailure insightsFailure)? failedToGetInsights,
    required TResult orElse(),
  }) {
    if (gotInsights != null) {
      return gotInsights(insightsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingInsights value) gettingInsights,
    required TResult Function(_GotInsights value) gotInsights,
    required TResult Function(_FailedToGetInsights value) failedToGetInsights,
  }) {
    return gotInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingInsights value)? gettingInsights,
    TResult? Function(_GotInsights value)? gotInsights,
    TResult? Function(_FailedToGetInsights value)? failedToGetInsights,
  }) {
    return gotInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingInsights value)? gettingInsights,
    TResult Function(_GotInsights value)? gotInsights,
    TResult Function(_FailedToGetInsights value)? failedToGetInsights,
    required TResult orElse(),
  }) {
    if (gotInsights != null) {
      return gotInsights(this);
    }
    return orElse();
  }
}

abstract class _GotInsights implements InsightsState {
  const factory _GotInsights({required final InsightsEntity insightsEntity}) =
      _$GotInsightsImpl;

  InsightsEntity get insightsEntity;

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotInsightsImplCopyWith<_$GotInsightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetInsightsImplCopyWith<$Res> {
  factory _$$FailedToGetInsightsImplCopyWith(_$FailedToGetInsightsImpl value,
          $Res Function(_$FailedToGetInsightsImpl) then) =
      __$$FailedToGetInsightsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InsightsFailure insightsFailure});
}

/// @nodoc
class __$$FailedToGetInsightsImplCopyWithImpl<$Res>
    extends _$InsightsStateCopyWithImpl<$Res, _$FailedToGetInsightsImpl>
    implements _$$FailedToGetInsightsImplCopyWith<$Res> {
  __$$FailedToGetInsightsImplCopyWithImpl(_$FailedToGetInsightsImpl _value,
      $Res Function(_$FailedToGetInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insightsFailure = null,
  }) {
    return _then(_$FailedToGetInsightsImpl(
      insightsFailure: null == insightsFailure
          ? _value.insightsFailure
          : insightsFailure // ignore: cast_nullable_to_non_nullable
              as InsightsFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetInsightsImpl implements _FailedToGetInsights {
  const _$FailedToGetInsightsImpl({required this.insightsFailure});

  @override
  final InsightsFailure insightsFailure;

  @override
  String toString() {
    return 'InsightsState.failedToGetInsights(insightsFailure: $insightsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetInsightsImpl &&
            (identical(other.insightsFailure, insightsFailure) ||
                other.insightsFailure == insightsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, insightsFailure);

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetInsightsImplCopyWith<_$FailedToGetInsightsImpl> get copyWith =>
      __$$FailedToGetInsightsImplCopyWithImpl<_$FailedToGetInsightsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingInsights,
    required TResult Function(InsightsEntity insightsEntity) gotInsights,
    required TResult Function(InsightsFailure insightsFailure)
        failedToGetInsights,
  }) {
    return failedToGetInsights(insightsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingInsights,
    TResult? Function(InsightsEntity insightsEntity)? gotInsights,
    TResult? Function(InsightsFailure insightsFailure)? failedToGetInsights,
  }) {
    return failedToGetInsights?.call(insightsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingInsights,
    TResult Function(InsightsEntity insightsEntity)? gotInsights,
    TResult Function(InsightsFailure insightsFailure)? failedToGetInsights,
    required TResult orElse(),
  }) {
    if (failedToGetInsights != null) {
      return failedToGetInsights(insightsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingInsights value) gettingInsights,
    required TResult Function(_GotInsights value) gotInsights,
    required TResult Function(_FailedToGetInsights value) failedToGetInsights,
  }) {
    return failedToGetInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingInsights value)? gettingInsights,
    TResult? Function(_GotInsights value)? gotInsights,
    TResult? Function(_FailedToGetInsights value)? failedToGetInsights,
  }) {
    return failedToGetInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingInsights value)? gettingInsights,
    TResult Function(_GotInsights value)? gotInsights,
    TResult Function(_FailedToGetInsights value)? failedToGetInsights,
    required TResult orElse(),
  }) {
    if (failedToGetInsights != null) {
      return failedToGetInsights(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetInsights implements InsightsState {
  const factory _FailedToGetInsights(
          {required final InsightsFailure insightsFailure}) =
      _$FailedToGetInsightsImpl;

  InsightsFailure get insightsFailure;

  /// Create a copy of InsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToGetInsightsImplCopyWith<_$FailedToGetInsightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
