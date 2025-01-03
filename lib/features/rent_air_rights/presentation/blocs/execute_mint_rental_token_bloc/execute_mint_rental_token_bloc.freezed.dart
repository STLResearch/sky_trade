// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'execute_mint_rental_token_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExecuteMintRentalTokenEvent {
  String get transaction => throw _privateConstructorUsedError;
  List<String> get landAssetIds => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transaction, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)
        executeMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String transaction, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)?
        executeMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transaction, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)?
        executeMintRentalToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExecuteMintRentalToken value)
        executeMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExecuteMintRentalToken value)? executeMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExecuteMintRentalToken value)? executeMintRentalToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExecuteMintRentalTokenEventCopyWith<ExecuteMintRentalTokenEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExecuteMintRentalTokenEventCopyWith<$Res> {
  factory $ExecuteMintRentalTokenEventCopyWith(
          ExecuteMintRentalTokenEvent value,
          $Res Function(ExecuteMintRentalTokenEvent) then) =
      _$ExecuteMintRentalTokenEventCopyWithImpl<$Res,
          ExecuteMintRentalTokenEvent>;
  @useResult
  $Res call(
      {String transaction,
      List<String> landAssetIds,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class _$ExecuteMintRentalTokenEventCopyWithImpl<$Res,
        $Val extends ExecuteMintRentalTokenEvent>
    implements $ExecuteMintRentalTokenEventCopyWith<$Res> {
  _$ExecuteMintRentalTokenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? landAssetIds = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      landAssetIds: null == landAssetIds
          ? _value.landAssetIds
          : landAssetIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExecuteMintRentalTokenImplCopyWith<$Res>
    implements $ExecuteMintRentalTokenEventCopyWith<$Res> {
  factory _$$ExecuteMintRentalTokenImplCopyWith(
          _$ExecuteMintRentalTokenImpl value,
          $Res Function(_$ExecuteMintRentalTokenImpl) then) =
      __$$ExecuteMintRentalTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String transaction,
      List<String> landAssetIds,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class __$$ExecuteMintRentalTokenImplCopyWithImpl<$Res>
    extends _$ExecuteMintRentalTokenEventCopyWithImpl<$Res,
        _$ExecuteMintRentalTokenImpl>
    implements _$$ExecuteMintRentalTokenImplCopyWith<$Res> {
  __$$ExecuteMintRentalTokenImplCopyWithImpl(
      _$ExecuteMintRentalTokenImpl _value,
      $Res Function(_$ExecuteMintRentalTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? landAssetIds = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$ExecuteMintRentalTokenImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      landAssetIds: null == landAssetIds
          ? _value._landAssetIds
          : landAssetIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ExecuteMintRentalTokenImpl implements _ExecuteMintRentalToken {
  const _$ExecuteMintRentalTokenImpl(
      {required this.transaction,
      required final List<String> landAssetIds,
      required this.startTime,
      required this.endTime})
      : _landAssetIds = landAssetIds;

  @override
  final String transaction;
  final List<String> _landAssetIds;
  @override
  List<String> get landAssetIds {
    if (_landAssetIds is EqualUnmodifiableListView) return _landAssetIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_landAssetIds);
  }

  @override
  final DateTime startTime;
  @override
  final DateTime endTime;

  @override
  String toString() {
    return 'ExecuteMintRentalTokenEvent.executeMintRentalToken(transaction: $transaction, landAssetIds: $landAssetIds, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExecuteMintRentalTokenImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            const DeepCollectionEquality()
                .equals(other._landAssetIds, _landAssetIds) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction,
      const DeepCollectionEquality().hash(_landAssetIds), startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExecuteMintRentalTokenImplCopyWith<_$ExecuteMintRentalTokenImpl>
      get copyWith => __$$ExecuteMintRentalTokenImplCopyWithImpl<
          _$ExecuteMintRentalTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String transaction, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)
        executeMintRentalToken,
  }) {
    return executeMintRentalToken(
        transaction, landAssetIds, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String transaction, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)?
        executeMintRentalToken,
  }) {
    return executeMintRentalToken?.call(
        transaction, landAssetIds, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String transaction, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)?
        executeMintRentalToken,
    required TResult orElse(),
  }) {
    if (executeMintRentalToken != null) {
      return executeMintRentalToken(
          transaction, landAssetIds, startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExecuteMintRentalToken value)
        executeMintRentalToken,
  }) {
    return executeMintRentalToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExecuteMintRentalToken value)? executeMintRentalToken,
  }) {
    return executeMintRentalToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExecuteMintRentalToken value)? executeMintRentalToken,
    required TResult orElse(),
  }) {
    if (executeMintRentalToken != null) {
      return executeMintRentalToken(this);
    }
    return orElse();
  }
}

