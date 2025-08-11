// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retrieve_geometric_coordinates_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RetrieveGeometricCoordinatesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) retrieveCoordinates,
    required TResult Function(GeometryEntity geometryEntity)
        coordinatesRetrieved,
    required TResult Function() emptyCoordinatesRetrieved,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        coordinatesNotRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? retrieveCoordinates,
    TResult? Function(GeometryEntity geometryEntity)? coordinatesRetrieved,
    TResult? Function()? emptyCoordinatesRetrieved,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        coordinatesNotRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? retrieveCoordinates,
    TResult Function(GeometryEntity geometryEntity)? coordinatesRetrieved,
    TResult Function()? emptyCoordinatesRetrieved,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        coordinatesNotRetrieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCoordinates value) retrieveCoordinates,
    required TResult Function(_CoordinatesRetrieved value) coordinatesRetrieved,
    required TResult Function(_EmptyCoordinatesRetrieved value)
        emptyCoordinatesRetrieved,
    required TResult Function(_CoordinatesNotRetrieved value)
        coordinatesNotRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RetrieveCoordinates value)? retrieveCoordinates,
    TResult? Function(_CoordinatesRetrieved value)? coordinatesRetrieved,
    TResult? Function(_EmptyCoordinatesRetrieved value)?
        emptyCoordinatesRetrieved,
    TResult? Function(_CoordinatesNotRetrieved value)? coordinatesNotRetrieved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCoordinates value)? retrieveCoordinates,
    TResult Function(_CoordinatesRetrieved value)? coordinatesRetrieved,
    TResult Function(_EmptyCoordinatesRetrieved value)?
        emptyCoordinatesRetrieved,
    TResult Function(_CoordinatesNotRetrieved value)? coordinatesNotRetrieved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetrieveGeometricCoordinatesEventCopyWith<$Res> {
  factory $RetrieveGeometricCoordinatesEventCopyWith(
          RetrieveGeometricCoordinatesEvent value,
          $Res Function(RetrieveGeometricCoordinatesEvent) then) =
      _$RetrieveGeometricCoordinatesEventCopyWithImpl<$Res,
          RetrieveGeometricCoordinatesEvent>;
}

/// @nodoc
class _$RetrieveGeometricCoordinatesEventCopyWithImpl<$Res,
        $Val extends RetrieveGeometricCoordinatesEvent>
    implements $RetrieveGeometricCoordinatesEventCopyWith<$Res> {
  _$RetrieveGeometricCoordinatesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RetrieveCoordinatesImplCopyWith<$Res> {
  factory _$$RetrieveCoordinatesImplCopyWith(_$RetrieveCoordinatesImpl value,
          $Res Function(_$RetrieveCoordinatesImpl) then) =
      __$$RetrieveCoordinatesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RetrieveCoordinatesImplCopyWithImpl<$Res>
    extends _$RetrieveGeometricCoordinatesEventCopyWithImpl<$Res,
        _$RetrieveCoordinatesImpl>
    implements _$$RetrieveCoordinatesImplCopyWith<$Res> {
  __$$RetrieveCoordinatesImplCopyWithImpl(_$RetrieveCoordinatesImpl _value,
      $Res Function(_$RetrieveCoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RetrieveCoordinatesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RetrieveCoordinatesImpl implements _RetrieveCoordinates {
  const _$RetrieveCoordinatesImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'RetrieveGeometricCoordinatesEvent.retrieveCoordinates(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrieveCoordinatesImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrieveCoordinatesImplCopyWith<_$RetrieveCoordinatesImpl> get copyWith =>
      __$$RetrieveCoordinatesImplCopyWithImpl<_$RetrieveCoordinatesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) retrieveCoordinates,
    required TResult Function(GeometryEntity geometryEntity)
        coordinatesRetrieved,
    required TResult Function() emptyCoordinatesRetrieved,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        coordinatesNotRetrieved,
  }) {
    return retrieveCoordinates(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? retrieveCoordinates,
    TResult? Function(GeometryEntity geometryEntity)? coordinatesRetrieved,
    TResult? Function()? emptyCoordinatesRetrieved,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        coordinatesNotRetrieved,
  }) {
    return retrieveCoordinates?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? retrieveCoordinates,
    TResult Function(GeometryEntity geometryEntity)? coordinatesRetrieved,
    TResult Function()? emptyCoordinatesRetrieved,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        coordinatesNotRetrieved,
    required TResult orElse(),
  }) {
    if (retrieveCoordinates != null) {
      return retrieveCoordinates(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCoordinates value) retrieveCoordinates,
    required TResult Function(_CoordinatesRetrieved value) coordinatesRetrieved,
    required TResult Function(_EmptyCoordinatesRetrieved value)
        emptyCoordinatesRetrieved,
    required TResult Function(_CoordinatesNotRetrieved value)
        coordinatesNotRetrieved,
  }) {
    return retrieveCoordinates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RetrieveCoordinates value)? retrieveCoordinates,
    TResult? Function(_CoordinatesRetrieved value)? coordinatesRetrieved,
    TResult? Function(_EmptyCoordinatesRetrieved value)?
        emptyCoordinatesRetrieved,
    TResult? Function(_CoordinatesNotRetrieved value)? coordinatesNotRetrieved,
  }) {
    return retrieveCoordinates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCoordinates value)? retrieveCoordinates,
    TResult Function(_CoordinatesRetrieved value)? coordinatesRetrieved,
    TResult Function(_EmptyCoordinatesRetrieved value)?
        emptyCoordinatesRetrieved,
    TResult Function(_CoordinatesNotRetrieved value)? coordinatesNotRetrieved,
    required TResult orElse(),
  }) {
    if (retrieveCoordinates != null) {
      return retrieveCoordinates(this);
    }
    return orElse();
  }
}

