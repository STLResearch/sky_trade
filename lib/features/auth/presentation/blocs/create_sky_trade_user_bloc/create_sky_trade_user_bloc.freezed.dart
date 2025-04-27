// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_sky_trade_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateSkyTradeUserEvent {
  String get phoneNumber => throw _privateConstructorUsedError;
  UserCategory get userCategory => throw _privateConstructorUsedError;
  String get referralCode => throw _privateConstructorUsedError;
  bool get subscribeToNewsletter => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, UserCategory userCategory,
            String referralCode, bool subscribeToNewsletter)
        createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, UserCategory userCategory,
            String referralCode, bool subscribeToNewsletter)?
        createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, UserCategory userCategory,
            String referralCode, bool subscribeToNewsletter)?
        createUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CreateSkyTradeUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateSkyTradeUserEventCopyWith<CreateSkyTradeUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSkyTradeUserEventCopyWith<$Res> {
  factory $CreateSkyTradeUserEventCopyWith(CreateSkyTradeUserEvent value,
          $Res Function(CreateSkyTradeUserEvent) then) =
      _$CreateSkyTradeUserEventCopyWithImpl<$Res, CreateSkyTradeUserEvent>;
  @useResult
  $Res call(
      {String phoneNumber,
      UserCategory userCategory,
      String referralCode,
      bool subscribeToNewsletter});
}

/// @nodoc
class _$CreateSkyTradeUserEventCopyWithImpl<$Res,
        $Val extends CreateSkyTradeUserEvent>
    implements $CreateSkyTradeUserEventCopyWith<$Res> {
  _$CreateSkyTradeUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSkyTradeUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? userCategory = null,
    Object? referralCode = null,
    Object? subscribeToNewsletter = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userCategory: null == userCategory
          ? _value.userCategory
          : userCategory // ignore: cast_nullable_to_non_nullable
              as UserCategory,
      referralCode: null == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      subscribeToNewsletter: null == subscribeToNewsletter
          ? _value.subscribeToNewsletter
          : subscribeToNewsletter // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateUserImplCopyWith<$Res>
    implements $CreateSkyTradeUserEventCopyWith<$Res> {
  factory _$$CreateUserImplCopyWith(
          _$CreateUserImpl value, $Res Function(_$CreateUserImpl) then) =
      __$$CreateUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      UserCategory userCategory,
      String referralCode,
      bool subscribeToNewsletter});
}