abstract class _ExecuteMintRentalToken implements ExecuteMintRentalTokenEvent {
  const factory _ExecuteMintRentalToken(
      {required final String transaction,
      required final List<String> landAssetIds,
      required final DateTime startTime,
      required final DateTime endTime}) = _$ExecuteMintRentalTokenImpl;

  @override
  String get transaction;
  @override
  List<String> get landAssetIds;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  @JsonKey(ignore: true)
  _$$ExecuteMintRentalTokenImplCopyWith<_$ExecuteMintRentalTokenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExecuteMintRentalTokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() executingMintRentalToken,
    required TResult Function(ExecuteMintRentalTokenEntity rentalToken)
        executedMintRentalToken,
    required TResult Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)
        executeMintRentalTokenFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? executingMintRentalToken,
    TResult? Function(ExecuteMintRentalTokenEntity rentalToken)?
        executedMintRentalToken,
    TResult? Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)?
        executeMintRentalTokenFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? executingMintRentalToken,
    TResult Function(ExecuteMintRentalTokenEntity rentalToken)?
        executedMintRentalToken,
    TResult Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)?
        executeMintRentalTokenFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ExecutingMintRentalToken value)
        executingMintRentalToken,
    required TResult Function(_executedMintRentalToken value)
        executedMintRentalToken,
    required TResult Function(_executeMintRentalTokenFailed value)
        executeMintRentalTokenFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ExecutingMintRentalToken value)?
        executingMintRentalToken,
    TResult? Function(_executedMintRentalToken value)? executedMintRentalToken,
    TResult? Function(_executeMintRentalTokenFailed value)?
        executeMintRentalTokenFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ExecutingMintRentalToken value)? executingMintRentalToken,
    TResult Function(_executedMintRentalToken value)? executedMintRentalToken,
    TResult Function(_executeMintRentalTokenFailed value)?
        executeMintRentalTokenFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExecuteMintRentalTokenStateCopyWith<$Res> {
  factory $ExecuteMintRentalTokenStateCopyWith(
          ExecuteMintRentalTokenState value,
          $Res Function(ExecuteMintRentalTokenState) then) =
      _$ExecuteMintRentalTokenStateCopyWithImpl<$Res,
          ExecuteMintRentalTokenState>;
}

