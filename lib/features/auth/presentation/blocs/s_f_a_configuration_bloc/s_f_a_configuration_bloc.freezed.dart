// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's_f_a_configuration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SFAConfigurationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() configure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? configure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? configure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Configure value) configure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Configure value)? configure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Configure value)? configure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SFAConfigurationEventCopyWith<$Res> {
  factory $SFAConfigurationEventCopyWith(SFAConfigurationEvent value,
          $Res Function(SFAConfigurationEvent) then) =
      _$SFAConfigurationEventCopyWithImpl<$Res, SFAConfigurationEvent>;
}

/// @nodoc
class _$SFAConfigurationEventCopyWithImpl<$Res,
        $Val extends SFAConfigurationEvent>
    implements $SFAConfigurationEventCopyWith<$Res> {
  _$SFAConfigurationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConfigureImplCopyWith<$Res> {
  factory _$$ConfigureImplCopyWith(
          _$ConfigureImpl value, $Res Function(_$ConfigureImpl) then) =
      __$$ConfigureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfigureImplCopyWithImpl<$Res>
    extends _$SFAConfigurationEventCopyWithImpl<$Res, _$ConfigureImpl>
    implements _$$ConfigureImplCopyWith<$Res> {
  __$$ConfigureImplCopyWithImpl(
      _$ConfigureImpl _value, $Res Function(_$ConfigureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfigureImpl implements _Configure {
  const _$ConfigureImpl();

  @override
  String toString() {
    return 'SFAConfigurationEvent.configure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfigureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() configure,
  }) {
    return configure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? configure,
  }) {
    return configure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? configure,
    required TResult orElse(),
  }) {
    if (configure != null) {
      return configure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Configure value) configure,
  }) {
    return configure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Configure value)? configure,
  }) {
    return configure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Configure value)? configure,
    required TResult orElse(),
  }) {
    if (configure != null) {
      return configure(this);
    }
    return orElse();
  }
}

abstract class _Configure implements SFAConfigurationEvent {
  const factory _Configure() = _$ConfigureImpl;
}

/// @nodoc
mixin _$SFAConfigurationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() configuring,
    required TResult Function() configured,
    required TResult Function(SFAConfigurationFailure sFAConfigurationFailure)
        failedToConfigure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? configuring,
    TResult? Function()? configured,
    TResult? Function(SFAConfigurationFailure sFAConfigurationFailure)?
        failedToConfigure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? configuring,
    TResult Function()? configured,
    TResult Function(SFAConfigurationFailure sFAConfigurationFailure)?
        failedToConfigure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Configuring value) configuring,
    required TResult Function(_Configured value) configured,
    required TResult Function(_FailedToConfigure value) failedToConfigure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Configuring value)? configuring,
    TResult? Function(_Configured value)? configured,
    TResult? Function(_FailedToConfigure value)? failedToConfigure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Configuring value)? configuring,
    TResult Function(_Configured value)? configured,
    TResult Function(_FailedToConfigure value)? failedToConfigure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SFAConfigurationStateCopyWith<$Res> {
  factory $SFAConfigurationStateCopyWith(SFAConfigurationState value,
          $Res Function(SFAConfigurationState) then) =
      _$SFAConfigurationStateCopyWithImpl<$Res, SFAConfigurationState>;
}