abstract class _RetrieveCoordinates
    implements RetrieveGeometricCoordinatesEvent {
  const factory _RetrieveCoordinates({required final String id}) =
      _$RetrieveCoordinatesImpl;

  String get id;

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetrieveCoordinatesImplCopyWith<_$RetrieveCoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoordinatesRetrievedImplCopyWith<$Res> {
  factory _$$CoordinatesRetrievedImplCopyWith(_$CoordinatesRetrievedImpl value,
          $Res Function(_$CoordinatesRetrievedImpl) then) =
      __$$CoordinatesRetrievedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GeometryEntity geometryEntity});
}

/// @nodoc
class __$$CoordinatesRetrievedImplCopyWithImpl<$Res>
    extends _$RetrieveGeometricCoordinatesEventCopyWithImpl<$Res,
        _$CoordinatesRetrievedImpl>
    implements _$$CoordinatesRetrievedImplCopyWith<$Res> {
  __$$CoordinatesRetrievedImplCopyWithImpl(_$CoordinatesRetrievedImpl _value,
      $Res Function(_$CoordinatesRetrievedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? geometryEntity = null,
  }) {
    return _then(_$CoordinatesRetrievedImpl(
      geometryEntity: null == geometryEntity
          ? _value.geometryEntity
          : geometryEntity // ignore: cast_nullable_to_non_nullable
              as GeometryEntity,
    ));
  }
}

/// @nodoc

class _$CoordinatesRetrievedImpl implements _CoordinatesRetrieved {
  const _$CoordinatesRetrievedImpl({required this.geometryEntity});

  @override
  final GeometryEntity geometryEntity;

  @override
  String toString() {
    return 'RetrieveGeometricCoordinatesEvent.coordinatesRetrieved(geometryEntity: $geometryEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesRetrievedImpl &&
            (identical(other.geometryEntity, geometryEntity) ||
                other.geometryEntity == geometryEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, geometryEntity);

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesRetrievedImplCopyWith<_$CoordinatesRetrievedImpl>
      get copyWith =>
          __$$CoordinatesRetrievedImplCopyWithImpl<_$CoordinatesRetrievedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) retrieveCoordinates,
    required TResult Function(GeometryEntity geometryEntity)
        coordinatesRetrieved,
    required TResult Function() emptyCoordinatesRetrieved,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        coordinatesNotRetrieved,
  }) {
    return coordinatesRetrieved(geometryEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? retrieveCoordinates,
    TResult? Function(GeometryEntity geometryEntity)? coordinatesRetrieved,
    TResult? Function()? emptyCoordinatesRetrieved,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        coordinatesNotRetrieved,
  }) {
    return coordinatesRetrieved?.call(geometryEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? retrieveCoordinates,
    TResult Function(GeometryEntity geometryEntity)? coordinatesRetrieved,
    TResult Function()? emptyCoordinatesRetrieved,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        coordinatesNotRetrieved,
    required TResult orElse(),
  }) {
    if (coordinatesRetrieved != null) {
      return coordinatesRetrieved(geometryEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCoordinates value) retrieveCoordinates,
    required TResult Function(_CoordinatesRetrieved value) coordinatesRetrieved,
    required TResult Function(_EmptyCoordinatesRetrieved value)
        emptyCoordinatesRetrieved,
    required TResult Function(_CoordinatesNotRetrieved value)
        coordinatesNotRetrieved,
  }) {
    return coordinatesRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RetrieveCoordinates value)? retrieveCoordinates,
    TResult? Function(_CoordinatesRetrieved value)? coordinatesRetrieved,
    TResult? Function(_EmptyCoordinatesRetrieved value)?
        emptyCoordinatesRetrieved,
    TResult? Function(_CoordinatesNotRetrieved value)? coordinatesNotRetrieved,
  }) {
    return coordinatesRetrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCoordinates value)? retrieveCoordinates,
    TResult Function(_CoordinatesRetrieved value)? coordinatesRetrieved,
    TResult Function(_EmptyCoordinatesRetrieved value)?
        emptyCoordinatesRetrieved,
    TResult Function(_CoordinatesNotRetrieved value)? coordinatesNotRetrieved,
    required TResult orElse(),
  }) {
    if (coordinatesRetrieved != null) {
      return coordinatesRetrieved(this);
    }
    return orElse();
  }
}

