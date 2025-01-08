// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_mint_rental_token_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateMintRentalTokenEvent {
  String get callerAddress => throw _privateConstructorUsedError;
  List<String> get landAssetIds => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String callerAddress, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)
        createMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String callerAddress, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)?
        createMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String callerAddress, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)?
        createMintRentalToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateMintRentalToken value)
        createMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateMintRentalToken value)? createMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMintRentalToken value)? createMintRentalToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateMintRentalTokenEventCopyWith<CreateMintRentalTokenEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMintRentalTokenEventCopyWith<$Res> {
  factory $CreateMintRentalTokenEventCopyWith(CreateMintRentalTokenEvent value,
          $Res Function(CreateMintRentalTokenEvent) then) =
      _$CreateMintRentalTokenEventCopyWithImpl<$Res,
          CreateMintRentalTokenEvent>;
  @useResult
  $Res call(
      {String callerAddress,
      List<String> landAssetIds,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class _$CreateMintRentalTokenEventCopyWithImpl<$Res,
        $Val extends CreateMintRentalTokenEvent>
    implements $CreateMintRentalTokenEventCopyWith<$Res> {
  _$CreateMintRentalTokenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callerAddress = null,
    Object? landAssetIds = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      callerAddress: null == callerAddress
          ? _value.callerAddress
          : callerAddress // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CreateMintRentalTokenImplCopyWith<$Res>
    implements $CreateMintRentalTokenEventCopyWith<$Res> {
  factory _$$CreateMintRentalTokenImplCopyWith(
          _$CreateMintRentalTokenImpl value,
          $Res Function(_$CreateMintRentalTokenImpl) then) =
      __$$CreateMintRentalTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String callerAddress,
      List<String> landAssetIds,
      DateTime startTime,
      DateTime endTime});
}

/// @nodoc
class __$$CreateMintRentalTokenImplCopyWithImpl<$Res>
    extends _$CreateMintRentalTokenEventCopyWithImpl<$Res,
        _$CreateMintRentalTokenImpl>
    implements _$$CreateMintRentalTokenImplCopyWith<$Res> {
  __$$CreateMintRentalTokenImplCopyWithImpl(_$CreateMintRentalTokenImpl _value,
      $Res Function(_$CreateMintRentalTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callerAddress = null,
    Object? landAssetIds = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$CreateMintRentalTokenImpl(
      callerAddress: null == callerAddress
          ? _value.callerAddress
          : callerAddress // ignore: cast_nullable_to_non_nullable
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

class _$CreateMintRentalTokenImpl implements _CreateMintRentalToken {
  const _$CreateMintRentalTokenImpl(
      {required this.callerAddress,
      required final List<String> landAssetIds,
      required this.startTime,
      required this.endTime})
      : _landAssetIds = landAssetIds;

  @override
  final String callerAddress;
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
    return 'CreateMintRentalTokenEvent.createMintRentalToken(callerAddress: $callerAddress, landAssetIds: $landAssetIds, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMintRentalTokenImpl &&
            (identical(other.callerAddress, callerAddress) ||
                other.callerAddress == callerAddress) &&
            const DeepCollectionEquality()
                .equals(other._landAssetIds, _landAssetIds) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callerAddress,
      const DeepCollectionEquality().hash(_landAssetIds), startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMintRentalTokenImplCopyWith<_$CreateMintRentalTokenImpl>
      get copyWith => __$$CreateMintRentalTokenImplCopyWithImpl<
          _$CreateMintRentalTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String callerAddress, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)
        createMintRentalToken,
  }) {
    return createMintRentalToken(
        callerAddress, landAssetIds, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String callerAddress, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)?
        createMintRentalToken,
  }) {
    return createMintRentalToken?.call(
        callerAddress, landAssetIds, startTime, endTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String callerAddress, List<String> landAssetIds,
            DateTime startTime, DateTime endTime)?
        createMintRentalToken,
    required TResult orElse(),
  }) {
    if (createMintRentalToken != null) {
      return createMintRentalToken(
          callerAddress, landAssetIds, startTime, endTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateMintRentalToken value)
        createMintRentalToken,
  }) {
    return createMintRentalToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateMintRentalToken value)? createMintRentalToken,
  }) {
    return createMintRentalToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateMintRentalToken value)? createMintRentalToken,
    required TResult orElse(),
  }) {
    if (createMintRentalToken != null) {
      return createMintRentalToken(this);
    }
    return orElse();
  }
}

