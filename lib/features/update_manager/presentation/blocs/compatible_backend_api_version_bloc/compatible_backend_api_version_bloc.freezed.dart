// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'compatible_backend_api_version_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompatibleBackendApiVersionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkVersion,
    required TResult Function(VersionEntity versionEntity) checkCompatibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkVersion,
    TResult? Function(VersionEntity versionEntity)? checkCompatibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkVersion,
    TResult Function(VersionEntity versionEntity)? checkCompatibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckVersion value) checkVersion,
    required TResult Function(_CheckCompatibility value) checkCompatibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckVersion value)? checkVersion,
    TResult? Function(_CheckCompatibility value)? checkCompatibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckVersion value)? checkVersion,
    TResult Function(_CheckCompatibility value)? checkCompatibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompatibleBackendApiVersionEventCopyWith<$Res> {
  factory $CompatibleBackendApiVersionEventCopyWith(
          CompatibleBackendApiVersionEvent value,
          $Res Function(CompatibleBackendApiVersionEvent) then) =
      _$CompatibleBackendApiVersionEventCopyWithImpl<$Res,
          CompatibleBackendApiVersionEvent>;
}

/// @nodoc
class _$CompatibleBackendApiVersionEventCopyWithImpl<$Res,
        $Val extends CompatibleBackendApiVersionEvent>
    implements $CompatibleBackendApiVersionEventCopyWith<$Res> {
  _$CompatibleBackendApiVersionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompatibleBackendApiVersionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckVersionImplCopyWith<$Res> {
  factory _$$CheckVersionImplCopyWith(
          _$CheckVersionImpl value, $Res Function(_$CheckVersionImpl) then) =
      __$$CheckVersionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckVersionImplCopyWithImpl<$Res>
    extends _$CompatibleBackendApiVersionEventCopyWithImpl<$Res,
        _$CheckVersionImpl> implements _$$CheckVersionImplCopyWith<$Res> {
  __$$CheckVersionImplCopyWithImpl(
      _$CheckVersionImpl _value, $Res Function(_$CheckVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompatibleBackendApiVersionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckVersionImpl implements _CheckVersion {
  const _$CheckVersionImpl();

  @override
  String toString() {
    return 'CompatibleBackendApiVersionEvent.checkVersion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckVersionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkVersion,
    required TResult Function(VersionEntity versionEntity) checkCompatibility,
  }) {
    return checkVersion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkVersion,
    TResult? Function(VersionEntity versionEntity)? checkCompatibility,
  }) {
    return checkVersion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkVersion,
    TResult Function(VersionEntity versionEntity)? checkCompatibility,
    required TResult orElse(),
  }) {
    if (checkVersion != null) {
      return checkVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckVersion value) checkVersion,
    required TResult Function(_CheckCompatibility value) checkCompatibility,
  }) {
    return checkVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckVersion value)? checkVersion,
    TResult? Function(_CheckCompatibility value)? checkCompatibility,
  }) {
    return checkVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckVersion value)? checkVersion,
    TResult Function(_CheckCompatibility value)? checkCompatibility,
    required TResult orElse(),
  }) {
    if (checkVersion != null) {
      return checkVersion(this);
    }
    return orElse();
  }
}

abstract class _CheckVersion implements CompatibleBackendApiVersionEvent {
  const factory _CheckVersion() = _$CheckVersionImpl;
}

/// @nodoc
abstract class _$$CheckCompatibilityImplCopyWith<$Res> {
  factory _$$CheckCompatibilityImplCopyWith(_$CheckCompatibilityImpl value,
          $Res Function(_$CheckCompatibilityImpl) then) =
      __$$CheckCompatibilityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VersionEntity versionEntity});
}

/// @nodoc
class __$$CheckCompatibilityImplCopyWithImpl<$Res>
    extends _$CompatibleBackendApiVersionEventCopyWithImpl<$Res,
        _$CheckCompatibilityImpl>
    implements _$$CheckCompatibilityImplCopyWith<$Res> {
  __$$CheckCompatibilityImplCopyWithImpl(_$CheckCompatibilityImpl _value,
      $Res Function(_$CheckCompatibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompatibleBackendApiVersionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? versionEntity = null,
  }) {
    return _then(_$CheckCompatibilityImpl(
      versionEntity: null == versionEntity
          ? _value.versionEntity
          : versionEntity // ignore: cast_nullable_to_non_nullable
              as VersionEntity,
    ));
  }
}

/// @nodoc

