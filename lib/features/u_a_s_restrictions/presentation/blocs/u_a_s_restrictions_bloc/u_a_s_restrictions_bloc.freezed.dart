// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'u_a_s_restrictions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UASRestrictionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String geoHash) getRestrictions,
    required TResult Function(String? restrictionId) selectRestriction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String geoHash)? getRestrictions,
    TResult? Function(String? restrictionId)? selectRestriction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String geoHash)? getRestrictions,
    TResult Function(String? restrictionId)? selectRestriction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestrictions value) getRestrictions,
    required TResult Function(_SelectRestriction value) selectRestriction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRestrictions value)? getRestrictions,
    TResult? Function(_SelectRestriction value)? selectRestriction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestrictions value)? getRestrictions,
    TResult Function(_SelectRestriction value)? selectRestriction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UASRestrictionsEventCopyWith<$Res> {
  factory $UASRestrictionsEventCopyWith(UASRestrictionsEvent value,
          $Res Function(UASRestrictionsEvent) then) =
      _$UASRestrictionsEventCopyWithImpl<$Res, UASRestrictionsEvent>;
}

/// @nodoc
class _$UASRestrictionsEventCopyWithImpl<$Res,
        $Val extends UASRestrictionsEvent>
    implements $UASRestrictionsEventCopyWith<$Res> {
  _$UASRestrictionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UASRestrictionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetRestrictionsImplCopyWith<$Res> {
  factory _$$GetRestrictionsImplCopyWith(_$GetRestrictionsImpl value,
          $Res Function(_$GetRestrictionsImpl) then) =
      __$$GetRestrictionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String geoHash});
}

/// @nodoc
class __$$GetRestrictionsImplCopyWithImpl<$Res>
    extends _$UASRestrictionsEventCopyWithImpl<$Res, _$GetRestrictionsImpl>
    implements _$$GetRestrictionsImplCopyWith<$Res> {
  __$$GetRestrictionsImplCopyWithImpl(
      _$GetRestrictionsImpl _value, $Res Function(_$GetRestrictionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UASRestrictionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHash = null,
  }) {
    return _then(_$GetRestrictionsImpl(
      geoHash: null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRestrictionsImpl implements _GetRestrictions {
  const _$GetRestrictionsImpl({required this.geoHash});

  @override
  final String geoHash;

  @override
  String toString() {
    return 'UASRestrictionsEvent.getRestrictions(geoHash: $geoHash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRestrictionsImpl &&
            (identical(other.geoHash, geoHash) || other.geoHash == geoHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHash);

  /// Create a copy of UASRestrictionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRestrictionsImplCopyWith<_$GetRestrictionsImpl> get copyWith =>
      __$$GetRestrictionsImplCopyWithImpl<_$GetRestrictionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String geoHash) getRestrictions,
    required TResult Function(String? restrictionId) selectRestriction,
  }) {
    return getRestrictions(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String geoHash)? getRestrictions,
    TResult? Function(String? restrictionId)? selectRestriction,
  }) {
    return getRestrictions?.call(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String geoHash)? getRestrictions,
    TResult Function(String? restrictionId)? selectRestriction,
    required TResult orElse(),
  }) {
    if (getRestrictions != null) {
      return getRestrictions(geoHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestrictions value) getRestrictions,
    required TResult Function(_SelectRestriction value) selectRestriction,
  }) {
    return getRestrictions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRestrictions value)? getRestrictions,
    TResult? Function(_SelectRestriction value)? selectRestriction,
  }) {
    return getRestrictions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestrictions value)? getRestrictions,
    TResult Function(_SelectRestriction value)? selectRestriction,
    required TResult orElse(),
  }) {
    if (getRestrictions != null) {
      return getRestrictions(this);
    }
    return orElse();
  }
}

abstract class _GetRestrictions implements UASRestrictionsEvent {
  const factory _GetRestrictions({required final String geoHash}) =
      _$GetRestrictionsImpl;

  String get geoHash;

