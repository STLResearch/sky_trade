// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_drone_insights_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterDroneInsightsEvent {
  RangeFilter get rangeFilter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RangeFilter rangeFilter) filterInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RangeFilter rangeFilter)? filterInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RangeFilter rangeFilter)? filterInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterInsights value) filterInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilterInsights value)? filterInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterInsights value)? filterInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of FilterDroneInsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterDroneInsightsEventCopyWith<FilterDroneInsightsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterDroneInsightsEventCopyWith<$Res> {
  factory $FilterDroneInsightsEventCopyWith(FilterDroneInsightsEvent value,
          $Res Function(FilterDroneInsightsEvent) then) =
      _$FilterDroneInsightsEventCopyWithImpl<$Res, FilterDroneInsightsEvent>;
  @useResult
  $Res call({RangeFilter rangeFilter});
}

/// @nodoc
class _$FilterDroneInsightsEventCopyWithImpl<$Res,
        $Val extends FilterDroneInsightsEvent>
    implements $FilterDroneInsightsEventCopyWith<$Res> {
  _$FilterDroneInsightsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterDroneInsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeFilter = null,
  }) {
    return _then(_value.copyWith(
      rangeFilter: null == rangeFilter
          ? _value.rangeFilter
          : rangeFilter // ignore: cast_nullable_to_non_nullable
              as RangeFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterInsightsImplCopyWith<$Res>
    implements $FilterDroneInsightsEventCopyWith<$Res> {
  factory _$$FilterInsightsImplCopyWith(_$FilterInsightsImpl value,
          $Res Function(_$FilterInsightsImpl) then) =
      __$$FilterInsightsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RangeFilter rangeFilter});
}

/// @nodoc
class __$$FilterInsightsImplCopyWithImpl<$Res>
    extends _$FilterDroneInsightsEventCopyWithImpl<$Res, _$FilterInsightsImpl>
    implements _$$FilterInsightsImplCopyWith<$Res> {
  __$$FilterInsightsImplCopyWithImpl(
      _$FilterInsightsImpl _value, $Res Function(_$FilterInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterDroneInsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rangeFilter = null,
  }) {
    return _then(_$FilterInsightsImpl(
      rangeFilter: null == rangeFilter
          ? _value.rangeFilter
          : rangeFilter // ignore: cast_nullable_to_non_nullable
              as RangeFilter,
    ));
  }
}

/// @nodoc

class _$FilterInsightsImpl implements _FilterInsights {
  const _$FilterInsightsImpl({required this.rangeFilter});

  @override
  final RangeFilter rangeFilter;

  @override
  String toString() {
    return 'FilterDroneInsightsEvent.filterInsights(rangeFilter: $rangeFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterInsightsImpl &&
            (identical(other.rangeFilter, rangeFilter) ||
                other.rangeFilter == rangeFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rangeFilter);

  /// Create a copy of FilterDroneInsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterInsightsImplCopyWith<_$FilterInsightsImpl> get copyWith =>
      __$$FilterInsightsImplCopyWithImpl<_$FilterInsightsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RangeFilter rangeFilter) filterInsights,
  }) {
    return filterInsights(rangeFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RangeFilter rangeFilter)? filterInsights,
  }) {
    return filterInsights?.call(rangeFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RangeFilter rangeFilter)? filterInsights,
    required TResult orElse(),
  }) {
    if (filterInsights != null) {
      return filterInsights(rangeFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilterInsights value) filterInsights,
  }) {
    return filterInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilterInsights value)? filterInsights,
  }) {
    return filterInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilterInsights value)? filterInsights,
    required TResult orElse(),
  }) {
    if (filterInsights != null) {
      return filterInsights(this);
    }
    return orElse();
  }
}

abstract class _FilterInsights implements FilterDroneInsightsEvent {
  const factory _FilterInsights({required final RangeFilter rangeFilter}) =
      _$FilterInsightsImpl;

  @override
  RangeFilter get rangeFilter;

