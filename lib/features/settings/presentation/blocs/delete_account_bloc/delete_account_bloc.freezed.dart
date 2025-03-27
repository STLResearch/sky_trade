// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteAccountEvent {
  String get otp => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DeleteAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteAccountEventCopyWith<DeleteAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountEventCopyWith<$Res> {
  factory $DeleteAccountEventCopyWith(
          DeleteAccountEvent value, $Res Function(DeleteAccountEvent) then) =
      _$DeleteAccountEventCopyWithImpl<$Res, DeleteAccountEvent>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class _$DeleteAccountEventCopyWithImpl<$Res, $Val extends DeleteAccountEvent>
    implements $DeleteAccountEventCopyWith<$Res> {
  _$DeleteAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteAccountImplCopyWith<$Res>
    implements $DeleteAccountEventCopyWith<$Res> {
  factory _$$DeleteAccountImplCopyWith(
          _$DeleteAccountImpl value, $Res Function(_$DeleteAccountImpl) then) =
      __$$DeleteAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$DeleteAccountImplCopyWithImpl<$Res>
    extends _$DeleteAccountEventCopyWithImpl<$Res, _$DeleteAccountImpl>
    implements _$$DeleteAccountImplCopyWith<$Res> {
  __$$DeleteAccountImplCopyWithImpl(
      _$DeleteAccountImpl _value, $Res Function(_$DeleteAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$DeleteAccountImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAccountImpl implements _DeleteAccount {
  const _$DeleteAccountImpl({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'DeleteAccountEvent.deleteAccount(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAccountImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  /// Create a copy of DeleteAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAccountImplCopyWith<_$DeleteAccountImpl> get copyWith =>
      __$$DeleteAccountImplCopyWithImpl<_$DeleteAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) deleteAccount,
  }) {
    return deleteAccount(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? deleteAccount,
  }) {
    return deleteAccount?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteAccount value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteAccount value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _DeleteAccount implements DeleteAccountEvent {
  const factory _DeleteAccount({required final String otp}) =
      _$DeleteAccountImpl;

  @override
  String get otp;

  /// Create a copy of DeleteAccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteAccountImplCopyWith<_$DeleteAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deletingAccount,
    required TResult Function(MessageEntity messageEntity) deletedAccount,
    required TResult Function(DeleteAccountFailure deleteAccountFailure)
        failedToDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deletingAccount,
    TResult? Function(MessageEntity messageEntity)? deletedAccount,
    TResult? Function(DeleteAccountFailure deleteAccountFailure)?
        failedToDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletingAccount,
    TResult Function(MessageEntity messageEntity)? deletedAccount,
    TResult Function(DeleteAccountFailure deleteAccountFailure)?
        failedToDeleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_DeletedAccount value) deletedAccount,
    required TResult Function(_FailedToDeleteAccount value)
        failedToDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_DeletedAccount value)? deletedAccount,
    TResult? Function(_FailedToDeleteAccount value)? failedToDeleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_DeletedAccount value)? deletedAccount,
    TResult Function(_FailedToDeleteAccount value)? failedToDeleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountStateCopyWith<$Res> {
  factory $DeleteAccountStateCopyWith(
          DeleteAccountState value, $Res Function(DeleteAccountState) then) =
      _$DeleteAccountStateCopyWithImpl<$Res, DeleteAccountState>;
}

/// @nodoc
class _$DeleteAccountStateCopyWithImpl<$Res, $Val extends DeleteAccountState>
    implements $DeleteAccountStateCopyWith<$Res> {
  _$DeleteAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteAccountState
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
    extends _$DeleteAccountStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DeleteAccountState.initial()';
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
    required TResult Function() deletingAccount,
    required TResult Function(MessageEntity messageEntity) deletedAccount,
    required TResult Function(DeleteAccountFailure deleteAccountFailure)
        failedToDeleteAccount,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deletingAccount,
    TResult? Function(MessageEntity messageEntity)? deletedAccount,
    TResult? Function(DeleteAccountFailure deleteAccountFailure)?
        failedToDeleteAccount,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletingAccount,
    TResult Function(MessageEntity messageEntity)? deletedAccount,
    TResult Function(DeleteAccountFailure deleteAccountFailure)?
        failedToDeleteAccount,
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
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_DeletedAccount value) deletedAccount,
    required TResult Function(_FailedToDeleteAccount value)
        failedToDeleteAccount,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_DeletedAccount value)? deletedAccount,
    TResult? Function(_FailedToDeleteAccount value)? failedToDeleteAccount,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_DeletedAccount value)? deletedAccount,
    TResult Function(_FailedToDeleteAccount value)? failedToDeleteAccount,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DeleteAccountState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DeletingAccountImplCopyWith<$Res> {
  factory _$$DeletingAccountImplCopyWith(_$DeletingAccountImpl value,
          $Res Function(_$DeletingAccountImpl) then) =
      __$$DeletingAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletingAccountImplCopyWithImpl<$Res>
    extends _$DeleteAccountStateCopyWithImpl<$Res, _$DeletingAccountImpl>
    implements _$$DeletingAccountImplCopyWith<$Res> {
  __$$DeletingAccountImplCopyWithImpl(
      _$DeletingAccountImpl _value, $Res Function(_$DeletingAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeletingAccountImpl implements _DeletingAccount {
  const _$DeletingAccountImpl();

  @override
  String toString() {
    return 'DeleteAccountState.deletingAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletingAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deletingAccount,
    required TResult Function(MessageEntity messageEntity) deletedAccount,
    required TResult Function(DeleteAccountFailure deleteAccountFailure)
        failedToDeleteAccount,
  }) {
    return deletingAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deletingAccount,
    TResult? Function(MessageEntity messageEntity)? deletedAccount,
    TResult? Function(DeleteAccountFailure deleteAccountFailure)?
        failedToDeleteAccount,
  }) {
    return deletingAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletingAccount,
    TResult Function(MessageEntity messageEntity)? deletedAccount,
    TResult Function(DeleteAccountFailure deleteAccountFailure)?
        failedToDeleteAccount,
    required TResult orElse(),
  }) {
    if (deletingAccount != null) {
      return deletingAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_DeletedAccount value) deletedAccount,
    required TResult Function(_FailedToDeleteAccount value)
        failedToDeleteAccount,
  }) {
    return deletingAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_DeletedAccount value)? deletedAccount,
    TResult? Function(_FailedToDeleteAccount value)? failedToDeleteAccount,
  }) {
    return deletingAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_DeletedAccount value)? deletedAccount,
    TResult Function(_FailedToDeleteAccount value)? failedToDeleteAccount,
    required TResult orElse(),
  }) {
    if (deletingAccount != null) {
      return deletingAccount(this);
    }
    return orElse();
  }
}