  /// Create a copy of UASRestrictionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRestrictionsImplCopyWith<_$GetRestrictionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectRestrictionImplCopyWith<$Res> {
  factory _$$SelectRestrictionImplCopyWith(_$SelectRestrictionImpl value,
          $Res Function(_$SelectRestrictionImpl) then) =
      __$$SelectRestrictionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? restrictionId});
}

/// @nodoc
class __$$SelectRestrictionImplCopyWithImpl<$Res>
    extends _$UASRestrictionsEventCopyWithImpl<$Res, _$SelectRestrictionImpl>
    implements _$$SelectRestrictionImplCopyWith<$Res> {
  __$$SelectRestrictionImplCopyWithImpl(_$SelectRestrictionImpl _value,
      $Res Function(_$SelectRestrictionImpl) _then)
      : super(_value, _then);

  /// Create a copy of UASRestrictionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restrictionId = freezed,
  }) {
    return _then(_$SelectRestrictionImpl(
      restrictionId: freezed == restrictionId
          ? _value.restrictionId
          : restrictionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelectRestrictionImpl implements _SelectRestriction {
  const _$SelectRestrictionImpl({required this.restrictionId});

  @override
  final String? restrictionId;

  @override
  String toString() {
    return 'UASRestrictionsEvent.selectRestriction(restrictionId: $restrictionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRestrictionImpl &&
            (identical(other.restrictionId, restrictionId) ||
                other.restrictionId == restrictionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restrictionId);

  /// Create a copy of UASRestrictionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectRestrictionImplCopyWith<_$SelectRestrictionImpl> get copyWith =>
      __$$SelectRestrictionImplCopyWithImpl<_$SelectRestrictionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String geoHash) getRestrictions,
    required TResult Function(String? restrictionId) selectRestriction,
  }) {
    return selectRestriction(restrictionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String geoHash)? getRestrictions,
    TResult? Function(String? restrictionId)? selectRestriction,
  }) {
    return selectRestriction?.call(restrictionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String geoHash)? getRestrictions,
    TResult Function(String? restrictionId)? selectRestriction,
    required TResult orElse(),
  }) {
    if (selectRestriction != null) {
      return selectRestriction(restrictionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestrictions value) getRestrictions,
    required TResult Function(_SelectRestriction value) selectRestriction,
  }) {
    return selectRestriction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRestrictions value)? getRestrictions,
    TResult? Function(_SelectRestriction value)? selectRestriction,
  }) {
    return selectRestriction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestrictions value)? getRestrictions,
    TResult Function(_SelectRestriction value)? selectRestriction,
    required TResult orElse(),
  }) {
    if (selectRestriction != null) {
      return selectRestriction(this);
    }
    return orElse();
  }
}

abstract class _SelectRestriction implements UASRestrictionsEvent {
  const factory _SelectRestriction({required final String? restrictionId}) =
      _$SelectRestrictionImpl;

  String? get restrictionId;

  /// Create a copy of UASRestrictionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectRestrictionImplCopyWith<_$SelectRestrictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UASRestrictionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRestrictions,
    required TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function() previouslyGotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
    required TResult Function(RestrictionEntity? selectedRestriction)
        selectedRestriction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function()? previouslyGotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult? Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function()? previouslyGotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_PreviouslyGotRestrictions value)
        previouslyGotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
    required TResult Function(_SelectedRestriction value) selectedRestriction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult? Function(_SelectedRestriction value)? selectedRestriction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult Function(_SelectedRestriction value)? selectedRestriction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UASRestrictionsStateCopyWith<$Res> {
  factory $UASRestrictionsStateCopyWith(UASRestrictionsState value,
          $Res Function(UASRestrictionsState) then) =
      _$UASRestrictionsStateCopyWithImpl<$Res, UASRestrictionsState>;
}