  /// Create a copy of FilterDroneInsightsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterInsightsImplCopyWith<_$FilterInsightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FilterDroneInsightsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filteringInsights,
    required TResult Function(
            FilteredDroneInsightsEntity filteredDroneInsightsEntity)
        filteredInsights,
    required TResult Function(
            FilteredDroneInsightsFailure filteredDroneInsightsFailure)
        failedToFilterInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteringInsights,
    TResult? Function(FilteredDroneInsightsEntity filteredDroneInsightsEntity)?
        filteredInsights,
    TResult? Function(
            FilteredDroneInsightsFailure filteredDroneInsightsFailure)?
        failedToFilterInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteringInsights,
    TResult Function(FilteredDroneInsightsEntity filteredDroneInsightsEntity)?
        filteredInsights,
    TResult Function(FilteredDroneInsightsFailure filteredDroneInsightsFailure)?
        failedToFilterInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FilteringInsights value) filteringInsights,
    required TResult Function(_FilteredInsights value) filteredInsights,
    required TResult Function(_FailedToFilterInsights value)
        failedToFilterInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FilteringInsights value)? filteringInsights,
    TResult? Function(_FilteredInsights value)? filteredInsights,
    TResult? Function(_FailedToFilterInsights value)? failedToFilterInsights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteringInsights value)? filteringInsights,
    TResult Function(_FilteredInsights value)? filteredInsights,
    TResult Function(_FailedToFilterInsights value)? failedToFilterInsights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterDroneInsightsStateCopyWith<$Res> {
  factory $FilterDroneInsightsStateCopyWith(FilterDroneInsightsState value,
          $Res Function(FilterDroneInsightsState) then) =
      _$FilterDroneInsightsStateCopyWithImpl<$Res, FilterDroneInsightsState>;
}

/// @nodoc
class _$FilterDroneInsightsStateCopyWithImpl<$Res,
        $Val extends FilterDroneInsightsState>
    implements $FilterDroneInsightsStateCopyWith<$Res> {
  _$FilterDroneInsightsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterDroneInsightsState
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
    extends _$FilterDroneInsightsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FilterDroneInsightsState.initial()';
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
    required TResult Function() filteringInsights,
    required TResult Function(
            FilteredDroneInsightsEntity filteredDroneInsightsEntity)
        filteredInsights,
    required TResult Function(
            FilteredDroneInsightsFailure filteredDroneInsightsFailure)
        failedToFilterInsights,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteringInsights,
    TResult? Function(FilteredDroneInsightsEntity filteredDroneInsightsEntity)?
        filteredInsights,
    TResult? Function(
            FilteredDroneInsightsFailure filteredDroneInsightsFailure)?
        failedToFilterInsights,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteringInsights,
    TResult Function(FilteredDroneInsightsEntity filteredDroneInsightsEntity)?
        filteredInsights,
    TResult Function(FilteredDroneInsightsFailure filteredDroneInsightsFailure)?
        failedToFilterInsights,
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
    required TResult Function(_FilteringInsights value) filteringInsights,
    required TResult Function(_FilteredInsights value) filteredInsights,
    required TResult Function(_FailedToFilterInsights value)
        failedToFilterInsights,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FilteringInsights value)? filteringInsights,
    TResult? Function(_FilteredInsights value)? filteredInsights,
    TResult? Function(_FailedToFilterInsights value)? failedToFilterInsights,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteringInsights value)? filteringInsights,
    TResult Function(_FilteredInsights value)? filteredInsights,
    TResult Function(_FailedToFilterInsights value)? failedToFilterInsights,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FilterDroneInsightsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FilteringInsightsImplCopyWith<$Res> {
  factory _$$FilteringInsightsImplCopyWith(_$FilteringInsightsImpl value,
          $Res Function(_$FilteringInsightsImpl) then) =
      __$$FilteringInsightsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilteringInsightsImplCopyWithImpl<$Res>
    extends _$FilterDroneInsightsStateCopyWithImpl<$Res,
        _$FilteringInsightsImpl>
    implements _$$FilteringInsightsImplCopyWith<$Res> {
  __$$FilteringInsightsImplCopyWithImpl(_$FilteringInsightsImpl _value,
      $Res Function(_$FilteringInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FilteringInsightsImpl implements _FilteringInsights {
  const _$FilteringInsightsImpl();

  @override
  String toString() {
    return 'FilterDroneInsightsState.filteringInsights()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilteringInsightsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filteringInsights,
    required TResult Function(
            FilteredDroneInsightsEntity filteredDroneInsightsEntity)
        filteredInsights,
    required TResult Function(
            FilteredDroneInsightsFailure filteredDroneInsightsFailure)
        failedToFilterInsights,
  }) {
    return filteringInsights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteringInsights,
    TResult? Function(FilteredDroneInsightsEntity filteredDroneInsightsEntity)?
        filteredInsights,
    TResult? Function(
            FilteredDroneInsightsFailure filteredDroneInsightsFailure)?
        failedToFilterInsights,
  }) {
    return filteringInsights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteringInsights,
    TResult Function(FilteredDroneInsightsEntity filteredDroneInsightsEntity)?
        filteredInsights,
    TResult Function(FilteredDroneInsightsFailure filteredDroneInsightsFailure)?
        failedToFilterInsights,
    required TResult orElse(),
  }) {
    if (filteringInsights != null) {
      return filteringInsights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FilteringInsights value) filteringInsights,
    required TResult Function(_FilteredInsights value) filteredInsights,
    required TResult Function(_FailedToFilterInsights value)
        failedToFilterInsights,
  }) {
    return filteringInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FilteringInsights value)? filteringInsights,
    TResult? Function(_FilteredInsights value)? filteredInsights,
    TResult? Function(_FailedToFilterInsights value)? failedToFilterInsights,
  }) {
    return filteringInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteringInsights value)? filteringInsights,
    TResult Function(_FilteredInsights value)? filteredInsights,
    TResult Function(_FailedToFilterInsights value)? failedToFilterInsights,
    required TResult orElse(),
  }) {
    if (filteringInsights != null) {
      return filteringInsights(this);
    }
    return orElse();
  }
}