/// @nodoc
class __$$CreateUserImplCopyWithImpl<$Res>
    extends _$CreateSkyTradeUserEventCopyWithImpl<$Res, _$CreateUserImpl>
    implements _$$CreateUserImplCopyWith<$Res> {
  __$$CreateUserImplCopyWithImpl(
      _$CreateUserImpl _value, $Res Function(_$CreateUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSkyTradeUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? userCategory = null,
    Object? referralCode = null,
    Object? subscribeToNewsletter = null,
  }) {
    return _then(_$CreateUserImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userCategory: null == userCategory
          ? _value.userCategory
          : userCategory // ignore: cast_nullable_to_non_nullable
              as UserCategory,
      referralCode: null == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      subscribeToNewsletter: null == subscribeToNewsletter
          ? _value.subscribeToNewsletter
          : subscribeToNewsletter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CreateUserImpl implements _CreateUser {
  const _$CreateUserImpl(
      {required this.phoneNumber,
      required this.userCategory,
      required this.referralCode,
      required this.subscribeToNewsletter});

  @override
  final String phoneNumber;
  @override
  final UserCategory userCategory;
  @override
  final String referralCode;
  @override
  final bool subscribeToNewsletter;

  @override
  String toString() {
    return 'CreateSkyTradeUserEvent.createUser(phoneNumber: $phoneNumber, userCategory: $userCategory, referralCode: $referralCode, subscribeToNewsletter: $subscribeToNewsletter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUserImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.userCategory, userCategory) ||
                other.userCategory == userCategory) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.subscribeToNewsletter, subscribeToNewsletter) ||
                other.subscribeToNewsletter == subscribeToNewsletter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, userCategory,
      referralCode, subscribeToNewsletter);

  /// Create a copy of CreateSkyTradeUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      __$$CreateUserImplCopyWithImpl<_$CreateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber, UserCategory userCategory,
            String referralCode, bool subscribeToNewsletter)
        createUser,
  }) {
    return createUser(
        phoneNumber, userCategory, referralCode, subscribeToNewsletter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber, UserCategory userCategory,
            String referralCode, bool subscribeToNewsletter)?
        createUser,
  }) {
    return createUser?.call(
        phoneNumber, userCategory, referralCode, subscribeToNewsletter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber, UserCategory userCategory,
            String referralCode, bool subscribeToNewsletter)?
        createUser,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(
          phoneNumber, userCategory, referralCode, subscribeToNewsletter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateUser value) createUser,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateUser value)? createUser,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateUser value)? createUser,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class _CreateUser implements CreateSkyTradeUserEvent {
  const factory _CreateUser(
      {required final String phoneNumber,
      required final UserCategory userCategory,
      required final String referralCode,
      required final bool subscribeToNewsletter}) = _$CreateUserImpl;

  @override
  String get phoneNumber;
  @override
  UserCategory get userCategory;
  @override
  String get referralCode;
  @override
  bool get subscribeToNewsletter;

  /// Create a copy of CreateSkyTradeUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateUserImplCopyWith<_$CreateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateSkyTradeUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creatingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity)
        createdUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creatingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? createdUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creatingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? createdUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreatingUser value) creatingUser,
    required TResult Function(_CreatedUser value) createdUser,
    required TResult Function(_FailedToCreateUser value) failedToCreateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreatingUser value)? creatingUser,
    TResult? Function(_CreatedUser value)? createdUser,
    TResult? Function(_FailedToCreateUser value)? failedToCreateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreatingUser value)? creatingUser,
    TResult Function(_CreatedUser value)? createdUser,
    TResult Function(_FailedToCreateUser value)? failedToCreateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSkyTradeUserStateCopyWith<$Res> {
  factory $CreateSkyTradeUserStateCopyWith(CreateSkyTradeUserState value,
          $Res Function(CreateSkyTradeUserState) then) =
      _$CreateSkyTradeUserStateCopyWithImpl<$Res, CreateSkyTradeUserState>;
}

/// @nodoc
class _$CreateSkyTradeUserStateCopyWithImpl<$Res,
        $Val extends CreateSkyTradeUserState>
    implements $CreateSkyTradeUserStateCopyWith<$Res> {
  _$CreateSkyTradeUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateSkyTradeUserState
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
    extends _$CreateSkyTradeUserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreateSkyTradeUserState.initial()';
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
    required TResult Function() creatingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity)
        createdUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateUser,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creatingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? createdUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateUser,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creatingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? createdUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateUser,
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
    required TResult Function(_CreatingUser value) creatingUser,
    required TResult Function(_CreatedUser value) createdUser,
    required TResult Function(_FailedToCreateUser value) failedToCreateUser,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreatingUser value)? creatingUser,
    TResult? Function(_CreatedUser value)? createdUser,
    TResult? Function(_FailedToCreateUser value)? failedToCreateUser,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreatingUser value)? creatingUser,
    TResult Function(_CreatedUser value)? createdUser,
    TResult Function(_FailedToCreateUser value)? failedToCreateUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateSkyTradeUserState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CreatingUserImplCopyWith<$Res> {
  factory _$$CreatingUserImplCopyWith(
          _$CreatingUserImpl value, $Res Function(_$CreatingUserImpl) then) =
      __$$CreatingUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatingUserImplCopyWithImpl<$Res>
    extends _$CreateSkyTradeUserStateCopyWithImpl<$Res, _$CreatingUserImpl>
    implements _$$CreatingUserImplCopyWith<$Res> {
  __$$CreatingUserImplCopyWithImpl(
      _$CreatingUserImpl _value, $Res Function(_$CreatingUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreatingUserImpl implements _CreatingUser {
  const _$CreatingUserImpl();

  @override
  String toString() {
    return 'CreateSkyTradeUserState.creatingUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreatingUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creatingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity)
        createdUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateUser,
  }) {
    return creatingUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creatingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? createdUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateUser,
  }) {
    return creatingUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creatingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? createdUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateUser,
    required TResult orElse(),
  }) {
    if (creatingUser != null) {
      return creatingUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreatingUser value) creatingUser,
    required TResult Function(_CreatedUser value) createdUser,
    required TResult Function(_FailedToCreateUser value) failedToCreateUser,
  }) {
    return creatingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreatingUser value)? creatingUser,
    TResult? Function(_CreatedUser value)? createdUser,
    TResult? Function(_FailedToCreateUser value)? failedToCreateUser,
  }) {
    return creatingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreatingUser value)? creatingUser,
    TResult Function(_CreatedUser value)? createdUser,
    TResult Function(_FailedToCreateUser value)? failedToCreateUser,
    required TResult orElse(),
  }) {
    if (creatingUser != null) {
      return creatingUser(this);
    }
    return orElse();
  }
}

