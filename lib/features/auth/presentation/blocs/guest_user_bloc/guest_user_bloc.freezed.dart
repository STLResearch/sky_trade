// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GuestUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserIsGuest,
    required TResult Function(bool isGuest) setUserIsGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUserIsGuest,
    TResult? Function(bool isGuest)? setUserIsGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserIsGuest,
    TResult Function(bool isGuest)? setUserIsGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserIsGuest value) checkUserIsGuest,
    required TResult Function(_SetUserIsGuest value) setUserIsGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserIsGuest value)? checkUserIsGuest,
    TResult? Function(_SetUserIsGuest value)? setUserIsGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserIsGuest value)? checkUserIsGuest,
    TResult Function(_SetUserIsGuest value)? setUserIsGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestUserEventCopyWith<$Res> {
  factory $GuestUserEventCopyWith(
          GuestUserEvent value, $Res Function(GuestUserEvent) then) =
      _$GuestUserEventCopyWithImpl<$Res, GuestUserEvent>;
}

/// @nodoc
class _$GuestUserEventCopyWithImpl<$Res, $Val extends GuestUserEvent>
    implements $GuestUserEventCopyWith<$Res> {
  _$GuestUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuestUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckUserIsGuestImplCopyWith<$Res> {
  factory _$$CheckUserIsGuestImplCopyWith(_$CheckUserIsGuestImpl value,
          $Res Function(_$CheckUserIsGuestImpl) then) =
      __$$CheckUserIsGuestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckUserIsGuestImplCopyWithImpl<$Res>
    extends _$GuestUserEventCopyWithImpl<$Res, _$CheckUserIsGuestImpl>
    implements _$$CheckUserIsGuestImplCopyWith<$Res> {
  __$$CheckUserIsGuestImplCopyWithImpl(_$CheckUserIsGuestImpl _value,
      $Res Function(_$CheckUserIsGuestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestUserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckUserIsGuestImpl implements _CheckUserIsGuest {
  const _$CheckUserIsGuestImpl();

  @override
  String toString() {
    return 'GuestUserEvent.checkUserIsGuest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckUserIsGuestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserIsGuest,
    required TResult Function(bool isGuest) setUserIsGuest,
  }) {
    return checkUserIsGuest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUserIsGuest,
    TResult? Function(bool isGuest)? setUserIsGuest,
  }) {
    return checkUserIsGuest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserIsGuest,
    TResult Function(bool isGuest)? setUserIsGuest,
    required TResult orElse(),
  }) {
    if (checkUserIsGuest != null) {
      return checkUserIsGuest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserIsGuest value) checkUserIsGuest,
    required TResult Function(_SetUserIsGuest value) setUserIsGuest,
  }) {
    return checkUserIsGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserIsGuest value)? checkUserIsGuest,
    TResult? Function(_SetUserIsGuest value)? setUserIsGuest,
  }) {
    return checkUserIsGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserIsGuest value)? checkUserIsGuest,
    TResult Function(_SetUserIsGuest value)? setUserIsGuest,
    required TResult orElse(),
  }) {
    if (checkUserIsGuest != null) {
      return checkUserIsGuest(this);
    }
    return orElse();
  }
}

abstract class _CheckUserIsGuest implements GuestUserEvent {
  const factory _CheckUserIsGuest() = _$CheckUserIsGuestImpl;
}

/// @nodoc
abstract class _$$SetUserIsGuestImplCopyWith<$Res> {
  factory _$$SetUserIsGuestImplCopyWith(_$SetUserIsGuestImpl value,
          $Res Function(_$SetUserIsGuestImpl) then) =
      __$$SetUserIsGuestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isGuest});
}

