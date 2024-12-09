// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_link_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReferralLinkEvent {
  String get link => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) copyLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? copyLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? copyLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CopyLink value) copyLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CopyLink value)? copyLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CopyLink value)? copyLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ReferralLinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferralLinkEventCopyWith<ReferralLinkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralLinkEventCopyWith<$Res> {
  factory $ReferralLinkEventCopyWith(
          ReferralLinkEvent value, $Res Function(ReferralLinkEvent) then) =
      _$ReferralLinkEventCopyWithImpl<$Res, ReferralLinkEvent>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class _$ReferralLinkEventCopyWithImpl<$Res, $Val extends ReferralLinkEvent>
    implements $ReferralLinkEventCopyWith<$Res> {
  _$ReferralLinkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralLinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CopyLinkImplCopyWith<$Res>
    implements $ReferralLinkEventCopyWith<$Res> {
  factory _$$CopyLinkImplCopyWith(
          _$CopyLinkImpl value, $Res Function(_$CopyLinkImpl) then) =
      __$$CopyLinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$CopyLinkImplCopyWithImpl<$Res>
    extends _$ReferralLinkEventCopyWithImpl<$Res, _$CopyLinkImpl>
    implements _$$CopyLinkImplCopyWith<$Res> {
  __$$CopyLinkImplCopyWithImpl(
      _$CopyLinkImpl _value, $Res Function(_$CopyLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralLinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$CopyLinkImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CopyLinkImpl implements _CopyLink {
  const _$CopyLinkImpl({required this.link});

  @override
  final String link;

  @override
  String toString() {
    return 'ReferralLinkEvent.copyLink(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CopyLinkImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  /// Create a copy of ReferralLinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CopyLinkImplCopyWith<_$CopyLinkImpl> get copyWith =>
      __$$CopyLinkImplCopyWithImpl<_$CopyLinkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) copyLink,
  }) {
    return copyLink(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? copyLink,
  }) {
    return copyLink?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? copyLink,
    required TResult orElse(),
  }) {
    if (copyLink != null) {
      return copyLink(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CopyLink value) copyLink,
  }) {
    return copyLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CopyLink value)? copyLink,
  }) {
    return copyLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CopyLink value)? copyLink,
    required TResult orElse(),
  }) {
    if (copyLink != null) {
      return copyLink(this);
    }
    return orElse();
  }
}

abstract class _CopyLink implements ReferralLinkEvent {
  const factory _CopyLink({required final String link}) = _$CopyLinkImpl;

  @override
  String get link;

  /// Create a copy of ReferralLinkEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CopyLinkImplCopyWith<_$CopyLinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReferralLinkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() copyingLink,
    required TResult Function() copiedLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? copyingLink,
    TResult? Function()? copiedLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? copyingLink,
    TResult Function()? copiedLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CopyingLink value) copyingLink,
    required TResult Function(_CopiedLink value) copiedLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CopyingLink value)? copyingLink,
    TResult? Function(_CopiedLink value)? copiedLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CopyingLink value)? copyingLink,
    TResult Function(_CopiedLink value)? copiedLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralLinkStateCopyWith<$Res> {
  factory $ReferralLinkStateCopyWith(
          ReferralLinkState value, $Res Function(ReferralLinkState) then) =
      _$ReferralLinkStateCopyWithImpl<$Res, ReferralLinkState>;
}