/// @nodoc
class _$ExecuteMintRentalTokenStateCopyWithImpl<$Res,
        $Val extends ExecuteMintRentalTokenState>
    implements $ExecuteMintRentalTokenStateCopyWith<$Res> {
  _$ExecuteMintRentalTokenStateCopyWithImpl(this._value, this._then);

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
    extends _$ExecuteMintRentalTokenStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ExecuteMintRentalTokenState.initial()';
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
    required TResult Function() executingMintRentalToken,
    required TResult Function(ExecuteMintRentalTokenEntity rentalToken)
        executedMintRentalToken,
    required TResult Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)
        executeMintRentalTokenFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? executingMintRentalToken,
    TResult? Function(ExecuteMintRentalTokenEntity rentalToken)?
        executedMintRentalToken,
    TResult? Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)?
        executeMintRentalTokenFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? executingMintRentalToken,
    TResult Function(ExecuteMintRentalTokenEntity rentalToken)?
        executedMintRentalToken,
    TResult Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)?
        executeMintRentalTokenFailed,
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
    required TResult Function(_ExecutingMintRentalToken value)
        executingMintRentalToken,
    required TResult Function(_executedMintRentalToken value)
        executedMintRentalToken,
    required TResult Function(_executeMintRentalTokenFailed value)
        executeMintRentalTokenFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ExecutingMintRentalToken value)?
        executingMintRentalToken,
    TResult? Function(_executedMintRentalToken value)? executedMintRentalToken,
    TResult? Function(_executeMintRentalTokenFailed value)?
        executeMintRentalTokenFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ExecutingMintRentalToken value)? executingMintRentalToken,
    TResult Function(_executedMintRentalToken value)? executedMintRentalToken,
    TResult Function(_executeMintRentalTokenFailed value)?
        executeMintRentalTokenFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExecuteMintRentalTokenState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ExecutingMintRentalTokenImplCopyWith<$Res> {
  factory _$$ExecutingMintRentalTokenImplCopyWith(
          _$ExecutingMintRentalTokenImpl value,
          $Res Function(_$ExecutingMintRentalTokenImpl) then) =
      __$$ExecutingMintRentalTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExecutingMintRentalTokenImplCopyWithImpl<$Res>
    extends _$ExecuteMintRentalTokenStateCopyWithImpl<$Res,
        _$ExecutingMintRentalTokenImpl>
    implements _$$ExecutingMintRentalTokenImplCopyWith<$Res> {
  __$$ExecutingMintRentalTokenImplCopyWithImpl(
      _$ExecutingMintRentalTokenImpl _value,
      $Res Function(_$ExecutingMintRentalTokenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExecutingMintRentalTokenImpl implements _ExecutingMintRentalToken {
  const _$ExecutingMintRentalTokenImpl();

  @override
  String toString() {
    return 'ExecuteMintRentalTokenState.executingMintRentalToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExecutingMintRentalTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() executingMintRentalToken,
    required TResult Function(ExecuteMintRentalTokenEntity rentalToken)
        executedMintRentalToken,
    required TResult Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)
        executeMintRentalTokenFailed,
  }) {
    return executingMintRentalToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? executingMintRentalToken,
    TResult? Function(ExecuteMintRentalTokenEntity rentalToken)?
        executedMintRentalToken,
    TResult? Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)?
        executeMintRentalTokenFailed,
  }) {
    return executingMintRentalToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? executingMintRentalToken,
    TResult Function(ExecuteMintRentalTokenEntity rentalToken)?
        executedMintRentalToken,
    TResult Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)?
        executeMintRentalTokenFailed,
    required TResult orElse(),
  }) {
    if (executingMintRentalToken != null) {
      return executingMintRentalToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ExecutingMintRentalToken value)
        executingMintRentalToken,
    required TResult Function(_executedMintRentalToken value)
        executedMintRentalToken,
    required TResult Function(_executeMintRentalTokenFailed value)
        executeMintRentalTokenFailed,
  }) {
    return executingMintRentalToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ExecutingMintRentalToken value)?
        executingMintRentalToken,
    TResult? Function(_executedMintRentalToken value)? executedMintRentalToken,
    TResult? Function(_executeMintRentalTokenFailed value)?
        executeMintRentalTokenFailed,
  }) {
    return executingMintRentalToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ExecutingMintRentalToken value)? executingMintRentalToken,
    TResult Function(_executedMintRentalToken value)? executedMintRentalToken,
    TResult Function(_executeMintRentalTokenFailed value)?
        executeMintRentalTokenFailed,
    required TResult orElse(),
  }) {
    if (executingMintRentalToken != null) {
      return executingMintRentalToken(this);
    }
    return orElse();
  }
}

abstract class _ExecutingMintRentalToken
    implements ExecuteMintRentalTokenState {
  const factory _ExecutingMintRentalToken() = _$ExecutingMintRentalTokenImpl;
}

/// @nodoc
abstract class _$$executedMintRentalTokenImplCopyWith<$Res> {
  factory _$$executedMintRentalTokenImplCopyWith(
          _$executedMintRentalTokenImpl value,
          $Res Function(_$executedMintRentalTokenImpl) then) =
      __$$executedMintRentalTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExecuteMintRentalTokenEntity rentalToken});
}

