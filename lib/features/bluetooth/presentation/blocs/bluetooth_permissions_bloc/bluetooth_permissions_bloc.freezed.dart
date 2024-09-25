// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluetooth_permissions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BluetoothPermissionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestPermissions value) requestPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestPermissions value)? requestPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestPermissions value)? requestPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothPermissionsEventCopyWith<$Res> {
  factory $BluetoothPermissionsEventCopyWith(BluetoothPermissionsEvent value,
          $Res Function(BluetoothPermissionsEvent) then) =
      _$BluetoothPermissionsEventCopyWithImpl<$Res, BluetoothPermissionsEvent>;
}

/// @nodoc
class _$BluetoothPermissionsEventCopyWithImpl<$Res,
        $Val extends BluetoothPermissionsEvent>
    implements $BluetoothPermissionsEventCopyWith<$Res> {
  _$BluetoothPermissionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestPermissionsImplCopyWith<$Res> {
  factory _$$RequestPermissionsImplCopyWith(_$RequestPermissionsImpl value,
          $Res Function(_$RequestPermissionsImpl) then) =
      __$$RequestPermissionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestPermissionsImplCopyWithImpl<$Res>
    extends _$BluetoothPermissionsEventCopyWithImpl<$Res,
        _$RequestPermissionsImpl>
    implements _$$RequestPermissionsImplCopyWith<$Res> {
  __$$RequestPermissionsImplCopyWithImpl(_$RequestPermissionsImpl _value,
      $Res Function(_$RequestPermissionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestPermissionsImpl implements _RequestPermissions {
  const _$RequestPermissionsImpl();

  @override
  String toString() {
    return 'BluetoothPermissionsEvent.requestPermissions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestPermissionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestPermissions,
  }) {
    return requestPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestPermissions,
  }) {
    return requestPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestPermissions,
    required TResult orElse(),
  }) {
    if (requestPermissions != null) {
      return requestPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestPermissions value) requestPermissions,
  }) {
    return requestPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestPermissions value)? requestPermissions,
  }) {
    return requestPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestPermissions value)? requestPermissions,
    required TResult orElse(),
  }) {
    if (requestPermissions != null) {
      return requestPermissions(this);
    }
    return orElse();
  }
}

abstract class _RequestPermissions implements BluetoothPermissionsEvent {
  const factory _RequestPermissions() = _$RequestPermissionsImpl;
}

/// @nodoc
mixin _$BluetoothPermissionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermissions,
    required TResult Function(
            BluetoothPermissionsEntity bluetoothPermissionsEntity)
        maybeGrantedPermissions,
    required TResult Function(
            BluetoothPermissionsFailure bluetoothPermissionsFailure)
        cannotRequestPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermissions,
    TResult? Function(BluetoothPermissionsEntity bluetoothPermissionsEntity)?
        maybeGrantedPermissions,
    TResult? Function(BluetoothPermissionsFailure bluetoothPermissionsFailure)?
        cannotRequestPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermissions,
    TResult Function(BluetoothPermissionsEntity bluetoothPermissionsEntity)?
        maybeGrantedPermissions,
    TResult Function(BluetoothPermissionsFailure bluetoothPermissionsFailure)?
        cannotRequestPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermissions value)
        requestingPermissions,
    required TResult Function(_MaybeGrantedPermissions value)
        maybeGrantedPermissions,
    required TResult Function(_CannotRequestPermissions value)
        cannotRequestPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermissions value)? requestingPermissions,
    TResult? Function(_MaybeGrantedPermissions value)? maybeGrantedPermissions,
    TResult? Function(_CannotRequestPermissions value)?
        cannotRequestPermissions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermissions value)? requestingPermissions,
    TResult Function(_MaybeGrantedPermissions value)? maybeGrantedPermissions,
    TResult Function(_CannotRequestPermissions value)? cannotRequestPermissions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothPermissionsStateCopyWith<$Res> {
  factory $BluetoothPermissionsStateCopyWith(BluetoothPermissionsState value,
          $Res Function(BluetoothPermissionsState) then) =
      _$BluetoothPermissionsStateCopyWithImpl<$Res, BluetoothPermissionsState>;
}