/// @nodoc
class _$SFAConfigurationStateCopyWithImpl<$Res,
        $Val extends SFAConfigurationState>
    implements $SFAConfigurationStateCopyWith<$Res> {
  _$SFAConfigurationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SFAConfigurationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SFAConfigurationState.initial()';
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
    required TResult Function() configuring,
    required TResult Function() configured,
    required TResult Function(SFAConfigurationFailure sFAConfigurationFailure)
        failedToConfigure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? configuring,
    TResult? Function()? configured,
    TResult? Function(SFAConfigurationFailure sFAConfigurationFailure)?
        failedToConfigure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? configuring,
    TResult Function()? configured,
    TResult Function(SFAConfigurationFailure sFAConfigurationFailure)?
        failedToConfigure,
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
    required TResult Function(_Configuring value) configuring,
    required TResult Function(_Configured value) configured,
    required TResult Function(_FailedToConfigure value) failedToConfigure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Configuring value)? configuring,
    TResult? Function(_Configured value)? configured,
    TResult? Function(_FailedToConfigure value)? failedToConfigure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Configuring value)? configuring,
    TResult Function(_Configured value)? configured,
    TResult Function(_FailedToConfigure value)? failedToConfigure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SFAConfigurationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ConfiguringImplCopyWith<$Res> {
  factory _$$ConfiguringImplCopyWith(
          _$ConfiguringImpl value, $Res Function(_$ConfiguringImpl) then) =
      __$$ConfiguringImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfiguringImplCopyWithImpl<$Res>
    extends _$SFAConfigurationStateCopyWithImpl<$Res, _$ConfiguringImpl>
    implements _$$ConfiguringImplCopyWith<$Res> {
  __$$ConfiguringImplCopyWithImpl(
      _$ConfiguringImpl _value, $Res Function(_$ConfiguringImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfiguringImpl implements _Configuring {
  const _$ConfiguringImpl();

  @override
  String toString() {
    return 'SFAConfigurationState.configuring()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfiguringImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() configuring,
    required TResult Function() configured,
    required TResult Function(SFAConfigurationFailure sFAConfigurationFailure)
        failedToConfigure,
  }) {
    return configuring();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? configuring,
    TResult? Function()? configured,
    TResult? Function(SFAConfigurationFailure sFAConfigurationFailure)?
        failedToConfigure,
  }) {
    return configuring?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? configuring,
    TResult Function()? configured,
    TResult Function(SFAConfigurationFailure sFAConfigurationFailure)?
        failedToConfigure,
    required TResult orElse(),
  }) {
    if (configuring != null) {
      return configuring();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Configuring value) configuring,
    required TResult Function(_Configured value) configured,
    required TResult Function(_FailedToConfigure value) failedToConfigure,
  }) {
    return configuring(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Configuring value)? configuring,
    TResult? Function(_Configured value)? configured,
    TResult? Function(_FailedToConfigure value)? failedToConfigure,
  }) {
    return configuring?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Configuring value)? configuring,
    TResult Function(_Configured value)? configured,
    TResult Function(_FailedToConfigure value)? failedToConfigure,
    required TResult orElse(),
  }) {
    if (configuring != null) {
      return configuring(this);
    }
    return orElse();
  }
}

abstract class _Configuring implements SFAConfigurationState {
  const factory _Configuring() = _$ConfiguringImpl;
}

/// @nodoc
abstract class _$$ConfiguredImplCopyWith<$Res> {
  factory _$$ConfiguredImplCopyWith(
          _$ConfiguredImpl value, $Res Function(_$ConfiguredImpl) then) =
      __$$ConfiguredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConfiguredImplCopyWithImpl<$Res>
    extends _$SFAConfigurationStateCopyWithImpl<$Res, _$ConfiguredImpl>
    implements _$$ConfiguredImplCopyWith<$Res> {
  __$$ConfiguredImplCopyWithImpl(
      _$ConfiguredImpl _value, $Res Function(_$ConfiguredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConfiguredImpl implements _Configured {
  const _$ConfiguredImpl();

  @override
  String toString() {
    return 'SFAConfigurationState.configured()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConfiguredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() configuring,
    required TResult Function() configured,
    required TResult Function(SFAConfigurationFailure sFAConfigurationFailure)
        failedToConfigure,
  }) {
    return configured();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? configuring,
    TResult? Function()? configured,
    TResult? Function(SFAConfigurationFailure sFAConfigurationFailure)?
        failedToConfigure,
  }) {
    return configured?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? configuring,
    TResult Function()? configured,
    TResult Function(SFAConfigurationFailure sFAConfigurationFailure)?
        failedToConfigure,
    required TResult orElse(),
  }) {
    if (configured != null) {
      return configured();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Configuring value) configuring,
    required TResult Function(_Configured value) configured,
    required TResult Function(_FailedToConfigure value) failedToConfigure,
  }) {
    return configured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Configuring value)? configuring,
    TResult? Function(_Configured value)? configured,
    TResult? Function(_FailedToConfigure value)? failedToConfigure,
  }) {
    return configured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Configuring value)? configuring,
    TResult Function(_Configured value)? configured,
    TResult Function(_FailedToConfigure value)? failedToConfigure,
    required TResult orElse(),
  }) {
    if (configured != null) {
      return configured(this);
    }
    return orElse();
  }
}