/// @nodoc
class __$$SetUserIsGuestImplCopyWithImpl<$Res>
    extends _$GuestUserEventCopyWithImpl<$Res, _$SetUserIsGuestImpl>
    implements _$$SetUserIsGuestImplCopyWith<$Res> {
  __$$SetUserIsGuestImplCopyWithImpl(
      _$SetUserIsGuestImpl _value, $Res Function(_$SetUserIsGuestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGuest = null,
  }) {
    return _then(_$SetUserIsGuestImpl(
      isGuest: null == isGuest
          ? _value.isGuest
          : isGuest // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetUserIsGuestImpl implements _SetUserIsGuest {
  const _$SetUserIsGuestImpl({required this.isGuest});

  @override
  final bool isGuest;

  @override
  String toString() {
    return 'GuestUserEvent.setUserIsGuest(isGuest: $isGuest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserIsGuestImpl &&
            (identical(other.isGuest, isGuest) || other.isGuest == isGuest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isGuest);

  /// Create a copy of GuestUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserIsGuestImplCopyWith<_$SetUserIsGuestImpl> get copyWith =>
      __$$SetUserIsGuestImplCopyWithImpl<_$SetUserIsGuestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkUserIsGuest,
    required TResult Function(bool isGuest) setUserIsGuest,
  }) {
    return setUserIsGuest(isGuest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkUserIsGuest,
    TResult? Function(bool isGuest)? setUserIsGuest,
  }) {
    return setUserIsGuest?.call(isGuest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkUserIsGuest,
    TResult Function(bool isGuest)? setUserIsGuest,
    required TResult orElse(),
  }) {
    if (setUserIsGuest != null) {
      return setUserIsGuest(isGuest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckUserIsGuest value) checkUserIsGuest,
    required TResult Function(_SetUserIsGuest value) setUserIsGuest,
  }) {
    return setUserIsGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckUserIsGuest value)? checkUserIsGuest,
    TResult? Function(_SetUserIsGuest value)? setUserIsGuest,
  }) {
    return setUserIsGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckUserIsGuest value)? checkUserIsGuest,
    TResult Function(_SetUserIsGuest value)? setUserIsGuest,
    required TResult orElse(),
  }) {
    if (setUserIsGuest != null) {
      return setUserIsGuest(this);
    }
    return orElse();
  }
}

abstract class _SetUserIsGuest implements GuestUserEvent {
  const factory _SetUserIsGuest({required final bool isGuest}) =
      _$SetUserIsGuestImpl;

  bool get isGuest;

  /// Create a copy of GuestUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetUserIsGuestImplCopyWith<_$SetUserIsGuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GuestUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingIfGuestUser,
    required TResult Function() settingMaybeGuestUser,
    required TResult Function() isGuestUser,
    required TResult Function() notGuestUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingIfGuestUser,
    TResult? Function()? settingMaybeGuestUser,
    TResult? Function()? isGuestUser,
    TResult? Function()? notGuestUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingIfGuestUser,
    TResult Function()? settingMaybeGuestUser,
    TResult Function()? isGuestUser,
    TResult Function()? notGuestUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingIfGuestUser value) checkingIfGuestUser,
    required TResult Function(_SettingMaybeGuestUser value)
        settingMaybeGuestUser,
    required TResult Function(_IsGuestUser value) isGuestUser,
    required TResult Function(_NotGuestUser value) notGuestUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult? Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult? Function(_IsGuestUser value)? isGuestUser,
    TResult? Function(_NotGuestUser value)? notGuestUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult Function(_IsGuestUser value)? isGuestUser,
    TResult Function(_NotGuestUser value)? notGuestUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestUserStateCopyWith<$Res> {
  factory $GuestUserStateCopyWith(
          GuestUserState value, $Res Function(GuestUserState) then) =
      _$GuestUserStateCopyWithImpl<$Res, GuestUserState>;
}

/// @nodoc
class _$GuestUserStateCopyWithImpl<$Res, $Val extends GuestUserState>
    implements $GuestUserStateCopyWith<$Res> {
  _$GuestUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuestUserState
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
    extends _$GuestUserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GuestUserState.initial()';
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
    required TResult Function() checkingIfGuestUser,
    required TResult Function() settingMaybeGuestUser,
    required TResult Function() isGuestUser,
    required TResult Function() notGuestUser,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingIfGuestUser,
    TResult? Function()? settingMaybeGuestUser,
    TResult? Function()? isGuestUser,
    TResult? Function()? notGuestUser,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingIfGuestUser,
    TResult Function()? settingMaybeGuestUser,
    TResult Function()? isGuestUser,
    TResult Function()? notGuestUser,
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
    required TResult Function(_CheckingIfGuestUser value) checkingIfGuestUser,
    required TResult Function(_SettingMaybeGuestUser value)
        settingMaybeGuestUser,
    required TResult Function(_IsGuestUser value) isGuestUser,
    required TResult Function(_NotGuestUser value) notGuestUser,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult? Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult? Function(_IsGuestUser value)? isGuestUser,
    TResult? Function(_NotGuestUser value)? notGuestUser,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult Function(_IsGuestUser value)? isGuestUser,
    TResult Function(_NotGuestUser value)? notGuestUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GuestUserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckingIfGuestUserImplCopyWith<$Res> {
  factory _$$CheckingIfGuestUserImplCopyWith(_$CheckingIfGuestUserImpl value,
          $Res Function(_$CheckingIfGuestUserImpl) then) =
      __$$CheckingIfGuestUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingIfGuestUserImplCopyWithImpl<$Res>
    extends _$GuestUserStateCopyWithImpl<$Res, _$CheckingIfGuestUserImpl>
    implements _$$CheckingIfGuestUserImplCopyWith<$Res> {
  __$$CheckingIfGuestUserImplCopyWithImpl(_$CheckingIfGuestUserImpl _value,
      $Res Function(_$CheckingIfGuestUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckingIfGuestUserImpl implements _CheckingIfGuestUser {
  const _$CheckingIfGuestUserImpl();

  @override
  String toString() {
    return 'GuestUserState.checkingIfGuestUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckingIfGuestUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingIfGuestUser,
    required TResult Function() settingMaybeGuestUser,
    required TResult Function() isGuestUser,
    required TResult Function() notGuestUser,
  }) {
    return checkingIfGuestUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingIfGuestUser,
    TResult? Function()? settingMaybeGuestUser,
    TResult? Function()? isGuestUser,
    TResult? Function()? notGuestUser,
  }) {
    return checkingIfGuestUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingIfGuestUser,
    TResult Function()? settingMaybeGuestUser,
    TResult Function()? isGuestUser,
    TResult Function()? notGuestUser,
    required TResult orElse(),
  }) {
    if (checkingIfGuestUser != null) {
      return checkingIfGuestUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingIfGuestUser value) checkingIfGuestUser,
    required TResult Function(_SettingMaybeGuestUser value)
        settingMaybeGuestUser,
    required TResult Function(_IsGuestUser value) isGuestUser,
    required TResult Function(_NotGuestUser value) notGuestUser,
  }) {
    return checkingIfGuestUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult? Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult? Function(_IsGuestUser value)? isGuestUser,
    TResult? Function(_NotGuestUser value)? notGuestUser,
  }) {
    return checkingIfGuestUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult Function(_IsGuestUser value)? isGuestUser,
    TResult Function(_NotGuestUser value)? notGuestUser,
    required TResult orElse(),
  }) {
    if (checkingIfGuestUser != null) {
      return checkingIfGuestUser(this);
    }
    return orElse();
  }
}

