// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_delete_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestDeleteAccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDeleteAccountEventCopyWith<$Res> {
  factory $RequestDeleteAccountEventCopyWith(RequestDeleteAccountEvent value,
          $Res Function(RequestDeleteAccountEvent) then) =
      _$RequestDeleteAccountEventCopyWithImpl<$Res, RequestDeleteAccountEvent>;
}

/// @nodoc
class _$RequestDeleteAccountEventCopyWithImpl<$Res,
        $Val extends RequestDeleteAccountEvent>
    implements $RequestDeleteAccountEventCopyWith<$Res> {
  _$RequestDeleteAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$RequestDeleteAccountEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendOtpImpl implements _SendOtp {
  const _$SendOtpImpl();

  @override
  String toString() {
    return 'RequestDeleteAccountEvent.sendOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendOtp,
  }) {
    return sendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? sendOtp,
  }) {
    return sendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements RequestDeleteAccountEvent {
  const factory _SendOtp() = _$SendOtpImpl;
}

/// @nodoc
mixin _$RequestDeleteAccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingOtp,
    required TResult Function(MessageEntity messageEntity) sentOtp,
    required TResult Function(
            RequestDeleteAccountFailure requestDeleteAccountFailure)
        failedToSendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingOtp,
    TResult? Function(MessageEntity messageEntity)? sentOtp,
    TResult? Function(RequestDeleteAccountFailure requestDeleteAccountFailure)?
        failedToSendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingOtp,
    TResult Function(MessageEntity messageEntity)? sentOtp,
    TResult Function(RequestDeleteAccountFailure requestDeleteAccountFailure)?
        failedToSendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_SentOtp value) sentOtp,
    required TResult Function(_FailedToSendOtp value) failedToSendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_SentOtp value)? sentOtp,
    TResult? Function(_FailedToSendOtp value)? failedToSendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_SentOtp value)? sentOtp,
    TResult Function(_FailedToSendOtp value)? failedToSendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDeleteAccountStateCopyWith<$Res> {
  factory $RequestDeleteAccountStateCopyWith(RequestDeleteAccountState value,
          $Res Function(RequestDeleteAccountState) then) =
      _$RequestDeleteAccountStateCopyWithImpl<$Res, RequestDeleteAccountState>;
}

/// @nodoc
class _$RequestDeleteAccountStateCopyWithImpl<$Res,
        $Val extends RequestDeleteAccountState>
    implements $RequestDeleteAccountStateCopyWith<$Res> {
  _$RequestDeleteAccountStateCopyWithImpl(this._value, this._then);

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
    extends _$RequestDeleteAccountStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'RequestDeleteAccountState.initial()';
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
    required TResult Function() sendingOtp,
    required TResult Function(MessageEntity messageEntity) sentOtp,
    required TResult Function(
            RequestDeleteAccountFailure requestDeleteAccountFailure)
        failedToSendOtp,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingOtp,
    TResult? Function(MessageEntity messageEntity)? sentOtp,
    TResult? Function(RequestDeleteAccountFailure requestDeleteAccountFailure)?
        failedToSendOtp,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingOtp,
    TResult Function(MessageEntity messageEntity)? sentOtp,
    TResult Function(RequestDeleteAccountFailure requestDeleteAccountFailure)?
        failedToSendOtp,
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
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_SentOtp value) sentOtp,
    required TResult Function(_FailedToSendOtp value) failedToSendOtp,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_SentOtp value)? sentOtp,
    TResult? Function(_FailedToSendOtp value)? failedToSendOtp,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_SentOtp value)? sentOtp,
    TResult Function(_FailedToSendOtp value)? failedToSendOtp,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RequestDeleteAccountState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SendingOtpImplCopyWith<$Res> {
  factory _$$SendingOtpImplCopyWith(
          _$SendingOtpImpl value, $Res Function(_$SendingOtpImpl) then) =
      __$$SendingOtpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendingOtpImplCopyWithImpl<$Res>
    extends _$RequestDeleteAccountStateCopyWithImpl<$Res, _$SendingOtpImpl>
    implements _$$SendingOtpImplCopyWith<$Res> {
  __$$SendingOtpImplCopyWithImpl(
      _$SendingOtpImpl _value, $Res Function(_$SendingOtpImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendingOtpImpl implements _SendingOtp {
  const _$SendingOtpImpl();

  @override
  String toString() {
    return 'RequestDeleteAccountState.sendingOtp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendingOtpImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingOtp,
    required TResult Function(MessageEntity messageEntity) sentOtp,
    required TResult Function(
            RequestDeleteAccountFailure requestDeleteAccountFailure)
        failedToSendOtp,
  }) {
    return sendingOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingOtp,
    TResult? Function(MessageEntity messageEntity)? sentOtp,
    TResult? Function(RequestDeleteAccountFailure requestDeleteAccountFailure)?
        failedToSendOtp,
  }) {
    return sendingOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingOtp,
    TResult Function(MessageEntity messageEntity)? sentOtp,
    TResult Function(RequestDeleteAccountFailure requestDeleteAccountFailure)?
        failedToSendOtp,
    required TResult orElse(),
  }) {
    if (sendingOtp != null) {
      return sendingOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_SentOtp value) sentOtp,
    required TResult Function(_FailedToSendOtp value) failedToSendOtp,
  }) {
    return sendingOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_SentOtp value)? sentOtp,
    TResult? Function(_FailedToSendOtp value)? failedToSendOtp,
  }) {
    return sendingOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_SentOtp value)? sentOtp,
    TResult Function(_FailedToSendOtp value)? failedToSendOtp,
    required TResult orElse(),
  }) {
    if (sendingOtp != null) {
      return sendingOtp(this);
    }
    return orElse();
  }
}