abstract class _CreateMintRentalToken implements CreateMintRentalTokenEvent {
  const factory _CreateMintRentalToken(
      {required final String callerAddress,
      required final List<String> landAssetIds,
      required final DateTime startTime,
      required final DateTime endTime}) = _$CreateMintRentalTokenImpl;

  @override
  String get callerAddress;
  @override
  List<String> get landAssetIds;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  @JsonKey(ignore: true)
  _$$CreateMintRentalTokenImplCopyWith<_$CreateMintRentalTokenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateMintRentalTokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creatingMintRentalToken,
    required TResult Function(String mintToken) createdMintRentalToken,
    required TResult Function(
            CreateMintRentalTokenFailure createMintRentalTokenFailure)
        failedToCreateMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creatingMintRentalToken,
    TResult? Function(String mintToken)? createdMintRentalToken,
    TResult? Function(
            CreateMintRentalTokenFailure createMintRentalTokenFailure)?
        failedToCreateMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creatingMintRentalToken,
    TResult Function(String mintToken)? createdMintRentalToken,
    TResult Function(CreateMintRentalTokenFailure createMintRentalTokenFailure)?
        failedToCreateMintRentalToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreatingMintRentalToken value)
        creatingMintRentalToken,
    required TResult Function(_CreatedMintRentalToken value)
        createdMintRentalToken,
    required TResult Function(_FailedToCreateMintRentalToken value)
        failedToCreateMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreatingMintRentalToken value)? creatingMintRentalToken,
    TResult? Function(_CreatedMintRentalToken value)? createdMintRentalToken,
    TResult? Function(_FailedToCreateMintRentalToken value)?
        failedToCreateMintRentalToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreatingMintRentalToken value)? creatingMintRentalToken,
    TResult Function(_CreatedMintRentalToken value)? createdMintRentalToken,
    TResult Function(_FailedToCreateMintRentalToken value)?
        failedToCreateMintRentalToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateMintRentalTokenStateCopyWith<$Res> {
  factory $CreateMintRentalTokenStateCopyWith(CreateMintRentalTokenState value,
          $Res Function(CreateMintRentalTokenState) then) =
      _$CreateMintRentalTokenStateCopyWithImpl<$Res,
          CreateMintRentalTokenState>;
}

