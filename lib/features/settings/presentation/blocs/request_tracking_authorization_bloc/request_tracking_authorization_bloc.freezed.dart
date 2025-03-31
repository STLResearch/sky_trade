// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_tracking_authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestTrackingAuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Request value) request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Request value)? request,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Request value)? request,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTrackingAuthorizationEventCopyWith<$Res> {
  factory $RequestTrackingAuthorizationEventCopyWith(
          RequestTrackingAuthorizationEvent value,
          $Res Function(RequestTrackingAuthorizationEvent) then) =
      _$RequestTrackingAuthorizationEventCopyWithImpl<$Res,
          RequestTrackingAuthorizationEvent>;
}

/// @nodoc
class _$RequestTrackingAuthorizationEventCopyWithImpl<$Res,
        $Val extends RequestTrackingAuthorizationEvent>
    implements $RequestTrackingAuthorizationEventCopyWith<$Res> {
  _$RequestTrackingAuthorizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestTrackingAuthorizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RequestImplCopyWith<$Res> {
  factory _$$RequestImplCopyWith(
          _$RequestImpl value, $Res Function(_$RequestImpl) then) =
      __$$RequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestImplCopyWithImpl<$Res>
    extends _$RequestTrackingAuthorizationEventCopyWithImpl<$Res, _$RequestImpl>
    implements _$$RequestImplCopyWith<$Res> {
  __$$RequestImplCopyWithImpl(
      _$RequestImpl _value, $Res Function(_$RequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTrackingAuthorizationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestImpl implements _Request {
  const _$RequestImpl();

  @override
  String toString() {
    return 'RequestTrackingAuthorizationEvent.request()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() request,
  }) {
    return request();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? request,
  }) {
    return request?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Request value) request,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Request value)? request,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Request value)? request,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _Request implements RequestTrackingAuthorizationEvent {
  const factory _Request() = _$RequestImpl;
}

/// @nodoc
mixin _$RequestTrackingAuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(TrackingStatusEntity trackingStatusEntity)
        maybeAuthorized,
    required TResult Function(TrackingStatusFailure trackingStatusFailure)
        cannotAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult? Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Requesting value) requesting,
    required TResult Function(_MaybeAuthorized value) maybeAuthorized,
    required TResult Function(_CannotAuthorize value) cannotAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Requesting value)? requesting,
    TResult? Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult? Function(_CannotAuthorize value)? cannotAuthorize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Requesting value)? requesting,
    TResult Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult Function(_CannotAuthorize value)? cannotAuthorize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTrackingAuthorizationStateCopyWith<$Res> {
  factory $RequestTrackingAuthorizationStateCopyWith(
          RequestTrackingAuthorizationState value,
          $Res Function(RequestTrackingAuthorizationState) then) =
      _$RequestTrackingAuthorizationStateCopyWithImpl<$Res,
          RequestTrackingAuthorizationState>;
}

/// @nodoc
class _$RequestTrackingAuthorizationStateCopyWithImpl<$Res,
        $Val extends RequestTrackingAuthorizationState>
    implements $RequestTrackingAuthorizationStateCopyWith<$Res> {
  _$RequestTrackingAuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestTrackingAuthorizationState
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
    extends _$RequestTrackingAuthorizationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTrackingAuthorizationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RequestTrackingAuthorizationState.initial()';
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
    required TResult Function() requesting,
    required TResult Function(TrackingStatusEntity trackingStatusEntity)
        maybeAuthorized,
    required TResult Function(TrackingStatusFailure trackingStatusFailure)
        cannotAuthorize,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult? Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
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
    required TResult Function(_Requesting value) requesting,
    required TResult Function(_MaybeAuthorized value) maybeAuthorized,
    required TResult Function(_CannotAuthorize value) cannotAuthorize,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Requesting value)? requesting,
    TResult? Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult? Function(_CannotAuthorize value)? cannotAuthorize,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Requesting value)? requesting,
    TResult Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult Function(_CannotAuthorize value)? cannotAuthorize,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RequestTrackingAuthorizationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RequestingImplCopyWith<$Res> {
  factory _$$RequestingImplCopyWith(
          _$RequestingImpl value, $Res Function(_$RequestingImpl) then) =
      __$$RequestingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestingImplCopyWithImpl<$Res>
    extends _$RequestTrackingAuthorizationStateCopyWithImpl<$Res,
        _$RequestingImpl> implements _$$RequestingImplCopyWith<$Res> {
  __$$RequestingImplCopyWithImpl(
      _$RequestingImpl _value, $Res Function(_$RequestingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTrackingAuthorizationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestingImpl implements _Requesting {
  const _$RequestingImpl();

  @override
  String toString() {
    return 'RequestTrackingAuthorizationState.requesting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(TrackingStatusEntity trackingStatusEntity)
        maybeAuthorized,
    required TResult Function(TrackingStatusFailure trackingStatusFailure)
        cannotAuthorize,
  }) {
    return requesting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult? Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
  }) {
    return requesting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Requesting value) requesting,
    required TResult Function(_MaybeAuthorized value) maybeAuthorized,
    required TResult Function(_CannotAuthorize value) cannotAuthorize,
  }) {
    return requesting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Requesting value)? requesting,
    TResult? Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult? Function(_CannotAuthorize value)? cannotAuthorize,
  }) {
    return requesting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Requesting value)? requesting,
    TResult Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult Function(_CannotAuthorize value)? cannotAuthorize,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting(this);
    }
    return orElse();
  }
}