abstract class _SendingOtp implements RequestDeleteAccountState {
  const factory _SendingOtp() = _$SendingOtpImpl;
}

/// @nodoc
abstract class _$$SentOtpImplCopyWith<$Res> {
  factory _$$SentOtpImplCopyWith(
          _$SentOtpImpl value, $Res Function(_$SentOtpImpl) then) =
      __$$SentOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MessageEntity messageEntity});
}

/// @nodoc
class __$$SentOtpImplCopyWithImpl<$Res>
    extends _$RequestDeleteAccountStateCopyWithImpl<$Res, _$SentOtpImpl>
    implements _$$SentOtpImplCopyWith<$Res> {
  __$$SentOtpImplCopyWithImpl(
      _$SentOtpImpl _value, $Res Function(_$SentOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageEntity = null,
  }) {
    return _then(_$SentOtpImpl(
      messageEntity: null == messageEntity
          ? _value.messageEntity
          : messageEntity // ignore: cast_nullable_to_non_nullable
              as MessageEntity,
    ));
  }
}

/// @nodoc

class _$SentOtpImpl implements _SentOtp {
  const _$SentOtpImpl({required this.messageEntity});

  @override
  final MessageEntity messageEntity;

  @override
  String toString() {
    return 'RequestDeleteAccountState.sentOtp(messageEntity: $messageEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentOtpImpl &&
            (identical(other.messageEntity, messageEntity) ||
                other.messageEntity == messageEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SentOtpImplCopyWith<_$SentOtpImpl> get copyWith =>
      __$$SentOtpImplCopyWithImpl<_$SentOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingOtp,
    required TResult Function(MessageEntity messageEntity) sentOtp,
    required TResult Function(
            RequestDeleteAccountFailure requestDeleteAccountFailure)
        failedToSendOtp,
  }) {
    return sentOtp(messageEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingOtp,
    TResult? Function(MessageEntity messageEntity)? sentOtp,
    TResult? Function(RequestDeleteAccountFailure requestDeleteAccountFailure)?
        failedToSendOtp,
  }) {
    return sentOtp?.call(messageEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingOtp,
    TResult Function(MessageEntity messageEntity)? sentOtp,
    TResult Function(RequestDeleteAccountFailure requestDeleteAccountFailure)?
        failedToSendOtp,
    required TResult orElse(),
  }) {
    if (sentOtp != null) {
      return sentOtp(messageEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_SentOtp value) sentOtp,
    required TResult Function(_FailedToSendOtp value) failedToSendOtp,
  }) {
    return sentOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_SentOtp value)? sentOtp,
    TResult? Function(_FailedToSendOtp value)? failedToSendOtp,
  }) {
    return sentOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_SentOtp value)? sentOtp,
    TResult Function(_FailedToSendOtp value)? failedToSendOtp,
    required TResult orElse(),
  }) {
    if (sentOtp != null) {
      return sentOtp(this);
    }
    return orElse();
  }
}

