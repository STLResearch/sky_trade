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
    required TResult Function(String geoHash) fetchWeatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String geoHash)? fetchWeatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String geoHash)? fetchWeatherData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeatherData value) fetchWeatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeatherData value)? fetchWeatherData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeatherData value)? fetchWeatherData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$FetchWeatherDataImplCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$$FetchWeatherDataImplCopyWith(_$FetchWeatherDataImpl value,
          $Res Function(_$FetchWeatherDataImpl) then) =
      __$$FetchWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String geoHash});
}

/// @nodoc
class __$$FetchWeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res, _$FetchWeatherDataImpl>
    implements _$$FetchWeatherDataImplCopyWith<$Res> {
  __$$FetchWeatherDataImplCopyWithImpl(_$FetchWeatherDataImpl _value,
      $Res Function(_$FetchWeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geoHash = null,
  }) {
    return _then(_$FetchWeatherDataImpl(
      null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchWeatherDataImpl implements _FetchWeatherData {
  const _$FetchWeatherDataImpl(this.geoHash);

  @override
  final String geoHash;

  @override
  String toString() {
    return 'WeatherEvent.fetchWeatherData(geoHash: $geoHash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchWeatherDataImpl &&
            (identical(other.geoHash, geoHash) || other.geoHash == geoHash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geoHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchWeatherDataImplCopyWith<_$FetchWeatherDataImpl> get copyWith =>
      __$$FetchWeatherDataImplCopyWithImpl<_$FetchWeatherDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String geoHash) fetchWeatherData,
  }) {
    return fetchWeatherData(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String geoHash)? fetchWeatherData,
  }) {
    return fetchWeatherData?.call(geoHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String geoHash)? fetchWeatherData,
    required TResult orElse(),
  }) {
    if (fetchWeatherData != null) {
      return fetchWeatherData(geoHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchWeatherData value) fetchWeatherData,
  }) {
    return fetchWeatherData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchWeatherData value)? fetchWeatherData,
  }) {
    return fetchWeatherData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchWeatherData value)? fetchWeatherData,
    required TResult orElse(),
  }) {
    if (fetchWeatherData != null) {
      return fetchWeatherData(this);
    }
    return orElse();
  }
}

abstract class _FetchWeatherData implements WeatherEvent {
  const factory _FetchWeatherData(final String geoHash) =
      _$FetchWeatherDataImpl;

