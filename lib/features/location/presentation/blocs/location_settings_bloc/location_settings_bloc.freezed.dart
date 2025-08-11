// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationSettingsEvent {
  Settings get settings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings) openSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Settings settings)? openSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings)? openSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenSettings value) openSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenSettings value)? openSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenSettings value)? openSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LocationSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationSettingsEventCopyWith<LocationSettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSettingsEventCopyWith<$Res> {
  factory $LocationSettingsEventCopyWith(LocationSettingsEvent value,
          $Res Function(LocationSettingsEvent) then) =
      _$LocationSettingsEventCopyWithImpl<$Res, LocationSettingsEvent>;
  @useResult
  $Res call({Settings settings});
}

/// @nodoc
class _$LocationSettingsEventCopyWithImpl<$Res,
        $Val extends LocationSettingsEvent>
    implements $LocationSettingsEventCopyWith<$Res> {
  _$LocationSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenSettingsImplCopyWith<$Res>
    implements $LocationSettingsEventCopyWith<$Res> {
  factory _$$OpenSettingsImplCopyWith(
          _$OpenSettingsImpl value, $Res Function(_$OpenSettingsImpl) then) =
      __$$OpenSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Settings settings});
}

/// @nodoc
class __$$OpenSettingsImplCopyWithImpl<$Res>
    extends _$LocationSettingsEventCopyWithImpl<$Res, _$OpenSettingsImpl>
    implements _$$OpenSettingsImplCopyWith<$Res> {
  __$$OpenSettingsImplCopyWithImpl(
      _$OpenSettingsImpl _value, $Res Function(_$OpenSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$OpenSettingsImpl(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ));
  }
}

/// @nodoc

class _$OpenSettingsImpl implements _OpenSettings {
  const _$OpenSettingsImpl({required this.settings});

  @override
  final Settings settings;

  @override
  String toString() {
    return 'LocationSettingsEvent.openSettings(settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenSettingsImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  /// Create a copy of LocationSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenSettingsImplCopyWith<_$OpenSettingsImpl> get copyWith =>
      __$$OpenSettingsImplCopyWithImpl<_$OpenSettingsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Settings settings) openSettings,
  }) {
    return openSettings(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Settings settings)? openSettings,
  }) {
    return openSettings?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Settings settings)? openSettings,
    required TResult orElse(),
  }) {
    if (openSettings != null) {
      return openSettings(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenSettings value) openSettings,
  }) {
    return openSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OpenSettings value)? openSettings,
  }) {
    return openSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenSettings value)? openSettings,
    required TResult orElse(),
  }) {
    if (openSettings != null) {
      return openSettings(this);
    }
    return orElse();
  }
}

abstract class _OpenSettings implements LocationSettingsEvent {
  const factory _OpenSettings({required final Settings settings}) =
      _$OpenSettingsImpl;

  @override
  Settings get settings;

  /// Create a copy of LocationSettingsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenSettingsImplCopyWith<_$OpenSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationSettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() openingSettings,
    required TResult Function() maybeOpenedSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? openingSettings,
    TResult? Function()? maybeOpenedSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? openingSettings,
    TResult Function()? maybeOpenedSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpeningSettings value) openingSettings,
    required TResult Function(_MaybeOpenedSettings value) maybeOpenedSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpeningSettings value)? openingSettings,
    TResult? Function(_MaybeOpenedSettings value)? maybeOpenedSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpeningSettings value)? openingSettings,
    TResult Function(_MaybeOpenedSettings value)? maybeOpenedSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationSettingsStateCopyWith<$Res> {
  factory $LocationSettingsStateCopyWith(LocationSettingsState value,
          $Res Function(LocationSettingsState) then) =
      _$LocationSettingsStateCopyWithImpl<$Res, LocationSettingsState>;
}