class _$CheckCompatibilityImpl implements _CheckCompatibility {
  const _$CheckCompatibilityImpl({required this.versionEntity});

  @override
  final VersionEntity versionEntity;

  @override
  String toString() {
    return 'CompatibleBackendApiVersionEvent.checkCompatibility(versionEntity: $versionEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckCompatibilityImpl &&
            (identical(other.versionEntity, versionEntity) ||
                other.versionEntity == versionEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, versionEntity);

  /// Create a copy of CompatibleBackendApiVersionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckCompatibilityImplCopyWith<_$CheckCompatibilityImpl> get copyWith =>
      __$$CheckCompatibilityImplCopyWithImpl<_$CheckCompatibilityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkVersion,
    required TResult Function(VersionEntity versionEntity) checkCompatibility,
  }) {
    return checkCompatibility(versionEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkVersion,
    TResult? Function(VersionEntity versionEntity)? checkCompatibility,
  }) {
    return checkCompatibility?.call(versionEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkVersion,
    TResult Function(VersionEntity versionEntity)? checkCompatibility,
    required TResult orElse(),
  }) {
    if (checkCompatibility != null) {
      return checkCompatibility(versionEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckVersion value) checkVersion,
    required TResult Function(_CheckCompatibility value) checkCompatibility,
  }) {
    return checkCompatibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckVersion value)? checkVersion,
    TResult? Function(_CheckCompatibility value)? checkCompatibility,
  }) {
    return checkCompatibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckVersion value)? checkVersion,
    TResult Function(_CheckCompatibility value)? checkCompatibility,
    required TResult orElse(),
  }) {
    if (checkCompatibility != null) {
      return checkCompatibility(this);
    }
    return orElse();
  }
}

abstract class _CheckCompatibility implements CompatibleBackendApiVersionEvent {
  const factory _CheckCompatibility(
      {required final VersionEntity versionEntity}) = _$CheckCompatibilityImpl;

  VersionEntity get versionEntity;

  /// Create a copy of CompatibleBackendApiVersionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckCompatibilityImplCopyWith<_$CheckCompatibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompatibleBackendApiVersionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() versionCompatible,
    required TResult Function() versionIncompatible,
    required TResult Function(ApiVersionFailure apiVersionFailure)
        failedToCheckVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? versionCompatible,
    TResult? Function()? versionIncompatible,
    TResult? Function(ApiVersionFailure apiVersionFailure)?
        failedToCheckVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? versionCompatible,
    TResult Function()? versionIncompatible,
    TResult Function(ApiVersionFailure apiVersionFailure)? failedToCheckVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingVersion value) checkingVersion,
    required TResult Function(_VersionCompatible value) versionCompatible,
    required TResult Function(_VersionIncompatible value) versionIncompatible,
    required TResult Function(_FailedToCheckVersion value) failedToCheckVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingVersion value)? checkingVersion,
    TResult? Function(_VersionCompatible value)? versionCompatible,
    TResult? Function(_VersionIncompatible value)? versionIncompatible,
    TResult? Function(_FailedToCheckVersion value)? failedToCheckVersion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingVersion value)? checkingVersion,
    TResult Function(_VersionCompatible value)? versionCompatible,
    TResult Function(_VersionIncompatible value)? versionIncompatible,
    TResult Function(_FailedToCheckVersion value)? failedToCheckVersion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompatibleBackendApiVersionStateCopyWith<$Res> {
  factory $CompatibleBackendApiVersionStateCopyWith(
          CompatibleBackendApiVersionState value,
          $Res Function(CompatibleBackendApiVersionState) then) =
      _$CompatibleBackendApiVersionStateCopyWithImpl<$Res,
          CompatibleBackendApiVersionState>;
}