abstract class _CreatingUser implements CreateSkyTradeUserState {
  const factory _CreatingUser() = _$CreatingUserImpl;
}

/// @nodoc
abstract class _$$CreatedUserImplCopyWith<$Res> {
  factory _$$CreatedUserImplCopyWith(
          _$CreatedUserImpl value, $Res Function(_$CreatedUserImpl) then) =
      __$$CreatedUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SkyTradeUserEntity skyTradeUserEntity});
}

/// @nodoc
class __$$CreatedUserImplCopyWithImpl<$Res>
    extends _$CreateSkyTradeUserStateCopyWithImpl<$Res, _$CreatedUserImpl>
    implements _$$CreatedUserImplCopyWith<$Res> {
  __$$CreatedUserImplCopyWithImpl(
      _$CreatedUserImpl _value, $Res Function(_$CreatedUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skyTradeUserEntity = null,
  }) {
    return _then(_$CreatedUserImpl(
      skyTradeUserEntity: null == skyTradeUserEntity
          ? _value.skyTradeUserEntity
          : skyTradeUserEntity // ignore: cast_nullable_to_non_nullable
              as SkyTradeUserEntity,
    ));
  }
}

/// @nodoc

class _$CreatedUserImpl implements _CreatedUser {
  const _$CreatedUserImpl({required this.skyTradeUserEntity});

  @override
  final SkyTradeUserEntity skyTradeUserEntity;

  @override
  String toString() {
    return 'CreateSkyTradeUserState.createdUser(skyTradeUserEntity: $skyTradeUserEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedUserImpl &&
            (identical(other.skyTradeUserEntity, skyTradeUserEntity) ||
                other.skyTradeUserEntity == skyTradeUserEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skyTradeUserEntity);

  /// Create a copy of CreateSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedUserImplCopyWith<_$CreatedUserImpl> get copyWith =>
      __$$CreatedUserImplCopyWithImpl<_$CreatedUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creatingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity)
        createdUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateUser,
  }) {
    return createdUser(skyTradeUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creatingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? createdUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateUser,
  }) {
    return createdUser?.call(skyTradeUserEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creatingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? createdUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateUser,
    required TResult orElse(),
  }) {
    if (createdUser != null) {
      return createdUser(skyTradeUserEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreatingUser value) creatingUser,
    required TResult Function(_CreatedUser value) createdUser,
    required TResult Function(_FailedToCreateUser value) failedToCreateUser,
  }) {
    return createdUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreatingUser value)? creatingUser,
    TResult? Function(_CreatedUser value)? createdUser,
    TResult? Function(_FailedToCreateUser value)? failedToCreateUser,
  }) {
    return createdUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreatingUser value)? creatingUser,
    TResult Function(_CreatedUser value)? createdUser,
    TResult Function(_FailedToCreateUser value)? failedToCreateUser,
    required TResult orElse(),
  }) {
    if (createdUser != null) {
      return createdUser(this);
    }
    return orElse();
  }
}

abstract class _CreatedUser implements CreateSkyTradeUserState {
  const factory _CreatedUser(
          {required final SkyTradeUserEntity skyTradeUserEntity}) =
      _$CreatedUserImpl;

  SkyTradeUserEntity get skyTradeUserEntity;

