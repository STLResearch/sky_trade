// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_code_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReferralCodeEvent {
  String get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) copyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? copyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? copyCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CopyCode value) copyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CopyCode value)? copyCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CopyCode value)? copyCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ReferralCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralCodeEventCopyWith<ReferralCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCodeEventCopyWith<$Res> {
  factory $ReferralCodeEventCopyWith(
          ReferralCodeEvent value, $Res Function(ReferralCodeEvent) then) =
      _$ReferralCodeEventCopyWithImpl<$Res, ReferralCodeEvent>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$ReferralCodeEventCopyWithImpl<$Res, $Val extends ReferralCodeEvent>
    implements $ReferralCodeEventCopyWith<$Res> {
  _$ReferralCodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CopyCodeImplCopyWith<$Res>
    implements $ReferralCodeEventCopyWith<$Res> {
  factory _$$CopyCodeImplCopyWith(
          _$CopyCodeImpl value, $Res Function(_$CopyCodeImpl) then) =
      __$$CopyCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$CopyCodeImplCopyWithImpl<$Res>
    extends _$ReferralCodeEventCopyWithImpl<$Res, _$CopyCodeImpl>
    implements _$$CopyCodeImplCopyWith<$Res> {
  __$$CopyCodeImplCopyWithImpl(
      _$CopyCodeImpl _value, $Res Function(_$CopyCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$CopyCodeImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CopyCodeImpl implements _CopyCode {
  const _$CopyCodeImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'ReferralCodeEvent.copyCode(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyCodeImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of ReferralCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyCodeImplCopyWith<_$CopyCodeImpl> get copyWith =>
      __$$CopyCodeImplCopyWithImpl<_$CopyCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String code) copyCode,
  }) {
    return copyCode(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String code)? copyCode,
  }) {
    return copyCode?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String code)? copyCode,
    required TResult orElse(),
  }) {
    if (copyCode != null) {
      return copyCode(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CopyCode value) copyCode,
  }) {
    return copyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CopyCode value)? copyCode,
  }) {
    return copyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CopyCode value)? copyCode,
    required TResult orElse(),
  }) {
    if (copyCode != null) {
      return copyCode(this);
    }
    return orElse();
  }
}

abstract class _CopyCode implements ReferralCodeEvent {
  const factory _CopyCode({required final String code}) = _$CopyCodeImpl;

  @override
  String get code;

  /// Create a copy of ReferralCodeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyCodeImplCopyWith<_$CopyCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReferralCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() copyingCode,
    required TResult Function() copiedCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? copyingCode,
    TResult? Function()? copiedCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? copyingCode,
    TResult Function()? copiedCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CopyingCode value) copyingCode,
    required TResult Function(_CopiedCode value) copiedCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CopyingCode value)? copyingCode,
    TResult? Function(_CopiedCode value)? copiedCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CopyingCode value)? copyingCode,
    TResult Function(_CopiedCode value)? copiedCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralCodeStateCopyWith<$Res> {
  factory $ReferralCodeStateCopyWith(
          ReferralCodeState value, $Res Function(ReferralCodeState) then) =
      _$ReferralCodeStateCopyWithImpl<$Res, ReferralCodeState>;
}

/// @nodoc
class _$ReferralCodeStateCopyWithImpl<$Res, $Val extends ReferralCodeState>
    implements $ReferralCodeStateCopyWith<$Res> {
  _$ReferralCodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralCodeState
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
    extends _$ReferralCodeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ReferralCodeState.initial()';
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
    required TResult Function() copyingCode,
    required TResult Function() copiedCode,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? copyingCode,
    TResult? Function()? copiedCode,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? copyingCode,
    TResult Function()? copiedCode,
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
    required TResult Function(_CopyingCode value) copyingCode,
    required TResult Function(_CopiedCode value) copiedCode,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CopyingCode value)? copyingCode,
    TResult? Function(_CopiedCode value)? copiedCode,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CopyingCode value)? copyingCode,
    TResult Function(_CopiedCode value)? copiedCode,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReferralCodeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CopyingCodeImplCopyWith<$Res> {
  factory _$$CopyingCodeImplCopyWith(
          _$CopyingCodeImpl value, $Res Function(_$CopyingCodeImpl) then) =
      __$$CopyingCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CopyingCodeImplCopyWithImpl<$Res>
    extends _$ReferralCodeStateCopyWithImpl<$Res, _$CopyingCodeImpl>
    implements _$$CopyingCodeImplCopyWith<$Res> {
  __$$CopyingCodeImplCopyWithImpl(
      _$CopyingCodeImpl _value, $Res Function(_$CopyingCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CopyingCodeImpl implements _CopyingCode {
  const _$CopyingCodeImpl();

  @override
  String toString() {
    return 'ReferralCodeState.copyingCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CopyingCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() copyingCode,
    required TResult Function() copiedCode,
  }) {
    return copyingCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? copyingCode,
    TResult? Function()? copiedCode,
  }) {
    return copyingCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? copyingCode,
    TResult Function()? copiedCode,
    required TResult orElse(),
  }) {
    if (copyingCode != null) {
      return copyingCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CopyingCode value) copyingCode,
    required TResult Function(_CopiedCode value) copiedCode,
  }) {
    return copyingCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CopyingCode value)? copyingCode,
    TResult? Function(_CopiedCode value)? copiedCode,
  }) {
    return copyingCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CopyingCode value)? copyingCode,
    TResult Function(_CopiedCode value)? copiedCode,
    required TResult orElse(),
  }) {
    if (copyingCode != null) {
      return copyingCode(this);
    }
    return orElse();
  }
}

abstract class _CopyingCode implements ReferralCodeState {
  const factory _CopyingCode() = _$CopyingCodeImpl;
}

/// @nodoc
abstract class _$$CopiedCodeImplCopyWith<$Res> {
  factory _$$CopiedCodeImplCopyWith(
          _$CopiedCodeImpl value, $Res Function(_$CopiedCodeImpl) then) =
      __$$CopiedCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CopiedCodeImplCopyWithImpl<$Res>
    extends _$ReferralCodeStateCopyWithImpl<$Res, _$CopiedCodeImpl>
    implements _$$CopiedCodeImplCopyWith<$Res> {
  __$$CopiedCodeImplCopyWithImpl(
      _$CopiedCodeImpl _value, $Res Function(_$CopiedCodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralCodeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CopiedCodeImpl implements _CopiedCode {
  const _$CopiedCodeImpl();

  @override
  String toString() {
    return 'ReferralCodeState.copiedCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CopiedCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() copyingCode,
    required TResult Function() copiedCode,
  }) {
    return copiedCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? copyingCode,
    TResult? Function()? copiedCode,
  }) {
    return copiedCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? copyingCode,
    TResult Function()? copiedCode,
    required TResult orElse(),
  }) {
    if (copiedCode != null) {
      return copiedCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CopyingCode value) copyingCode,
    required TResult Function(_CopiedCode value) copiedCode,
  }) {
    return copiedCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CopyingCode value)? copyingCode,
    TResult? Function(_CopiedCode value)? copiedCode,
  }) {
    return copiedCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CopyingCode value)? copyingCode,
    TResult Function(_CopiedCode value)? copiedCode,
    required TResult orElse(),
  }) {
    if (copiedCode != null) {
      return copiedCode(this);
    }
    return orElse();
  }
}

abstract class _CopiedCode implements ReferralCodeState {
  const factory _CopiedCode() = _$CopiedCodeImpl;
}