abstract class _CoordinatesRetrieved
    implements RetrieveGeometricCoordinatesEvent {
  const factory _CoordinatesRetrieved(
          {required final GeometryEntity geometryEntity}) =
      _$CoordinatesRetrievedImpl;

  GeometryEntity get geometryEntity;

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinatesRetrievedImplCopyWith<_$CoordinatesRetrievedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCoordinatesRetrievedImplCopyWith<$Res> {
  factory _$$EmptyCoordinatesRetrievedImplCopyWith(
          _$EmptyCoordinatesRetrievedImpl value,
          $Res Function(_$EmptyCoordinatesRetrievedImpl) then) =
      __$$EmptyCoordinatesRetrievedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyCoordinatesRetrievedImplCopyWithImpl<$Res>
    extends _$RetrieveGeometricCoordinatesEventCopyWithImpl<$Res,
        _$EmptyCoordinatesRetrievedImpl>
    implements _$$EmptyCoordinatesRetrievedImplCopyWith<$Res> {
  __$$EmptyCoordinatesRetrievedImplCopyWithImpl(
      _$EmptyCoordinatesRetrievedImpl _value,
      $Res Function(_$EmptyCoordinatesRetrievedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyCoordinatesRetrievedImpl implements _EmptyCoordinatesRetrieved {
  const _$EmptyCoordinatesRetrievedImpl();

  @override
  String toString() {
    return 'RetrieveGeometricCoordinatesEvent.emptyCoordinatesRetrieved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyCoordinatesRetrievedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) retrieveCoordinates,
    required TResult Function(GeometryEntity geometryEntity)
        coordinatesRetrieved,
    required TResult Function() emptyCoordinatesRetrieved,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        coordinatesNotRetrieved,
  }) {
    return emptyCoordinatesRetrieved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? retrieveCoordinates,
    TResult? Function(GeometryEntity geometryEntity)? coordinatesRetrieved,
    TResult? Function()? emptyCoordinatesRetrieved,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        coordinatesNotRetrieved,
  }) {
    return emptyCoordinatesRetrieved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? retrieveCoordinates,
    TResult Function(GeometryEntity geometryEntity)? coordinatesRetrieved,
    TResult Function()? emptyCoordinatesRetrieved,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        coordinatesNotRetrieved,
    required TResult orElse(),
  }) {
    if (emptyCoordinatesRetrieved != null) {
      return emptyCoordinatesRetrieved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCoordinates value) retrieveCoordinates,
    required TResult Function(_CoordinatesRetrieved value) coordinatesRetrieved,
    required TResult Function(_EmptyCoordinatesRetrieved value)
        emptyCoordinatesRetrieved,
    required TResult Function(_CoordinatesNotRetrieved value)
        coordinatesNotRetrieved,
  }) {
    return emptyCoordinatesRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RetrieveCoordinates value)? retrieveCoordinates,
    TResult? Function(_CoordinatesRetrieved value)? coordinatesRetrieved,
    TResult? Function(_EmptyCoordinatesRetrieved value)?
        emptyCoordinatesRetrieved,
    TResult? Function(_CoordinatesNotRetrieved value)? coordinatesNotRetrieved,
  }) {
    return emptyCoordinatesRetrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCoordinates value)? retrieveCoordinates,
    TResult Function(_CoordinatesRetrieved value)? coordinatesRetrieved,
    TResult Function(_EmptyCoordinatesRetrieved value)?
        emptyCoordinatesRetrieved,
    TResult Function(_CoordinatesNotRetrieved value)? coordinatesNotRetrieved,
    required TResult orElse(),
  }) {
    if (emptyCoordinatesRetrieved != null) {
      return emptyCoordinatesRetrieved(this);
    }
    return orElse();
  }
}