abstract class _Requesting implements RequestTrackingAuthorizationState {
  const factory _Requesting() = _$RequestingImpl;
}

/// @nodoc
abstract class _$$MaybeAuthorizedImplCopyWith<$Res> {
  factory _$$MaybeAuthorizedImplCopyWith(_$MaybeAuthorizedImpl value,
          $Res Function(_$MaybeAuthorizedImpl) then) =
      __$$MaybeAuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackingStatusEntity trackingStatusEntity});
}

/// @nodoc
class __$$MaybeAuthorizedImplCopyWithImpl<$Res>
    extends _$RequestTrackingAuthorizationStateCopyWithImpl<$Res,
        _$MaybeAuthorizedImpl> implements _$$MaybeAuthorizedImplCopyWith<$Res> {
  __$$MaybeAuthorizedImplCopyWithImpl(
      _$MaybeAuthorizedImpl _value, $Res Function(_$MaybeAuthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTrackingAuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingStatusEntity = null,
  }) {
    return _then(_$MaybeAuthorizedImpl(
      trackingStatusEntity: null == trackingStatusEntity
          ? _value.trackingStatusEntity
          : trackingStatusEntity // ignore: cast_nullable_to_non_nullable
              as TrackingStatusEntity,
    ));
  }
}

/// @nodoc

class _$MaybeAuthorizedImpl implements _MaybeAuthorized {
  const _$MaybeAuthorizedImpl({required this.trackingStatusEntity});

  @override
  final TrackingStatusEntity trackingStatusEntity;

  @override
  String toString() {
    return 'RequestTrackingAuthorizationState.maybeAuthorized(trackingStatusEntity: $trackingStatusEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaybeAuthorizedImpl &&
            (identical(other.trackingStatusEntity, trackingStatusEntity) ||
                other.trackingStatusEntity == trackingStatusEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackingStatusEntity);

  /// Create a copy of RequestTrackingAuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaybeAuthorizedImplCopyWith<_$MaybeAuthorizedImpl> get copyWith =>
      __$$MaybeAuthorizedImplCopyWithImpl<_$MaybeAuthorizedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(TrackingStatusEntity trackingStatusEntity)
        maybeAuthorized,
    required TResult Function(TrackingStatusFailure trackingStatusFailure)
        cannotAuthorize,
  }) {
    return maybeAuthorized(trackingStatusEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult? Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
  }) {
    return maybeAuthorized?.call(trackingStatusEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
    required TResult orElse(),
  }) {
    if (maybeAuthorized != null) {
      return maybeAuthorized(trackingStatusEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Requesting value) requesting,
    required TResult Function(_MaybeAuthorized value) maybeAuthorized,
    required TResult Function(_CannotAuthorize value) cannotAuthorize,
  }) {
    return maybeAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Requesting value)? requesting,
    TResult? Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult? Function(_CannotAuthorize value)? cannotAuthorize,
  }) {
    return maybeAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Requesting value)? requesting,
    TResult Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult Function(_CannotAuthorize value)? cannotAuthorize,
    required TResult orElse(),
  }) {
    if (maybeAuthorized != null) {
      return maybeAuthorized(this);
    }
    return orElse();
  }
}