/// @nodoc
class _$BluetoothPermissionsStateCopyWithImpl<$Res,
        $Val extends BluetoothPermissionsState>
    implements $BluetoothPermissionsStateCopyWith<$Res> {
  _$BluetoothPermissionsStateCopyWithImpl(this._value, this._then);

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
    extends _$BluetoothPermissionsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'BluetoothPermissionsState.initial()';
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
    required TResult Function() requestingPermissions,
    required TResult Function(
            BluetoothPermissionsEntity bluetoothPermissionsEntity)
        maybeGrantedPermissions,
    required TResult Function(
            BluetoothPermissionsFailure bluetoothPermissionsFailure)
        cannotRequestPermissions,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermissions,
    TResult? Function(BluetoothPermissionsEntity bluetoothPermissionsEntity)?
        maybeGrantedPermissions,
    TResult? Function(BluetoothPermissionsFailure bluetoothPermissionsFailure)?
        cannotRequestPermissions,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermissions,
    TResult Function(BluetoothPermissionsEntity bluetoothPermissionsEntity)?
        maybeGrantedPermissions,
    TResult Function(BluetoothPermissionsFailure bluetoothPermissionsFailure)?
        cannotRequestPermissions,
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
    required TResult Function(_RequestingPermissions value)
        requestingPermissions,
    required TResult Function(_MaybeGrantedPermissions value)
        maybeGrantedPermissions,
    required TResult Function(_CannotRequestPermissions value)
        cannotRequestPermissions,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermissions value)? requestingPermissions,
    TResult? Function(_MaybeGrantedPermissions value)? maybeGrantedPermissions,
    TResult? Function(_CannotRequestPermissions value)?
        cannotRequestPermissions,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermissions value)? requestingPermissions,
    TResult Function(_MaybeGrantedPermissions value)? maybeGrantedPermissions,
    TResult Function(_CannotRequestPermissions value)? cannotRequestPermissions,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BluetoothPermissionsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RequestingPermissionsImplCopyWith<$Res> {
  factory _$$RequestingPermissionsImplCopyWith(
          _$RequestingPermissionsImpl value,
          $Res Function(_$RequestingPermissionsImpl) then) =
      __$$RequestingPermissionsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestingPermissionsImplCopyWithImpl<$Res>
    extends _$BluetoothPermissionsStateCopyWithImpl<$Res,
        _$RequestingPermissionsImpl>
    implements _$$RequestingPermissionsImplCopyWith<$Res> {
  __$$RequestingPermissionsImplCopyWithImpl(_$RequestingPermissionsImpl _value,
      $Res Function(_$RequestingPermissionsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestingPermissionsImpl implements _RequestingPermissions {
  const _$RequestingPermissionsImpl();

  @override
  String toString() {
    return 'BluetoothPermissionsState.requestingPermissions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestingPermissionsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermissions,
    required TResult Function(
            BluetoothPermissionsEntity bluetoothPermissionsEntity)
        maybeGrantedPermissions,
    required TResult Function(
            BluetoothPermissionsFailure bluetoothPermissionsFailure)
        cannotRequestPermissions,
  }) {
    return requestingPermissions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermissions,
    TResult? Function(BluetoothPermissionsEntity bluetoothPermissionsEntity)?
        maybeGrantedPermissions,
    TResult? Function(BluetoothPermissionsFailure bluetoothPermissionsFailure)?
        cannotRequestPermissions,
  }) {
    return requestingPermissions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermissions,
    TResult Function(BluetoothPermissionsEntity bluetoothPermissionsEntity)?
        maybeGrantedPermissions,
    TResult Function(BluetoothPermissionsFailure bluetoothPermissionsFailure)?
        cannotRequestPermissions,
    required TResult orElse(),
  }) {
    if (requestingPermissions != null) {
      return requestingPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermissions value)
        requestingPermissions,
    required TResult Function(_MaybeGrantedPermissions value)
        maybeGrantedPermissions,
    required TResult Function(_CannotRequestPermissions value)
        cannotRequestPermissions,
  }) {
    return requestingPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermissions value)? requestingPermissions,
    TResult? Function(_MaybeGrantedPermissions value)? maybeGrantedPermissions,
    TResult? Function(_CannotRequestPermissions value)?
        cannotRequestPermissions,
  }) {
    return requestingPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermissions value)? requestingPermissions,
    TResult Function(_MaybeGrantedPermissions value)? maybeGrantedPermissions,
    TResult Function(_CannotRequestPermissions value)? cannotRequestPermissions,
    required TResult orElse(),
  }) {
    if (requestingPermissions != null) {
      return requestingPermissions(this);
    }
    return orElse();
  }
}

abstract class _RequestingPermissions implements BluetoothPermissionsState {
  const factory _RequestingPermissions() = _$RequestingPermissionsImpl;
}

/// @nodoc
abstract class _$$MaybeGrantedPermissionsImplCopyWith<$Res> {
  factory _$$MaybeGrantedPermissionsImplCopyWith(
          _$MaybeGrantedPermissionsImpl value,
          $Res Function(_$MaybeGrantedPermissionsImpl) then) =
      __$$MaybeGrantedPermissionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BluetoothPermissionsEntity bluetoothPermissionsEntity});
}