/// @nodoc
class _$CreateMintRentalTokenStateCopyWithImpl<$Res,
        $Val extends CreateMintRentalTokenState>
    implements $CreateMintRentalTokenStateCopyWith<$Res> {
  _$CreateMintRentalTokenStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateMintRentalTokenStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CreateMintRentalTokenState.initial()';
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
    required TResult Function() creatingMintRentalToken,
    required TResult Function(String mintToken) createdMintRentalToken,
    required TResult Function(
            CreateMintRentalTokenFailure createMintRentalTokenFailure)
        failedToCreateMintRentalToken,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creatingMintRentalToken,
    TResult? Function(String mintToken)? createdMintRentalToken,
    TResult? Function(
            CreateMintRentalTokenFailure createMintRentalTokenFailure)?
        failedToCreateMintRentalToken,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creatingMintRentalToken,
    TResult Function(String mintToken)? createdMintRentalToken,
    TResult Function(CreateMintRentalTokenFailure createMintRentalTokenFailure)?
        failedToCreateMintRentalToken,
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
    required TResult Function(_CreatingMintRentalToken value)
        creatingMintRentalToken,
    required TResult Function(_CreatedMintRentalToken value)
        createdMintRentalToken,
    required TResult Function(_FailedToCreateMintRentalToken value)
        failedToCreateMintRentalToken,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreatingMintRentalToken value)? creatingMintRentalToken,
    TResult? Function(_CreatedMintRentalToken value)? createdMintRentalToken,
    TResult? Function(_FailedToCreateMintRentalToken value)?
        failedToCreateMintRentalToken,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreatingMintRentalToken value)? creatingMintRentalToken,
    TResult Function(_CreatedMintRentalToken value)? createdMintRentalToken,
    TResult Function(_FailedToCreateMintRentalToken value)?
        failedToCreateMintRentalToken,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateMintRentalTokenState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CreatingMintRentalTokenImplCopyWith<$Res> {
  factory _$$CreatingMintRentalTokenImplCopyWith(
          _$CreatingMintRentalTokenImpl value,
          $Res Function(_$CreatingMintRentalTokenImpl) then) =
      __$$CreatingMintRentalTokenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreatingMintRentalTokenImplCopyWithImpl<$Res>
    extends _$CreateMintRentalTokenStateCopyWithImpl<$Res,
        _$CreatingMintRentalTokenImpl>
    implements _$$CreatingMintRentalTokenImplCopyWith<$Res> {
  __$$CreatingMintRentalTokenImplCopyWithImpl(
      _$CreatingMintRentalTokenImpl _value,
      $Res Function(_$CreatingMintRentalTokenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreatingMintRentalTokenImpl implements _CreatingMintRentalToken {
  const _$CreatingMintRentalTokenImpl();

  @override
  String toString() {
    return 'CreateMintRentalTokenState.creatingMintRentalToken()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatingMintRentalTokenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creatingMintRentalToken,
    required TResult Function(String mintToken) createdMintRentalToken,
    required TResult Function(
            CreateMintRentalTokenFailure createMintRentalTokenFailure)
        failedToCreateMintRentalToken,
  }) {
    return creatingMintRentalToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creatingMintRentalToken,
    TResult? Function(String mintToken)? createdMintRentalToken,
    TResult? Function(
            CreateMintRentalTokenFailure createMintRentalTokenFailure)?
        failedToCreateMintRentalToken,
  }) {
    return creatingMintRentalToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creatingMintRentalToken,
    TResult Function(String mintToken)? createdMintRentalToken,
    TResult Function(CreateMintRentalTokenFailure createMintRentalTokenFailure)?
        failedToCreateMintRentalToken,
    required TResult orElse(),
  }) {
    if (creatingMintRentalToken != null) {
      return creatingMintRentalToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreatingMintRentalToken value)
        creatingMintRentalToken,
    required TResult Function(_CreatedMintRentalToken value)
        createdMintRentalToken,
    required TResult Function(_FailedToCreateMintRentalToken value)
        failedToCreateMintRentalToken,
  }) {
    return creatingMintRentalToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreatingMintRentalToken value)? creatingMintRentalToken,
    TResult? Function(_CreatedMintRentalToken value)? createdMintRentalToken,
    TResult? Function(_FailedToCreateMintRentalToken value)?
        failedToCreateMintRentalToken,
  }) {
    return creatingMintRentalToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreatingMintRentalToken value)? creatingMintRentalToken,
    TResult Function(_CreatedMintRentalToken value)? createdMintRentalToken,
    TResult Function(_FailedToCreateMintRentalToken value)?
        failedToCreateMintRentalToken,
    required TResult orElse(),
  }) {
    if (creatingMintRentalToken != null) {
      return creatingMintRentalToken(this);
    }
    return orElse();
  }
}

abstract class _CreatingMintRentalToken implements CreateMintRentalTokenState {
  const factory _CreatingMintRentalToken() = _$CreatingMintRentalTokenImpl;
}

/// @nodoc
abstract class _$$CreatedMintRentalTokenImplCopyWith<$Res> {
  factory _$$CreatedMintRentalTokenImplCopyWith(
          _$CreatedMintRentalTokenImpl value,
          $Res Function(_$CreatedMintRentalTokenImpl) then) =
      __$$CreatedMintRentalTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mintToken});
}