/// @nodoc
class _$LocationSettingsStateCopyWithImpl<$Res,
        $Val extends LocationSettingsState>
    implements $LocationSettingsStateCopyWith<$Res> {
  _$LocationSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationSettingsState
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
    extends _$LocationSettingsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationSettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LocationSettingsState.initial()';
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
    required TResult Function() openingSettings,
    required TResult Function() maybeOpenedSettings,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? openingSettings,
    TResult? Function()? maybeOpenedSettings,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? openingSettings,
    TResult Function()? maybeOpenedSettings,
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
    required TResult Function(_OpeningSettings value) openingSettings,
    required TResult Function(_MaybeOpenedSettings value) maybeOpenedSettings,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpeningSettings value)? openingSettings,
    TResult? Function(_MaybeOpenedSettings value)? maybeOpenedSettings,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpeningSettings value)? openingSettings,
    TResult Function(_MaybeOpenedSettings value)? maybeOpenedSettings,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocationSettingsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$OpeningSettingsImplCopyWith<$Res> {
  factory _$$OpeningSettingsImplCopyWith(_$OpeningSettingsImpl value,
          $Res Function(_$OpeningSettingsImpl) then) =
      __$$OpeningSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpeningSettingsImplCopyWithImpl<$Res>
    extends _$LocationSettingsStateCopyWithImpl<$Res, _$OpeningSettingsImpl>
    implements _$$OpeningSettingsImplCopyWith<$Res> {
  __$$OpeningSettingsImplCopyWithImpl(
      _$OpeningSettingsImpl _value, $Res Function(_$OpeningSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationSettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OpeningSettingsImpl implements _OpeningSettings {
  const _$OpeningSettingsImpl();

  @override
  String toString() {
    return 'LocationSettingsState.openingSettings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpeningSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() openingSettings,
    required TResult Function() maybeOpenedSettings,
  }) {
    return openingSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? openingSettings,
    TResult? Function()? maybeOpenedSettings,
  }) {
    return openingSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? openingSettings,
    TResult Function()? maybeOpenedSettings,
    required TResult orElse(),
  }) {
    if (openingSettings != null) {
      return openingSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpeningSettings value) openingSettings,
    required TResult Function(_MaybeOpenedSettings value) maybeOpenedSettings,
  }) {
    return openingSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpeningSettings value)? openingSettings,
    TResult? Function(_MaybeOpenedSettings value)? maybeOpenedSettings,
  }) {
    return openingSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpeningSettings value)? openingSettings,
    TResult Function(_MaybeOpenedSettings value)? maybeOpenedSettings,
    required TResult orElse(),
  }) {
    if (openingSettings != null) {
      return openingSettings(this);
    }
    return orElse();
  }
}

abstract class _OpeningSettings implements LocationSettingsState {
  const factory _OpeningSettings() = _$OpeningSettingsImpl;
}

/// @nodoc
abstract class _$$MaybeOpenedSettingsImplCopyWith<$Res> {
  factory _$$MaybeOpenedSettingsImplCopyWith(_$MaybeOpenedSettingsImpl value,
          $Res Function(_$MaybeOpenedSettingsImpl) then) =
      __$$MaybeOpenedSettingsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaybeOpenedSettingsImplCopyWithImpl<$Res>
    extends _$LocationSettingsStateCopyWithImpl<$Res, _$MaybeOpenedSettingsImpl>
    implements _$$MaybeOpenedSettingsImplCopyWith<$Res> {
  __$$MaybeOpenedSettingsImplCopyWithImpl(_$MaybeOpenedSettingsImpl _value,
      $Res Function(_$MaybeOpenedSettingsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationSettingsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaybeOpenedSettingsImpl implements _MaybeOpenedSettings {
  const _$MaybeOpenedSettingsImpl();

  @override
  String toString() {
    return 'LocationSettingsState.maybeOpenedSettings()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaybeOpenedSettingsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() openingSettings,
    required TResult Function() maybeOpenedSettings,
  }) {
    return maybeOpenedSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? openingSettings,
    TResult? Function()? maybeOpenedSettings,
  }) {
    return maybeOpenedSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? openingSettings,
    TResult Function()? maybeOpenedSettings,
    required TResult orElse(),
  }) {
    if (maybeOpenedSettings != null) {
      return maybeOpenedSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpeningSettings value) openingSettings,
    required TResult Function(_MaybeOpenedSettings value) maybeOpenedSettings,
  }) {
    return maybeOpenedSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpeningSettings value)? openingSettings,
    TResult? Function(_MaybeOpenedSettings value)? maybeOpenedSettings,
  }) {
    return maybeOpenedSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpeningSettings value)? openingSettings,
    TResult Function(_MaybeOpenedSettings value)? maybeOpenedSettings,
    required TResult orElse(),
  }) {
    if (maybeOpenedSettings != null) {
      return maybeOpenedSettings(this);
    }
    return orElse();
  }
}

abstract class _MaybeOpenedSettings implements LocationSettingsState {
  const factory _MaybeOpenedSettings() = _$MaybeOpenedSettingsImpl;
}