  /// Create a copy of CreateSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedUserImplCopyWith<_$CreatedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToCreateUserImplCopyWith<$Res> {
  factory _$$FailedToCreateUserImplCopyWith(_$FailedToCreateUserImpl value,
          $Res Function(_$FailedToCreateUserImpl) then) =
      __$$FailedToCreateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateSkyTradeUserFailure createSkyTradeUserFailure});
}

/// @nodoc
class __$$FailedToCreateUserImplCopyWithImpl<$Res>
    extends _$CreateSkyTradeUserStateCopyWithImpl<$Res,
        _$FailedToCreateUserImpl>
    implements _$$FailedToCreateUserImplCopyWith<$Res> {
  __$$FailedToCreateUserImplCopyWithImpl(_$FailedToCreateUserImpl _value,
      $Res Function(_$FailedToCreateUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createSkyTradeUserFailure = null,
  }) {
    return _then(_$FailedToCreateUserImpl(
      createSkyTradeUserFailure: null == createSkyTradeUserFailure
          ? _value.createSkyTradeUserFailure
          : createSkyTradeUserFailure // ignore: cast_nullable_to_non_nullable
              as CreateSkyTradeUserFailure,
    ));
  }
}

/// @nodoc

class _$FailedToCreateUserImpl implements _FailedToCreateUser {
  const _$FailedToCreateUserImpl({required this.createSkyTradeUserFailure});

  @override
  final CreateSkyTradeUserFailure createSkyTradeUserFailure;

  @override
  String toString() {
    return 'CreateSkyTradeUserState.failedToCreateUser(createSkyTradeUserFailure: $createSkyTradeUserFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToCreateUserImpl &&
            (identical(other.createSkyTradeUserFailure,
                    createSkyTradeUserFailure) ||
                other.createSkyTradeUserFailure == createSkyTradeUserFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createSkyTradeUserFailure);

  /// Create a copy of CreateSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToCreateUserImplCopyWith<_$FailedToCreateUserImpl> get copyWith =>
      __$$FailedToCreateUserImplCopyWithImpl<_$FailedToCreateUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creatingUser,
    required TResult Function(SkyTradeUserEntity skyTradeUserEntity)
        createdUser,
    required TResult Function(
            CreateSkyTradeUserFailure createSkyTradeUserFailure)
        failedToCreateUser,
  }) {
    return failedToCreateUser(createSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creatingUser,
    TResult? Function(SkyTradeUserEntity skyTradeUserEntity)? createdUser,
    TResult? Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateUser,
  }) {
    return failedToCreateUser?.call(createSkyTradeUserFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creatingUser,
    TResult Function(SkyTradeUserEntity skyTradeUserEntity)? createdUser,
    TResult Function(CreateSkyTradeUserFailure createSkyTradeUserFailure)?
        failedToCreateUser,
    required TResult orElse(),
  }) {
    if (failedToCreateUser != null) {
      return failedToCreateUser(createSkyTradeUserFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreatingUser value) creatingUser,
    required TResult Function(_CreatedUser value) createdUser,
    required TResult Function(_FailedToCreateUser value) failedToCreateUser,
  }) {
    return failedToCreateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreatingUser value)? creatingUser,
    TResult? Function(_CreatedUser value)? createdUser,
    TResult? Function(_FailedToCreateUser value)? failedToCreateUser,
  }) {
    return failedToCreateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreatingUser value)? creatingUser,
    TResult Function(_CreatedUser value)? createdUser,
    TResult Function(_FailedToCreateUser value)? failedToCreateUser,
    required TResult orElse(),
  }) {
    if (failedToCreateUser != null) {
      return failedToCreateUser(this);
    }
    return orElse();
  }
}

abstract class _FailedToCreateUser implements CreateSkyTradeUserState {
  const factory _FailedToCreateUser(
      {required final CreateSkyTradeUserFailure
          createSkyTradeUserFailure}) = _$FailedToCreateUserImpl;

  CreateSkyTradeUserFailure get createSkyTradeUserFailure;

  /// Create a copy of CreateSkyTradeUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToCreateUserImplCopyWith<_$FailedToCreateUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