/// @nodoc
class _$UASRestrictionsStateCopyWithImpl<$Res,
        $Val extends UASRestrictionsState>
    implements $UASRestrictionsStateCopyWith<$Res> {
  _$UASRestrictionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UASRestrictionsState
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
    extends _$UASRestrictionsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UASRestrictionsState.initial()';
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
    required TResult Function() gettingRestrictions,
    required TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function() previouslyGotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
    required TResult Function(RestrictionEntity? selectedRestriction)
        selectedRestriction,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function()? previouslyGotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult? Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function()? previouslyGotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
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
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_PreviouslyGotRestrictions value)
        previouslyGotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
    required TResult Function(_SelectedRestriction value) selectedRestriction,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult? Function(_SelectedRestriction value)? selectedRestriction,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult Function(_SelectedRestriction value)? selectedRestriction,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UASRestrictionsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingRestrictionsImplCopyWith<$Res> {
  factory _$$GettingRestrictionsImplCopyWith(_$GettingRestrictionsImpl value,
          $Res Function(_$GettingRestrictionsImpl) then) =
      __$$GettingRestrictionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingRestrictionsImplCopyWithImpl<$Res>
    extends _$UASRestrictionsStateCopyWithImpl<$Res, _$GettingRestrictionsImpl>
    implements _$$GettingRestrictionsImplCopyWith<$Res> {
  __$$GettingRestrictionsImplCopyWithImpl(_$GettingRestrictionsImpl _value,
      $Res Function(_$GettingRestrictionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingRestrictionsImpl implements _GettingRestrictions {
  const _$GettingRestrictionsImpl();

  @override
  String toString() {
    return 'UASRestrictionsState.gettingRestrictions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettingRestrictionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRestrictions,
    required TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function() previouslyGotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
    required TResult Function(RestrictionEntity? selectedRestriction)
        selectedRestriction,
  }) {
    return gettingRestrictions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function()? previouslyGotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult? Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
  }) {
    return gettingRestrictions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function()? previouslyGotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
    required TResult orElse(),
  }) {
    if (gettingRestrictions != null) {
      return gettingRestrictions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_PreviouslyGotRestrictions value)
        previouslyGotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
    required TResult Function(_SelectedRestriction value) selectedRestriction,
  }) {
    return gettingRestrictions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult? Function(_SelectedRestriction value)? selectedRestriction,
  }) {
    return gettingRestrictions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult Function(_SelectedRestriction value)? selectedRestriction,
    required TResult orElse(),
  }) {
    if (gettingRestrictions != null) {
      return gettingRestrictions(this);
    }
    return orElse();
  }
}

abstract class _GettingRestrictions implements UASRestrictionsState {
  const factory _GettingRestrictions() = _$GettingRestrictionsImpl;
}

/// @nodoc
abstract class _$$GotRestrictionsImplCopyWith<$Res> {
  factory _$$GotRestrictionsImplCopyWith(_$GotRestrictionsImpl value,
          $Res Function(_$GotRestrictionsImpl) then) =
      __$$GotRestrictionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String geoHash, List<RestrictionEntity> restrictionEntities});
}

/// @nodoc
class __$$GotRestrictionsImplCopyWithImpl<$Res>
    extends _$UASRestrictionsStateCopyWithImpl<$Res, _$GotRestrictionsImpl>
    implements _$$GotRestrictionsImplCopyWith<$Res> {
  __$$GotRestrictionsImplCopyWithImpl(
      _$GotRestrictionsImpl _value, $Res Function(_$GotRestrictionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHash = null,
    Object? restrictionEntities = null,
  }) {
    return _then(_$GotRestrictionsImpl(
      geoHash: null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
      restrictionEntities: null == restrictionEntities
          ? _value._restrictionEntities
          : restrictionEntities // ignore: cast_nullable_to_non_nullable
              as List<RestrictionEntity>,
    ));
  }
}

/// @nodoc

class _$GotRestrictionsImpl implements _GotRestrictions {
  const _$GotRestrictionsImpl(
      {required this.geoHash,
      required final List<RestrictionEntity> restrictionEntities})
      : _restrictionEntities = restrictionEntities;

