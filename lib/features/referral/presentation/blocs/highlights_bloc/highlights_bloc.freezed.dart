// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highlights_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HighlightsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHighlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHighlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHighlights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHighlights value) getHighlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHighlights value)? getHighlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHighlights value)? getHighlights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightsEventCopyWith<$Res> {
  factory $HighlightsEventCopyWith(
          HighlightsEvent value, $Res Function(HighlightsEvent) then) =
      _$HighlightsEventCopyWithImpl<$Res, HighlightsEvent>;
}

/// @nodoc
class _$HighlightsEventCopyWithImpl<$Res, $Val extends HighlightsEvent>
    implements $HighlightsEventCopyWith<$Res> {
  _$HighlightsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HighlightsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetHighlightsImplCopyWith<$Res> {
  factory _$$GetHighlightsImplCopyWith(
          _$GetHighlightsImpl value, $Res Function(_$GetHighlightsImpl) then) =
      __$$GetHighlightsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHighlightsImplCopyWithImpl<$Res>
    extends _$HighlightsEventCopyWithImpl<$Res, _$GetHighlightsImpl>
    implements _$$GetHighlightsImplCopyWith<$Res> {
  __$$GetHighlightsImplCopyWithImpl(
      _$GetHighlightsImpl _value, $Res Function(_$GetHighlightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HighlightsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetHighlightsImpl implements _GetHighlights {
  const _$GetHighlightsImpl();

  @override
  String toString() {
    return 'HighlightsEvent.getHighlights()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHighlightsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHighlights,
  }) {
    return getHighlights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHighlights,
  }) {
    return getHighlights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHighlights,
    required TResult orElse(),
  }) {
    if (getHighlights != null) {
      return getHighlights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHighlights value) getHighlights,
  }) {
    return getHighlights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetHighlights value)? getHighlights,
  }) {
    return getHighlights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHighlights value)? getHighlights,
    required TResult orElse(),
  }) {
    if (getHighlights != null) {
      return getHighlights(this);
    }
    return orElse();
  }
}

abstract class _GetHighlights implements HighlightsEvent {
  const factory _GetHighlights() = _$GetHighlightsImpl;
}

/// @nodoc
mixin _$HighlightsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingHighlights,
    required TResult Function(HighlightsEntity highlightsEntity) gotHighlights,
    required TResult Function(HighlightsFailure highlightsFailure)
        failedToGetHighlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingHighlights,
    TResult? Function(HighlightsEntity highlightsEntity)? gotHighlights,
    TResult? Function(HighlightsFailure highlightsFailure)?
        failedToGetHighlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingHighlights,
    TResult Function(HighlightsEntity highlightsEntity)? gotHighlights,
    TResult Function(HighlightsFailure highlightsFailure)?
        failedToGetHighlights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingHighlights value) gettingHighlights,
    required TResult Function(_GotHighlights value) gotHighlights,
    required TResult Function(_FailedToGetHighlights value)
        failedToGetHighlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingHighlights value)? gettingHighlights,
    TResult? Function(_GotHighlights value)? gotHighlights,
    TResult? Function(_FailedToGetHighlights value)? failedToGetHighlights,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingHighlights value)? gettingHighlights,
    TResult Function(_GotHighlights value)? gotHighlights,
    TResult Function(_FailedToGetHighlights value)? failedToGetHighlights,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighlightsStateCopyWith<$Res> {
  factory $HighlightsStateCopyWith(
          HighlightsState value, $Res Function(HighlightsState) then) =
      _$HighlightsStateCopyWithImpl<$Res, HighlightsState>;
}