/// @nodoc
class _$CompatibleBackendApiVersionStateCopyWithImpl<$Res,
        $Val extends CompatibleBackendApiVersionState>
    implements $CompatibleBackendApiVersionStateCopyWith<$Res> {
  _$CompatibleBackendApiVersionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompatibleBackendApiVersionState
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
    extends _$CompatibleBackendApiVersionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompatibleBackendApiVersionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CompatibleBackendApiVersionState.initial()';
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
    required TResult Function() checkingVersion,
    required TResult Function() versionCompatible,
    required TResult Function() versionIncompatible,
    required TResult Function(ApiVersionFailure apiVersionFailure)
        failedToCheckVersion,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? versionCompatible,
    TResult? Function()? versionIncompatible,
    TResult? Function(ApiVersionFailure apiVersionFailure)?
        failedToCheckVersion,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? versionCompatible,
    TResult Function()? versionIncompatible,
    TResult Function(ApiVersionFailure apiVersionFailure)? failedToCheckVersion,
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
    required TResult Function(_CheckingVersion value) checkingVersion,
    required TResult Function(_VersionCompatible value) versionCompatible,
    required TResult Function(_VersionIncompatible value) versionIncompatible,
    required TResult Function(_FailedToCheckVersion value) failedToCheckVersion,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingVersion value)? checkingVersion,
    TResult? Function(_VersionCompatible value)? versionCompatible,
    TResult? Function(_VersionIncompatible value)? versionIncompatible,
    TResult? Function(_FailedToCheckVersion value)? failedToCheckVersion,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingVersion value)? checkingVersion,
    TResult Function(_VersionCompatible value)? versionCompatible,
    TResult Function(_VersionIncompatible value)? versionIncompatible,
    TResult Function(_FailedToCheckVersion value)? failedToCheckVersion,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CompatibleBackendApiVersionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckingVersionImplCopyWith<$Res> {
  factory _$$CheckingVersionImplCopyWith(_$CheckingVersionImpl value,
          $Res Function(_$CheckingVersionImpl) then) =
      __$$CheckingVersionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingVersionImplCopyWithImpl<$Res>
    extends _$CompatibleBackendApiVersionStateCopyWithImpl<$Res,
        _$CheckingVersionImpl> implements _$$CheckingVersionImplCopyWith<$Res> {
  __$$CheckingVersionImplCopyWithImpl(
      _$CheckingVersionImpl _value, $Res Function(_$CheckingVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompatibleBackendApiVersionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckingVersionImpl implements _CheckingVersion {
  const _$CheckingVersionImpl();

  @override
  String toString() {
    return 'CompatibleBackendApiVersionState.checkingVersion()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingVersionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() versionCompatible,
    required TResult Function() versionIncompatible,
    required TResult Function(ApiVersionFailure apiVersionFailure)
        failedToCheckVersion,
  }) {
    return checkingVersion();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? versionCompatible,
    TResult? Function()? versionIncompatible,
    TResult? Function(ApiVersionFailure apiVersionFailure)?
        failedToCheckVersion,
  }) {
    return checkingVersion?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? versionCompatible,
    TResult Function()? versionIncompatible,
    TResult Function(ApiVersionFailure apiVersionFailure)? failedToCheckVersion,
    required TResult orElse(),
  }) {
    if (checkingVersion != null) {
      return checkingVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingVersion value) checkingVersion,
    required TResult Function(_VersionCompatible value) versionCompatible,
    required TResult Function(_VersionIncompatible value) versionIncompatible,
    required TResult Function(_FailedToCheckVersion value) failedToCheckVersion,
  }) {
    return checkingVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingVersion value)? checkingVersion,
    TResult? Function(_VersionCompatible value)? versionCompatible,
    TResult? Function(_VersionIncompatible value)? versionIncompatible,
    TResult? Function(_FailedToCheckVersion value)? failedToCheckVersion,
  }) {
    return checkingVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingVersion value)? checkingVersion,
    TResult Function(_VersionCompatible value)? versionCompatible,
    TResult Function(_VersionIncompatible value)? versionIncompatible,
    TResult Function(_FailedToCheckVersion value)? failedToCheckVersion,
    required TResult orElse(),
  }) {
    if (checkingVersion != null) {
      return checkingVersion(this);
    }
    return orElse();
  }
}

abstract class _CheckingVersion implements CompatibleBackendApiVersionState {
  const factory _CheckingVersion() = _$CheckingVersionImpl;
}