/// @nodoc
class __$$MaybeGrantedPermissionsImplCopyWithImpl<$Res>
    extends _$BluetoothPermissionsStateCopyWithImpl<$Res,
        _$MaybeGrantedPermissionsImpl>
    implements _$$MaybeGrantedPermissionsImplCopyWith<$Res> {
  __$$MaybeGrantedPermissionsImplCopyWithImpl(
      _$MaybeGrantedPermissionsImpl _value,
      $Res Function(_$MaybeGrantedPermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bluetoothPermissionsEntity = null,
  }) {
    return _then(_$MaybeGrantedPermissionsImpl(
      bluetoothPermissionsEntity: null == bluetoothPermissionsEntity
          ? _value.bluetoothPermissionsEntity
          : bluetoothPermissionsEntity // ignore: cast_nullable_to_non_nullable
              as BluetoothPermissionsEntity,
    ));
  }
}

/// @nodoc

class _$MaybeGrantedPermissionsImpl implements _MaybeGrantedPermissions {
  const _$MaybeGrantedPermissionsImpl(
      {required this.bluetoothPermissionsEntity});

  @override
  final BluetoothPermissionsEntity bluetoothPermissionsEntity;

  @override
  String toString() {
    return 'BluetoothPermissionsState.maybeGrantedPermissions(bluetoothPermissionsEntity: $bluetoothPermissionsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaybeGrantedPermissionsImpl &&
            (identical(other.bluetoothPermissionsEntity,
                    bluetoothPermissionsEntity) ||
                other.bluetoothPermissionsEntity ==
                    bluetoothPermissionsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bluetoothPermissionsEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaybeGrantedPermissionsImplCopyWith<_$MaybeGrantedPermissionsImpl>
      get copyWith => __$$MaybeGrantedPermissionsImplCopyWithImpl<
          _$MaybeGrantedPermissionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermissions,
    required TResult Function(
            BluetoothPermissionsEntity bluetoothPermissionsEntity)
        maybeGrantedPermissions,
    required TResult Function(
            BluetoothPermissionsFailure bluetoothPermissionsFailure)
        cannotRequestPermissions,
  }) {
    return maybeGrantedPermissions(bluetoothPermissionsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermissions,
    TResult? Function(BluetoothPermissionsEntity bluetoothPermissionsEntity)?
        maybeGrantedPermissions,
    TResult? Function(BluetoothPermissionsFailure bluetoothPermissionsFailure)?
        cannotRequestPermissions,
  }) {
    return maybeGrantedPermissions?.call(bluetoothPermissionsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermissions,
    TResult Function(BluetoothPermissionsEntity bluetoothPermissionsEntity)?
        maybeGrantedPermissions,
    TResult Function(BluetoothPermissionsFailure bluetoothPermissionsFailure)?
        cannotRequestPermissions,
    required TResult orElse(),
  }) {
    if (maybeGrantedPermissions != null) {
      return maybeGrantedPermissions(bluetoothPermissionsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermissions value)
        requestingPermissions,
    required TResult Function(_MaybeGrantedPermissions value)
        maybeGrantedPermissions,
    required TResult Function(_CannotRequestPermissions value)
        cannotRequestPermissions,
  }) {
    return maybeGrantedPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermissions value)? requestingPermissions,
    TResult? Function(_MaybeGrantedPermissions value)? maybeGrantedPermissions,
    TResult? Function(_CannotRequestPermissions value)?
        cannotRequestPermissions,
  }) {
    return maybeGrantedPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermissions value)? requestingPermissions,
    TResult Function(_MaybeGrantedPermissions value)? maybeGrantedPermissions,
    TResult Function(_CannotRequestPermissions value)? cannotRequestPermissions,
    required TResult orElse(),
  }) {
    if (maybeGrantedPermissions != null) {
      return maybeGrantedPermissions(this);
    }
    return orElse();
  }
}

abstract class _MaybeGrantedPermissions implements BluetoothPermissionsState {
  const factory _MaybeGrantedPermissions(
      {required final BluetoothPermissionsEntity
          bluetoothPermissionsEntity}) = _$MaybeGrantedPermissionsImpl;

