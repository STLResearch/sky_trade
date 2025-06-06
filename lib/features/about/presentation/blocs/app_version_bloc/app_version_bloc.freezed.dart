// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppVersionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVersion value) getVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetVersion value)? getVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVersion value)? getVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionEventCopyWith<$Res> {
  factory $AppVersionEventCopyWith(
          AppVersionEvent value, $Res Function(AppVersionEvent) then) =
      _$AppVersionEventCopyWithImpl<$Res, AppVersionEvent>;
}

/// @nodoc
class _$AppVersionEventCopyWithImpl<$Res, $Val extends AppVersionEvent>
    implements $AppVersionEventCopyWith<$Res> {
  _$AppVersionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppVersionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetVersionImplCopyWith<$Res> {
  factory _$$GetVersionImplCopyWith(
          _$GetVersionImpl value, $Res Function(_$GetVersionImpl) then) =
      __$$GetVersionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetVersionImplCopyWithImpl<$Res>
    extends _$AppVersionEventCopyWithImpl<$Res, _$GetVersionImpl>
    implements _$$GetVersionImplCopyWith<$Res> {
  __$$GetVersionImplCopyWithImpl(
      _$GetVersionImpl _value, $Res Function(_$GetVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppVersionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetVersionImpl implements _GetVersion {
  const _$GetVersionImpl();

  @override
  String toString() {
    return 'AppVersionEvent.getVersion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetVersionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getVersion,
  }) {
    return getVersion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getVersion,
  }) {
    return getVersion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getVersion,
    required TResult orElse(),
  }) {
    if (getVersion != null) {
      return getVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetVersion value) getVersion,
  }) {
    return getVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetVersion value)? getVersion,
  }) {
    return getVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetVersion value)? getVersion,
    required TResult orElse(),
  }) {
    if (getVersion != null) {
      return getVersion(this);
    }
    return orElse();
  }
}

abstract class _GetVersion implements AppVersionEvent {
  const factory _GetVersion() = _$GetVersionImpl;
}

/// @nodoc
mixin _$AppVersionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingVersion,
    required TResult Function(AppVersionEntity appVersionEntity) gotVersion,
    required TResult Function(AppVersionFailure appVersionFailure)
        failedToGetVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingVersion,
    TResult? Function(AppVersionEntity appVersionEntity)? gotVersion,
    TResult? Function(AppVersionFailure appVersionFailure)? failedToGetVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingVersion,
    TResult Function(AppVersionEntity appVersionEntity)? gotVersion,
    TResult Function(AppVersionFailure appVersionFailure)? failedToGetVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingVersion value) gettingVersion,
    required TResult Function(_GotVersion value) gotVersion,
    required TResult Function(_FailedToGetVersion value) failedToGetVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingVersion value)? gettingVersion,
    TResult? Function(_GotVersion value)? gotVersion,
    TResult? Function(_FailedToGetVersion value)? failedToGetVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingVersion value)? gettingVersion,
    TResult Function(_GotVersion value)? gotVersion,
    TResult Function(_FailedToGetVersion value)? failedToGetVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionStateCopyWith<$Res> {
  factory $AppVersionStateCopyWith(
          AppVersionState value, $Res Function(AppVersionState) then) =
      _$AppVersionStateCopyWithImpl<$Res, AppVersionState>;
}