/// @nodoc
class _$HighlightsStateCopyWithImpl<$Res, $Val extends HighlightsState>
    implements $HighlightsStateCopyWith<$Res> {
  _$HighlightsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HighlightsState
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
    extends _$HighlightsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HighlightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HighlightsState.initial()';
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
    required TResult Function() gettingHighlights,
    required TResult Function(HighlightsEntity highlightsEntity) gotHighlights,
    required TResult Function(HighlightsFailure highlightsFailure)
        failedToGetHighlights,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingHighlights,
    TResult? Function(HighlightsEntity highlightsEntity)? gotHighlights,
    TResult? Function(HighlightsFailure highlightsFailure)?
        failedToGetHighlights,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingHighlights,
    TResult Function(HighlightsEntity highlightsEntity)? gotHighlights,
    TResult Function(HighlightsFailure highlightsFailure)?
        failedToGetHighlights,
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
    required TResult Function(_GettingHighlights value) gettingHighlights,
    required TResult Function(_GotHighlights value) gotHighlights,
    required TResult Function(_FailedToGetHighlights value)
        failedToGetHighlights,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingHighlights value)? gettingHighlights,
    TResult? Function(_GotHighlights value)? gotHighlights,
    TResult? Function(_FailedToGetHighlights value)? failedToGetHighlights,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingHighlights value)? gettingHighlights,
    TResult Function(_GotHighlights value)? gotHighlights,
    TResult Function(_FailedToGetHighlights value)? failedToGetHighlights,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HighlightsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingHighlightsImplCopyWith<$Res> {
  factory _$$GettingHighlightsImplCopyWith(_$GettingHighlightsImpl value,
          $Res Function(_$GettingHighlightsImpl) then) =
      __$$GettingHighlightsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingHighlightsImplCopyWithImpl<$Res>
    extends _$HighlightsStateCopyWithImpl<$Res, _$GettingHighlightsImpl>
    implements _$$GettingHighlightsImplCopyWith<$Res> {
  __$$GettingHighlightsImplCopyWithImpl(_$GettingHighlightsImpl _value,
      $Res Function(_$GettingHighlightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HighlightsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingHighlightsImpl implements _GettingHighlights {
  const _$GettingHighlightsImpl();

  @override
  String toString() {
    return 'HighlightsState.gettingHighlights()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingHighlightsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingHighlights,
    required TResult Function(HighlightsEntity highlightsEntity) gotHighlights,
    required TResult Function(HighlightsFailure highlightsFailure)
        failedToGetHighlights,
  }) {
    return gettingHighlights();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingHighlights,
    TResult? Function(HighlightsEntity highlightsEntity)? gotHighlights,
    TResult? Function(HighlightsFailure highlightsFailure)?
        failedToGetHighlights,
  }) {
    return gettingHighlights?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingHighlights,
    TResult Function(HighlightsEntity highlightsEntity)? gotHighlights,
    TResult Function(HighlightsFailure highlightsFailure)?
        failedToGetHighlights,
    required TResult orElse(),
  }) {
    if (gettingHighlights != null) {
      return gettingHighlights();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingHighlights value) gettingHighlights,
    required TResult Function(_GotHighlights value) gotHighlights,
    required TResult Function(_FailedToGetHighlights value)
        failedToGetHighlights,
  }) {
    return gettingHighlights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingHighlights value)? gettingHighlights,
    TResult? Function(_GotHighlights value)? gotHighlights,
    TResult? Function(_FailedToGetHighlights value)? failedToGetHighlights,
  }) {
    return gettingHighlights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingHighlights value)? gettingHighlights,
    TResult Function(_GotHighlights value)? gotHighlights,
    TResult Function(_FailedToGetHighlights value)? failedToGetHighlights,
    required TResult orElse(),
  }) {
    if (gettingHighlights != null) {
      return gettingHighlights(this);
    }
    return orElse();
  }
}

abstract class _GettingHighlights implements HighlightsState {
  const factory _GettingHighlights() = _$GettingHighlightsImpl;
}

/// @nodoc
abstract class _$$GotHighlightsImplCopyWith<$Res> {
  factory _$$GotHighlightsImplCopyWith(
          _$GotHighlightsImpl value, $Res Function(_$GotHighlightsImpl) then) =
      __$$GotHighlightsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HighlightsEntity highlightsEntity});
}

/// @nodoc
class __$$GotHighlightsImplCopyWithImpl<$Res>
    extends _$HighlightsStateCopyWithImpl<$Res, _$GotHighlightsImpl>
    implements _$$GotHighlightsImplCopyWith<$Res> {
  __$$GotHighlightsImplCopyWithImpl(
      _$GotHighlightsImpl _value, $Res Function(_$GotHighlightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HighlightsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? highlightsEntity = null,
  }) {
    return _then(_$GotHighlightsImpl(
      highlightsEntity: null == highlightsEntity
          ? _value.highlightsEntity
          : highlightsEntity // ignore: cast_nullable_to_non_nullable
              as HighlightsEntity,
    ));
  }
}

/// @nodoc

class _$GotHighlightsImpl implements _GotHighlights {
  const _$GotHighlightsImpl({required this.highlightsEntity});

  @override
  final HighlightsEntity highlightsEntity;

  @override
  String toString() {
    return 'HighlightsState.gotHighlights(highlightsEntity: $highlightsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotHighlightsImpl &&
            (identical(other.highlightsEntity, highlightsEntity) ||
                other.highlightsEntity == highlightsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, highlightsEntity);

  /// Create a copy of HighlightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotHighlightsImplCopyWith<_$GotHighlightsImpl> get copyWith =>
      __$$GotHighlightsImplCopyWithImpl<_$GotHighlightsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingHighlights,
    required TResult Function(HighlightsEntity highlightsEntity) gotHighlights,
    required TResult Function(HighlightsFailure highlightsFailure)
        failedToGetHighlights,
  }) {
    return gotHighlights(highlightsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingHighlights,
    TResult? Function(HighlightsEntity highlightsEntity)? gotHighlights,
    TResult? Function(HighlightsFailure highlightsFailure)?
        failedToGetHighlights,
  }) {
    return gotHighlights?.call(highlightsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingHighlights,
    TResult Function(HighlightsEntity highlightsEntity)? gotHighlights,
    TResult Function(HighlightsFailure highlightsFailure)?
        failedToGetHighlights,
    required TResult orElse(),
  }) {
    if (gotHighlights != null) {
      return gotHighlights(highlightsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingHighlights value) gettingHighlights,
    required TResult Function(_GotHighlights value) gotHighlights,
    required TResult Function(_FailedToGetHighlights value)
        failedToGetHighlights,
  }) {
    return gotHighlights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingHighlights value)? gettingHighlights,
    TResult? Function(_GotHighlights value)? gotHighlights,
    TResult? Function(_FailedToGetHighlights value)? failedToGetHighlights,
  }) {
    return gotHighlights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingHighlights value)? gettingHighlights,
    TResult Function(_GotHighlights value)? gotHighlights,
    TResult Function(_FailedToGetHighlights value)? failedToGetHighlights,
    required TResult orElse(),
  }) {
    if (gotHighlights != null) {
      return gotHighlights(this);
    }
    return orElse();
  }
}

