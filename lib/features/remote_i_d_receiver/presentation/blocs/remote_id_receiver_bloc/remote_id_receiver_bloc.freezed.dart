// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_id_receiver_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemoteIdReceiverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) listenRemoteIDs,
    required TResult Function(Set<RemoteIdEntity> remoteIdEntities)
        remoteIDsGotten,
    required TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)
        remoteIDsNotGotten,
    required TResult Function(UsedTechnologies technologyType)
        stopListeningRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? listenRemoteIDs,
    TResult? Function(Set<RemoteIdEntity> remoteIdEntities)? remoteIDsGotten,
    TResult? Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        remoteIDsNotGotten,
    TResult? Function(UsedTechnologies technologyType)? stopListeningRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? listenRemoteIDs,
    TResult Function(Set<RemoteIdEntity> remoteIdEntities)? remoteIDsGotten,
    TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        remoteIDsNotGotten,
    TResult Function(UsedTechnologies technologyType)? stopListeningRemoteIDs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenRemoteIDs value) listenRemoteIDs,
    required TResult Function(_RemoteIDsGotten value) remoteIDsGotten,
    required TResult Function(_RemoteIDsNotGotten value) remoteIDsNotGotten,
    required TResult Function(_StopListeningRemoteIDs value)
        stopListeningRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenRemoteIDs value)? listenRemoteIDs,
    TResult? Function(_RemoteIDsGotten value)? remoteIDsGotten,
    TResult? Function(_RemoteIDsNotGotten value)? remoteIDsNotGotten,
    TResult? Function(_StopListeningRemoteIDs value)? stopListeningRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenRemoteIDs value)? listenRemoteIDs,
    TResult Function(_RemoteIDsGotten value)? remoteIDsGotten,
    TResult Function(_RemoteIDsNotGotten value)? remoteIDsNotGotten,
    TResult Function(_StopListeningRemoteIDs value)? stopListeningRemoteIDs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteIdReceiverEventCopyWith<$Res> {
  factory $RemoteIdReceiverEventCopyWith(RemoteIdReceiverEvent value,
          $Res Function(RemoteIdReceiverEvent) then) =
      _$RemoteIdReceiverEventCopyWithImpl<$Res, RemoteIdReceiverEvent>;
}

/// @nodoc
class _$RemoteIdReceiverEventCopyWithImpl<$Res,
        $Val extends RemoteIdReceiverEvent>
    implements $RemoteIdReceiverEventCopyWith<$Res> {
  _$RemoteIdReceiverEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListenRemoteIDsImplCopyWith<$Res> {
  factory _$$ListenRemoteIDsImplCopyWith(_$ListenRemoteIDsImpl value,
          $Res Function(_$ListenRemoteIDsImpl) then) =
      __$$ListenRemoteIDsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UsedTechnologies technologyType});
}

/// @nodoc
class __$$ListenRemoteIDsImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverEventCopyWithImpl<$Res, _$ListenRemoteIDsImpl>
    implements _$$ListenRemoteIDsImplCopyWith<$Res> {
  __$$ListenRemoteIDsImplCopyWithImpl(
      _$ListenRemoteIDsImpl _value, $Res Function(_$ListenRemoteIDsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technologyType = null,
  }) {
    return _then(_$ListenRemoteIDsImpl(
      technologyType: null == technologyType
          ? _value.technologyType
          : technologyType // ignore: cast_nullable_to_non_nullable
              as UsedTechnologies,
    ));
  }
}

/// @nodoc

class _$ListenRemoteIDsImpl implements _ListenRemoteIDs {
  const _$ListenRemoteIDsImpl({required this.technologyType});

  @override
  final UsedTechnologies technologyType;

