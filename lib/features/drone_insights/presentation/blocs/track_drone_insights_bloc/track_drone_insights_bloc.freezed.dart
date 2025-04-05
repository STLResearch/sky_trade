// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_drone_insights_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrackDroneInsightsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trackInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? trackInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trackInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrackInsights value) trackInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrackInsights value)? trackInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrackInsights value)? trackInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackDroneInsightsEventCopyWith<$Res> {
  factory $TrackDroneInsightsEventCopyWith(TrackDroneInsightsEvent value,
          $Res Function(TrackDroneInsightsEvent) then) =
      _$TrackDroneInsightsEventCopyWithImpl<$Res, TrackDroneInsightsEvent>;
}

/// @nodoc
class _$TrackDroneInsightsEventCopyWithImpl<$Res,
        $Val extends TrackDroneInsightsEvent>
    implements $TrackDroneInsightsEventCopyWith<$Res> {
  _$TrackDroneInsightsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackDroneInsightsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TrackInsightsImplCopyWith<$Res> {
  factory _$$TrackInsightsImplCopyWith(
          _$TrackInsightsImpl value, $Res Function(_$TrackInsightsImpl) then) =
      __$$TrackInsightsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackInsightsImplCopyWithImpl<$Res>
    extends _$TrackDroneInsightsEventCopyWithImpl<$Res, _$TrackInsightsImpl>
    implements _$$TrackInsightsImplCopyWith<$Res> {
  __$$TrackInsightsImplCopyWithImpl(
      _$TrackInsightsImpl _value, $Res Function(_$TrackInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackDroneInsightsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TrackInsightsImpl implements _TrackInsights {
  const _$TrackInsightsImpl();

  @override
  String toString() {
    return 'TrackDroneInsightsEvent.trackInsights()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrackInsightsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() trackInsights,
  }) {
    return trackInsights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? trackInsights,
  }) {
    return trackInsights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? trackInsights,
    required TResult orElse(),
  }) {
    if (trackInsights != null) {
      return trackInsights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrackInsights value) trackInsights,
  }) {
    return trackInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrackInsights value)? trackInsights,
  }) {
    return trackInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrackInsights value)? trackInsights,
    required TResult orElse(),
  }) {
    if (trackInsights != null) {
      return trackInsights(this);
    }
    return orElse();
  }
}

abstract class _TrackInsights implements TrackDroneInsightsEvent {
  const factory _TrackInsights() = _$TrackInsightsImpl;
}

/// @nodoc
mixin _$TrackDroneInsightsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() trackingInsights,
    required TResult Function(
            TrackedDroneInsightsEntity trackedDroneInsightsEntity)
        trackedInsights,
    required TResult Function(
            TrackedDroneInsightsFailure trackedDroneInsightsFailure)
        failedToTrackInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? trackingInsights,
    TResult? Function(TrackedDroneInsightsEntity trackedDroneInsightsEntity)?
        trackedInsights,
    TResult? Function(TrackedDroneInsightsFailure trackedDroneInsightsFailure)?
        failedToTrackInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? trackingInsights,
    TResult Function(TrackedDroneInsightsEntity trackedDroneInsightsEntity)?
        trackedInsights,
    TResult Function(TrackedDroneInsightsFailure trackedDroneInsightsFailure)?
        failedToTrackInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TrackingInsights value) trackingInsights,
    required TResult Function(_TrackedInsights value) trackedInsights,
    required TResult Function(_FailedToTrackInsights value)
        failedToTrackInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TrackingInsights value)? trackingInsights,
    TResult? Function(_TrackedInsights value)? trackedInsights,
    TResult? Function(_FailedToTrackInsights value)? failedToTrackInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TrackingInsights value)? trackingInsights,
    TResult Function(_TrackedInsights value)? trackedInsights,
    TResult Function(_FailedToTrackInsights value)? failedToTrackInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackDroneInsightsStateCopyWith<$Res> {
  factory $TrackDroneInsightsStateCopyWith(TrackDroneInsightsState value,
          $Res Function(TrackDroneInsightsState) then) =
      _$TrackDroneInsightsStateCopyWithImpl<$Res, TrackDroneInsightsState>;
}