  @override
  String get geoHash;
  @override
  @JsonKey(ignore: true)
  _$$FetchWeatherDataImplCopyWith<_$FetchWeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingWeatherData,
    required TResult Function(OpenWeatherDataEntity weatherData)
        fetchSuccessful,
    required TResult Function(OpenWeatherFailure weatherFailure) fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingWeatherData,
    TResult? Function(OpenWeatherDataEntity weatherData)? fetchSuccessful,
    TResult? Function(OpenWeatherFailure weatherFailure)? fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingWeatherData,
    TResult Function(OpenWeatherDataEntity weatherData)? fetchSuccessful,
    TResult Function(OpenWeatherFailure weatherFailure)? fetchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingWeatherData value) fetchingWeatherData,
    required TResult Function(_FetchSuccessful value) fetchSuccessful,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingWeatherData value)? fetchingWeatherData,
    TResult? Function(_FetchSuccessful value)? fetchSuccessful,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingWeatherData value)? fetchingWeatherData,
    TResult Function(_FetchSuccessful value)? fetchSuccessful,
    TResult Function(_FetchFailed value)? fetchFailed,
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
    required TResult Function() fetchingWeatherData,
    required TResult Function(OpenWeatherDataEntity weatherData)
        fetchSuccessful,
    required TResult Function(OpenWeatherFailure weatherFailure) fetchFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingWeatherData,
    TResult? Function(OpenWeatherDataEntity weatherData)? fetchSuccessful,
    TResult? Function(OpenWeatherFailure weatherFailure)? fetchFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingWeatherData,
    TResult Function(OpenWeatherDataEntity weatherData)? fetchSuccessful,
    TResult Function(OpenWeatherFailure weatherFailure)? fetchFailed,
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
    required TResult Function(_FetchingWeatherData value) fetchingWeatherData,
    required TResult Function(_FetchSuccessful value) fetchSuccessful,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingWeatherData value)? fetchingWeatherData,
    TResult? Function(_FetchSuccessful value)? fetchSuccessful,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingWeatherData value)? fetchingWeatherData,
    TResult Function(_FetchSuccessful value)? fetchSuccessful,
    TResult Function(_FetchFailed value)? fetchFailed,
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
abstract class _$$FetchingWeatherDataImplCopyWith<$Res> {
  factory _$$FetchingWeatherDataImplCopyWith(_$FetchingWeatherDataImpl value,
          $Res Function(_$FetchingWeatherDataImpl) then) =
      __$$FetchingWeatherDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchingWeatherDataImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$FetchingWeatherDataImpl>
    implements _$$FetchingWeatherDataImplCopyWith<$Res> {
  __$$FetchingWeatherDataImplCopyWithImpl(_$FetchingWeatherDataImpl _value,
      $Res Function(_$FetchingWeatherDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchingWeatherDataImpl implements _FetchingWeatherData {
  const _$FetchingWeatherDataImpl();

  @override
  String toString() {
    return 'WeatherState.fetchingWeatherData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchingWeatherDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingWeatherData,
    required TResult Function(OpenWeatherDataEntity weatherData)
        fetchSuccessful,
    required TResult Function(OpenWeatherFailure weatherFailure) fetchFailed,
  }) {
    return fetchingWeatherData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingWeatherData,
    TResult? Function(OpenWeatherDataEntity weatherData)? fetchSuccessful,
    TResult? Function(OpenWeatherFailure weatherFailure)? fetchFailed,
  }) {
    return fetchingWeatherData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingWeatherData,
    TResult Function(OpenWeatherDataEntity weatherData)? fetchSuccessful,
    TResult Function(OpenWeatherFailure weatherFailure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchingWeatherData != null) {
      return fetchingWeatherData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingWeatherData value) fetchingWeatherData,
    required TResult Function(_FetchSuccessful value) fetchSuccessful,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return fetchingWeatherData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingWeatherData value)? fetchingWeatherData,
    TResult? Function(_FetchSuccessful value)? fetchSuccessful,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return fetchingWeatherData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingWeatherData value)? fetchingWeatherData,
    TResult Function(_FetchSuccessful value)? fetchSuccessful,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchingWeatherData != null) {
      return fetchingWeatherData(this);
    }
    return orElse();
  }
}

abstract class _FetchingWeatherData implements WeatherState {
  const factory _FetchingWeatherData() = _$FetchingWeatherDataImpl;
}

/// @nodoc
abstract class _$$FetchSuccessfulImplCopyWith<$Res> {
  factory _$$FetchSuccessfulImplCopyWith(_$FetchSuccessfulImpl value,
          $Res Function(_$FetchSuccessfulImpl) then) =
      __$$FetchSuccessfulImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OpenWeatherDataEntity weatherData});
}

/// @nodoc
class __$$FetchSuccessfulImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$FetchSuccessfulImpl>
    implements _$$FetchSuccessfulImplCopyWith<$Res> {
  __$$FetchSuccessfulImplCopyWithImpl(
      _$FetchSuccessfulImpl _value, $Res Function(_$FetchSuccessfulImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherData = null,
  }) {
    return _then(_$FetchSuccessfulImpl(
      weatherData: null == weatherData
          ? _value.weatherData
          : weatherData // ignore: cast_nullable_to_non_nullable
              as OpenWeatherDataEntity,
    ));
  }
}

/// @nodoc

class _$FetchSuccessfulImpl implements _FetchSuccessful {
  const _$FetchSuccessfulImpl({required this.weatherData});

  @override
  final OpenWeatherDataEntity weatherData;

