// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherEvent {
  String get geoHash => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String geoHash) getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String geoHash)? getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String geoHash)? getWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeather value) getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeather value)? getWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeather value)? getWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res, WeatherEvent>;
  @useResult
  $Res call({String geoHash});
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res, $Val extends WeatherEvent>
    implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHash = null,
  }) {
    return _then(_value.copyWith(
      geoHash: null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetWeatherImplCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$GetWeatherImplCopyWith(
          _$GetWeatherImpl value, $Res Function(_$GetWeatherImpl) then) =
      __$$GetWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String geoHash});
}

/// @nodoc
class __$$GetWeatherImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$GetWeatherImpl>
    implements _$$GetWeatherImplCopyWith<$Res> {
  __$$GetWeatherImplCopyWithImpl(
      _$GetWeatherImpl _value, $Res Function(_$GetWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHash = null,
  }) {
    return _then(_$GetWeatherImpl(
      geoHash: null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWeatherImpl implements _GetWeather {
  const _$GetWeatherImpl({required this.geoHash});

  @override
  final String geoHash;

  @override
  String toString() {
    return 'WeatherEvent.getWeather(geoHash: $geoHash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherImpl &&
            (identical(other.geoHash, geoHash) || other.geoHash == geoHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHash);

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherImplCopyWith<_$GetWeatherImpl> get copyWith =>
      __$$GetWeatherImplCopyWithImpl<_$GetWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String geoHash) getWeather,
  }) {
    return getWeather(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String geoHash)? getWeather,
  }) {
    return getWeather?.call(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String geoHash)? getWeather,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(geoHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWeather value) getWeather,
  }) {
    return getWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetWeather value)? getWeather,
  }) {
    return getWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWeather value)? getWeather,
    required TResult orElse(),
  }) {
    if (getWeather != null) {
      return getWeather(this);
    }
    return orElse();
  }
}

abstract class _GetWeather implements WeatherEvent {
  const factory _GetWeather({required final String geoHash}) = _$GetWeatherImpl;

  @override
  String get geoHash;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWeatherImplCopyWith<_$GetWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingWeather,
    required TResult Function(WeatherEntity weatherEntity) gotWeather,
    required TResult Function(WeatherFailure weatherFailure) failedToGetWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingWeather,
    TResult? Function(WeatherEntity weatherEntity)? gotWeather,
    TResult? Function(WeatherFailure weatherFailure)? failedToGetWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingWeather,
    TResult Function(WeatherEntity weatherEntity)? gotWeather,
    TResult Function(WeatherFailure weatherFailure)? failedToGetWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingWeather value) gettingWeather,
    required TResult Function(_GotWeather value) gotWeather,
    required TResult Function(_FailedToGetWeather value) failedToGetWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingWeather value)? gettingWeather,
    TResult? Function(_GotWeather value)? gotWeather,
    TResult? Function(_FailedToGetWeather value)? failedToGetWeather,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingWeather value)? gettingWeather,
    TResult Function(_GotWeather value)? gotWeather,
    TResult Function(_FailedToGetWeather value)? failedToGetWeather,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherState
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
    extends _$WeatherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WeatherState.initial()';
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
    required TResult Function() gettingWeather,
    required TResult Function(WeatherEntity weatherEntity) gotWeather,
    required TResult Function(WeatherFailure weatherFailure) failedToGetWeather,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingWeather,
    TResult? Function(WeatherEntity weatherEntity)? gotWeather,
    TResult? Function(WeatherFailure weatherFailure)? failedToGetWeather,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingWeather,
    TResult Function(WeatherEntity weatherEntity)? gotWeather,
    TResult Function(WeatherFailure weatherFailure)? failedToGetWeather,
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
    required TResult Function(_GettingWeather value) gettingWeather,
    required TResult Function(_GotWeather value) gotWeather,
    required TResult Function(_FailedToGetWeather value) failedToGetWeather,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingWeather value)? gettingWeather,
    TResult? Function(_GotWeather value)? gotWeather,
    TResult? Function(_FailedToGetWeather value)? failedToGetWeather,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingWeather value)? gettingWeather,
    TResult Function(_GotWeather value)? gotWeather,
    TResult Function(_FailedToGetWeather value)? failedToGetWeather,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeatherState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingWeatherImplCopyWith<$Res> {
  factory _$$GettingWeatherImplCopyWith(_$GettingWeatherImpl value,
          $Res Function(_$GettingWeatherImpl) then) =
      __$$GettingWeatherImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingWeatherImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$GettingWeatherImpl>
    implements _$$GettingWeatherImplCopyWith<$Res> {
  __$$GettingWeatherImplCopyWithImpl(
      _$GettingWeatherImpl _value, $Res Function(_$GettingWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GettingWeatherImpl implements _GettingWeather {
  const _$GettingWeatherImpl();

  @override
  String toString() {
    return 'WeatherState.gettingWeather()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingWeatherImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingWeather,
    required TResult Function(WeatherEntity weatherEntity) gotWeather,
    required TResult Function(WeatherFailure weatherFailure) failedToGetWeather,
  }) {
    return gettingWeather();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingWeather,
    TResult? Function(WeatherEntity weatherEntity)? gotWeather,
    TResult? Function(WeatherFailure weatherFailure)? failedToGetWeather,
  }) {
    return gettingWeather?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingWeather,
    TResult Function(WeatherEntity weatherEntity)? gotWeather,
    TResult Function(WeatherFailure weatherFailure)? failedToGetWeather,
    required TResult orElse(),
  }) {
    if (gettingWeather != null) {
      return gettingWeather();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingWeather value) gettingWeather,
    required TResult Function(_GotWeather value) gotWeather,
    required TResult Function(_FailedToGetWeather value) failedToGetWeather,
  }) {
    return gettingWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingWeather value)? gettingWeather,
    TResult? Function(_GotWeather value)? gotWeather,
    TResult? Function(_FailedToGetWeather value)? failedToGetWeather,
  }) {
    return gettingWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingWeather value)? gettingWeather,
    TResult Function(_GotWeather value)? gotWeather,
    TResult Function(_FailedToGetWeather value)? failedToGetWeather,
    required TResult orElse(),
  }) {
    if (gettingWeather != null) {
      return gettingWeather(this);
    }
    return orElse();
  }
}