  @override
  String toString() {
    return 'RemoteIdReceiverEvent.listenRemoteIDs(technologyType: $technologyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenRemoteIDsImpl &&
            (identical(other.technologyType, technologyType) ||
                other.technologyType == technologyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, technologyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenRemoteIDsImplCopyWith<_$ListenRemoteIDsImpl> get copyWith =>
      __$$ListenRemoteIDsImplCopyWithImpl<_$ListenRemoteIDsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) listenRemoteIDs,
    required TResult Function(Set<RemoteIdEntity> remoteIdEntities)
        remoteIDsGotten,
    required TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)
        remoteIDsNotGotten,
    required TResult Function(UsedTechnologies technologyType)
        stopListeningRemoteIDs,
  }) {
    return listenRemoteIDs(technologyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? listenRemoteIDs,
    TResult? Function(Set<RemoteIdEntity> remoteIdEntities)? remoteIDsGotten,
    TResult? Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        remoteIDsNotGotten,
    TResult? Function(UsedTechnologies technologyType)? stopListeningRemoteIDs,
  }) {
    return listenRemoteIDs?.call(technologyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? listenRemoteIDs,
    TResult Function(Set<RemoteIdEntity> remoteIdEntities)? remoteIDsGotten,
    TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        remoteIDsNotGotten,
    TResult Function(UsedTechnologies technologyType)? stopListeningRemoteIDs,
    required TResult orElse(),
  }) {
    if (listenRemoteIDs != null) {
      return listenRemoteIDs(technologyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenRemoteIDs value) listenRemoteIDs,
    required TResult Function(_RemoteIDsGotten value) remoteIDsGotten,
    required TResult Function(_RemoteIDsNotGotten value) remoteIDsNotGotten,
    required TResult Function(_StopListeningRemoteIDs value)
        stopListeningRemoteIDs,
  }) {
    return listenRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenRemoteIDs value)? listenRemoteIDs,
    TResult? Function(_RemoteIDsGotten value)? remoteIDsGotten,
    TResult? Function(_RemoteIDsNotGotten value)? remoteIDsNotGotten,
    TResult? Function(_StopListeningRemoteIDs value)? stopListeningRemoteIDs,
  }) {
    return listenRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenRemoteIDs value)? listenRemoteIDs,
    TResult Function(_RemoteIDsGotten value)? remoteIDsGotten,
    TResult Function(_RemoteIDsNotGotten value)? remoteIDsNotGotten,
    TResult Function(_StopListeningRemoteIDs value)? stopListeningRemoteIDs,
    required TResult orElse(),
  }) {
    if (listenRemoteIDs != null) {
      return listenRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _ListenRemoteIDs implements RemoteIdReceiverEvent {
  const factory _ListenRemoteIDs(
      {required final UsedTechnologies technologyType}) = _$ListenRemoteIDsImpl;

  UsedTechnologies get technologyType;
  @JsonKey(ignore: true)
  _$$ListenRemoteIDsImplCopyWith<_$ListenRemoteIDsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteIDsGottenImplCopyWith<$Res> {
  factory _$$RemoteIDsGottenImplCopyWith(_$RemoteIDsGottenImpl value,
          $Res Function(_$RemoteIDsGottenImpl) then) =
      __$$RemoteIDsGottenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<RemoteIdEntity> remoteIdEntities});
}

/// @nodoc
class __$$RemoteIDsGottenImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverEventCopyWithImpl<$Res, _$RemoteIDsGottenImpl>
    implements _$$RemoteIDsGottenImplCopyWith<$Res> {
  __$$RemoteIDsGottenImplCopyWithImpl(
      _$RemoteIDsGottenImpl _value, $Res Function(_$RemoteIDsGottenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteIdEntities = null,
  }) {
    return _then(_$RemoteIDsGottenImpl(
      remoteIdEntities: null == remoteIdEntities
          ? _value._remoteIdEntities
          : remoteIdEntities // ignore: cast_nullable_to_non_nullable
              as Set<RemoteIdEntity>,
    ));
  }
}

/// @nodoc

class _$RemoteIDsGottenImpl implements _RemoteIDsGotten {
  const _$RemoteIDsGottenImpl(
      {required final Set<RemoteIdEntity> remoteIdEntities})
      : _remoteIdEntities = remoteIdEntities;

  final Set<RemoteIdEntity> _remoteIdEntities;
  @override
  Set<RemoteIdEntity> get remoteIdEntities {
    if (_remoteIdEntities is EqualUnmodifiableSetView) return _remoteIdEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_remoteIdEntities);
  }

  @override
  String toString() {
    return 'RemoteIdReceiverEvent.remoteIDsGotten(remoteIdEntities: $remoteIdEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteIDsGottenImpl &&
            const DeepCollectionEquality()
                .equals(other._remoteIdEntities, _remoteIdEntities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_remoteIdEntities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteIDsGottenImplCopyWith<_$RemoteIDsGottenImpl> get copyWith =>
      __$$RemoteIDsGottenImplCopyWithImpl<_$RemoteIDsGottenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) listenRemoteIDs,
    required TResult Function(Set<RemoteIdEntity> remoteIdEntities)
        remoteIDsGotten,
    required TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)
        remoteIDsNotGotten,
    required TResult Function(UsedTechnologies technologyType)
        stopListeningRemoteIDs,
  }) {
    return remoteIDsGotten(remoteIdEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? listenRemoteIDs,
    TResult? Function(Set<RemoteIdEntity> remoteIdEntities)? remoteIDsGotten,
    TResult? Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        remoteIDsNotGotten,
    TResult? Function(UsedTechnologies technologyType)? stopListeningRemoteIDs,
  }) {
    return remoteIDsGotten?.call(remoteIdEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? listenRemoteIDs,
    TResult Function(Set<RemoteIdEntity> remoteIdEntities)? remoteIDsGotten,
    TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        remoteIDsNotGotten,
    TResult Function(UsedTechnologies technologyType)? stopListeningRemoteIDs,
    required TResult orElse(),
  }) {
    if (remoteIDsGotten != null) {
      return remoteIDsGotten(remoteIdEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenRemoteIDs value) listenRemoteIDs,
    required TResult Function(_RemoteIDsGotten value) remoteIDsGotten,
    required TResult Function(_RemoteIDsNotGotten value) remoteIDsNotGotten,
    required TResult Function(_StopListeningRemoteIDs value)
        stopListeningRemoteIDs,
  }) {
    return remoteIDsGotten(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenRemoteIDs value)? listenRemoteIDs,
    TResult? Function(_RemoteIDsGotten value)? remoteIDsGotten,
    TResult? Function(_RemoteIDsNotGotten value)? remoteIDsNotGotten,
    TResult? Function(_StopListeningRemoteIDs value)? stopListeningRemoteIDs,
  }) {
    return remoteIDsGotten?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenRemoteIDs value)? listenRemoteIDs,
    TResult Function(_RemoteIDsGotten value)? remoteIDsGotten,
    TResult Function(_RemoteIDsNotGotten value)? remoteIDsNotGotten,
    TResult Function(_StopListeningRemoteIDs value)? stopListeningRemoteIDs,
    required TResult orElse(),
  }) {
    if (remoteIDsGotten != null) {
      return remoteIDsGotten(this);
    }
    return orElse();
  }
}