/// @nodoc
class __$$CreatedMintRentalTokenImplCopyWithImpl<$Res>
    extends _$CreateMintRentalTokenStateCopyWithImpl<$Res,
        _$CreatedMintRentalTokenImpl>
    implements _$$CreatedMintRentalTokenImplCopyWith<$Res> {
  __$$CreatedMintRentalTokenImplCopyWithImpl(
      _$CreatedMintRentalTokenImpl _value,
      $Res Function(_$CreatedMintRentalTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mintToken = null,
  }) {
    return _then(_$CreatedMintRentalTokenImpl(
      mintToken: null == mintToken
          ? _value.mintToken
          : mintToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreatedMintRentalTokenImpl implements _CreatedMintRentalToken {
  const _$CreatedMintRentalTokenImpl({required this.mintToken});

  @override
  final String mintToken;

  @override
  String toString() {
    return 'CreateMintRentalTokenState.createdMintRentalToken(mintToken: $mintToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedMintRentalTokenImpl &&
            (identical(other.mintToken, mintToken) ||
                other.mintToken == mintToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mintToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedMintRentalTokenImplCopyWith<_$CreatedMintRentalTokenImpl>
      get copyWith => __$$CreatedMintRentalTokenImplCopyWithImpl<
          _$CreatedMintRentalTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creatingMintRentalToken,
    required TResult Function(String mintToken) createdMintRentalToken,
    required TResult Function(
            CreateMintRentalTokenFailure createMintRentalTokenFailure)
        failedToCreateMintRentalToken,
  }) {
    return createdMintRentalToken(mintToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creatingMintRentalToken,
    TResult? Function(String mintToken)? createdMintRentalToken,
    TResult? Function(
            CreateMintRentalTokenFailure createMintRentalTokenFailure)?
        failedToCreateMintRentalToken,
  }) {
    return createdMintRentalToken?.call(mintToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creatingMintRentalToken,
    TResult Function(String mintToken)? createdMintRentalToken,
    TResult Function(CreateMintRentalTokenFailure createMintRentalTokenFailure)?
        failedToCreateMintRentalToken,
    required TResult orElse(),
  }) {
    if (createdMintRentalToken != null) {
      return createdMintRentalToken(mintToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreatingMintRentalToken value)
        creatingMintRentalToken,
    required TResult Function(_CreatedMintRentalToken value)
        createdMintRentalToken,
    required TResult Function(_FailedToCreateMintRentalToken value)
        failedToCreateMintRentalToken,
  }) {
    return createdMintRentalToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreatingMintRentalToken value)? creatingMintRentalToken,
    TResult? Function(_CreatedMintRentalToken value)? createdMintRentalToken,
    TResult? Function(_FailedToCreateMintRentalToken value)?
        failedToCreateMintRentalToken,
  }) {
    return createdMintRentalToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreatingMintRentalToken value)? creatingMintRentalToken,
    TResult Function(_CreatedMintRentalToken value)? createdMintRentalToken,
    TResult Function(_FailedToCreateMintRentalToken value)?
        failedToCreateMintRentalToken,
    required TResult orElse(),
  }) {
    if (createdMintRentalToken != null) {
      return createdMintRentalToken(this);
    }
    return orElse();
  }
}

abstract class _CreatedMintRentalToken implements CreateMintRentalTokenState {
  const factory _CreatedMintRentalToken({required final String mintToken}) =
      _$CreatedMintRentalTokenImpl;

  String get mintToken;
  @JsonKey(ignore: true)
  _$$CreatedMintRentalTokenImplCopyWith<_$CreatedMintRentalTokenImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToCreateMintRentalTokenImplCopyWith<$Res> {
  factory _$$FailedToCreateMintRentalTokenImplCopyWith(
          _$FailedToCreateMintRentalTokenImpl value,
          $Res Function(_$FailedToCreateMintRentalTokenImpl) then) =
      __$$FailedToCreateMintRentalTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateMintRentalTokenFailure createMintRentalTokenFailure});
}