/// @nodoc
class __$$executedMintRentalTokenImplCopyWithImpl<$Res>
    extends _$ExecuteMintRentalTokenStateCopyWithImpl<$Res,
        _$executedMintRentalTokenImpl>
    implements _$$executedMintRentalTokenImplCopyWith<$Res> {
  __$$executedMintRentalTokenImplCopyWithImpl(
      _$executedMintRentalTokenImpl _value,
      $Res Function(_$executedMintRentalTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalToken = null,
  }) {
    return _then(_$executedMintRentalTokenImpl(
      rentalToken: null == rentalToken
          ? _value.rentalToken
          : rentalToken // ignore: cast_nullable_to_non_nullable
              as ExecuteMintRentalTokenEntity,
    ));
  }
}

/// @nodoc

class _$executedMintRentalTokenImpl implements _executedMintRentalToken {
  const _$executedMintRentalTokenImpl({required this.rentalToken});

  @override
  final ExecuteMintRentalTokenEntity rentalToken;

  @override
  String toString() {
    return 'ExecuteMintRentalTokenState.executedMintRentalToken(rentalToken: $rentalToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$executedMintRentalTokenImpl &&
            (identical(other.rentalToken, rentalToken) ||
                other.rentalToken == rentalToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentalToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$executedMintRentalTokenImplCopyWith<_$executedMintRentalTokenImpl>
      get copyWith => __$$executedMintRentalTokenImplCopyWithImpl<
          _$executedMintRentalTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() executingMintRentalToken,
    required TResult Function(ExecuteMintRentalTokenEntity rentalToken)
        executedMintRentalToken,
    required TResult Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)
        executeMintRentalTokenFailed,
  }) {
    return executedMintRentalToken(rentalToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? executingMintRentalToken,
    TResult? Function(ExecuteMintRentalTokenEntity rentalToken)?
        executedMintRentalToken,
    TResult? Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)?
        executeMintRentalTokenFailed,
  }) {
    return executedMintRentalToken?.call(rentalToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? executingMintRentalToken,
    TResult Function(ExecuteMintRentalTokenEntity rentalToken)?
        executedMintRentalToken,
    TResult Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)?
        executeMintRentalTokenFailed,
    required TResult orElse(),
  }) {
    if (executedMintRentalToken != null) {
      return executedMintRentalToken(rentalToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ExecutingMintRentalToken value)
        executingMintRentalToken,
    required TResult Function(_executedMintRentalToken value)
        executedMintRentalToken,
    required TResult Function(_executeMintRentalTokenFailed value)
        executeMintRentalTokenFailed,
  }) {
    return executedMintRentalToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ExecutingMintRentalToken value)?
        executingMintRentalToken,
    TResult? Function(_executedMintRentalToken value)? executedMintRentalToken,
    TResult? Function(_executeMintRentalTokenFailed value)?
        executeMintRentalTokenFailed,
  }) {
    return executedMintRentalToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ExecutingMintRentalToken value)? executingMintRentalToken,
    TResult Function(_executedMintRentalToken value)? executedMintRentalToken,
    TResult Function(_executeMintRentalTokenFailed value)?
        executeMintRentalTokenFailed,
    required TResult orElse(),
  }) {
    if (executedMintRentalToken != null) {
      return executedMintRentalToken(this);
    }
    return orElse();
  }
}

abstract class _executedMintRentalToken implements ExecuteMintRentalTokenState {
  const factory _executedMintRentalToken(
          {required final ExecuteMintRentalTokenEntity rentalToken}) =
      _$executedMintRentalTokenImpl;

  ExecuteMintRentalTokenEntity get rentalToken;
  @JsonKey(ignore: true)
  _$$executedMintRentalTokenImplCopyWith<_$executedMintRentalTokenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$executeMintRentalTokenFailedImplCopyWith<$Res> {
  factory _$$executeMintRentalTokenFailedImplCopyWith(
          _$executeMintRentalTokenFailedImpl value,
          $Res Function(_$executeMintRentalTokenFailedImpl) then) =
      __$$executeMintRentalTokenFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ExecuteMintRentalTokenFailure executeMintRentalTokenFailure});
}