  BluetoothPermissionsEntity get bluetoothPermissionsEntity;
  @JsonKey(ignore: true)
  _$$MaybeGrantedPermissionsImplCopyWith<_$MaybeGrantedPermissionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CannotRequestPermissionsImplCopyWith<$Res> {
  factory _$$CannotRequestPermissionsImplCopyWith(
          _$CannotRequestPermissionsImpl value,
          $Res Function(_$CannotRequestPermissionsImpl) then) =
      __$$CannotRequestPermissionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BluetoothPermissionsFailure bluetoothPermissionsFailure});
}

/// @nodoc
class __$$CannotRequestPermissionsImplCopyWithImpl<$Res>
    extends _$BluetoothPermissionsStateCopyWithImpl<$Res,
        _$CannotRequestPermissionsImpl>
    implements _$$CannotRequestPermissionsImplCopyWith<$Res> {
  __$$CannotRequestPermissionsImplCopyWithImpl(
      _$CannotRequestPermissionsImpl _value,
      $Res Function(_$CannotRequestPermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bluetoothPermissionsFailure = null,
  }) {
    return _then(_$CannotRequestPermissionsImpl(
      bluetoothPermissionsFailure: null == bluetoothPermissionsFailure
          ? _value.bluetoothPermissionsFailure
          : bluetoothPermissionsFailure // ignore: cast_nullable_to_non_nullable
              as BluetoothPermissionsFailure,
    ));
  }
}

/// @nodoc

class _$CannotRequestPermissionsImpl implements _CannotRequestPermissions {
  const _$CannotRequestPermissionsImpl(
      {required this.bluetoothPermissionsFailure});

  @override
  final BluetoothPermissionsFailure bluetoothPermissionsFailure;

  @override
  String toString() {
    return 'BluetoothPermissionsState.cannotRequestPermissions(bluetoothPermissionsFailure: $bluetoothPermissionsFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CannotRequestPermissionsImpl &&
            (identical(other.bluetoothPermissionsFailure,
                    bluetoothPermissionsFailure) ||
                other.bluetoothPermissionsFailure ==
                    bluetoothPermissionsFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bluetoothPermissionsFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CannotRequestPermissionsImplCopyWith<_$CannotRequestPermissionsImpl>
      get copyWith => __$$CannotRequestPermissionsImplCopyWithImpl<
          _$CannotRequestPermissionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestingPermissions,
    required TResult Function(
            BluetoothPermissionsEntity bluetoothPermissionsEntity)
        maybeGrantedPermissions,
    required TResult Function(
            BluetoothPermissionsFailure bluetoothPermissionsFailure)
        cannotRequestPermissions,
  }) {
    return cannotRequestPermissions(bluetoothPermissionsFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestingPermissions,
    TResult? Function(BluetoothPermissionsEntity bluetoothPermissionsEntity)?
        maybeGrantedPermissions,
    TResult? Function(BluetoothPermissionsFailure bluetoothPermissionsFailure)?
        cannotRequestPermissions,
  }) {
    return cannotRequestPermissions?.call(bluetoothPermissionsFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestingPermissions,
    TResult Function(BluetoothPermissionsEntity bluetoothPermissionsEntity)?
        maybeGrantedPermissions,
    TResult Function(BluetoothPermissionsFailure bluetoothPermissionsFailure)?
        cannotRequestPermissions,
    required TResult orElse(),
  }) {
    if (cannotRequestPermissions != null) {
      return cannotRequestPermissions(bluetoothPermissionsFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestingPermissions value)
        requestingPermissions,
    required TResult Function(_MaybeGrantedPermissions value)
        maybeGrantedPermissions,
    required TResult Function(_CannotRequestPermissions value)
        cannotRequestPermissions,
  }) {
    return cannotRequestPermissions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestingPermissions value)? requestingPermissions,
    TResult? Function(_MaybeGrantedPermissions value)? maybeGrantedPermissions,
    TResult? Function(_CannotRequestPermissions value)?
        cannotRequestPermissions,
  }) {
    return cannotRequestPermissions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestingPermissions value)? requestingPermissions,
    TResult Function(_MaybeGrantedPermissions value)? maybeGrantedPermissions,
    TResult Function(_CannotRequestPermissions value)? cannotRequestPermissions,
    required TResult orElse(),
  }) {
    if (cannotRequestPermissions != null) {
      return cannotRequestPermissions(this);
    }
    return orElse();
  }
}

abstract class _CannotRequestPermissions implements BluetoothPermissionsState {
  const factory _CannotRequestPermissions(
      {required final BluetoothPermissionsFailure
          bluetoothPermissionsFailure}) = _$CannotRequestPermissionsImpl;

  BluetoothPermissionsFailure get bluetoothPermissionsFailure;
  @JsonKey(ignore: true)
  _$$CannotRequestPermissionsImplCopyWith<_$CannotRequestPermissionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