abstract class _EmptyCoordinatesRetrieved
    implements RetrieveGeometricCoordinatesEvent {
  const factory _EmptyCoordinatesRetrieved() = _$EmptyCoordinatesRetrievedImpl;
}

/// @nodoc
abstract class _$$CoordinatesNotRetrievedImplCopyWith<$Res> {
  factory _$$CoordinatesNotRetrievedImplCopyWith(
          _$CoordinatesNotRetrievedImpl value,
          $Res Function(_$CoordinatesNotRetrievedImpl) then) =
      __$$CoordinatesNotRetrievedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {RetrieveGeometricCoordinatesFailure
          retrieveGeometricCoordinatesFailure});
}

/// @nodoc
class __$$CoordinatesNotRetrievedImplCopyWithImpl<$Res>
    extends _$RetrieveGeometricCoordinatesEventCopyWithImpl<$Res,
        _$CoordinatesNotRetrievedImpl>
    implements _$$CoordinatesNotRetrievedImplCopyWith<$Res> {
  __$$CoordinatesNotRetrievedImplCopyWithImpl(
      _$CoordinatesNotRetrievedImpl _value,
      $Res Function(_$CoordinatesNotRetrievedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retrieveGeometricCoordinatesFailure = null,
  }) {
    return _then(_$CoordinatesNotRetrievedImpl(
      retrieveGeometricCoordinatesFailure: null ==
              retrieveGeometricCoordinatesFailure
          ? _value.retrieveGeometricCoordinatesFailure
          : retrieveGeometricCoordinatesFailure // ignore: cast_nullable_to_non_nullable
              as RetrieveGeometricCoordinatesFailure,
    ));
  }
}

/// @nodoc

class _$CoordinatesNotRetrievedImpl implements _CoordinatesNotRetrieved {
  const _$CoordinatesNotRetrievedImpl(
      {required this.retrieveGeometricCoordinatesFailure});

  @override
  final RetrieveGeometricCoordinatesFailure retrieveGeometricCoordinatesFailure;

  @override
  String toString() {
    return 'RetrieveGeometricCoordinatesEvent.coordinatesNotRetrieved(retrieveGeometricCoordinatesFailure: $retrieveGeometricCoordinatesFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesNotRetrievedImpl &&
            (identical(other.retrieveGeometricCoordinatesFailure,
                    retrieveGeometricCoordinatesFailure) ||
                other.retrieveGeometricCoordinatesFailure ==
                    retrieveGeometricCoordinatesFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, retrieveGeometricCoordinatesFailure);

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesNotRetrievedImplCopyWith<_$CoordinatesNotRetrievedImpl>
      get copyWith => __$$CoordinatesNotRetrievedImplCopyWithImpl<
          _$CoordinatesNotRetrievedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) retrieveCoordinates,
    required TResult Function(GeometryEntity geometryEntity)
        coordinatesRetrieved,
    required TResult Function() emptyCoordinatesRetrieved,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        coordinatesNotRetrieved,
  }) {
    return coordinatesNotRetrieved(retrieveGeometricCoordinatesFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? retrieveCoordinates,
    TResult? Function(GeometryEntity geometryEntity)? coordinatesRetrieved,
    TResult? Function()? emptyCoordinatesRetrieved,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        coordinatesNotRetrieved,
  }) {
    return coordinatesNotRetrieved?.call(retrieveGeometricCoordinatesFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? retrieveCoordinates,
    TResult Function(GeometryEntity geometryEntity)? coordinatesRetrieved,
    TResult Function()? emptyCoordinatesRetrieved,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        coordinatesNotRetrieved,
    required TResult orElse(),
  }) {
    if (coordinatesNotRetrieved != null) {
      return coordinatesNotRetrieved(retrieveGeometricCoordinatesFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCoordinates value) retrieveCoordinates,
    required TResult Function(_CoordinatesRetrieved value) coordinatesRetrieved,
    required TResult Function(_EmptyCoordinatesRetrieved value)
        emptyCoordinatesRetrieved,
    required TResult Function(_CoordinatesNotRetrieved value)
        coordinatesNotRetrieved,
  }) {
    return coordinatesNotRetrieved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RetrieveCoordinates value)? retrieveCoordinates,
    TResult? Function(_CoordinatesRetrieved value)? coordinatesRetrieved,
    TResult? Function(_EmptyCoordinatesRetrieved value)?
        emptyCoordinatesRetrieved,
    TResult? Function(_CoordinatesNotRetrieved value)? coordinatesNotRetrieved,
  }) {
    return coordinatesNotRetrieved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCoordinates value)? retrieveCoordinates,
    TResult Function(_CoordinatesRetrieved value)? coordinatesRetrieved,
    TResult Function(_EmptyCoordinatesRetrieved value)?
        emptyCoordinatesRetrieved,
    TResult Function(_CoordinatesNotRetrieved value)? coordinatesNotRetrieved,
    required TResult orElse(),
  }) {
    if (coordinatesNotRetrieved != null) {
      return coordinatesNotRetrieved(this);
    }
    return orElse();
  }
}