  @override
  final String geoHash;
  final List<RestrictionEntity> _restrictionEntities;
  @override
  List<RestrictionEntity> get restrictionEntities {
    if (_restrictionEntities is EqualUnmodifiableListView)
      return _restrictionEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restrictionEntities);
  }

  @override
  String toString() {
    return 'UASRestrictionsState.gotRestrictions(geoHash: $geoHash, restrictionEntities: $restrictionEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotRestrictionsImpl &&
            (identical(other.geoHash, geoHash) || other.geoHash == geoHash) &&
            const DeepCollectionEquality()
                .equals(other._restrictionEntities, _restrictionEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHash,
      const DeepCollectionEquality().hash(_restrictionEntities));

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotRestrictionsImplCopyWith<_$GotRestrictionsImpl> get copyWith =>
      __$$GotRestrictionsImplCopyWithImpl<_$GotRestrictionsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRestrictions,
    required TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function() previouslyGotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
    required TResult Function(RestrictionEntity? selectedRestriction)
        selectedRestriction,
  }) {
    return gotRestrictions(geoHash, restrictionEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function()? previouslyGotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult? Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
  }) {
    return gotRestrictions?.call(geoHash, restrictionEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function()? previouslyGotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
    required TResult orElse(),
  }) {
    if (gotRestrictions != null) {
      return gotRestrictions(geoHash, restrictionEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_PreviouslyGotRestrictions value)
        previouslyGotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
    required TResult Function(_SelectedRestriction value) selectedRestriction,
  }) {
    return gotRestrictions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult? Function(_SelectedRestriction value)? selectedRestriction,
  }) {
    return gotRestrictions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult Function(_SelectedRestriction value)? selectedRestriction,
    required TResult orElse(),
  }) {
    if (gotRestrictions != null) {
      return gotRestrictions(this);
    }
    return orElse();
  }
}

abstract class _GotRestrictions implements UASRestrictionsState {
  const factory _GotRestrictions(
          {required final String geoHash,
          required final List<RestrictionEntity> restrictionEntities}) =
      _$GotRestrictionsImpl;

  String get geoHash;
  List<RestrictionEntity> get restrictionEntities;

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotRestrictionsImplCopyWith<_$GotRestrictionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreviouslyGotRestrictionsImplCopyWith<$Res> {
  factory _$$PreviouslyGotRestrictionsImplCopyWith(
          _$PreviouslyGotRestrictionsImpl value,
          $Res Function(_$PreviouslyGotRestrictionsImpl) then) =
      __$$PreviouslyGotRestrictionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviouslyGotRestrictionsImplCopyWithImpl<$Res>
    extends _$UASRestrictionsStateCopyWithImpl<$Res,
        _$PreviouslyGotRestrictionsImpl>
    implements _$$PreviouslyGotRestrictionsImplCopyWith<$Res> {
  __$$PreviouslyGotRestrictionsImplCopyWithImpl(
      _$PreviouslyGotRestrictionsImpl _value,
      $Res Function(_$PreviouslyGotRestrictionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreviouslyGotRestrictionsImpl implements _PreviouslyGotRestrictions {
  const _$PreviouslyGotRestrictionsImpl();

  @override
  String toString() {
    return 'UASRestrictionsState.previouslyGotRestrictions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviouslyGotRestrictionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRestrictions,
    required TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function() previouslyGotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
    required TResult Function(RestrictionEntity? selectedRestriction)
        selectedRestriction,
  }) {
    return previouslyGotRestrictions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function()? previouslyGotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult? Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
  }) {
    return previouslyGotRestrictions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function()? previouslyGotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
    required TResult orElse(),
  }) {
    if (previouslyGotRestrictions != null) {
      return previouslyGotRestrictions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_PreviouslyGotRestrictions value)
        previouslyGotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
    required TResult Function(_SelectedRestriction value) selectedRestriction,
  }) {
    return previouslyGotRestrictions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult? Function(_SelectedRestriction value)? selectedRestriction,
  }) {
    return previouslyGotRestrictions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult Function(_SelectedRestriction value)? selectedRestriction,
    required TResult orElse(),
  }) {
    if (previouslyGotRestrictions != null) {
      return previouslyGotRestrictions(this);
    }
    return orElse();
  }
}