abstract class _GotHighlights implements HighlightsState {
  const factory _GotHighlights(
      {required final HighlightsEntity highlightsEntity}) = _$GotHighlightsImpl;

  HighlightsEntity get highlightsEntity;

  /// Create a copy of HighlightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotHighlightsImplCopyWith<_$GotHighlightsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetHighlightsImplCopyWith<$Res> {
  factory _$$FailedToGetHighlightsImplCopyWith(
          _$FailedToGetHighlightsImpl value,
          $Res Function(_$FailedToGetHighlightsImpl) then) =
      __$$FailedToGetHighlightsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HighlightsFailure highlightsFailure});
}

/// @nodoc
class __$$FailedToGetHighlightsImplCopyWithImpl<$Res>
    extends _$HighlightsStateCopyWithImpl<$Res, _$FailedToGetHighlightsImpl>
    implements _$$FailedToGetHighlightsImplCopyWith<$Res> {
  __$$FailedToGetHighlightsImplCopyWithImpl(_$FailedToGetHighlightsImpl _value,
      $Res Function(_$FailedToGetHighlightsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HighlightsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? highlightsFailure = null,
  }) {
    return _then(_$FailedToGetHighlightsImpl(
      highlightsFailure: null == highlightsFailure
          ? _value.highlightsFailure
          : highlightsFailure // ignore: cast_nullable_to_non_nullable
              as HighlightsFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetHighlightsImpl implements _FailedToGetHighlights {
  const _$FailedToGetHighlightsImpl({required this.highlightsFailure});

  @override
  final HighlightsFailure highlightsFailure;

  @override
  String toString() {
    return 'HighlightsState.failedToGetHighlights(highlightsFailure: $highlightsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetHighlightsImpl &&
            (identical(other.highlightsFailure, highlightsFailure) ||
                other.highlightsFailure == highlightsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, highlightsFailure);

  /// Create a copy of HighlightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetHighlightsImplCopyWith<_$FailedToGetHighlightsImpl>
      get copyWith => __$$FailedToGetHighlightsImplCopyWithImpl<
          _$FailedToGetHighlightsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingHighlights,
    required TResult Function(HighlightsEntity highlightsEntity) gotHighlights,
    required TResult Function(HighlightsFailure highlightsFailure)
        failedToGetHighlights,
  }) {
    return failedToGetHighlights(highlightsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingHighlights,
    TResult? Function(HighlightsEntity highlightsEntity)? gotHighlights,
    TResult? Function(HighlightsFailure highlightsFailure)?
        failedToGetHighlights,
  }) {
    return failedToGetHighlights?.call(highlightsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingHighlights,
    TResult Function(HighlightsEntity highlightsEntity)? gotHighlights,
    TResult Function(HighlightsFailure highlightsFailure)?
        failedToGetHighlights,
    required TResult orElse(),
  }) {
    if (failedToGetHighlights != null) {
      return failedToGetHighlights(highlightsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingHighlights value) gettingHighlights,
    required TResult Function(_GotHighlights value) gotHighlights,
    required TResult Function(_FailedToGetHighlights value)
        failedToGetHighlights,
  }) {
    return failedToGetHighlights(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingHighlights value)? gettingHighlights,
    TResult? Function(_GotHighlights value)? gotHighlights,
    TResult? Function(_FailedToGetHighlights value)? failedToGetHighlights,
  }) {
    return failedToGetHighlights?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingHighlights value)? gettingHighlights,
    TResult Function(_GotHighlights value)? gotHighlights,
    TResult Function(_FailedToGetHighlights value)? failedToGetHighlights,
    required TResult orElse(),
  }) {
    if (failedToGetHighlights != null) {
      return failedToGetHighlights(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetHighlights implements HighlightsState {
  const factory _FailedToGetHighlights(
          {required final HighlightsFailure highlightsFailure}) =
      _$FailedToGetHighlightsImpl;

  HighlightsFailure get highlightsFailure;

  /// Create a copy of HighlightsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToGetHighlightsImplCopyWith<_$FailedToGetHighlightsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