abstract class _CheckingIfGuestUser implements GuestUserState {
  const factory _CheckingIfGuestUser() = _$CheckingIfGuestUserImpl;
}

/// @nodoc
abstract class _$$SettingMaybeGuestUserImplCopyWith<$Res> {
  factory _$$SettingMaybeGuestUserImplCopyWith(
          _$SettingMaybeGuestUserImpl value,
          $Res Function(_$SettingMaybeGuestUserImpl) then) =
      __$$SettingMaybeGuestUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettingMaybeGuestUserImplCopyWithImpl<$Res>
    extends _$GuestUserStateCopyWithImpl<$Res, _$SettingMaybeGuestUserImpl>
    implements _$$SettingMaybeGuestUserImplCopyWith<$Res> {
  __$$SettingMaybeGuestUserImplCopyWithImpl(_$SettingMaybeGuestUserImpl _value,
      $Res Function(_$SettingMaybeGuestUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SettingMaybeGuestUserImpl implements _SettingMaybeGuestUser {
  const _$SettingMaybeGuestUserImpl();

  @override
  String toString() {
    return 'GuestUserState.settingMaybeGuestUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingMaybeGuestUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingIfGuestUser,
    required TResult Function() settingMaybeGuestUser,
    required TResult Function() isGuestUser,
    required TResult Function() notGuestUser,
  }) {
    return settingMaybeGuestUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingIfGuestUser,
    TResult? Function()? settingMaybeGuestUser,
    TResult? Function()? isGuestUser,
    TResult? Function()? notGuestUser,
  }) {
    return settingMaybeGuestUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingIfGuestUser,
    TResult Function()? settingMaybeGuestUser,
    TResult Function()? isGuestUser,
    TResult Function()? notGuestUser,
    required TResult orElse(),
  }) {
    if (settingMaybeGuestUser != null) {
      return settingMaybeGuestUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingIfGuestUser value) checkingIfGuestUser,
    required TResult Function(_SettingMaybeGuestUser value)
        settingMaybeGuestUser,
    required TResult Function(_IsGuestUser value) isGuestUser,
    required TResult Function(_NotGuestUser value) notGuestUser,
  }) {
    return settingMaybeGuestUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult? Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult? Function(_IsGuestUser value)? isGuestUser,
    TResult? Function(_NotGuestUser value)? notGuestUser,
  }) {
    return settingMaybeGuestUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult Function(_IsGuestUser value)? isGuestUser,
    TResult Function(_NotGuestUser value)? notGuestUser,
    required TResult orElse(),
  }) {
    if (settingMaybeGuestUser != null) {
      return settingMaybeGuestUser(this);
    }
    return orElse();
  }
}

abstract class _SettingMaybeGuestUser implements GuestUserState {
  const factory _SettingMaybeGuestUser() = _$SettingMaybeGuestUserImpl;
}