abstract class _FilteringInsights implements FilterDroneInsightsState {
  const factory _FilteringInsights() = _$FilteringInsightsImpl;
}

/// @nodoc
abstract class _$$FilteredInsightsImplCopyWith<$Res> {
  factory _$$FilteredInsightsImplCopyWith(_$FilteredInsightsImpl value,
          $Res Function(_$FilteredInsightsImpl) then) =
      __$$FilteredInsightsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FilteredDroneInsightsEntity filteredDroneInsightsEntity});
}

/// @nodoc
class __$$FilteredInsightsImplCopyWithImpl<$Res>
    extends _$FilterDroneInsightsStateCopyWithImpl<$Res, _$FilteredInsightsImpl>
    implements _$$FilteredInsightsImplCopyWith<$Res> {
  __$$FilteredInsightsImplCopyWithImpl(_$FilteredInsightsImpl _value,
      $Res Function(_$FilteredInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredDroneInsightsEntity = null,
  }) {
    return _then(_$FilteredInsightsImpl(
      filteredDroneInsightsEntity: null == filteredDroneInsightsEntity
          ? _value.filteredDroneInsightsEntity
          : filteredDroneInsightsEntity // ignore: cast_nullable_to_non_nullable
              as FilteredDroneInsightsEntity,
    ));
  }
}

/// @nodoc

class _$FilteredInsightsImpl implements _FilteredInsights {
  const _$FilteredInsightsImpl({required this.filteredDroneInsightsEntity});

  @override
  final FilteredDroneInsightsEntity filteredDroneInsightsEntity;

  @override
  String toString() {
    return 'FilterDroneInsightsState.filteredInsights(filteredDroneInsightsEntity: $filteredDroneInsightsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredInsightsImpl &&
            (identical(other.filteredDroneInsightsEntity,
                    filteredDroneInsightsEntity) ||
                other.filteredDroneInsightsEntity ==
                    filteredDroneInsightsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filteredDroneInsightsEntity);

  /// Create a copy of FilterDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilteredInsightsImplCopyWith<_$FilteredInsightsImpl> get copyWith =>
      __$$FilteredInsightsImplCopyWithImpl<_$FilteredInsightsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filteringInsights,
    required TResult Function(
            FilteredDroneInsightsEntity filteredDroneInsightsEntity)
        filteredInsights,
    required TResult Function(
            FilteredDroneInsightsFailure filteredDroneInsightsFailure)
        failedToFilterInsights,
  }) {
    return filteredInsights(filteredDroneInsightsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteringInsights,
    TResult? Function(FilteredDroneInsightsEntity filteredDroneInsightsEntity)?
        filteredInsights,
    TResult? Function(
            FilteredDroneInsightsFailure filteredDroneInsightsFailure)?
        failedToFilterInsights,
  }) {
    return filteredInsights?.call(filteredDroneInsightsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteringInsights,
    TResult Function(FilteredDroneInsightsEntity filteredDroneInsightsEntity)?
        filteredInsights,
    TResult Function(FilteredDroneInsightsFailure filteredDroneInsightsFailure)?
        failedToFilterInsights,
    required TResult orElse(),
  }) {
    if (filteredInsights != null) {
      return filteredInsights(filteredDroneInsightsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FilteringInsights value) filteringInsights,
    required TResult Function(_FilteredInsights value) filteredInsights,
    required TResult Function(_FailedToFilterInsights value)
        failedToFilterInsights,
  }) {
    return filteredInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FilteringInsights value)? filteringInsights,
    TResult? Function(_FilteredInsights value)? filteredInsights,
    TResult? Function(_FailedToFilterInsights value)? failedToFilterInsights,
  }) {
    return filteredInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteringInsights value)? filteringInsights,
    TResult Function(_FilteredInsights value)? filteredInsights,
    TResult Function(_FailedToFilterInsights value)? failedToFilterInsights,
    required TResult orElse(),
  }) {
    if (filteredInsights != null) {
      return filteredInsights(this);
    }
    return orElse();
  }
}

abstract class _FilteredInsights implements FilterDroneInsightsState {
  const factory _FilteredInsights(
      {required final FilteredDroneInsightsEntity
          filteredDroneInsightsEntity}) = _$FilteredInsightsImpl;