/// @nodoc
class _$TrackDroneInsightsStateCopyWithImpl<$Res,
        $Val extends TrackDroneInsightsState>
    implements $TrackDroneInsightsStateCopyWith<$Res> {
  _$TrackDroneInsightsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrackDroneInsightsState
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
    extends _$TrackDroneInsightsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TrackDroneInsightsState.initial()';
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
    required TResult Function() trackingInsights,
    required TResult Function(
            TrackedDroneInsightsEntity trackedDroneInsightsEntity)
        trackedInsights,
    required TResult Function(
            TrackedDroneInsightsFailure trackedDroneInsightsFailure)
        failedToTrackInsights,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? trackingInsights,
    TResult? Function(TrackedDroneInsightsEntity trackedDroneInsightsEntity)?
        trackedInsights,
    TResult? Function(TrackedDroneInsightsFailure trackedDroneInsightsFailure)?
        failedToTrackInsights,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? trackingInsights,
    TResult Function(TrackedDroneInsightsEntity trackedDroneInsightsEntity)?
        trackedInsights,
    TResult Function(TrackedDroneInsightsFailure trackedDroneInsightsFailure)?
        failedToTrackInsights,
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
    required TResult Function(_TrackingInsights value) trackingInsights,
    required TResult Function(_TrackedInsights value) trackedInsights,
    required TResult Function(_FailedToTrackInsights value)
        failedToTrackInsights,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TrackingInsights value)? trackingInsights,
    TResult? Function(_TrackedInsights value)? trackedInsights,
    TResult? Function(_FailedToTrackInsights value)? failedToTrackInsights,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TrackingInsights value)? trackingInsights,
    TResult Function(_TrackedInsights value)? trackedInsights,
    TResult Function(_FailedToTrackInsights value)? failedToTrackInsights,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TrackDroneInsightsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TrackingInsightsImplCopyWith<$Res> {
  factory _$$TrackingInsightsImplCopyWith(_$TrackingInsightsImpl value,
          $Res Function(_$TrackingInsightsImpl) then) =
      __$$TrackingInsightsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TrackingInsightsImplCopyWithImpl<$Res>
    extends _$TrackDroneInsightsStateCopyWithImpl<$Res, _$TrackingInsightsImpl>
    implements _$$TrackingInsightsImplCopyWith<$Res> {
  __$$TrackingInsightsImplCopyWithImpl(_$TrackingInsightsImpl _value,
      $Res Function(_$TrackingInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TrackingInsightsImpl implements _TrackingInsights {
  const _$TrackingInsightsImpl();

  @override
  String toString() {
    return 'TrackDroneInsightsState.trackingInsights()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TrackingInsightsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() trackingInsights,
    required TResult Function(
            TrackedDroneInsightsEntity trackedDroneInsightsEntity)
        trackedInsights,
    required TResult Function(
            TrackedDroneInsightsFailure trackedDroneInsightsFailure)
        failedToTrackInsights,
  }) {
    return trackingInsights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? trackingInsights,
    TResult? Function(TrackedDroneInsightsEntity trackedDroneInsightsEntity)?
        trackedInsights,
    TResult? Function(TrackedDroneInsightsFailure trackedDroneInsightsFailure)?
        failedToTrackInsights,
  }) {
    return trackingInsights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? trackingInsights,
    TResult Function(TrackedDroneInsightsEntity trackedDroneInsightsEntity)?
        trackedInsights,
    TResult Function(TrackedDroneInsightsFailure trackedDroneInsightsFailure)?
        failedToTrackInsights,
    required TResult orElse(),
  }) {
    if (trackingInsights != null) {
      return trackingInsights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TrackingInsights value) trackingInsights,
    required TResult Function(_TrackedInsights value) trackedInsights,
    required TResult Function(_FailedToTrackInsights value)
        failedToTrackInsights,
  }) {
    return trackingInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TrackingInsights value)? trackingInsights,
    TResult? Function(_TrackedInsights value)? trackedInsights,
    TResult? Function(_FailedToTrackInsights value)? failedToTrackInsights,
  }) {
    return trackingInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TrackingInsights value)? trackingInsights,
    TResult Function(_TrackedInsights value)? trackedInsights,
    TResult Function(_FailedToTrackInsights value)? failedToTrackInsights,
    required TResult orElse(),
  }) {
    if (trackingInsights != null) {
      return trackingInsights(this);
    }
    return orElse();
  }
}

abstract class _TrackingInsights implements TrackDroneInsightsState {
  const factory _TrackingInsights() = _$TrackingInsightsImpl;
}