/// @nodoc
abstract class _$$VersionCompatibleImplCopyWith<$Res> {
  factory _$$VersionCompatibleImplCopyWith(_$VersionCompatibleImpl value,
          $Res Function(_$VersionCompatibleImpl) then) =
      __$$VersionCompatibleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VersionCompatibleImplCopyWithImpl<$Res>
    extends _$CompatibleBackendApiVersionStateCopyWithImpl<$Res,
        _$VersionCompatibleImpl>
    implements _$$VersionCompatibleImplCopyWith<$Res> {
  __$$VersionCompatibleImplCopyWithImpl(_$VersionCompatibleImpl _value,
      $Res Function(_$VersionCompatibleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompatibleBackendApiVersionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VersionCompatibleImpl implements _VersionCompatible {
  const _$VersionCompatibleImpl();

  @override
  String toString() {
    return 'CompatibleBackendApiVersionState.versionCompatible()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VersionCompatibleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() versionCompatible,
    required TResult Function() versionIncompatible,
    required TResult Function(ApiVersionFailure apiVersionFailure)
        failedToCheckVersion,
  }) {
    return versionCompatible();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? versionCompatible,
    TResult? Function()? versionIncompatible,
    TResult? Function(ApiVersionFailure apiVersionFailure)?
        failedToCheckVersion,
  }) {
    return versionCompatible?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? versionCompatible,
    TResult Function()? versionIncompatible,
    TResult Function(ApiVersionFailure apiVersionFailure)? failedToCheckVersion,
    required TResult orElse(),
  }) {
    if (versionCompatible != null) {
      return versionCompatible();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingVersion value) checkingVersion,
    required TResult Function(_VersionCompatible value) versionCompatible,
    required TResult Function(_VersionIncompatible value) versionIncompatible,
    required TResult Function(_FailedToCheckVersion value) failedToCheckVersion,
  }) {
    return versionCompatible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingVersion value)? checkingVersion,
    TResult? Function(_VersionCompatible value)? versionCompatible,
    TResult? Function(_VersionIncompatible value)? versionIncompatible,
    TResult? Function(_FailedToCheckVersion value)? failedToCheckVersion,
  }) {
    return versionCompatible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingVersion value)? checkingVersion,
    TResult Function(_VersionCompatible value)? versionCompatible,
    TResult Function(_VersionIncompatible value)? versionIncompatible,
    TResult Function(_FailedToCheckVersion value)? failedToCheckVersion,
    required TResult orElse(),
  }) {
    if (versionCompatible != null) {
      return versionCompatible(this);
    }
    return orElse();
  }
}

abstract class _VersionCompatible implements CompatibleBackendApiVersionState {
  const factory _VersionCompatible() = _$VersionCompatibleImpl;
}

/// @nodoc
abstract class _$$VersionIncompatibleImplCopyWith<$Res> {
  factory _$$VersionIncompatibleImplCopyWith(_$VersionIncompatibleImpl value,
          $Res Function(_$VersionIncompatibleImpl) then) =
      __$$VersionIncompatibleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VersionIncompatibleImplCopyWithImpl<$Res>
    extends _$CompatibleBackendApiVersionStateCopyWithImpl<$Res,
        _$VersionIncompatibleImpl>
    implements _$$VersionIncompatibleImplCopyWith<$Res> {
  __$$VersionIncompatibleImplCopyWithImpl(_$VersionIncompatibleImpl _value,
      $Res Function(_$VersionIncompatibleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompatibleBackendApiVersionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VersionIncompatibleImpl implements _VersionIncompatible {
  const _$VersionIncompatibleImpl();

  @override
  String toString() {
    return 'CompatibleBackendApiVersionState.versionIncompatible()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionIncompatibleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() versionCompatible,
    required TResult Function() versionIncompatible,
    required TResult Function(ApiVersionFailure apiVersionFailure)
        failedToCheckVersion,
  }) {
    return versionIncompatible();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? versionCompatible,
    TResult? Function()? versionIncompatible,
    TResult? Function(ApiVersionFailure apiVersionFailure)?
        failedToCheckVersion,
  }) {
    return versionIncompatible?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? versionCompatible,
    TResult Function()? versionIncompatible,
    TResult Function(ApiVersionFailure apiVersionFailure)? failedToCheckVersion,
    required TResult orElse(),
  }) {
    if (versionIncompatible != null) {
      return versionIncompatible();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingVersion value) checkingVersion,
    required TResult Function(_VersionCompatible value) versionCompatible,
    required TResult Function(_VersionIncompatible value) versionIncompatible,
    required TResult Function(_FailedToCheckVersion value) failedToCheckVersion,
  }) {
    return versionIncompatible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingVersion value)? checkingVersion,
    TResult? Function(_VersionCompatible value)? versionCompatible,
    TResult? Function(_VersionIncompatible value)? versionIncompatible,
    TResult? Function(_FailedToCheckVersion value)? failedToCheckVersion,
  }) {
    return versionIncompatible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingVersion value)? checkingVersion,
    TResult Function(_VersionCompatible value)? versionCompatible,
    TResult Function(_VersionIncompatible value)? versionIncompatible,
    TResult Function(_FailedToCheckVersion value)? failedToCheckVersion,
    required TResult orElse(),
  }) {
    if (versionIncompatible != null) {
      return versionIncompatible(this);
    }
    return orElse();
  }
}