abstract class _RemoteIDsGotten implements RemoteIdReceiverEvent {
  const factory _RemoteIDsGotten(
          {required final Set<RemoteIdEntity> remoteIdEntities}) =
      _$RemoteIDsGottenImpl;

  Set<RemoteIdEntity> get remoteIdEntities;
  @JsonKey(ignore: true)
  _$$RemoteIDsGottenImplCopyWith<_$RemoteIDsGottenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteIDsNotGottenImplCopyWith<$Res> {
  factory _$$RemoteIDsNotGottenImplCopyWith(_$RemoteIDsNotGottenImpl value,
          $Res Function(_$RemoteIDsNotGottenImpl) then) =
      __$$RemoteIDsNotGottenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteIdReceiverFailure remoteIdReceiverFailure});
}

/// @nodoc
class __$$RemoteIDsNotGottenImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverEventCopyWithImpl<$Res, _$RemoteIDsNotGottenImpl>
    implements _$$RemoteIDsNotGottenImplCopyWith<$Res> {
  __$$RemoteIDsNotGottenImplCopyWithImpl(_$RemoteIDsNotGottenImpl _value,
      $Res Function(_$RemoteIDsNotGottenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteIdReceiverFailure = null,
  }) {
    return _then(_$RemoteIDsNotGottenImpl(
      remoteIdReceiverFailure: null == remoteIdReceiverFailure
          ? _value.remoteIdReceiverFailure
          : remoteIdReceiverFailure // ignore: cast_nullable_to_non_nullable
              as RemoteIdReceiverFailure,
    ));
  }
}

/// @nodoc

class _$RemoteIDsNotGottenImpl implements _RemoteIDsNotGotten {
  const _$RemoteIDsNotGottenImpl({required this.remoteIdReceiverFailure});

  @override
  final RemoteIdReceiverFailure remoteIdReceiverFailure;