  @override
  String toString() {
    return 'WeatherState.fetchSuccessful(weatherData: $weatherData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSuccessfulImpl &&
            (identical(other.weatherData, weatherData) ||
                other.weatherData == weatherData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchSuccessfulImplCopyWith<_$FetchSuccessfulImpl> get copyWith =>
      __$$FetchSuccessfulImplCopyWithImpl<_$FetchSuccessfulImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingWeatherData,
    required TResult Function(OpenWeatherDataEntity weatherData)
        fetchSuccessful,
    required TResult Function(OpenWeatherFailure weatherFailure) fetchFailed,
  }) {
    return fetchSuccessful(weatherData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingWeatherData,
    TResult? Function(OpenWeatherDataEntity weatherData)? fetchSuccessful,
    TResult? Function(OpenWeatherFailure weatherFailure)? fetchFailed,
  }) {
    return fetchSuccessful?.call(weatherData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingWeatherData,
    TResult Function(OpenWeatherDataEntity weatherData)? fetchSuccessful,
    TResult Function(OpenWeatherFailure weatherFailure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchSuccessful != null) {
      return fetchSuccessful(weatherData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingWeatherData value) fetchingWeatherData,
    required TResult Function(_FetchSuccessful value) fetchSuccessful,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return fetchSuccessful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingWeatherData value)? fetchingWeatherData,
    TResult? Function(_FetchSuccessful value)? fetchSuccessful,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return fetchSuccessful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingWeatherData value)? fetchingWeatherData,
    TResult Function(_FetchSuccessful value)? fetchSuccessful,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchSuccessful != null) {
      return fetchSuccessful(this);
    }
    return orElse();
  }
}

abstract class _FetchSuccessful implements WeatherState {
  const factory _FetchSuccessful(
          {required final OpenWeatherDataEntity weatherData}) =
      _$FetchSuccessfulImpl;

  OpenWeatherDataEntity get weatherData;
  @JsonKey(ignore: true)
  _$$FetchSuccessfulImplCopyWith<_$FetchSuccessfulImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchFailedImplCopyWith<$Res> {
  factory _$$FetchFailedImplCopyWith(
          _$FetchFailedImpl value, $Res Function(_$FetchFailedImpl) then) =
      __$$FetchFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OpenWeatherFailure weatherFailure});
}

/// @nodoc
class __$$FetchFailedImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$FetchFailedImpl>
    implements _$$FetchFailedImplCopyWith<$Res> {
  __$$FetchFailedImplCopyWithImpl(
      _$FetchFailedImpl _value, $Res Function(_$FetchFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherFailure = null,
  }) {
    return _then(_$FetchFailedImpl(
      weatherFailure: null == weatherFailure
          ? _value.weatherFailure
          : weatherFailure // ignore: cast_nullable_to_non_nullable
              as OpenWeatherFailure,
    ));
  }
}

/// @nodoc

class _$FetchFailedImpl implements _FetchFailed {
  const _$FetchFailedImpl({required this.weatherFailure});

  @override
  final OpenWeatherFailure weatherFailure;

  @override
  String toString() {
    return 'WeatherState.fetchFailed(weatherFailure: $weatherFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchFailedImpl &&
            (identical(other.weatherFailure, weatherFailure) ||
                other.weatherFailure == weatherFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchFailedImplCopyWith<_$FetchFailedImpl> get copyWith =>
      __$$FetchFailedImplCopyWithImpl<_$FetchFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingWeatherData,
    required TResult Function(OpenWeatherDataEntity weatherData)
        fetchSuccessful,
    required TResult Function(OpenWeatherFailure weatherFailure) fetchFailed,
  }) {
    return fetchFailed(weatherFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingWeatherData,
    TResult? Function(OpenWeatherDataEntity weatherData)? fetchSuccessful,
    TResult? Function(OpenWeatherFailure weatherFailure)? fetchFailed,
  }) {
    return fetchFailed?.call(weatherFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingWeatherData,
    TResult Function(OpenWeatherDataEntity weatherData)? fetchSuccessful,
    TResult Function(OpenWeatherFailure weatherFailure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchFailed != null) {
      return fetchFailed(weatherFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingWeatherData value) fetchingWeatherData,
    required TResult Function(_FetchSuccessful value) fetchSuccessful,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return fetchFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingWeatherData value)? fetchingWeatherData,
    TResult? Function(_FetchSuccessful value)? fetchSuccessful,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return fetchFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingWeatherData value)? fetchingWeatherData,
    TResult Function(_FetchSuccessful value)? fetchSuccessful,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchFailed != null) {
      return fetchFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchFailed implements WeatherState {
  const factory _FetchFailed(
      {required final OpenWeatherFailure weatherFailure}) = _$FetchFailedImpl;

  OpenWeatherFailure get weatherFailure;
  @JsonKey(ignore: true)
  _$$FetchFailedImplCopyWith<_$FetchFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