/// @nodoc
class __$$FailedToCreateMintRentalTokenImplCopyWithImpl<$Res>
    extends _$CreateMintRentalTokenStateCopyWithImpl<$Res,
        _$FailedToCreateMintRentalTokenImpl>
    implements _$$FailedToCreateMintRentalTokenImplCopyWith<$Res> {
  __$$FailedToCreateMintRentalTokenImplCopyWithImpl(
      _$FailedToCreateMintRentalTokenImpl _value,
      $Res Function(_$FailedToCreateMintRentalTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createMintRentalTokenFailure = null,
  }) {
    return _then(_$FailedToCreateMintRentalTokenImpl(
      createMintRentalTokenFailure: null == createMintRentalTokenFailure
          ? _value.createMintRentalTokenFailure
          : createMintRentalTokenFailure // ignore: cast_nullable_to_non_nullable
              as CreateMintRentalTokenFailure,
    ));
  }
}

/// @nodoc

class _$FailedToCreateMintRentalTokenImpl
    implements _FailedToCreateMintRentalToken {
  const _$FailedToCreateMintRentalTokenImpl(
      {required this.createMintRentalTokenFailure});

  @override
  final CreateMintRentalTokenFailure createMintRentalTokenFailure;

  @override
  String toString() {
    return 'CreateMintRentalTokenState.failedToCreateMintRentalToken(createMintRentalTokenFailure: $createMintRentalTokenFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToCreateMintRentalTokenImpl &&
            (identical(other.createMintRentalTokenFailure,
                    createMintRentalTokenFailure) ||
                other.createMintRentalTokenFailure ==
                    createMintRentalTokenFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createMintRentalTokenFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToCreateMintRentalTokenImplCopyWith<
          _$FailedToCreateMintRentalTokenImpl>
      get copyWith => __$$FailedToCreateMintRentalTokenImplCopyWithImpl<
          _$FailedToCreateMintRentalTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creatingMintRentalToken,
    required TResult Function(String mintToken) createdMintRentalToken,
    required TResult Function(
            CreateMintRentalTokenFailure createMintRentalTokenFailure)
        failedToCreateMintRentalToken,
  }) {
    return failedToCreateMintRentalToken(createMintRentalTokenFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creatingMintRentalToken,
    TResult? Function(String mintToken)? createdMintRentalToken,
    TResult? Function(
            CreateMintRentalTokenFailure createMintRentalTokenFailure)?
        failedToCreateMintRentalToken,
  }) {
    return failedToCreateMintRentalToken?.call(createMintRentalTokenFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creatingMintRentalToken,
    TResult Function(String mintToken)? createdMintRentalToken,
    TResult Function(CreateMintRentalTokenFailure createMintRentalTokenFailure)?
        failedToCreateMintRentalToken,
    required TResult orElse(),
  }) {
    if (failedToCreateMintRentalToken != null) {
      return failedToCreateMintRentalToken(createMintRentalTokenFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CreatingMintRentalToken value)
        creatingMintRentalToken,
    required TResult Function(_CreatedMintRentalToken value)
        createdMintRentalToken,
    required TResult Function(_FailedToCreateMintRentalToken value)
        failedToCreateMintRentalToken,
  }) {
    return failedToCreateMintRentalToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CreatingMintRentalToken value)? creatingMintRentalToken,
    TResult? Function(_CreatedMintRentalToken value)? createdMintRentalToken,
    TResult? Function(_FailedToCreateMintRentalToken value)?
        failedToCreateMintRentalToken,
  }) {
    return failedToCreateMintRentalToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CreatingMintRentalToken value)? creatingMintRentalToken,
    TResult Function(_CreatedMintRentalToken value)? createdMintRentalToken,
    TResult Function(_FailedToCreateMintRentalToken value)?
        failedToCreateMintRentalToken,
    required TResult orElse(),
  }) {
    if (failedToCreateMintRentalToken != null) {
      return failedToCreateMintRentalToken(this);
    }
    return orElse();
  }
}

abstract class _FailedToCreateMintRentalToken
    implements CreateMintRentalTokenState {
  const factory _FailedToCreateMintRentalToken(
      {required final CreateMintRentalTokenFailure
          createMintRentalTokenFailure}) = _$FailedToCreateMintRentalTokenImpl;

  CreateMintRentalTokenFailure get createMintRentalTokenFailure;
  @JsonKey(ignore: true)
  _$$FailedToCreateMintRentalTokenImplCopyWith<
          _$FailedToCreateMintRentalTokenImpl>
      get copyWith => throw _privateConstructorUsedError;
}