/// @nodoc
class _$AppVersionStateCopyWithImpl<$Res, $Val extends AppVersionState>
    implements $AppVersionStateCopyWith<$Res> {
  _$AppVersionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppVersionState
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
    extends _$AppVersionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppVersionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppVersionState.initial()';
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
    required TResult Function() gettingVersion,
    required TResult Function(AppVersionEntity appVersionEntity) gotVersion,
    required TResult Function(AppVersionFailure appVersionFailure)
        failedToGetVersion,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingVersion,
    TResult? Function(AppVersionEntity appVersionEntity)? gotVersion,
    TResult? Function(AppVersionFailure appVersionFailure)? failedToGetVersion,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingVersion,
    TResult Function(AppVersionEntity appVersionEntity)? gotVersion,
    TResult Function(AppVersionFailure appVersionFailure)? failedToGetVersion,
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
    required TResult Function(_GettingVersion value) gettingVersion,
    required TResult Function(_GotVersion value) gotVersion,
    required TResult Function(_FailedToGetVersion value) failedToGetVersion,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingVersion value)? gettingVersion,
    TResult? Function(_GotVersion value)? gotVersion,
    TResult? Function(_FailedToGetVersion value)? failedToGetVersion,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingVersion value)? gettingVersion,
    TResult Function(_GotVersion value)? gotVersion,
    TResult Function(_FailedToGetVersion value)? failedToGetVersion,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppVersionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingVersionImplCopyWith<$Res> {
  factory _$$GettingVersionImplCopyWith(_$GettingVersionImpl value,
          $Res Function(_$GettingVersionImpl) then) =
      __$$GettingVersionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingVersionImplCopyWithImpl<$Res>
    extends _$AppVersionStateCopyWithImpl<$Res, _$GettingVersionImpl>
    implements _$$GettingVersionImplCopyWith<$Res> {
  __$$GettingVersionImplCopyWithImpl(
      _$GettingVersionImpl _value, $Res Function(_$GettingVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppVersionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingVersionImpl implements _GettingVersion {
  const _$GettingVersionImpl();

  @override
  String toString() {
    return 'AppVersionState.gettingVersion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingVersionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingVersion,
    required TResult Function(AppVersionEntity appVersionEntity) gotVersion,
    required TResult Function(AppVersionFailure appVersionFailure)
        failedToGetVersion,
  }) {
    return gettingVersion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingVersion,
    TResult? Function(AppVersionEntity appVersionEntity)? gotVersion,
    TResult? Function(AppVersionFailure appVersionFailure)? failedToGetVersion,
  }) {
    return gettingVersion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingVersion,
    TResult Function(AppVersionEntity appVersionEntity)? gotVersion,
    TResult Function(AppVersionFailure appVersionFailure)? failedToGetVersion,
    required TResult orElse(),
  }) {
    if (gettingVersion != null) {
      return gettingVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingVersion value) gettingVersion,
    required TResult Function(_GotVersion value) gotVersion,
    required TResult Function(_FailedToGetVersion value) failedToGetVersion,
  }) {
    return gettingVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingVersion value)? gettingVersion,
    TResult? Function(_GotVersion value)? gotVersion,
    TResult? Function(_FailedToGetVersion value)? failedToGetVersion,
  }) {
    return gettingVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingVersion value)? gettingVersion,
    TResult Function(_GotVersion value)? gotVersion,
    TResult Function(_FailedToGetVersion value)? failedToGetVersion,
    required TResult orElse(),
  }) {
    if (gettingVersion != null) {
      return gettingVersion(this);
    }
    return orElse();
  }
}

abstract class _GettingVersion implements AppVersionState {
  const factory _GettingVersion() = _$GettingVersionImpl;
}

/// @nodoc
abstract class _$$GotVersionImplCopyWith<$Res> {
  factory _$$GotVersionImplCopyWith(
          _$GotVersionImpl value, $Res Function(_$GotVersionImpl) then) =
      __$$GotVersionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppVersionEntity appVersionEntity});
}

/// @nodoc
class __$$GotVersionImplCopyWithImpl<$Res>
    extends _$AppVersionStateCopyWithImpl<$Res, _$GotVersionImpl>
    implements _$$GotVersionImplCopyWith<$Res> {
  __$$GotVersionImplCopyWithImpl(
      _$GotVersionImpl _value, $Res Function(_$GotVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppVersionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersionEntity = null,
  }) {
    return _then(_$GotVersionImpl(
      appVersionEntity: null == appVersionEntity
          ? _value.appVersionEntity
          : appVersionEntity // ignore: cast_nullable_to_non_nullable
              as AppVersionEntity,
    ));
  }
}

/// @nodoc

class _$GotVersionImpl implements _GotVersion {
  const _$GotVersionImpl({required this.appVersionEntity});

  @override
  final AppVersionEntity appVersionEntity;

  @override
  String toString() {
    return 'AppVersionState.gotVersion(appVersionEntity: $appVersionEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotVersionImpl &&
            (identical(other.appVersionEntity, appVersionEntity) ||
                other.appVersionEntity == appVersionEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appVersionEntity);

  /// Create a copy of AppVersionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotVersionImplCopyWith<_$GotVersionImpl> get copyWith =>
      __$$GotVersionImplCopyWithImpl<_$GotVersionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingVersion,
    required TResult Function(AppVersionEntity appVersionEntity) gotVersion,
    required TResult Function(AppVersionFailure appVersionFailure)
        failedToGetVersion,
  }) {
    return gotVersion(appVersionEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingVersion,
    TResult? Function(AppVersionEntity appVersionEntity)? gotVersion,
    TResult? Function(AppVersionFailure appVersionFailure)? failedToGetVersion,
  }) {
    return gotVersion?.call(appVersionEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingVersion,
    TResult Function(AppVersionEntity appVersionEntity)? gotVersion,
    TResult Function(AppVersionFailure appVersionFailure)? failedToGetVersion,
    required TResult orElse(),
  }) {
    if (gotVersion != null) {
      return gotVersion(appVersionEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingVersion value) gettingVersion,
    required TResult Function(_GotVersion value) gotVersion,
    required TResult Function(_FailedToGetVersion value) failedToGetVersion,
  }) {
    return gotVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingVersion value)? gettingVersion,
    TResult? Function(_GotVersion value)? gotVersion,
    TResult? Function(_FailedToGetVersion value)? failedToGetVersion,
  }) {
    return gotVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingVersion value)? gettingVersion,
    TResult Function(_GotVersion value)? gotVersion,
    TResult Function(_FailedToGetVersion value)? failedToGetVersion,
    required TResult orElse(),
  }) {
    if (gotVersion != null) {
      return gotVersion(this);
    }
    return orElse();
  }
}