  @override
  String toString() {
    return 'RemoteIdReceiverEvent.remoteIDsNotGotten(remoteIdReceiverFailure: $remoteIdReceiverFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteIDsNotGottenImpl &&
            (identical(
                    other.remoteIdReceiverFailure, remoteIdReceiverFailure) ||
                other.remoteIdReceiverFailure == remoteIdReceiverFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteIdReceiverFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteIDsNotGottenImplCopyWith<_$RemoteIDsNotGottenImpl> get copyWith =>
      __$$RemoteIDsNotGottenImplCopyWithImpl<_$RemoteIDsNotGottenImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) listenRemoteIDs,
    required TResult Function(Set<RemoteIdEntity> remoteIdEntities)
        remoteIDsGotten,
    required TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)
        remoteIDsNotGotten,
    required TResult Function(UsedTechnologies technologyType)
        stopListeningRemoteIDs,
  }) {
    return remoteIDsNotGotten(remoteIdReceiverFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? listenRemoteIDs,
    TResult? Function(Set<RemoteIdEntity> remoteIdEntities)? remoteIDsGotten,
    TResult? Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        remoteIDsNotGotten,
    TResult? Function(UsedTechnologies technologyType)? stopListeningRemoteIDs,
  }) {
    return remoteIDsNotGotten?.call(remoteIdReceiverFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? listenRemoteIDs,
    TResult Function(Set<RemoteIdEntity> remoteIdEntities)? remoteIDsGotten,
    TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        remoteIDsNotGotten,
    TResult Function(UsedTechnologies technologyType)? stopListeningRemoteIDs,
    required TResult orElse(),
  }) {
    if (remoteIDsNotGotten != null) {
      return remoteIDsNotGotten(remoteIdReceiverFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenRemoteIDs value) listenRemoteIDs,
    required TResult Function(_RemoteIDsGotten value) remoteIDsGotten,
    required TResult Function(_RemoteIDsNotGotten value) remoteIDsNotGotten,
    required TResult Function(_StopListeningRemoteIDs value)
        stopListeningRemoteIDs,
  }) {
    return remoteIDsNotGotten(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenRemoteIDs value)? listenRemoteIDs,
    TResult? Function(_RemoteIDsGotten value)? remoteIDsGotten,
    TResult? Function(_RemoteIDsNotGotten value)? remoteIDsNotGotten,
    TResult? Function(_StopListeningRemoteIDs value)? stopListeningRemoteIDs,
  }) {
    return remoteIDsNotGotten?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenRemoteIDs value)? listenRemoteIDs,
    TResult Function(_RemoteIDsGotten value)? remoteIDsGotten,
    TResult Function(_RemoteIDsNotGotten value)? remoteIDsNotGotten,
    TResult Function(_StopListeningRemoteIDs value)? stopListeningRemoteIDs,
    required TResult orElse(),
  }) {
    if (remoteIDsNotGotten != null) {
      return remoteIDsNotGotten(this);
    }
    return orElse();
  }
}

abstract class _RemoteIDsNotGotten implements RemoteIdReceiverEvent {
  const factory _RemoteIDsNotGotten(
          {required final RemoteIdReceiverFailure remoteIdReceiverFailure}) =
      _$RemoteIDsNotGottenImpl;

  RemoteIdReceiverFailure get remoteIdReceiverFailure;
  @JsonKey(ignore: true)
  _$$RemoteIDsNotGottenImplCopyWith<_$RemoteIDsNotGottenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopListeningRemoteIDsImplCopyWith<$Res> {
  factory _$$StopListeningRemoteIDsImplCopyWith(
          _$StopListeningRemoteIDsImpl value,
          $Res Function(_$StopListeningRemoteIDsImpl) then) =
      __$$StopListeningRemoteIDsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UsedTechnologies technologyType});
}

/// @nodoc
class __$$StopListeningRemoteIDsImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverEventCopyWithImpl<$Res,
        _$StopListeningRemoteIDsImpl>
    implements _$$StopListeningRemoteIDsImplCopyWith<$Res> {
  __$$StopListeningRemoteIDsImplCopyWithImpl(
      _$StopListeningRemoteIDsImpl _value,
      $Res Function(_$StopListeningRemoteIDsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? technologyType = null,
  }) {
    return _then(_$StopListeningRemoteIDsImpl(
      technologyType: null == technologyType
          ? _value.technologyType
          : technologyType // ignore: cast_nullable_to_non_nullable
              as UsedTechnologies,
    ));
  }
}

/// @nodoc

class _$StopListeningRemoteIDsImpl implements _StopListeningRemoteIDs {
  const _$StopListeningRemoteIDsImpl({required this.technologyType});

  @override
  final UsedTechnologies technologyType;