abstract class _VersionIncompatible
    implements CompatibleBackendApiVersionState {
  const factory _VersionIncompatible() = _$VersionIncompatibleImpl;
}

/// @nodoc
abstract class _$$FailedToCheckVersionImplCopyWith<$Res> {
  factory _$$FailedToCheckVersionImplCopyWith(_$FailedToCheckVersionImpl value,
          $Res Function(_$FailedToCheckVersionImpl) then) =
      __$$FailedToCheckVersionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiVersionFailure apiVersionFailure});
}

/// @nodoc
class __$$FailedToCheckVersionImplCopyWithImpl<$Res>
    extends _$CompatibleBackendApiVersionStateCopyWithImpl<$Res,
        _$FailedToCheckVersionImpl>
    implements _$$FailedToCheckVersionImplCopyWith<$Res> {
  __$$FailedToCheckVersionImplCopyWithImpl(_$FailedToCheckVersionImpl _value,
      $Res Function(_$FailedToCheckVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CompatibleBackendApiVersionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiVersionFailure = null,
  }) {
    return _then(_$FailedToCheckVersionImpl(
      apiVersionFailure: null == apiVersionFailure
          ? _value.apiVersionFailure
          : apiVersionFailure // ignore: cast_nullable_to_non_nullable
              as ApiVersionFailure,
    ));
  }
}

/// @nodoc

class _$FailedToCheckVersionImpl implements _FailedToCheckVersion {
  const _$FailedToCheckVersionImpl({required this.apiVersionFailure});

  @override
  final ApiVersionFailure apiVersionFailure;

  @override
  String toString() {
    return 'CompatibleBackendApiVersionState.failedToCheckVersion(apiVersionFailure: $apiVersionFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToCheckVersionImpl &&
            (identical(other.apiVersionFailure, apiVersionFailure) ||
                other.apiVersionFailure == apiVersionFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiVersionFailure);

  /// Create a copy of CompatibleBackendApiVersionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToCheckVersionImplCopyWith<_$FailedToCheckVersionImpl>
      get copyWith =>
          __$$FailedToCheckVersionImplCopyWithImpl<_$FailedToCheckVersionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingVersion,
    required TResult Function() versionCompatible,
    required TResult Function() versionIncompatible,
    required TResult Function(ApiVersionFailure apiVersionFailure)
        failedToCheckVersion,
  }) {
    return failedToCheckVersion(apiVersionFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingVersion,
    TResult? Function()? versionCompatible,
    TResult? Function()? versionIncompatible,
    TResult? Function(ApiVersionFailure apiVersionFailure)?
        failedToCheckVersion,
  }) {
    return failedToCheckVersion?.call(apiVersionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingVersion,
    TResult Function()? versionCompatible,
    TResult Function()? versionIncompatible,
    TResult Function(ApiVersionFailure apiVersionFailure)? failedToCheckVersion,
    required TResult orElse(),
  }) {
    if (failedToCheckVersion != null) {
      return failedToCheckVersion(apiVersionFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingVersion value) checkingVersion,
    required TResult Function(_VersionCompatible value) versionCompatible,
    required TResult Function(_VersionIncompatible value) versionIncompatible,
    required TResult Function(_FailedToCheckVersion value) failedToCheckVersion,
  }) {
    return failedToCheckVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingVersion value)? checkingVersion,
    TResult? Function(_VersionCompatible value)? versionCompatible,
    TResult? Function(_VersionIncompatible value)? versionIncompatible,
    TResult? Function(_FailedToCheckVersion value)? failedToCheckVersion,
  }) {
    return failedToCheckVersion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingVersion value)? checkingVersion,
    TResult Function(_VersionCompatible value)? versionCompatible,
    TResult Function(_VersionIncompatible value)? versionIncompatible,
    TResult Function(_FailedToCheckVersion value)? failedToCheckVersion,
    required TResult orElse(),
  }) {
    if (failedToCheckVersion != null) {
      return failedToCheckVersion(this);
    }
    return orElse();
  }
}

abstract class _FailedToCheckVersion
    implements CompatibleBackendApiVersionState {
  const factory _FailedToCheckVersion(
          {required final ApiVersionFailure apiVersionFailure}) =
      _$FailedToCheckVersionImpl;

  ApiVersionFailure get apiVersionFailure;

  /// Create a copy of CompatibleBackendApiVersionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToCheckVersionImplCopyWith<_$FailedToCheckVersionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