abstract class _PreviouslyGotRestrictions implements UASRestrictionsState {
  const factory _PreviouslyGotRestrictions() = _$PreviouslyGotRestrictionsImpl;
}

/// @nodoc
abstract class _$$FailedToGetRestrictionsImplCopyWith<$Res> {
  factory _$$FailedToGetRestrictionsImplCopyWith(
          _$FailedToGetRestrictionsImpl value,
          $Res Function(_$FailedToGetRestrictionsImpl) then) =
      __$$FailedToGetRestrictionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UASRestrictionsFailure uasRestrictionsFailure});
}

/// @nodoc
class __$$FailedToGetRestrictionsImplCopyWithImpl<$Res>
    extends _$UASRestrictionsStateCopyWithImpl<$Res,
        _$FailedToGetRestrictionsImpl>
    implements _$$FailedToGetRestrictionsImplCopyWith<$Res> {
  __$$FailedToGetRestrictionsImplCopyWithImpl(
      _$FailedToGetRestrictionsImpl _value,
      $Res Function(_$FailedToGetRestrictionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uasRestrictionsFailure = null,
  }) {
    return _then(_$FailedToGetRestrictionsImpl(
      uasRestrictionsFailure: null == uasRestrictionsFailure
          ? _value.uasRestrictionsFailure
          : uasRestrictionsFailure // ignore: cast_nullable_to_non_nullable
              as UASRestrictionsFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetRestrictionsImpl implements _FailedToGetRestrictions {
  const _$FailedToGetRestrictionsImpl({required this.uasRestrictionsFailure});

  @override
  final UASRestrictionsFailure uasRestrictionsFailure;

  @override
  String toString() {
    return 'UASRestrictionsState.failedToGetRestrictions(uasRestrictionsFailure: $uasRestrictionsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetRestrictionsImpl &&
            (identical(other.uasRestrictionsFailure, uasRestrictionsFailure) ||
                other.uasRestrictionsFailure == uasRestrictionsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uasRestrictionsFailure);

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetRestrictionsImplCopyWith<_$FailedToGetRestrictionsImpl>
      get copyWith => __$$FailedToGetRestrictionsImplCopyWithImpl<
          _$FailedToGetRestrictionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRestrictions,
    required TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function() previouslyGotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
    required TResult Function(RestrictionEntity? selectedRestriction)
        selectedRestriction,
  }) {
    return failedToGetRestrictions(uasRestrictionsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function()? previouslyGotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult? Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
  }) {
    return failedToGetRestrictions?.call(uasRestrictionsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function()? previouslyGotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
    required TResult orElse(),
  }) {
    if (failedToGetRestrictions != null) {
      return failedToGetRestrictions(uasRestrictionsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_PreviouslyGotRestrictions value)
        previouslyGotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
    required TResult Function(_SelectedRestriction value) selectedRestriction,
  }) {
    return failedToGetRestrictions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult? Function(_SelectedRestriction value)? selectedRestriction,
  }) {
    return failedToGetRestrictions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult Function(_SelectedRestriction value)? selectedRestriction,
    required TResult orElse(),
  }) {
    if (failedToGetRestrictions != null) {
      return failedToGetRestrictions(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetRestrictions implements UASRestrictionsState {
  const factory _FailedToGetRestrictions(
          {required final UASRestrictionsFailure uasRestrictionsFailure}) =
      _$FailedToGetRestrictionsImpl;

  UASRestrictionsFailure get uasRestrictionsFailure;

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToGetRestrictionsImplCopyWith<_$FailedToGetRestrictionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedRestrictionImplCopyWith<$Res> {
  factory _$$SelectedRestrictionImplCopyWith(_$SelectedRestrictionImpl value,
          $Res Function(_$SelectedRestrictionImpl) then) =
      __$$SelectedRestrictionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RestrictionEntity? selectedRestriction});
}

/// @nodoc
class __$$SelectedRestrictionImplCopyWithImpl<$Res>
    extends _$UASRestrictionsStateCopyWithImpl<$Res, _$SelectedRestrictionImpl>
    implements _$$SelectedRestrictionImplCopyWith<$Res> {
  __$$SelectedRestrictionImplCopyWithImpl(_$SelectedRestrictionImpl _value,
      $Res Function(_$SelectedRestrictionImpl) _then)
      : super(_value, _then);

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedRestriction = freezed,
  }) {
    return _then(_$SelectedRestrictionImpl(
      selectedRestriction: freezed == selectedRestriction
          ? _value.selectedRestriction
          : selectedRestriction // ignore: cast_nullable_to_non_nullable
              as RestrictionEntity?,
    ));
  }
}

/// @nodoc

class _$SelectedRestrictionImpl implements _SelectedRestriction {
  const _$SelectedRestrictionImpl({required this.selectedRestriction});

  @override
  final RestrictionEntity? selectedRestriction;

  @override
  String toString() {
    return 'UASRestrictionsState.selectedRestriction(selectedRestriction: $selectedRestriction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedRestrictionImpl &&
            (identical(other.selectedRestriction, selectedRestriction) ||
                other.selectedRestriction == selectedRestriction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedRestriction);

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedRestrictionImplCopyWith<_$SelectedRestrictionImpl> get copyWith =>
      __$$SelectedRestrictionImplCopyWithImpl<_$SelectedRestrictionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRestrictions,
    required TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)
        gotRestrictions,
    required TResult Function() previouslyGotRestrictions,
    required TResult Function(UASRestrictionsFailure uasRestrictionsFailure)
        failedToGetRestrictions,
    required TResult Function(RestrictionEntity? selectedRestriction)
        selectedRestriction,
  }) {
    return selectedRestriction(this.selectedRestriction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRestrictions,
    TResult? Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult? Function()? previouslyGotRestrictions,
    TResult? Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult? Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
  }) {
    return selectedRestriction?.call(this.selectedRestriction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRestrictions,
    TResult Function(
            String geoHash, List<RestrictionEntity> restrictionEntities)?
        gotRestrictions,
    TResult Function()? previouslyGotRestrictions,
    TResult Function(UASRestrictionsFailure uasRestrictionsFailure)?
        failedToGetRestrictions,
    TResult Function(RestrictionEntity? selectedRestriction)?
        selectedRestriction,
    required TResult orElse(),
  }) {
    if (selectedRestriction != null) {
      return selectedRestriction(this.selectedRestriction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRestrictions value) gettingRestrictions,
    required TResult Function(_GotRestrictions value) gotRestrictions,
    required TResult Function(_PreviouslyGotRestrictions value)
        previouslyGotRestrictions,
    required TResult Function(_FailedToGetRestrictions value)
        failedToGetRestrictions,
    required TResult Function(_SelectedRestriction value) selectedRestriction,
  }) {
    return selectedRestriction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRestrictions value)? gettingRestrictions,
    TResult? Function(_GotRestrictions value)? gotRestrictions,
    TResult? Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult? Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult? Function(_SelectedRestriction value)? selectedRestriction,
  }) {
    return selectedRestriction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRestrictions value)? gettingRestrictions,
    TResult Function(_GotRestrictions value)? gotRestrictions,
    TResult Function(_PreviouslyGotRestrictions value)?
        previouslyGotRestrictions,
    TResult Function(_FailedToGetRestrictions value)? failedToGetRestrictions,
    TResult Function(_SelectedRestriction value)? selectedRestriction,
    required TResult orElse(),
  }) {
    if (selectedRestriction != null) {
      return selectedRestriction(this);
    }
    return orElse();
  }
}

abstract class _SelectedRestriction implements UASRestrictionsState {
  const factory _SelectedRestriction(
          {required final RestrictionEntity? selectedRestriction}) =
      _$SelectedRestrictionImpl;

  RestrictionEntity? get selectedRestriction;

  /// Create a copy of UASRestrictionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedRestrictionImplCopyWith<_$SelectedRestrictionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