  @override
  String toString() {
    return 'RemoteIdReceiverEvent.stopListeningRemoteIDs(technologyType: $technologyType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopListeningRemoteIDsImpl &&
            (identical(other.technologyType, technologyType) ||
                other.technologyType == technologyType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, technologyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StopListeningRemoteIDsImplCopyWith<_$StopListeningRemoteIDsImpl>
      get copyWith => __$$StopListeningRemoteIDsImplCopyWithImpl<
          _$StopListeningRemoteIDsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UsedTechnologies technologyType) listenRemoteIDs,
    required TResult Function(Set<RemoteIdEntity> remoteIdEntities)
        remoteIDsGotten,
    required TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)
        remoteIDsNotGotten,
    required TResult Function(UsedTechnologies technologyType)
        stopListeningRemoteIDs,
  }) {
    return stopListeningRemoteIDs(technologyType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UsedTechnologies technologyType)? listenRemoteIDs,
    TResult? Function(Set<RemoteIdEntity> remoteIdEntities)? remoteIDsGotten,
    TResult? Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        remoteIDsNotGotten,
    TResult? Function(UsedTechnologies technologyType)? stopListeningRemoteIDs,
  }) {
    return stopListeningRemoteIDs?.call(technologyType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UsedTechnologies technologyType)? listenRemoteIDs,
    TResult Function(Set<RemoteIdEntity> remoteIdEntities)? remoteIDsGotten,
    TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        remoteIDsNotGotten,
    TResult Function(UsedTechnologies technologyType)? stopListeningRemoteIDs,
    required TResult orElse(),
  }) {
    if (stopListeningRemoteIDs != null) {
      return stopListeningRemoteIDs(technologyType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenRemoteIDs value) listenRemoteIDs,
    required TResult Function(_RemoteIDsGotten value) remoteIDsGotten,
    required TResult Function(_RemoteIDsNotGotten value) remoteIDsNotGotten,
    required TResult Function(_StopListeningRemoteIDs value)
        stopListeningRemoteIDs,
  }) {
    return stopListeningRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenRemoteIDs value)? listenRemoteIDs,
    TResult? Function(_RemoteIDsGotten value)? remoteIDsGotten,
    TResult? Function(_RemoteIDsNotGotten value)? remoteIDsNotGotten,
    TResult? Function(_StopListeningRemoteIDs value)? stopListeningRemoteIDs,
  }) {
    return stopListeningRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenRemoteIDs value)? listenRemoteIDs,
    TResult Function(_RemoteIDsGotten value)? remoteIDsGotten,
    TResult Function(_RemoteIDsNotGotten value)? remoteIDsNotGotten,
    TResult Function(_StopListeningRemoteIDs value)? stopListeningRemoteIDs,
    required TResult orElse(),
  }) {
    if (stopListeningRemoteIDs != null) {
      return stopListeningRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _StopListeningRemoteIDs implements RemoteIdReceiverEvent {
  const factory _StopListeningRemoteIDs(
          {required final UsedTechnologies technologyType}) =
      _$StopListeningRemoteIDsImpl;

  UsedTechnologies get technologyType;
  @JsonKey(ignore: true)
  _$$StopListeningRemoteIDsImplCopyWith<_$StopListeningRemoteIDsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RemoteIdReceiverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRemoteIDs,
    required TResult Function(Set<RemoteIdEntity> remoteIdEntities)
        gotRemoteIDs,
    required TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)
        failedToGetRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRemoteIDs,
    TResult? Function(Set<RemoteIdEntity> remoteIdEntities)? gotRemoteIDs,
    TResult? Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        failedToGetRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRemoteIDs,
    TResult Function(Set<RemoteIdEntity> remoteIdEntities)? gotRemoteIDs,
    TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        failedToGetRemoteIDs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRemoteIDs value) gettingRemoteIDs,
    required TResult Function(_GotRemoteIDs value) gotRemoteIDs,
    required TResult Function(_FailedToGetRemoteIDs value) failedToGetRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRemoteIDs value)? gettingRemoteIDs,
    TResult? Function(_GotRemoteIDs value)? gotRemoteIDs,
    TResult? Function(_FailedToGetRemoteIDs value)? failedToGetRemoteIDs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRemoteIDs value)? gettingRemoteIDs,
    TResult Function(_GotRemoteIDs value)? gotRemoteIDs,
    TResult Function(_FailedToGetRemoteIDs value)? failedToGetRemoteIDs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteIdReceiverStateCopyWith<$Res> {
  factory $RemoteIdReceiverStateCopyWith(RemoteIdReceiverState value,
          $Res Function(RemoteIdReceiverState) then) =
      _$RemoteIdReceiverStateCopyWithImpl<$Res, RemoteIdReceiverState>;
}