abstract class _Configured implements SFAConfigurationState {
  const factory _Configured() = _$ConfiguredImpl;
}

/// @nodoc
abstract class _$$FailedToConfigureImplCopyWith<$Res> {
  factory _$$FailedToConfigureImplCopyWith(_$FailedToConfigureImpl value,
          $Res Function(_$FailedToConfigureImpl) then) =
      __$$FailedToConfigureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SFAConfigurationFailure sFAConfigurationFailure});
}

/// @nodoc
class __$$FailedToConfigureImplCopyWithImpl<$Res>
    extends _$SFAConfigurationStateCopyWithImpl<$Res, _$FailedToConfigureImpl>
    implements _$$FailedToConfigureImplCopyWith<$Res> {
  __$$FailedToConfigureImplCopyWithImpl(_$FailedToConfigureImpl _value,
      $Res Function(_$FailedToConfigureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sFAConfigurationFailure = null,
  }) {
    return _then(_$FailedToConfigureImpl(
      sFAConfigurationFailure: null == sFAConfigurationFailure
          ? _value.sFAConfigurationFailure
          : sFAConfigurationFailure // ignore: cast_nullable_to_non_nullable
              as SFAConfigurationFailure,
    ));
  }
}

/// @nodoc

class _$FailedToConfigureImpl implements _FailedToConfigure {
  const _$FailedToConfigureImpl({required this.sFAConfigurationFailure});

  @override
  final SFAConfigurationFailure sFAConfigurationFailure;

  @override
  String toString() {
    return 'SFAConfigurationState.failedToConfigure(sFAConfigurationFailure: $sFAConfigurationFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToConfigureImpl &&
            (identical(
                    other.sFAConfigurationFailure, sFAConfigurationFailure) ||
                other.sFAConfigurationFailure == sFAConfigurationFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sFAConfigurationFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToConfigureImplCopyWith<_$FailedToConfigureImpl> get copyWith =>
      __$$FailedToConfigureImplCopyWithImpl<_$FailedToConfigureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() configuring,
    required TResult Function() configured,
    required TResult Function(SFAConfigurationFailure sFAConfigurationFailure)
        failedToConfigure,
  }) {
    return failedToConfigure(sFAConfigurationFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? configuring,
    TResult? Function()? configured,
    TResult? Function(SFAConfigurationFailure sFAConfigurationFailure)?
        failedToConfigure,
  }) {
    return failedToConfigure?.call(sFAConfigurationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? configuring,
    TResult Function()? configured,
    TResult Function(SFAConfigurationFailure sFAConfigurationFailure)?
        failedToConfigure,
    required TResult orElse(),
  }) {
    if (failedToConfigure != null) {
      return failedToConfigure(sFAConfigurationFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Configuring value) configuring,
    required TResult Function(_Configured value) configured,
    required TResult Function(_FailedToConfigure value) failedToConfigure,
  }) {
    return failedToConfigure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Configuring value)? configuring,
    TResult? Function(_Configured value)? configured,
    TResult? Function(_FailedToConfigure value)? failedToConfigure,
  }) {
    return failedToConfigure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Configuring value)? configuring,
    TResult Function(_Configured value)? configured,
    TResult Function(_FailedToConfigure value)? failedToConfigure,
    required TResult orElse(),
  }) {
    if (failedToConfigure != null) {
      return failedToConfigure(this);
    }
    return orElse();
  }
}

abstract class _FailedToConfigure implements SFAConfigurationState {
  const factory _FailedToConfigure(
          {required final SFAConfigurationFailure sFAConfigurationFailure}) =
      _$FailedToConfigureImpl;

  SFAConfigurationFailure get sFAConfigurationFailure;
  @JsonKey(ignore: true)
  _$$FailedToConfigureImplCopyWith<_$FailedToConfigureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