/// @nodoc
class __$$executeMintRentalTokenFailedImplCopyWithImpl<$Res>
    extends _$ExecuteMintRentalTokenStateCopyWithImpl<$Res,
        _$executeMintRentalTokenFailedImpl>
    implements _$$executeMintRentalTokenFailedImplCopyWith<$Res> {
  __$$executeMintRentalTokenFailedImplCopyWithImpl(
      _$executeMintRentalTokenFailedImpl _value,
      $Res Function(_$executeMintRentalTokenFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? executeMintRentalTokenFailure = null,
  }) {
    return _then(_$executeMintRentalTokenFailedImpl(
      executeMintRentalTokenFailure: null == executeMintRentalTokenFailure
          ? _value.executeMintRentalTokenFailure
          : executeMintRentalTokenFailure // ignore: cast_nullable_to_non_nullable
              as ExecuteMintRentalTokenFailure,
    ));
  }
}

/// @nodoc

class _$executeMintRentalTokenFailedImpl
    implements _executeMintRentalTokenFailed {
  const _$executeMintRentalTokenFailedImpl(
      {required this.executeMintRentalTokenFailure});

  @override
  final ExecuteMintRentalTokenFailure executeMintRentalTokenFailure;

  @override
  String toString() {
    return 'ExecuteMintRentalTokenState.executeMintRentalTokenFailed(executeMintRentalTokenFailure: $executeMintRentalTokenFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$executeMintRentalTokenFailedImpl &&
            (identical(other.executeMintRentalTokenFailure,
                    executeMintRentalTokenFailure) ||
                other.executeMintRentalTokenFailure ==
                    executeMintRentalTokenFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, executeMintRentalTokenFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$executeMintRentalTokenFailedImplCopyWith<
          _$executeMintRentalTokenFailedImpl>
      get copyWith => __$$executeMintRentalTokenFailedImplCopyWithImpl<
          _$executeMintRentalTokenFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() executingMintRentalToken,
    required TResult Function(ExecuteMintRentalTokenEntity rentalToken)
        executedMintRentalToken,
    required TResult Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)
        executeMintRentalTokenFailed,
  }) {
    return executeMintRentalTokenFailed(executeMintRentalTokenFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? executingMintRentalToken,
    TResult? Function(ExecuteMintRentalTokenEntity rentalToken)?
        executedMintRentalToken,
    TResult? Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)?
        executeMintRentalTokenFailed,
  }) {
    return executeMintRentalTokenFailed?.call(executeMintRentalTokenFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? executingMintRentalToken,
    TResult Function(ExecuteMintRentalTokenEntity rentalToken)?
        executedMintRentalToken,
    TResult Function(
            ExecuteMintRentalTokenFailure executeMintRentalTokenFailure)?
        executeMintRentalTokenFailed,
    required TResult orElse(),
  }) {
    if (executeMintRentalTokenFailed != null) {
      return executeMintRentalTokenFailed(executeMintRentalTokenFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ExecutingMintRentalToken value)
        executingMintRentalToken,
    required TResult Function(_executedMintRentalToken value)
        executedMintRentalToken,
    required TResult Function(_executeMintRentalTokenFailed value)
        executeMintRentalTokenFailed,
  }) {
    return executeMintRentalTokenFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ExecutingMintRentalToken value)?
        executingMintRentalToken,
    TResult? Function(_executedMintRentalToken value)? executedMintRentalToken,
    TResult? Function(_executeMintRentalTokenFailed value)?
        executeMintRentalTokenFailed,
  }) {
    return executeMintRentalTokenFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ExecutingMintRentalToken value)? executingMintRentalToken,
    TResult Function(_executedMintRentalToken value)? executedMintRentalToken,
    TResult Function(_executeMintRentalTokenFailed value)?
        executeMintRentalTokenFailed,
    required TResult orElse(),
  }) {
    if (executeMintRentalTokenFailed != null) {
      return executeMintRentalTokenFailed(this);
    }
    return orElse();
  }
}

abstract class _executeMintRentalTokenFailed
    implements ExecuteMintRentalTokenState {
  const factory _executeMintRentalTokenFailed(
      {required final ExecuteMintRentalTokenFailure
          executeMintRentalTokenFailure}) = _$executeMintRentalTokenFailedImpl;

  ExecuteMintRentalTokenFailure get executeMintRentalTokenFailure;
  @JsonKey(ignore: true)
  _$$executeMintRentalTokenFailedImplCopyWith<
          _$executeMintRentalTokenFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