abstract class _MaybeAuthorized implements RequestTrackingAuthorizationState {
  const factory _MaybeAuthorized(
          {required final TrackingStatusEntity trackingStatusEntity}) =
      _$MaybeAuthorizedImpl;

  TrackingStatusEntity get trackingStatusEntity;

  /// Create a copy of RequestTrackingAuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaybeAuthorizedImplCopyWith<_$MaybeAuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CannotAuthorizeImplCopyWith<$Res> {
  factory _$$CannotAuthorizeImplCopyWith(_$CannotAuthorizeImpl value,
          $Res Function(_$CannotAuthorizeImpl) then) =
      __$$CannotAuthorizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TrackingStatusFailure trackingStatusFailure});
}

/// @nodoc
class __$$CannotAuthorizeImplCopyWithImpl<$Res>
    extends _$RequestTrackingAuthorizationStateCopyWithImpl<$Res,
        _$CannotAuthorizeImpl> implements _$$CannotAuthorizeImplCopyWith<$Res> {
  __$$CannotAuthorizeImplCopyWithImpl(
      _$CannotAuthorizeImpl _value, $Res Function(_$CannotAuthorizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTrackingAuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingStatusFailure = null,
  }) {
    return _then(_$CannotAuthorizeImpl(
      trackingStatusFailure: null == trackingStatusFailure
          ? _value.trackingStatusFailure
          : trackingStatusFailure // ignore: cast_nullable_to_non_nullable
              as TrackingStatusFailure,
    ));
  }
}

/// @nodoc

class _$CannotAuthorizeImpl implements _CannotAuthorize {
  const _$CannotAuthorizeImpl({required this.trackingStatusFailure});

  @override
  final TrackingStatusFailure trackingStatusFailure;

  @override
  String toString() {
    return 'RequestTrackingAuthorizationState.cannotAuthorize(trackingStatusFailure: $trackingStatusFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CannotAuthorizeImpl &&
            (identical(other.trackingStatusFailure, trackingStatusFailure) ||
                other.trackingStatusFailure == trackingStatusFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackingStatusFailure);

  /// Create a copy of RequestTrackingAuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CannotAuthorizeImplCopyWith<_$CannotAuthorizeImpl> get copyWith =>
      __$$CannotAuthorizeImplCopyWithImpl<_$CannotAuthorizeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function(TrackingStatusEntity trackingStatusEntity)
        maybeAuthorized,
    required TResult Function(TrackingStatusFailure trackingStatusFailure)
        cannotAuthorize,
  }) {
    return cannotAuthorize(trackingStatusFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requesting,
    TResult? Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult? Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
  }) {
    return cannotAuthorize?.call(trackingStatusFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function(TrackingStatusEntity trackingStatusEntity)?
        maybeAuthorized,
    TResult Function(TrackingStatusFailure trackingStatusFailure)?
        cannotAuthorize,
    required TResult orElse(),
  }) {
    if (cannotAuthorize != null) {
      return cannotAuthorize(trackingStatusFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Requesting value) requesting,
    required TResult Function(_MaybeAuthorized value) maybeAuthorized,
    required TResult Function(_CannotAuthorize value) cannotAuthorize,
  }) {
    return cannotAuthorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Requesting value)? requesting,
    TResult? Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult? Function(_CannotAuthorize value)? cannotAuthorize,
  }) {
    return cannotAuthorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Requesting value)? requesting,
    TResult Function(_MaybeAuthorized value)? maybeAuthorized,
    TResult Function(_CannotAuthorize value)? cannotAuthorize,
    required TResult orElse(),
  }) {
    if (cannotAuthorize != null) {
      return cannotAuthorize(this);
    }
    return orElse();
  }
}

abstract class _CannotAuthorize implements RequestTrackingAuthorizationState {
  const factory _CannotAuthorize(
          {required final TrackingStatusFailure trackingStatusFailure}) =
      _$CannotAuthorizeImpl;

  TrackingStatusFailure get trackingStatusFailure;

  /// Create a copy of RequestTrackingAuthorizationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CannotAuthorizeImplCopyWith<_$CannotAuthorizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