  FilteredDroneInsightsEntity get filteredDroneInsightsEntity;

  /// Create a copy of FilterDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilteredInsightsImplCopyWith<_$FilteredInsightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToFilterInsightsImplCopyWith<$Res> {
  factory _$$FailedToFilterInsightsImplCopyWith(
          _$FailedToFilterInsightsImpl value,
          $Res Function(_$FailedToFilterInsightsImpl) then) =
      __$$FailedToFilterInsightsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FilteredDroneInsightsFailure filteredDroneInsightsFailure});
}

/// @nodoc
class __$$FailedToFilterInsightsImplCopyWithImpl<$Res>
    extends _$FilterDroneInsightsStateCopyWithImpl<$Res,
        _$FailedToFilterInsightsImpl>
    implements _$$FailedToFilterInsightsImplCopyWith<$Res> {
  __$$FailedToFilterInsightsImplCopyWithImpl(
      _$FailedToFilterInsightsImpl _value,
      $Res Function(_$FailedToFilterInsightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filteredDroneInsightsFailure = null,
  }) {
    return _then(_$FailedToFilterInsightsImpl(
      filteredDroneInsightsFailure: null == filteredDroneInsightsFailure
          ? _value.filteredDroneInsightsFailure
          : filteredDroneInsightsFailure // ignore: cast_nullable_to_non_nullable
              as FilteredDroneInsightsFailure,
    ));
  }
}

/// @nodoc

class _$FailedToFilterInsightsImpl implements _FailedToFilterInsights {
  const _$FailedToFilterInsightsImpl(
      {required this.filteredDroneInsightsFailure});

  @override
  final FilteredDroneInsightsFailure filteredDroneInsightsFailure;

  @override
  String toString() {
    return 'FilterDroneInsightsState.failedToFilterInsights(filteredDroneInsightsFailure: $filteredDroneInsightsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToFilterInsightsImpl &&
            (identical(other.filteredDroneInsightsFailure,
                    filteredDroneInsightsFailure) ||
                other.filteredDroneInsightsFailure ==
                    filteredDroneInsightsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filteredDroneInsightsFailure);

  /// Create a copy of FilterDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToFilterInsightsImplCopyWith<_$FailedToFilterInsightsImpl>
      get copyWith => __$$FailedToFilterInsightsImplCopyWithImpl<
          _$FailedToFilterInsightsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filteringInsights,
    required TResult Function(
            FilteredDroneInsightsEntity filteredDroneInsightsEntity)
        filteredInsights,
    required TResult Function(
            FilteredDroneInsightsFailure filteredDroneInsightsFailure)
        failedToFilterInsights,
  }) {
    return failedToFilterInsights(filteredDroneInsightsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? filteringInsights,
    TResult? Function(FilteredDroneInsightsEntity filteredDroneInsightsEntity)?
        filteredInsights,
    TResult? Function(
            FilteredDroneInsightsFailure filteredDroneInsightsFailure)?
        failedToFilterInsights,
  }) {
    return failedToFilterInsights?.call(filteredDroneInsightsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filteringInsights,
    TResult Function(FilteredDroneInsightsEntity filteredDroneInsightsEntity)?
        filteredInsights,
    TResult Function(FilteredDroneInsightsFailure filteredDroneInsightsFailure)?
        failedToFilterInsights,
    required TResult orElse(),
  }) {
    if (failedToFilterInsights != null) {
      return failedToFilterInsights(filteredDroneInsightsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FilteringInsights value) filteringInsights,
    required TResult Function(_FilteredInsights value) filteredInsights,
    required TResult Function(_FailedToFilterInsights value)
        failedToFilterInsights,
  }) {
    return failedToFilterInsights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FilteringInsights value)? filteringInsights,
    TResult? Function(_FilteredInsights value)? filteredInsights,
    TResult? Function(_FailedToFilterInsights value)? failedToFilterInsights,
  }) {
    return failedToFilterInsights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FilteringInsights value)? filteringInsights,
    TResult Function(_FilteredInsights value)? filteredInsights,
    TResult Function(_FailedToFilterInsights value)? failedToFilterInsights,
    required TResult orElse(),
  }) {
    if (failedToFilterInsights != null) {
      return failedToFilterInsights(this);
    }
    return orElse();
  }
}

abstract class _FailedToFilterInsights implements FilterDroneInsightsState {
  const factory _FailedToFilterInsights(
      {required final FilteredDroneInsightsFailure
          filteredDroneInsightsFailure}) = _$FailedToFilterInsightsImpl;

  FilteredDroneInsightsFailure get filteredDroneInsightsFailure;

  /// Create a copy of FilterDroneInsightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToFilterInsightsImplCopyWith<_$FailedToFilterInsightsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