/// @nodoc
abstract class _$$TrackedInsightsImplCopyWith<$Res> {
  factory _$$TrackedInsightsImplCopyWith(_$TrackedInsightsImpl value,
          $Res Function(_$TrackedInsightsImpl) then) =
      __$$TrackedInsightsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackedDroneInsightsEntity trackedDroneInsightsEntity});
}

/// @nodoc
class __$$TrackedInsightsImplCopyWithImpl<$Res>
    extends _$TrackDroneInsightsStateCopyWithImpl<$Res, _$TrackedInsightsImpl>
    implements _$$TrackedInsightsImplCopyWith<$Res> {
  __$$TrackedInsightsImplCopyWithImpl(
      _$TrackedInsightsImpl _value, $Res Function(_$TrackedInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackedDroneInsightsEntity = null,
  }) {
    return _then(_$TrackedInsightsImpl(
      trackedDroneInsightsEntity: null == trackedDroneInsightsEntity
          ? _value.trackedDroneInsightsEntity
          : trackedDroneInsightsEntity // ignore: cast_nullable_to_non_nullable
              as TrackedDroneInsightsEntity,
    ));
  }
}

/// @nodoc

class _$TrackedInsightsImpl implements _TrackedInsights {
  const _$TrackedInsightsImpl({required this.trackedDroneInsightsEntity});

  @override
  final TrackedDroneInsightsEntity trackedDroneInsightsEntity;

  @override
  String toString() {
    return 'TrackDroneInsightsState.trackedInsights(trackedDroneInsightsEntity: $trackedDroneInsightsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackedInsightsImpl &&
            (identical(other.trackedDroneInsightsEntity,
                    trackedDroneInsightsEntity) ||
                other.trackedDroneInsightsEntity ==
                    trackedDroneInsightsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackedDroneInsightsEntity);

  /// Create a copy of TrackDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackedInsightsImplCopyWith<_$TrackedInsightsImpl> get copyWith =>
      __$$TrackedInsightsImplCopyWithImpl<_$TrackedInsightsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() trackingInsights,
    required TResult Function(
            TrackedDroneInsightsEntity trackedDroneInsightsEntity)
        trackedInsights,
    required TResult Function(
            TrackedDroneInsightsFailure trackedDroneInsightsFailure)
        failedToTrackInsights,
  }) {
    return trackedInsights(trackedDroneInsightsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? trackingInsights,
    TResult? Function(TrackedDroneInsightsEntity trackedDroneInsightsEntity)?
        trackedInsights,
    TResult? Function(TrackedDroneInsightsFailure trackedDroneInsightsFailure)?
        failedToTrackInsights,
  }) {
    return trackedInsights?.call(trackedDroneInsightsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? trackingInsights,
    TResult Function(TrackedDroneInsightsEntity trackedDroneInsightsEntity)?
        trackedInsights,
    TResult Function(TrackedDroneInsightsFailure trackedDroneInsightsFailure)?
        failedToTrackInsights,
    required TResult orElse(),
  }) {
    if (trackedInsights != null) {
      return trackedInsights(trackedDroneInsightsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TrackingInsights value) trackingInsights,
    required TResult Function(_TrackedInsights value) trackedInsights,
    required TResult Function(_FailedToTrackInsights value)
        failedToTrackInsights,
  }) {
    return trackedInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TrackingInsights value)? trackingInsights,
    TResult? Function(_TrackedInsights value)? trackedInsights,
    TResult? Function(_FailedToTrackInsights value)? failedToTrackInsights,
  }) {
    return trackedInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TrackingInsights value)? trackingInsights,
    TResult Function(_TrackedInsights value)? trackedInsights,
    TResult Function(_FailedToTrackInsights value)? failedToTrackInsights,
    required TResult orElse(),
  }) {
    if (trackedInsights != null) {
      return trackedInsights(this);
    }
    return orElse();
  }
}

abstract class _TrackedInsights implements TrackDroneInsightsState {
  const factory _TrackedInsights(
      {required final TrackedDroneInsightsEntity
          trackedDroneInsightsEntity}) = _$TrackedInsightsImpl;

  TrackedDroneInsightsEntity get trackedDroneInsightsEntity;

  /// Create a copy of TrackDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrackedInsightsImplCopyWith<_$TrackedInsightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToTrackInsightsImplCopyWith<$Res> {
  factory _$$FailedToTrackInsightsImplCopyWith(
          _$FailedToTrackInsightsImpl value,
          $Res Function(_$FailedToTrackInsightsImpl) then) =
      __$$FailedToTrackInsightsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackedDroneInsightsFailure trackedDroneInsightsFailure});
}