abstract class _CoordinatesNotRetrieved
    implements RetrieveGeometricCoordinatesEvent {
  const factory _CoordinatesNotRetrieved(
      {required final RetrieveGeometricCoordinatesFailure
          retrieveGeometricCoordinatesFailure}) = _$CoordinatesNotRetrievedImpl;

  RetrieveGeometricCoordinatesFailure get retrieveGeometricCoordinatesFailure;

  /// Create a copy of RetrieveGeometricCoordinatesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinatesNotRetrievedImplCopyWith<_$CoordinatesNotRetrievedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RetrieveGeometricCoordinatesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrievingCoordinates,
    required TResult Function(double latitude, double longitude)
        retrievedCoordinates,
    required TResult Function() retrievedEmptyCoordinates,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        failedToRetrieveCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrievingCoordinates,
    TResult? Function(double latitude, double longitude)? retrievedCoordinates,
    TResult? Function()? retrievedEmptyCoordinates,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrievingCoordinates,
    TResult Function(double latitude, double longitude)? retrievedCoordinates,
    TResult Function()? retrievedEmptyCoordinates,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RetrievingCoordinates value)
        retrievingCoordinates,
    required TResult Function(_RetrievedCoordinates value) retrievedCoordinates,
    required TResult Function(_RetrievedEmptyCoordinates value)
        retrievedEmptyCoordinates,
    required TResult Function(_FailedToRetrieveCoordinates value)
        failedToRetrieveCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult? Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult? Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult? Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetrieveGeometricCoordinatesStateCopyWith<$Res> {
  factory $RetrieveGeometricCoordinatesStateCopyWith(
          RetrieveGeometricCoordinatesState value,
          $Res Function(RetrieveGeometricCoordinatesState) then) =
      _$RetrieveGeometricCoordinatesStateCopyWithImpl<$Res,
          RetrieveGeometricCoordinatesState>;
}