abstract class _DeletingAccount implements DeleteAccountState {
  const factory _DeletingAccount() = _$DeletingAccountImpl;
}

/// @nodoc
abstract class _$$DeletedAccountImplCopyWith<$Res> {
  factory _$$DeletedAccountImplCopyWith(_$DeletedAccountImpl value,
          $Res Function(_$DeletedAccountImpl) then) =
      __$$DeletedAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageEntity messageEntity});
}

/// @nodoc
class __$$DeletedAccountImplCopyWithImpl<$Res>
    extends _$DeleteAccountStateCopyWithImpl<$Res, _$DeletedAccountImpl>
    implements _$$DeletedAccountImplCopyWith<$Res> {
  __$$DeletedAccountImplCopyWithImpl(
      _$DeletedAccountImpl _value, $Res Function(_$DeletedAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageEntity = null,
  }) {
    return _then(_$DeletedAccountImpl(
      messageEntity: null == messageEntity
          ? _value.messageEntity
          : messageEntity // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
    ));
  }
}

/// @nodoc

class _$DeletedAccountImpl implements _DeletedAccount {
  const _$DeletedAccountImpl({required this.messageEntity});

  @override
  final MessageEntity messageEntity;

  @override
  String toString() {
    return 'DeleteAccountState.deletedAccount(messageEntity: $messageEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedAccountImpl &&
            (identical(other.messageEntity, messageEntity) ||
                other.messageEntity == messageEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageEntity);

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedAccountImplCopyWith<_$DeletedAccountImpl> get copyWith =>
      __$$DeletedAccountImplCopyWithImpl<_$DeletedAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deletingAccount,
    required TResult Function(MessageEntity messageEntity) deletedAccount,
    required TResult Function(DeleteAccountFailure deleteAccountFailure)
        failedToDeleteAccount,
  }) {
    return deletedAccount(messageEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deletingAccount,
    TResult? Function(MessageEntity messageEntity)? deletedAccount,
    TResult? Function(DeleteAccountFailure deleteAccountFailure)?
        failedToDeleteAccount,
  }) {
    return deletedAccount?.call(messageEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletingAccount,
    TResult Function(MessageEntity messageEntity)? deletedAccount,
    TResult Function(DeleteAccountFailure deleteAccountFailure)?
        failedToDeleteAccount,
    required TResult orElse(),
  }) {
    if (deletedAccount != null) {
      return deletedAccount(messageEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_DeletedAccount value) deletedAccount,
    required TResult Function(_FailedToDeleteAccount value)
        failedToDeleteAccount,
  }) {
    return deletedAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_DeletedAccount value)? deletedAccount,
    TResult? Function(_FailedToDeleteAccount value)? failedToDeleteAccount,
  }) {
    return deletedAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_DeletedAccount value)? deletedAccount,
    TResult Function(_FailedToDeleteAccount value)? failedToDeleteAccount,
    required TResult orElse(),
  }) {
    if (deletedAccount != null) {
      return deletedAccount(this);
    }
    return orElse();
  }
}