abstract class _GettingWeather implements WeatherState {
  const factory _GettingWeather() = _$GettingWeatherImpl;
}

/// @nodoc
abstract class _$$GotWeatherImplCopyWith<$Res> {
  factory _$$GotWeatherImplCopyWith(
          _$GotWeatherImpl value, $Res Function(_$GotWeatherImpl) then) =
      __$$GotWeatherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherEntity weatherEntity});
}

/// @nodoc
class __$$GotWeatherImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$GotWeatherImpl>
    implements _$$GotWeatherImplCopyWith<$Res> {
  __$$GotWeatherImplCopyWithImpl(
      _$GotWeatherImpl _value, $Res Function(_$GotWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherEntity = null,
  }) {
    return _then(_$GotWeatherImpl(
      weatherEntity: null == weatherEntity
          ? _value.weatherEntity
          : weatherEntity // ignore: cast_nullable_to_non_nullable
              as WeatherEntity,
    ));
  }
}

/// @nodoc

class _$GotWeatherImpl implements _GotWeather {
  const _$GotWeatherImpl({required this.weatherEntity});

  @override
  final WeatherEntity weatherEntity;

  @override
  String toString() {
    return 'WeatherState.gotWeather(weatherEntity: $weatherEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotWeatherImpl &&
            (identical(other.weatherEntity, weatherEntity) ||
                other.weatherEntity == weatherEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherEntity);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GotWeatherImplCopyWith<_$GotWeatherImpl> get copyWith =>
      __$$GotWeatherImplCopyWithImpl<_$GotWeatherImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingWeather,
    required TResult Function(WeatherEntity weatherEntity) gotWeather,
    required TResult Function(WeatherFailure weatherFailure) failedToGetWeather,
  }) {
    return gotWeather(weatherEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingWeather,
    TResult? Function(WeatherEntity weatherEntity)? gotWeather,
    TResult? Function(WeatherFailure weatherFailure)? failedToGetWeather,
  }) {
    return gotWeather?.call(weatherEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingWeather,
    TResult Function(WeatherEntity weatherEntity)? gotWeather,
    TResult Function(WeatherFailure weatherFailure)? failedToGetWeather,
    required TResult orElse(),
  }) {
    if (gotWeather != null) {
      return gotWeather(weatherEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingWeather value) gettingWeather,
    required TResult Function(_GotWeather value) gotWeather,
    required TResult Function(_FailedToGetWeather value) failedToGetWeather,
  }) {
    return gotWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingWeather value)? gettingWeather,
    TResult? Function(_GotWeather value)? gotWeather,
    TResult? Function(_FailedToGetWeather value)? failedToGetWeather,
  }) {
    return gotWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingWeather value)? gettingWeather,
    TResult Function(_GotWeather value)? gotWeather,
    TResult Function(_FailedToGetWeather value)? failedToGetWeather,
    required TResult orElse(),
  }) {
    if (gotWeather != null) {
      return gotWeather(this);
    }
    return orElse();
  }
}