abstract class _GotVersion implements AppVersionState {
  const factory _GotVersion(
      {required final AppVersionEntity appVersionEntity}) = _$GotVersionImpl;

  AppVersionEntity get appVersionEntity;

  /// Create a copy of AppVersionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotVersionImplCopyWith<_$GotVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetVersionImplCopyWith<$Res> {
  factory _$$FailedToGetVersionImplCopyWith(_$FailedToGetVersionImpl value,
          $Res Function(_$FailedToGetVersionImpl) then) =
      __$$FailedToGetVersionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppVersionFailure appVersionFailure});
}

/// @nodoc
class __$$FailedToGetVersionImplCopyWithImpl<$Res>
    extends _$AppVersionStateCopyWithImpl<$Res, _$FailedToGetVersionImpl>
    implements _$$FailedToGetVersionImplCopyWith<$Res> {
  __$$FailedToGetVersionImplCopyWithImpl(_$FailedToGetVersionImpl _value,
      $Res Function(_$FailedToGetVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppVersionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersionFailure = null,
  }) {
    return _then(_$FailedToGetVersionImpl(
      appVersionFailure: null == appVersionFailure
          ? _value.appVersionFailure
          : appVersionFailure // ignore: cast_nullable_to_non_nullable
              as AppVersionFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetVersionImpl implements _FailedToGetVersion {
  const _$FailedToGetVersionImpl({required this.appVersionFailure});

  @override
  final AppVersionFailure appVersionFailure;

  @override
  String toString() {
    return 'AppVersionState.failedToGetVersion(appVersionFailure: $appVersionFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetVersionImpl &&
            (identical(other.appVersionFailure, appVersionFailure) ||
                other.appVersionFailure == appVersionFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appVersionFailure);

  /// Create a copy of AppVersionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetVersionImplCopyWith<_$FailedToGetVersionImpl> get copyWith =>
      __$$FailedToGetVersionImplCopyWithImpl<_$FailedToGetVersionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingVersion,
    required TResult Function(AppVersionEntity appVersionEntity) gotVersion,
    required TResult Function(AppVersionFailure appVersionFailure)
        failedToGetVersion,
  }) {
    return failedToGetVersion(appVersionFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingVersion,
    TResult? Function(AppVersionEntity appVersionEntity)? gotVersion,
    TResult? Function(AppVersionFailure appVersionFailure)? failedToGetVersion,
  }) {
    return failedToGetVersion?.call(appVersionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingVersion,
    TResult Function(AppVersionEntity appVersionEntity)? gotVersion,
    TResult Function(AppVersionFailure appVersionFailure)? failedToGetVersion,
    required TResult orElse(),
  }) {
    if (failedToGetVersion != null) {
      return failedToGetVersion(appVersionFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingVersion value) gettingVersion,
    required TResult Function(_GotVersion value) gotVersion,
    required TResult Function(_FailedToGetVersion value) failedToGetVersion,
  }) {
    return failedToGetVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingVersion value)? gettingVersion,
    TResult? Function(_GotVersion value)? gotVersion,
    TResult? Function(_FailedToGetVersion value)? failedToGetVersion,
  }) {
    return failedToGetVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingVersion value)? gettingVersion,
    TResult Function(_GotVersion value)? gotVersion,
    TResult Function(_FailedToGetVersion value)? failedToGetVersion,
    required TResult orElse(),
  }) {
    if (failedToGetVersion != null) {
      return failedToGetVersion(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetVersion implements AppVersionState {
  const factory _FailedToGetVersion(
          {required final AppVersionFailure appVersionFailure}) =
      _$FailedToGetVersionImpl;

  AppVersionFailure get appVersionFailure;

  /// Create a copy of AppVersionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToGetVersionImplCopyWith<_$FailedToGetVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