/// @nodoc
class _$RemoteIdReceiverStateCopyWithImpl<$Res,
        $Val extends RemoteIdReceiverState>
    implements $RemoteIdReceiverStateCopyWith<$Res> {
  _$RemoteIdReceiverStateCopyWithImpl(this._value, this._then);

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
    extends _$RemoteIdReceiverStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RemoteIdReceiverState.initial()';
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
    required TResult Function() gettingRemoteIDs,
    required TResult Function(Set<RemoteIdEntity> remoteIdEntities)
        gotRemoteIDs,
    required TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)
        failedToGetRemoteIDs,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRemoteIDs,
    TResult? Function(Set<RemoteIdEntity> remoteIdEntities)? gotRemoteIDs,
    TResult? Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        failedToGetRemoteIDs,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRemoteIDs,
    TResult Function(Set<RemoteIdEntity> remoteIdEntities)? gotRemoteIDs,
    TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        failedToGetRemoteIDs,
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
    required TResult Function(_GettingRemoteIDs value) gettingRemoteIDs,
    required TResult Function(_GotRemoteIDs value) gotRemoteIDs,
    required TResult Function(_FailedToGetRemoteIDs value) failedToGetRemoteIDs,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRemoteIDs value)? gettingRemoteIDs,
    TResult? Function(_GotRemoteIDs value)? gotRemoteIDs,
    TResult? Function(_FailedToGetRemoteIDs value)? failedToGetRemoteIDs,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRemoteIDs value)? gettingRemoteIDs,
    TResult Function(_GotRemoteIDs value)? gotRemoteIDs,
    TResult Function(_FailedToGetRemoteIDs value)? failedToGetRemoteIDs,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RemoteIdReceiverState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingRemoteIDsImplCopyWith<$Res> {
  factory _$$GettingRemoteIDsImplCopyWith(_$GettingRemoteIDsImpl value,
          $Res Function(_$GettingRemoteIDsImpl) then) =
      __$$GettingRemoteIDsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingRemoteIDsImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverStateCopyWithImpl<$Res, _$GettingRemoteIDsImpl>
    implements _$$GettingRemoteIDsImplCopyWith<$Res> {
  __$$GettingRemoteIDsImplCopyWithImpl(_$GettingRemoteIDsImpl _value,
      $Res Function(_$GettingRemoteIDsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GettingRemoteIDsImpl implements _GettingRemoteIDs {
  const _$GettingRemoteIDsImpl();

  @override
  String toString() {
    return 'RemoteIdReceiverState.gettingRemoteIDs()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingRemoteIDsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRemoteIDs,
    required TResult Function(Set<RemoteIdEntity> remoteIdEntities)
        gotRemoteIDs,
    required TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)
        failedToGetRemoteIDs,
  }) {
    return gettingRemoteIDs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRemoteIDs,
    TResult? Function(Set<RemoteIdEntity> remoteIdEntities)? gotRemoteIDs,
    TResult? Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        failedToGetRemoteIDs,
  }) {
    return gettingRemoteIDs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRemoteIDs,
    TResult Function(Set<RemoteIdEntity> remoteIdEntities)? gotRemoteIDs,
    TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        failedToGetRemoteIDs,
    required TResult orElse(),
  }) {
    if (gettingRemoteIDs != null) {
      return gettingRemoteIDs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRemoteIDs value) gettingRemoteIDs,
    required TResult Function(_GotRemoteIDs value) gotRemoteIDs,
    required TResult Function(_FailedToGetRemoteIDs value) failedToGetRemoteIDs,
  }) {
    return gettingRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRemoteIDs value)? gettingRemoteIDs,
    TResult? Function(_GotRemoteIDs value)? gotRemoteIDs,
    TResult? Function(_FailedToGetRemoteIDs value)? failedToGetRemoteIDs,
  }) {
    return gettingRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRemoteIDs value)? gettingRemoteIDs,
    TResult Function(_GotRemoteIDs value)? gotRemoteIDs,
    TResult Function(_FailedToGetRemoteIDs value)? failedToGetRemoteIDs,
    required TResult orElse(),
  }) {
    if (gettingRemoteIDs != null) {
      return gettingRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _GettingRemoteIDs implements RemoteIdReceiverState {
  const factory _GettingRemoteIDs() = _$GettingRemoteIDsImpl;
}

/// @nodoc
abstract class _$$GotRemoteIDsImplCopyWith<$Res> {
  factory _$$GotRemoteIDsImplCopyWith(
          _$GotRemoteIDsImpl value, $Res Function(_$GotRemoteIDsImpl) then) =
      __$$GotRemoteIDsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<RemoteIdEntity> remoteIdEntities});
}