abstract class _GotWeather implements WeatherState {
  const factory _GotWeather({required final WeatherEntity weatherEntity}) =
      _$GotWeatherImpl;

  WeatherEntity get weatherEntity;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GotWeatherImplCopyWith<_$GotWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetWeatherImplCopyWith<$Res> {
  factory _$$FailedToGetWeatherImplCopyWith(_$FailedToGetWeatherImpl value,
          $Res Function(_$FailedToGetWeatherImpl) then) =
      __$$FailedToGetWeatherImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherFailure weatherFailure});
}

/// @nodoc
class __$$FailedToGetWeatherImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$FailedToGetWeatherImpl>
    implements _$$FailedToGetWeatherImplCopyWith<$Res> {
  __$$FailedToGetWeatherImplCopyWithImpl(_$FailedToGetWeatherImpl _value,
      $Res Function(_$FailedToGetWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherFailure = null,
  }) {
    return _then(_$FailedToGetWeatherImpl(
      weatherFailure: null == weatherFailure
          ? _value.weatherFailure
          : weatherFailure // ignore: cast_nullable_to_non_nullable
              as WeatherFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetWeatherImpl implements _FailedToGetWeather {
  const _$FailedToGetWeatherImpl({required this.weatherFailure});

  @override
  final WeatherFailure weatherFailure;

  @override
  String toString() {
    return 'WeatherState.failedToGetWeather(weatherFailure: $weatherFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetWeatherImpl &&
            (identical(other.weatherFailure, weatherFailure) ||
                other.weatherFailure == weatherFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherFailure);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetWeatherImplCopyWith<_$FailedToGetWeatherImpl> get copyWith =>
      __$$FailedToGetWeatherImplCopyWithImpl<_$FailedToGetWeatherImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingWeather,
    required TResult Function(WeatherEntity weatherEntity) gotWeather,
    required TResult Function(WeatherFailure weatherFailure) failedToGetWeather,
  }) {
    return failedToGetWeather(weatherFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingWeather,
    TResult? Function(WeatherEntity weatherEntity)? gotWeather,
    TResult? Function(WeatherFailure weatherFailure)? failedToGetWeather,
  }) {
    return failedToGetWeather?.call(weatherFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingWeather,
    TResult Function(WeatherEntity weatherEntity)? gotWeather,
    TResult Function(WeatherFailure weatherFailure)? failedToGetWeather,
    required TResult orElse(),
  }) {
    if (failedToGetWeather != null) {
      return failedToGetWeather(weatherFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingWeather value) gettingWeather,
    required TResult Function(_GotWeather value) gotWeather,
    required TResult Function(_FailedToGetWeather value) failedToGetWeather,
  }) {
    return failedToGetWeather(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingWeather value)? gettingWeather,
    TResult? Function(_GotWeather value)? gotWeather,
    TResult? Function(_FailedToGetWeather value)? failedToGetWeather,
  }) {
    return failedToGetWeather?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingWeather value)? gettingWeather,
    TResult Function(_GotWeather value)? gotWeather,
    TResult Function(_FailedToGetWeather value)? failedToGetWeather,
    required TResult orElse(),
  }) {
    if (failedToGetWeather != null) {
      return failedToGetWeather(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetWeather implements WeatherState {
  const factory _FailedToGetWeather(
          {required final WeatherFailure weatherFailure}) =
      _$FailedToGetWeatherImpl;

  WeatherFailure get weatherFailure;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToGetWeatherImplCopyWith<_$FailedToGetWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