/// @nodoc
class _$ReferralLinkStateCopyWithImpl<$Res, $Val extends ReferralLinkState>
    implements $ReferralLinkStateCopyWith<$Res> {
  _$ReferralLinkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReferralLinkState
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
    extends _$ReferralLinkStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralLinkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ReferralLinkState.initial()';
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
    required TResult Function() copyingLink,
    required TResult Function() copiedLink,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? copyingLink,
    TResult? Function()? copiedLink,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? copyingLink,
    TResult Function()? copiedLink,
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
    required TResult Function(_CopyingLink value) copyingLink,
    required TResult Function(_CopiedLink value) copiedLink,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CopyingLink value)? copyingLink,
    TResult? Function(_CopiedLink value)? copiedLink,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CopyingLink value)? copyingLink,
    TResult Function(_CopiedLink value)? copiedLink,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReferralLinkState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CopyingLinkImplCopyWith<$Res> {
  factory _$$CopyingLinkImplCopyWith(
          _$CopyingLinkImpl value, $Res Function(_$CopyingLinkImpl) then) =
      __$$CopyingLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CopyingLinkImplCopyWithImpl<$Res>
    extends _$ReferralLinkStateCopyWithImpl<$Res, _$CopyingLinkImpl>
    implements _$$CopyingLinkImplCopyWith<$Res> {
  __$$CopyingLinkImplCopyWithImpl(
      _$CopyingLinkImpl _value, $Res Function(_$CopyingLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralLinkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CopyingLinkImpl implements _CopyingLink {
  const _$CopyingLinkImpl();

  @override
  String toString() {
    return 'ReferralLinkState.copyingLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CopyingLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() copyingLink,
    required TResult Function() copiedLink,
  }) {
    return copyingLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? copyingLink,
    TResult? Function()? copiedLink,
  }) {
    return copyingLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? copyingLink,
    TResult Function()? copiedLink,
    required TResult orElse(),
  }) {
    if (copyingLink != null) {
      return copyingLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CopyingLink value) copyingLink,
    required TResult Function(_CopiedLink value) copiedLink,
  }) {
    return copyingLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CopyingLink value)? copyingLink,
    TResult? Function(_CopiedLink value)? copiedLink,
  }) {
    return copyingLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CopyingLink value)? copyingLink,
    TResult Function(_CopiedLink value)? copiedLink,
    required TResult orElse(),
  }) {
    if (copyingLink != null) {
      return copyingLink(this);
    }
    return orElse();
  }
}

abstract class _CopyingLink implements ReferralLinkState {
  const factory _CopyingLink() = _$CopyingLinkImpl;
}

/// @nodoc
abstract class _$$CopiedLinkImplCopyWith<$Res> {
  factory _$$CopiedLinkImplCopyWith(
          _$CopiedLinkImpl value, $Res Function(_$CopiedLinkImpl) then) =
      __$$CopiedLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CopiedLinkImplCopyWithImpl<$Res>
    extends _$ReferralLinkStateCopyWithImpl<$Res, _$CopiedLinkImpl>
    implements _$$CopiedLinkImplCopyWith<$Res> {
  __$$CopiedLinkImplCopyWithImpl(
      _$CopiedLinkImpl _value, $Res Function(_$CopiedLinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReferralLinkState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CopiedLinkImpl implements _CopiedLink {
  const _$CopiedLinkImpl();

  @override
  String toString() {
    return 'ReferralLinkState.copiedLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CopiedLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() copyingLink,
    required TResult Function() copiedLink,
  }) {
    return copiedLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? copyingLink,
    TResult? Function()? copiedLink,
  }) {
    return copiedLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? copyingLink,
    TResult Function()? copiedLink,
    required TResult orElse(),
  }) {
    if (copiedLink != null) {
      return copiedLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CopyingLink value) copyingLink,
    required TResult Function(_CopiedLink value) copiedLink,
  }) {
    return copiedLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CopyingLink value)? copyingLink,
    TResult? Function(_CopiedLink value)? copiedLink,
  }) {
    return copiedLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CopyingLink value)? copyingLink,
    TResult Function(_CopiedLink value)? copiedLink,
    required TResult orElse(),
  }) {
    if (copiedLink != null) {
      return copiedLink(this);
    }
    return orElse();
  }
}

abstract class _CopiedLink implements ReferralLinkState {
  const factory _CopiedLink() = _$CopiedLinkImpl;
}