abstract class _SentOtp implements RequestDeleteAccountState {
  const factory _SentOtp({required final MessageEntity messageEntity}) =
      _$SentOtpImpl;

  MessageEntity get messageEntity;
  @JsonKey(ignore: true)
  _$$SentOtpImplCopyWith<_$SentOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToSendOtpImplCopyWith<$Res> {
  factory _$$FailedToSendOtpImplCopyWith(_$FailedToSendOtpImpl value,
          $Res Function(_$FailedToSendOtpImpl) then) =
      __$$FailedToSendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestDeleteAccountFailure requestDeleteAccountFailure});
}

/// @nodoc
class __$$FailedToSendOtpImplCopyWithImpl<$Res>
    extends _$RequestDeleteAccountStateCopyWithImpl<$Res, _$FailedToSendOtpImpl>
    implements _$$FailedToSendOtpImplCopyWith<$Res> {
  __$$FailedToSendOtpImplCopyWithImpl(
      _$FailedToSendOtpImpl _value, $Res Function(_$FailedToSendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestDeleteAccountFailure = null,
  }) {
    return _then(_$FailedToSendOtpImpl(
      requestDeleteAccountFailure: null == requestDeleteAccountFailure
          ? _value.requestDeleteAccountFailure
          : requestDeleteAccountFailure // ignore: cast_nullable_to_non_nullable
              as RequestDeleteAccountFailure,
    ));
  }
}

/// @nodoc

class _$FailedToSendOtpImpl implements _FailedToSendOtp {
  const _$FailedToSendOtpImpl({required this.requestDeleteAccountFailure});

  @override
  final RequestDeleteAccountFailure requestDeleteAccountFailure;

  @override
  String toString() {
    return 'RequestDeleteAccountState.failedToSendOtp(requestDeleteAccountFailure: $requestDeleteAccountFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToSendOtpImpl &&
            (identical(other.requestDeleteAccountFailure,
                    requestDeleteAccountFailure) ||
                other.requestDeleteAccountFailure ==
                    requestDeleteAccountFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestDeleteAccountFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToSendOtpImplCopyWith<_$FailedToSendOtpImpl> get copyWith =>
      __$$FailedToSendOtpImplCopyWithImpl<_$FailedToSendOtpImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendingOtp,
    required TResult Function(MessageEntity messageEntity) sentOtp,
    required TResult Function(
            RequestDeleteAccountFailure requestDeleteAccountFailure)
        failedToSendOtp,
  }) {
    return failedToSendOtp(requestDeleteAccountFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendingOtp,
    TResult? Function(MessageEntity messageEntity)? sentOtp,
    TResult? Function(RequestDeleteAccountFailure requestDeleteAccountFailure)?
        failedToSendOtp,
  }) {
    return failedToSendOtp?.call(requestDeleteAccountFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendingOtp,
    TResult Function(MessageEntity messageEntity)? sentOtp,
    TResult Function(RequestDeleteAccountFailure requestDeleteAccountFailure)?
        failedToSendOtp,
    required TResult orElse(),
  }) {
    if (failedToSendOtp != null) {
      return failedToSendOtp(requestDeleteAccountFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_SentOtp value) sentOtp,
    required TResult Function(_FailedToSendOtp value) failedToSendOtp,
  }) {
    return failedToSendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_SentOtp value)? sentOtp,
    TResult? Function(_FailedToSendOtp value)? failedToSendOtp,
  }) {
    return failedToSendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_SentOtp value)? sentOtp,
    TResult Function(_FailedToSendOtp value)? failedToSendOtp,
    required TResult orElse(),
  }) {
    if (failedToSendOtp != null) {
      return failedToSendOtp(this);
    }
    return orElse();
  }
}

abstract class _FailedToSendOtp implements RequestDeleteAccountState {
  const factory _FailedToSendOtp(
      {required final RequestDeleteAccountFailure
          requestDeleteAccountFailure}) = _$FailedToSendOtpImpl;

  RequestDeleteAccountFailure get requestDeleteAccountFailure;
  @JsonKey(ignore: true)
  _$$FailedToSendOtpImplCopyWith<_$FailedToSendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