abstract class _DeletedAccount implements DeleteAccountState {
  const factory _DeletedAccount({required final MessageEntity messageEntity}) =
      _$DeletedAccountImpl;

  MessageEntity get messageEntity;

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedAccountImplCopyWith<_$DeletedAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToDeleteAccountImplCopyWith<$Res> {
  factory _$$FailedToDeleteAccountImplCopyWith(
          _$FailedToDeleteAccountImpl value,
          $Res Function(_$FailedToDeleteAccountImpl) then) =
      __$$FailedToDeleteAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DeleteAccountFailure deleteAccountFailure});
}

/// @nodoc
class __$$FailedToDeleteAccountImplCopyWithImpl<$Res>
    extends _$DeleteAccountStateCopyWithImpl<$Res, _$FailedToDeleteAccountImpl>
    implements _$$FailedToDeleteAccountImplCopyWith<$Res> {
  __$$FailedToDeleteAccountImplCopyWithImpl(_$FailedToDeleteAccountImpl _value,
      $Res Function(_$FailedToDeleteAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteAccountFailure = null,
  }) {
    return _then(_$FailedToDeleteAccountImpl(
      deleteAccountFailure: null == deleteAccountFailure
          ? _value.deleteAccountFailure
          : deleteAccountFailure // ignore: cast_nullable_to_non_nullable
              as DeleteAccountFailure,
    ));
  }
}

/// @nodoc

class _$FailedToDeleteAccountImpl implements _FailedToDeleteAccount {
  const _$FailedToDeleteAccountImpl({required this.deleteAccountFailure});

  @override
  final DeleteAccountFailure deleteAccountFailure;

  @override
  String toString() {
    return 'DeleteAccountState.failedToDeleteAccount(deleteAccountFailure: $deleteAccountFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToDeleteAccountImpl &&
            (identical(other.deleteAccountFailure, deleteAccountFailure) ||
                other.deleteAccountFailure == deleteAccountFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deleteAccountFailure);

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToDeleteAccountImplCopyWith<_$FailedToDeleteAccountImpl>
      get copyWith => __$$FailedToDeleteAccountImplCopyWithImpl<
          _$FailedToDeleteAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deletingAccount,
    required TResult Function(MessageEntity messageEntity) deletedAccount,
    required TResult Function(DeleteAccountFailure deleteAccountFailure)
        failedToDeleteAccount,
  }) {
    return failedToDeleteAccount(deleteAccountFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deletingAccount,
    TResult? Function(MessageEntity messageEntity)? deletedAccount,
    TResult? Function(DeleteAccountFailure deleteAccountFailure)?
        failedToDeleteAccount,
  }) {
    return failedToDeleteAccount?.call(deleteAccountFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deletingAccount,
    TResult Function(MessageEntity messageEntity)? deletedAccount,
    TResult Function(DeleteAccountFailure deleteAccountFailure)?
        failedToDeleteAccount,
    required TResult orElse(),
  }) {
    if (failedToDeleteAccount != null) {
      return failedToDeleteAccount(deleteAccountFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeletingAccount value) deletingAccount,
    required TResult Function(_DeletedAccount value) deletedAccount,
    required TResult Function(_FailedToDeleteAccount value)
        failedToDeleteAccount,
  }) {
    return failedToDeleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeletingAccount value)? deletingAccount,
    TResult? Function(_DeletedAccount value)? deletedAccount,
    TResult? Function(_FailedToDeleteAccount value)? failedToDeleteAccount,
  }) {
    return failedToDeleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeletingAccount value)? deletingAccount,
    TResult Function(_DeletedAccount value)? deletedAccount,
    TResult Function(_FailedToDeleteAccount value)? failedToDeleteAccount,
    required TResult orElse(),
  }) {
    if (failedToDeleteAccount != null) {
      return failedToDeleteAccount(this);
    }
    return orElse();
  }
}

abstract class _FailedToDeleteAccount implements DeleteAccountState {
  const factory _FailedToDeleteAccount(
          {required final DeleteAccountFailure deleteAccountFailure}) =
      _$FailedToDeleteAccountImpl;

  DeleteAccountFailure get deleteAccountFailure;

  /// Create a copy of DeleteAccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToDeleteAccountImplCopyWith<_$FailedToDeleteAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}