/// @nodoc
class _$RetrieveGeometricCoordinatesStateCopyWithImpl<$Res,
        $Val extends RetrieveGeometricCoordinatesState>
    implements $RetrieveGeometricCoordinatesStateCopyWith<$Res> {
  _$RetrieveGeometricCoordinatesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetrieveGeometricCoordinatesState
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
    extends _$RetrieveGeometricCoordinatesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetrieveGeometricCoordinatesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RetrieveGeometricCoordinatesState.initial()';
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
    required TResult Function() retrievingCoordinates,
    required TResult Function(double latitude, double longitude)
        retrievedCoordinates,
    required TResult Function() retrievedEmptyCoordinates,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        failedToRetrieveCoordinates,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrievingCoordinates,
    TResult? Function(double latitude, double longitude)? retrievedCoordinates,
    TResult? Function()? retrievedEmptyCoordinates,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrievingCoordinates,
    TResult Function(double latitude, double longitude)? retrievedCoordinates,
    TResult Function()? retrievedEmptyCoordinates,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
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
    required TResult Function(_RetrievingCoordinates value)
        retrievingCoordinates,
    required TResult Function(_RetrievedCoordinates value) retrievedCoordinates,
    required TResult Function(_RetrievedEmptyCoordinates value)
        retrievedEmptyCoordinates,
    required TResult Function(_FailedToRetrieveCoordinates value)
        failedToRetrieveCoordinates,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult? Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult? Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult? Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RetrieveGeometricCoordinatesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RetrievingCoordinatesImplCopyWith<$Res> {
  factory _$$RetrievingCoordinatesImplCopyWith(
          _$RetrievingCoordinatesImpl value,
          $Res Function(_$RetrievingCoordinatesImpl) then) =
      __$$RetrievingCoordinatesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetrievingCoordinatesImplCopyWithImpl<$Res>
    extends _$RetrieveGeometricCoordinatesStateCopyWithImpl<$Res,
        _$RetrievingCoordinatesImpl>
    implements _$$RetrievingCoordinatesImplCopyWith<$Res> {
  __$$RetrievingCoordinatesImplCopyWithImpl(_$RetrievingCoordinatesImpl _value,
      $Res Function(_$RetrievingCoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetrieveGeometricCoordinatesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RetrievingCoordinatesImpl implements _RetrievingCoordinates {
  const _$RetrievingCoordinatesImpl();

  @override
  String toString() {
    return 'RetrieveGeometricCoordinatesState.retrievingCoordinates()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrievingCoordinatesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrievingCoordinates,
    required TResult Function(double latitude, double longitude)
        retrievedCoordinates,
    required TResult Function() retrievedEmptyCoordinates,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        failedToRetrieveCoordinates,
  }) {
    return retrievingCoordinates();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrievingCoordinates,
    TResult? Function(double latitude, double longitude)? retrievedCoordinates,
    TResult? Function()? retrievedEmptyCoordinates,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
  }) {
    return retrievingCoordinates?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrievingCoordinates,
    TResult Function(double latitude, double longitude)? retrievedCoordinates,
    TResult Function()? retrievedEmptyCoordinates,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) {
    if (retrievingCoordinates != null) {
      return retrievingCoordinates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RetrievingCoordinates value)
        retrievingCoordinates,
    required TResult Function(_RetrievedCoordinates value) retrievedCoordinates,
    required TResult Function(_RetrievedEmptyCoordinates value)
        retrievedEmptyCoordinates,
    required TResult Function(_FailedToRetrieveCoordinates value)
        failedToRetrieveCoordinates,
  }) {
    return retrievingCoordinates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult? Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult? Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult? Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
  }) {
    return retrievingCoordinates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) {
    if (retrievingCoordinates != null) {
      return retrievingCoordinates(this);
    }
    return orElse();
  }
}

abstract class _RetrievingCoordinates
    implements RetrieveGeometricCoordinatesState {
  const factory _RetrievingCoordinates() = _$RetrievingCoordinatesImpl;
}

/// @nodoc
abstract class _$$RetrievedCoordinatesImplCopyWith<$Res> {
  factory _$$RetrievedCoordinatesImplCopyWith(_$RetrievedCoordinatesImpl value,
          $Res Function(_$RetrievedCoordinatesImpl) then) =
      __$$RetrievedCoordinatesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$RetrievedCoordinatesImplCopyWithImpl<$Res>
    extends _$RetrieveGeometricCoordinatesStateCopyWithImpl<$Res,
        _$RetrievedCoordinatesImpl>
    implements _$$RetrievedCoordinatesImplCopyWith<$Res> {
  __$$RetrievedCoordinatesImplCopyWithImpl(_$RetrievedCoordinatesImpl _value,
      $Res Function(_$RetrievedCoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetrieveGeometricCoordinatesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$RetrievedCoordinatesImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RetrievedCoordinatesImpl implements _RetrievedCoordinates {
  const _$RetrievedCoordinatesImpl(
      {required this.latitude, required this.longitude});

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'RetrieveGeometricCoordinatesState.retrievedCoordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrievedCoordinatesImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of RetrieveGeometricCoordinatesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetrievedCoordinatesImplCopyWith<_$RetrievedCoordinatesImpl>
      get copyWith =>
          __$$RetrievedCoordinatesImplCopyWithImpl<_$RetrievedCoordinatesImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrievingCoordinates,
    required TResult Function(double latitude, double longitude)
        retrievedCoordinates,
    required TResult Function() retrievedEmptyCoordinates,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        failedToRetrieveCoordinates,
  }) {
    return retrievedCoordinates(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrievingCoordinates,
    TResult? Function(double latitude, double longitude)? retrievedCoordinates,
    TResult? Function()? retrievedEmptyCoordinates,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
  }) {
    return retrievedCoordinates?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrievingCoordinates,
    TResult Function(double latitude, double longitude)? retrievedCoordinates,
    TResult Function()? retrievedEmptyCoordinates,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) {
    if (retrievedCoordinates != null) {
      return retrievedCoordinates(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RetrievingCoordinates value)
        retrievingCoordinates,
    required TResult Function(_RetrievedCoordinates value) retrievedCoordinates,
    required TResult Function(_RetrievedEmptyCoordinates value)
        retrievedEmptyCoordinates,
    required TResult Function(_FailedToRetrieveCoordinates value)
        failedToRetrieveCoordinates,
  }) {
    return retrievedCoordinates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult? Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult? Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult? Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
  }) {
    return retrievedCoordinates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) {
    if (retrievedCoordinates != null) {
      return retrievedCoordinates(this);
    }
    return orElse();
  }
}

abstract class _RetrievedCoordinates
    implements RetrieveGeometricCoordinatesState {
  const factory _RetrievedCoordinates(
      {required final double latitude,
      required final double longitude}) = _$RetrievedCoordinatesImpl;

  double get latitude;
  double get longitude;

  /// Create a copy of RetrieveGeometricCoordinatesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetrievedCoordinatesImplCopyWith<_$RetrievedCoordinatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RetrievedEmptyCoordinatesImplCopyWith<$Res> {
  factory _$$RetrievedEmptyCoordinatesImplCopyWith(
          _$RetrievedEmptyCoordinatesImpl value,
          $Res Function(_$RetrievedEmptyCoordinatesImpl) then) =
      __$$RetrievedEmptyCoordinatesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RetrievedEmptyCoordinatesImplCopyWithImpl<$Res>
    extends _$RetrieveGeometricCoordinatesStateCopyWithImpl<$Res,
        _$RetrievedEmptyCoordinatesImpl>
    implements _$$RetrievedEmptyCoordinatesImplCopyWith<$Res> {
  __$$RetrievedEmptyCoordinatesImplCopyWithImpl(
      _$RetrievedEmptyCoordinatesImpl _value,
      $Res Function(_$RetrievedEmptyCoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetrieveGeometricCoordinatesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RetrievedEmptyCoordinatesImpl implements _RetrievedEmptyCoordinates {
  const _$RetrievedEmptyCoordinatesImpl();

  @override
  String toString() {
    return 'RetrieveGeometricCoordinatesState.retrievedEmptyCoordinates()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetrievedEmptyCoordinatesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrievingCoordinates,
    required TResult Function(double latitude, double longitude)
        retrievedCoordinates,
    required TResult Function() retrievedEmptyCoordinates,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        failedToRetrieveCoordinates,
  }) {
    return retrievedEmptyCoordinates();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrievingCoordinates,
    TResult? Function(double latitude, double longitude)? retrievedCoordinates,
    TResult? Function()? retrievedEmptyCoordinates,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
  }) {
    return retrievedEmptyCoordinates?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrievingCoordinates,
    TResult Function(double latitude, double longitude)? retrievedCoordinates,
    TResult Function()? retrievedEmptyCoordinates,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) {
    if (retrievedEmptyCoordinates != null) {
      return retrievedEmptyCoordinates();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RetrievingCoordinates value)
        retrievingCoordinates,
    required TResult Function(_RetrievedCoordinates value) retrievedCoordinates,
    required TResult Function(_RetrievedEmptyCoordinates value)
        retrievedEmptyCoordinates,
    required TResult Function(_FailedToRetrieveCoordinates value)
        failedToRetrieveCoordinates,
  }) {
    return retrievedEmptyCoordinates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult? Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult? Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult? Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
  }) {
    return retrievedEmptyCoordinates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) {
    if (retrievedEmptyCoordinates != null) {
      return retrievedEmptyCoordinates(this);
    }
    return orElse();
  }
}

abstract class _RetrievedEmptyCoordinates
    implements RetrieveGeometricCoordinatesState {
  const factory _RetrievedEmptyCoordinates() = _$RetrievedEmptyCoordinatesImpl;
}

/// @nodoc
abstract class _$$FailedToRetrieveCoordinatesImplCopyWith<$Res> {
  factory _$$FailedToRetrieveCoordinatesImplCopyWith(
          _$FailedToRetrieveCoordinatesImpl value,
          $Res Function(_$FailedToRetrieveCoordinatesImpl) then) =
      __$$FailedToRetrieveCoordinatesImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {RetrieveGeometricCoordinatesFailure
          retrieveGeometricCoordinatesFailure});
}

/// @nodoc
class __$$FailedToRetrieveCoordinatesImplCopyWithImpl<$Res>
    extends _$RetrieveGeometricCoordinatesStateCopyWithImpl<$Res,
        _$FailedToRetrieveCoordinatesImpl>
    implements _$$FailedToRetrieveCoordinatesImplCopyWith<$Res> {
  __$$FailedToRetrieveCoordinatesImplCopyWithImpl(
      _$FailedToRetrieveCoordinatesImpl _value,
      $Res Function(_$FailedToRetrieveCoordinatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetrieveGeometricCoordinatesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retrieveGeometricCoordinatesFailure = null,
  }) {
    return _then(_$FailedToRetrieveCoordinatesImpl(
      retrieveGeometricCoordinatesFailure: null ==
              retrieveGeometricCoordinatesFailure
          ? _value.retrieveGeometricCoordinatesFailure
          : retrieveGeometricCoordinatesFailure // ignore: cast_nullable_to_non_nullable
              as RetrieveGeometricCoordinatesFailure,
    ));
  }
}

/// @nodoc

class _$FailedToRetrieveCoordinatesImpl
    implements _FailedToRetrieveCoordinates {
  const _$FailedToRetrieveCoordinatesImpl(
      {required this.retrieveGeometricCoordinatesFailure});

  @override
  final RetrieveGeometricCoordinatesFailure retrieveGeometricCoordinatesFailure;

  @override
  String toString() {
    return 'RetrieveGeometricCoordinatesState.failedToRetrieveCoordinates(retrieveGeometricCoordinatesFailure: $retrieveGeometricCoordinatesFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToRetrieveCoordinatesImpl &&
            (identical(other.retrieveGeometricCoordinatesFailure,
                    retrieveGeometricCoordinatesFailure) ||
                other.retrieveGeometricCoordinatesFailure ==
                    retrieveGeometricCoordinatesFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, retrieveGeometricCoordinatesFailure);

  /// Create a copy of RetrieveGeometricCoordinatesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToRetrieveCoordinatesImplCopyWith<_$FailedToRetrieveCoordinatesImpl>
      get copyWith => __$$FailedToRetrieveCoordinatesImplCopyWithImpl<
          _$FailedToRetrieveCoordinatesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() retrievingCoordinates,
    required TResult Function(double latitude, double longitude)
        retrievedCoordinates,
    required TResult Function() retrievedEmptyCoordinates,
    required TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)
        failedToRetrieveCoordinates,
  }) {
    return failedToRetrieveCoordinates(retrieveGeometricCoordinatesFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? retrievingCoordinates,
    TResult? Function(double latitude, double longitude)? retrievedCoordinates,
    TResult? Function()? retrievedEmptyCoordinates,
    TResult? Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
  }) {
    return failedToRetrieveCoordinates
        ?.call(retrieveGeometricCoordinatesFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? retrievingCoordinates,
    TResult Function(double latitude, double longitude)? retrievedCoordinates,
    TResult Function()? retrievedEmptyCoordinates,
    TResult Function(
            RetrieveGeometricCoordinatesFailure
                retrieveGeometricCoordinatesFailure)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) {
    if (failedToRetrieveCoordinates != null) {
      return failedToRetrieveCoordinates(retrieveGeometricCoordinatesFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RetrievingCoordinates value)
        retrievingCoordinates,
    required TResult Function(_RetrievedCoordinates value) retrievedCoordinates,
    required TResult Function(_RetrievedEmptyCoordinates value)
        retrievedEmptyCoordinates,
    required TResult Function(_FailedToRetrieveCoordinates value)
        failedToRetrieveCoordinates,
  }) {
    return failedToRetrieveCoordinates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult? Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult? Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult? Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
  }) {
    return failedToRetrieveCoordinates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RetrievingCoordinates value)? retrievingCoordinates,
    TResult Function(_RetrievedCoordinates value)? retrievedCoordinates,
    TResult Function(_RetrievedEmptyCoordinates value)?
        retrievedEmptyCoordinates,
    TResult Function(_FailedToRetrieveCoordinates value)?
        failedToRetrieveCoordinates,
    required TResult orElse(),
  }) {
    if (failedToRetrieveCoordinates != null) {
      return failedToRetrieveCoordinates(this);
    }
    return orElse();
  }
}

abstract class _FailedToRetrieveCoordinates
    implements RetrieveGeometricCoordinatesState {
  const factory _FailedToRetrieveCoordinates(
          {required final RetrieveGeometricCoordinatesFailure
              retrieveGeometricCoordinatesFailure}) =
      _$FailedToRetrieveCoordinatesImpl;

  RetrieveGeometricCoordinatesFailure get retrieveGeometricCoordinatesFailure;

  /// Create a copy of RetrieveGeometricCoordinatesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToRetrieveCoordinatesImplCopyWith<_$FailedToRetrieveCoordinatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