/// @nodoc
class __$$FailedToTrackInsightsImplCopyWithImpl<$Res>
    extends _$TrackDroneInsightsStateCopyWithImpl<$Res,
        _$FailedToTrackInsightsImpl>
    implements _$$FailedToTrackInsightsImplCopyWith<$Res> {
  __$$FailedToTrackInsightsImplCopyWithImpl(_$FailedToTrackInsightsImpl _value,
      $Res Function(_$FailedToTrackInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrackDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackedDroneInsightsFailure = null,
  }) {
    return _then(_$FailedToTrackInsightsImpl(
      trackedDroneInsightsFailure: null == trackedDroneInsightsFailure
          ? _value.trackedDroneInsightsFailure
          : trackedDroneInsightsFailure // ignore: cast_nullable_to_non_nullable
              as TrackedDroneInsightsFailure,
    ));
  }
}

/// @nodoc

class _$FailedToTrackInsightsImpl implements _FailedToTrackInsights {
  const _$FailedToTrackInsightsImpl(
      {required this.trackedDroneInsightsFailure});

  @override
  final TrackedDroneInsightsFailure trackedDroneInsightsFailure;

  @override
  String toString() {
    return 'TrackDroneInsightsState.failedToTrackInsights(trackedDroneInsightsFailure: $trackedDroneInsightsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToTrackInsightsImpl &&
            (identical(other.trackedDroneInsightsFailure,
                    trackedDroneInsightsFailure) ||
                other.trackedDroneInsightsFailure ==
                    trackedDroneInsightsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackedDroneInsightsFailure);

  /// Create a copy of TrackDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToTrackInsightsImplCopyWith<_$FailedToTrackInsightsImpl>
      get copyWith => __$$FailedToTrackInsightsImplCopyWithImpl<
          _$FailedToTrackInsightsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() trackingInsights,
    required TResult Function(
            TrackedDroneInsightsEntity trackedDroneInsightsEntity)
        trackedInsights,
    required TResult Function(
            TrackedDroneInsightsFailure trackedDroneInsightsFailure)
        failedToTrackInsights,
  }) {
    return failedToTrackInsights(trackedDroneInsightsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? trackingInsights,
    TResult? Function(TrackedDroneInsightsEntity trackedDroneInsightsEntity)?
        trackedInsights,
    TResult? Function(TrackedDroneInsightsFailure trackedDroneInsightsFailure)?
        failedToTrackInsights,
  }) {
    return failedToTrackInsights?.call(trackedDroneInsightsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? trackingInsights,
    TResult Function(TrackedDroneInsightsEntity trackedDroneInsightsEntity)?
        trackedInsights,
    TResult Function(TrackedDroneInsightsFailure trackedDroneInsightsFailure)?
        failedToTrackInsights,
    required TResult orElse(),
  }) {
    if (failedToTrackInsights != null) {
      return failedToTrackInsights(trackedDroneInsightsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TrackingInsights value) trackingInsights,
    required TResult Function(_TrackedInsights value) trackedInsights,
    required TResult Function(_FailedToTrackInsights value)
        failedToTrackInsights,
  }) {
    return failedToTrackInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TrackingInsights value)? trackingInsights,
    TResult? Function(_TrackedInsights value)? trackedInsights,
    TResult? Function(_FailedToTrackInsights value)? failedToTrackInsights,
  }) {
    return failedToTrackInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TrackingInsights value)? trackingInsights,
    TResult Function(_TrackedInsights value)? trackedInsights,
    TResult Function(_FailedToTrackInsights value)? failedToTrackInsights,
    required TResult orElse(),
  }) {
    if (failedToTrackInsights != null) {
      return failedToTrackInsights(this);
    }
    return orElse();
  }
}

abstract class _FailedToTrackInsights implements TrackDroneInsightsState {
  const factory _FailedToTrackInsights(
      {required final TrackedDroneInsightsFailure
          trackedDroneInsightsFailure}) = _$FailedToTrackInsightsImpl;

  TrackedDroneInsightsFailure get trackedDroneInsightsFailure;

  /// Create a copy of TrackDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToTrackInsightsImplCopyWith<_$FailedToTrackInsightsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