/// @nodoc
abstract class _$$IsGuestUserImplCopyWith<$Res> {
  factory _$$IsGuestUserImplCopyWith(
          _$IsGuestUserImpl value, $Res Function(_$IsGuestUserImpl) then) =
      __$$IsGuestUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsGuestUserImplCopyWithImpl<$Res>
    extends _$GuestUserStateCopyWithImpl<$Res, _$IsGuestUserImpl>
    implements _$$IsGuestUserImplCopyWith<$Res> {
  __$$IsGuestUserImplCopyWithImpl(
      _$IsGuestUserImpl _value, $Res Function(_$IsGuestUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IsGuestUserImpl implements _IsGuestUser {
  const _$IsGuestUserImpl();

  @override
  String toString() {
    return 'GuestUserState.isGuestUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsGuestUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingIfGuestUser,
    required TResult Function() settingMaybeGuestUser,
    required TResult Function() isGuestUser,
    required TResult Function() notGuestUser,
  }) {
    return isGuestUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingIfGuestUser,
    TResult? Function()? settingMaybeGuestUser,
    TResult? Function()? isGuestUser,
    TResult? Function()? notGuestUser,
  }) {
    return isGuestUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingIfGuestUser,
    TResult Function()? settingMaybeGuestUser,
    TResult Function()? isGuestUser,
    TResult Function()? notGuestUser,
    required TResult orElse(),
  }) {
    if (isGuestUser != null) {
      return isGuestUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingIfGuestUser value) checkingIfGuestUser,
    required TResult Function(_SettingMaybeGuestUser value)
        settingMaybeGuestUser,
    required TResult Function(_IsGuestUser value) isGuestUser,
    required TResult Function(_NotGuestUser value) notGuestUser,
  }) {
    return isGuestUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult? Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult? Function(_IsGuestUser value)? isGuestUser,
    TResult? Function(_NotGuestUser value)? notGuestUser,
  }) {
    return isGuestUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult Function(_IsGuestUser value)? isGuestUser,
    TResult Function(_NotGuestUser value)? notGuestUser,
    required TResult orElse(),
  }) {
    if (isGuestUser != null) {
      return isGuestUser(this);
    }
    return orElse();
  }
}

abstract class _IsGuestUser implements GuestUserState {
  const factory _IsGuestUser() = _$IsGuestUserImpl;
}

/// @nodoc
abstract class _$$NotGuestUserImplCopyWith<$Res> {
  factory _$$NotGuestUserImplCopyWith(
          _$NotGuestUserImpl value, $Res Function(_$NotGuestUserImpl) then) =
      __$$NotGuestUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotGuestUserImplCopyWithImpl<$Res>
    extends _$GuestUserStateCopyWithImpl<$Res, _$NotGuestUserImpl>
    implements _$$NotGuestUserImplCopyWith<$Res> {
  __$$NotGuestUserImplCopyWithImpl(
      _$NotGuestUserImpl _value, $Res Function(_$NotGuestUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotGuestUserImpl implements _NotGuestUser {
  const _$NotGuestUserImpl();

  @override
  String toString() {
    return 'GuestUserState.notGuestUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotGuestUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingIfGuestUser,
    required TResult Function() settingMaybeGuestUser,
    required TResult Function() isGuestUser,
    required TResult Function() notGuestUser,
  }) {
    return notGuestUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingIfGuestUser,
    TResult? Function()? settingMaybeGuestUser,
    TResult? Function()? isGuestUser,
    TResult? Function()? notGuestUser,
  }) {
    return notGuestUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingIfGuestUser,
    TResult Function()? settingMaybeGuestUser,
    TResult Function()? isGuestUser,
    TResult Function()? notGuestUser,
    required TResult orElse(),
  }) {
    if (notGuestUser != null) {
      return notGuestUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingIfGuestUser value) checkingIfGuestUser,
    required TResult Function(_SettingMaybeGuestUser value)
        settingMaybeGuestUser,
    required TResult Function(_IsGuestUser value) isGuestUser,
    required TResult Function(_NotGuestUser value) notGuestUser,
  }) {
    return notGuestUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult? Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult? Function(_IsGuestUser value)? isGuestUser,
    TResult? Function(_NotGuestUser value)? notGuestUser,
  }) {
    return notGuestUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingIfGuestUser value)? checkingIfGuestUser,
    TResult Function(_SettingMaybeGuestUser value)? settingMaybeGuestUser,
    TResult Function(_IsGuestUser value)? isGuestUser,
    TResult Function(_NotGuestUser value)? notGuestUser,
    required TResult orElse(),
  }) {
    if (notGuestUser != null) {
      return notGuestUser(this);
    }
    return orElse();
  }
}

abstract class _NotGuestUser implements GuestUserState {
  const factory _NotGuestUser() = _$NotGuestUserImpl;
}