/// @nodoc
class __$$GotRemoteIDsImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverStateCopyWithImpl<$Res, _$GotRemoteIDsImpl>
    implements _$$GotRemoteIDsImplCopyWith<$Res> {
  __$$GotRemoteIDsImplCopyWithImpl(
      _$GotRemoteIDsImpl _value, $Res Function(_$GotRemoteIDsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteIdEntities = null,
  }) {
    return _then(_$GotRemoteIDsImpl(
      remoteIdEntities: null == remoteIdEntities
          ? _value._remoteIdEntities
          : remoteIdEntities // ignore: cast_nullable_to_non_nullable
              as Set<RemoteIdEntity>,
    ));
  }
}

/// @nodoc

class _$GotRemoteIDsImpl implements _GotRemoteIDs {
  const _$GotRemoteIDsImpl(
      {required final Set<RemoteIdEntity> remoteIdEntities})
      : _remoteIdEntities = remoteIdEntities;

  final Set<RemoteIdEntity> _remoteIdEntities;
  @override
  Set<RemoteIdEntity> get remoteIdEntities {
    if (_remoteIdEntities is EqualUnmodifiableSetView) return _remoteIdEntities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_remoteIdEntities);
  }

  @override
  String toString() {
    return 'RemoteIdReceiverState.gotRemoteIDs(remoteIdEntities: $remoteIdEntities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GotRemoteIDsImpl &&
            const DeepCollectionEquality()
                .equals(other._remoteIdEntities, _remoteIdEntities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_remoteIdEntities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GotRemoteIDsImplCopyWith<_$GotRemoteIDsImpl> get copyWith =>
      __$$GotRemoteIDsImplCopyWithImpl<_$GotRemoteIDsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRemoteIDs,
    required TResult Function(Set<RemoteIdEntity> remoteIdEntities)
        gotRemoteIDs,
    required TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)
        failedToGetRemoteIDs,
  }) {
    return gotRemoteIDs(remoteIdEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRemoteIDs,
    TResult? Function(Set<RemoteIdEntity> remoteIdEntities)? gotRemoteIDs,
    TResult? Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        failedToGetRemoteIDs,
  }) {
    return gotRemoteIDs?.call(remoteIdEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRemoteIDs,
    TResult Function(Set<RemoteIdEntity> remoteIdEntities)? gotRemoteIDs,
    TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        failedToGetRemoteIDs,
    required TResult orElse(),
  }) {
    if (gotRemoteIDs != null) {
      return gotRemoteIDs(remoteIdEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRemoteIDs value) gettingRemoteIDs,
    required TResult Function(_GotRemoteIDs value) gotRemoteIDs,
    required TResult Function(_FailedToGetRemoteIDs value) failedToGetRemoteIDs,
  }) {
    return gotRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRemoteIDs value)? gettingRemoteIDs,
    TResult? Function(_GotRemoteIDs value)? gotRemoteIDs,
    TResult? Function(_FailedToGetRemoteIDs value)? failedToGetRemoteIDs,
  }) {
    return gotRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRemoteIDs value)? gettingRemoteIDs,
    TResult Function(_GotRemoteIDs value)? gotRemoteIDs,
    TResult Function(_FailedToGetRemoteIDs value)? failedToGetRemoteIDs,
    required TResult orElse(),
  }) {
    if (gotRemoteIDs != null) {
      return gotRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _GotRemoteIDs implements RemoteIdReceiverState {
  const factory _GotRemoteIDs(
          {required final Set<RemoteIdEntity> remoteIdEntities}) =
      _$GotRemoteIDsImpl;

  Set<RemoteIdEntity> get remoteIdEntities;
  @JsonKey(ignore: true)
  _$$GotRemoteIDsImplCopyWith<_$GotRemoteIDsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToGetRemoteIDsImplCopyWith<$Res> {
  factory _$$FailedToGetRemoteIDsImplCopyWith(_$FailedToGetRemoteIDsImpl value,
          $Res Function(_$FailedToGetRemoteIDsImpl) then) =
      __$$FailedToGetRemoteIDsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RemoteIdReceiverFailure remoteIdReceiverFailure});
}

/// @nodoc
class __$$FailedToGetRemoteIDsImplCopyWithImpl<$Res>
    extends _$RemoteIdReceiverStateCopyWithImpl<$Res,
        _$FailedToGetRemoteIDsImpl>
    implements _$$FailedToGetRemoteIDsImplCopyWith<$Res> {
  __$$FailedToGetRemoteIDsImplCopyWithImpl(_$FailedToGetRemoteIDsImpl _value,
      $Res Function(_$FailedToGetRemoteIDsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteIdReceiverFailure = null,
  }) {
    return _then(_$FailedToGetRemoteIDsImpl(
      remoteIdReceiverFailure: null == remoteIdReceiverFailure
          ? _value.remoteIdReceiverFailure
          : remoteIdReceiverFailure // ignore: cast_nullable_to_non_nullable
              as RemoteIdReceiverFailure,
    ));
  }
}

/// @nodoc

class _$FailedToGetRemoteIDsImpl implements _FailedToGetRemoteIDs {
  const _$FailedToGetRemoteIDsImpl({required this.remoteIdReceiverFailure});

  @override
  final RemoteIdReceiverFailure remoteIdReceiverFailure;

  @override
  String toString() {
    return 'RemoteIdReceiverState.failedToGetRemoteIDs(remoteIdReceiverFailure: $remoteIdReceiverFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToGetRemoteIDsImpl &&
            (identical(
                    other.remoteIdReceiverFailure, remoteIdReceiverFailure) ||
                other.remoteIdReceiverFailure == remoteIdReceiverFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteIdReceiverFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToGetRemoteIDsImplCopyWith<_$FailedToGetRemoteIDsImpl>
      get copyWith =>
          __$$FailedToGetRemoteIDsImplCopyWithImpl<_$FailedToGetRemoteIDsImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingRemoteIDs,
    required TResult Function(Set<RemoteIdEntity> remoteIdEntities)
        gotRemoteIDs,
    required TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)
        failedToGetRemoteIDs,
  }) {
    return failedToGetRemoteIDs(remoteIdReceiverFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingRemoteIDs,
    TResult? Function(Set<RemoteIdEntity> remoteIdEntities)? gotRemoteIDs,
    TResult? Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        failedToGetRemoteIDs,
  }) {
    return failedToGetRemoteIDs?.call(remoteIdReceiverFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingRemoteIDs,
    TResult Function(Set<RemoteIdEntity> remoteIdEntities)? gotRemoteIDs,
    TResult Function(RemoteIdReceiverFailure remoteIdReceiverFailure)?
        failedToGetRemoteIDs,
    required TResult orElse(),
  }) {
    if (failedToGetRemoteIDs != null) {
      return failedToGetRemoteIDs(remoteIdReceiverFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingRemoteIDs value) gettingRemoteIDs,
    required TResult Function(_GotRemoteIDs value) gotRemoteIDs,
    required TResult Function(_FailedToGetRemoteIDs value) failedToGetRemoteIDs,
  }) {
    return failedToGetRemoteIDs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingRemoteIDs value)? gettingRemoteIDs,
    TResult? Function(_GotRemoteIDs value)? gotRemoteIDs,
    TResult? Function(_FailedToGetRemoteIDs value)? failedToGetRemoteIDs,
  }) {
    return failedToGetRemoteIDs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingRemoteIDs value)? gettingRemoteIDs,
    TResult Function(_GotRemoteIDs value)? gotRemoteIDs,
    TResult Function(_FailedToGetRemoteIDs value)? failedToGetRemoteIDs,
    required TResult orElse(),
  }) {
    if (failedToGetRemoteIDs != null) {
      return failedToGetRemoteIDs(this);
    }
    return orElse();
  }
}

abstract class _FailedToGetRemoteIDs implements RemoteIdReceiverState {
  const factory _FailedToGetRemoteIDs(
          {required final RemoteIdReceiverFailure remoteIdReceiverFailure}) =
      _$FailedToGetRemoteIDsImpl;

  RemoteIdReceiverFailure get remoteIdReceiverFailure;
  @JsonKey(ignore: true)
  _$$FailedToGetRemoteIDsImplCopyWith<_$FailedToGetRemoteIDsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
