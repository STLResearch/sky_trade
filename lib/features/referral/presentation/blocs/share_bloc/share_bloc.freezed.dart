// SPDX-License-Identifier: UNLICENSED
                            
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'share_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShareEvent {
  String get subject => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subject, String title, String message)
        share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subject, String title, String message)? share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subject, String title, String message)? share,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Share value) share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Share value)? share,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Share value)? share,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShareEventCopyWith<ShareEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareEventCopyWith<$Res> {
  factory $ShareEventCopyWith(
          ShareEvent value, $Res Function(ShareEvent) then) =
      _$ShareEventCopyWithImpl<$Res, ShareEvent>;
  @useResult
  $Res call({String subject, String title, String message});
}

/// @nodoc
class _$ShareEventCopyWithImpl<$Res, $Val extends ShareEvent>
    implements $ShareEventCopyWith<$Res> {
  _$ShareEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShareImplCopyWith<$Res> implements $ShareEventCopyWith<$Res> {
  factory _$$ShareImplCopyWith(
          _$ShareImpl value, $Res Function(_$ShareImpl) then) =
      __$$ShareImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subject, String title, String message});
}

/// @nodoc
class __$$ShareImplCopyWithImpl<$Res>
    extends _$ShareEventCopyWithImpl<$Res, _$ShareImpl>
    implements _$$ShareImplCopyWith<$Res> {
  __$$ShareImplCopyWithImpl(
      _$ShareImpl _value, $Res Function(_$ShareImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_$ShareImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShareImpl implements _Share {
  const _$ShareImpl(
      {required this.subject, required this.title, required this.message});

  @override
  final String subject;
  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'ShareEvent.share(subject: $subject, title: $title, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subject, title, message);

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareImplCopyWith<_$ShareImpl> get copyWith =>
      __$$ShareImplCopyWithImpl<_$ShareImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String subject, String title, String message)
        share,
  }) {
    return share(subject, title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String subject, String title, String message)? share,
  }) {
    return share?.call(subject, title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String subject, String title, String message)? share,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share(subject, title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Share value) share,
  }) {
    return share(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Share value)? share,
  }) {
    return share?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Share value)? share,
    required TResult orElse(),
  }) {
    if (share != null) {
      return share(this);
    }
    return orElse();
  }
}

abstract class _Share implements ShareEvent {
  const factory _Share(
      {required final String subject,
      required final String title,
      required final String message}) = _$ShareImpl;

  @override
  String get subject;
  @override
  String get title;
  @override
  String get message;

  /// Create a copy of ShareEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShareImplCopyWith<_$ShareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShareState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sharing,
    required TResult Function(ShareEntity shareEntity) maybeShared,
    required TResult Function(ShareFailure shareFailure) failedToShare,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sharing,
    TResult? Function(ShareEntity shareEntity)? maybeShared,
    TResult? Function(ShareFailure shareFailure)? failedToShare,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sharing,
    TResult Function(ShareEntity shareEntity)? maybeShared,
    TResult Function(ShareFailure shareFailure)? failedToShare,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Sharing value) sharing,
    required TResult Function(_MaybeShared value) maybeShared,
    required TResult Function(_FailedToShare value) failedToShare,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Sharing value)? sharing,
    TResult? Function(_MaybeShared value)? maybeShared,
    TResult? Function(_FailedToShare value)? failedToShare,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Sharing value)? sharing,
    TResult Function(_MaybeShared value)? maybeShared,
    TResult Function(_FailedToShare value)? failedToShare,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShareStateCopyWith<$Res> {
  factory $ShareStateCopyWith(
          ShareState value, $Res Function(ShareState) then) =
      _$ShareStateCopyWithImpl<$Res, ShareState>;
}

/// @nodoc
class _$ShareStateCopyWithImpl<$Res, $Val extends ShareState>
    implements $ShareStateCopyWith<$Res> {
  _$ShareStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShareState
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
    extends _$ShareStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ShareState.initial()';
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
    required TResult Function() sharing,
    required TResult Function(ShareEntity shareEntity) maybeShared,
    required TResult Function(ShareFailure shareFailure) failedToShare,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sharing,
    TResult? Function(ShareEntity shareEntity)? maybeShared,
    TResult? Function(ShareFailure shareFailure)? failedToShare,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sharing,
    TResult Function(ShareEntity shareEntity)? maybeShared,
    TResult Function(ShareFailure shareFailure)? failedToShare,
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
    required TResult Function(_Sharing value) sharing,
    required TResult Function(_MaybeShared value) maybeShared,
    required TResult Function(_FailedToShare value) failedToShare,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Sharing value)? sharing,
    TResult? Function(_MaybeShared value)? maybeShared,
    TResult? Function(_FailedToShare value)? failedToShare,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Sharing value)? sharing,
    TResult Function(_MaybeShared value)? maybeShared,
    TResult Function(_FailedToShare value)? failedToShare,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ShareState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SharingImplCopyWith<$Res> {
  factory _$$SharingImplCopyWith(
          _$SharingImpl value, $Res Function(_$SharingImpl) then) =
      __$$SharingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SharingImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$SharingImpl>
    implements _$$SharingImplCopyWith<$Res> {
  __$$SharingImplCopyWithImpl(
      _$SharingImpl _value, $Res Function(_$SharingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SharingImpl implements _Sharing {
  const _$SharingImpl();

  @override
  String toString() {
    return 'ShareState.sharing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SharingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sharing,
    required TResult Function(ShareEntity shareEntity) maybeShared,
    required TResult Function(ShareFailure shareFailure) failedToShare,
  }) {
    return sharing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sharing,
    TResult? Function(ShareEntity shareEntity)? maybeShared,
    TResult? Function(ShareFailure shareFailure)? failedToShare,
  }) {
    return sharing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sharing,
    TResult Function(ShareEntity shareEntity)? maybeShared,
    TResult Function(ShareFailure shareFailure)? failedToShare,
    required TResult orElse(),
  }) {
    if (sharing != null) {
      return sharing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Sharing value) sharing,
    required TResult Function(_MaybeShared value) maybeShared,
    required TResult Function(_FailedToShare value) failedToShare,
  }) {
    return sharing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Sharing value)? sharing,
    TResult? Function(_MaybeShared value)? maybeShared,
    TResult? Function(_FailedToShare value)? failedToShare,
  }) {
    return sharing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Sharing value)? sharing,
    TResult Function(_MaybeShared value)? maybeShared,
    TResult Function(_FailedToShare value)? failedToShare,
    required TResult orElse(),
  }) {
    if (sharing != null) {
      return sharing(this);
    }
    return orElse();
  }
}

abstract class _Sharing implements ShareState {
  const factory _Sharing() = _$SharingImpl;
}

/// @nodoc
abstract class _$$MaybeSharedImplCopyWith<$Res> {
  factory _$$MaybeSharedImplCopyWith(
          _$MaybeSharedImpl value, $Res Function(_$MaybeSharedImpl) then) =
      __$$MaybeSharedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShareEntity shareEntity});
}

/// @nodoc
class __$$MaybeSharedImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$MaybeSharedImpl>
    implements _$$MaybeSharedImplCopyWith<$Res> {
  __$$MaybeSharedImplCopyWithImpl(
      _$MaybeSharedImpl _value, $Res Function(_$MaybeSharedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shareEntity = null,
  }) {
    return _then(_$MaybeSharedImpl(
      shareEntity: null == shareEntity
          ? _value.shareEntity
          : shareEntity // ignore: cast_nullable_to_non_nullable
              as ShareEntity,
    ));
  }
}

/// @nodoc

class _$MaybeSharedImpl implements _MaybeShared {
  const _$MaybeSharedImpl({required this.shareEntity});

  @override
  final ShareEntity shareEntity;

  @override
  String toString() {
    return 'ShareState.maybeShared(shareEntity: $shareEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaybeSharedImpl &&
            (identical(other.shareEntity, shareEntity) ||
                other.shareEntity == shareEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shareEntity);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaybeSharedImplCopyWith<_$MaybeSharedImpl> get copyWith =>
      __$$MaybeSharedImplCopyWithImpl<_$MaybeSharedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sharing,
    required TResult Function(ShareEntity shareEntity) maybeShared,
    required TResult Function(ShareFailure shareFailure) failedToShare,
  }) {
    return maybeShared(shareEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sharing,
    TResult? Function(ShareEntity shareEntity)? maybeShared,
    TResult? Function(ShareFailure shareFailure)? failedToShare,
  }) {
    return maybeShared?.call(shareEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sharing,
    TResult Function(ShareEntity shareEntity)? maybeShared,
    TResult Function(ShareFailure shareFailure)? failedToShare,
    required TResult orElse(),
  }) {
    if (maybeShared != null) {
      return maybeShared(shareEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Sharing value) sharing,
    required TResult Function(_MaybeShared value) maybeShared,
    required TResult Function(_FailedToShare value) failedToShare,
  }) {
    return maybeShared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Sharing value)? sharing,
    TResult? Function(_MaybeShared value)? maybeShared,
    TResult? Function(_FailedToShare value)? failedToShare,
  }) {
    return maybeShared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Sharing value)? sharing,
    TResult Function(_MaybeShared value)? maybeShared,
    TResult Function(_FailedToShare value)? failedToShare,
    required TResult orElse(),
  }) {
    if (maybeShared != null) {
      return maybeShared(this);
    }
    return orElse();
  }
}

abstract class _MaybeShared implements ShareState {
  const factory _MaybeShared({required final ShareEntity shareEntity}) =
      _$MaybeSharedImpl;

  ShareEntity get shareEntity;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaybeSharedImplCopyWith<_$MaybeSharedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToShareImplCopyWith<$Res> {
  factory _$$FailedToShareImplCopyWith(
          _$FailedToShareImpl value, $Res Function(_$FailedToShareImpl) then) =
      __$$FailedToShareImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShareFailure shareFailure});
}

/// @nodoc
class __$$FailedToShareImplCopyWithImpl<$Res>
    extends _$ShareStateCopyWithImpl<$Res, _$FailedToShareImpl>
    implements _$$FailedToShareImplCopyWith<$Res> {
  __$$FailedToShareImplCopyWithImpl(
      _$FailedToShareImpl _value, $Res Function(_$FailedToShareImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shareFailure = null,
  }) {
    return _then(_$FailedToShareImpl(
      shareFailure: null == shareFailure
          ? _value.shareFailure
          : shareFailure // ignore: cast_nullable_to_non_nullable
              as ShareFailure,
    ));
  }
}

/// @nodoc

class _$FailedToShareImpl implements _FailedToShare {
  const _$FailedToShareImpl({required this.shareFailure});

  @override
  final ShareFailure shareFailure;

  @override
  String toString() {
    return 'ShareState.failedToShare(shareFailure: $shareFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToShareImpl &&
            (identical(other.shareFailure, shareFailure) ||
                other.shareFailure == shareFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shareFailure);

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToShareImplCopyWith<_$FailedToShareImpl> get copyWith =>
      __$$FailedToShareImplCopyWithImpl<_$FailedToShareImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sharing,
    required TResult Function(ShareEntity shareEntity) maybeShared,
    required TResult Function(ShareFailure shareFailure) failedToShare,
  }) {
    return failedToShare(shareFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sharing,
    TResult? Function(ShareEntity shareEntity)? maybeShared,
    TResult? Function(ShareFailure shareFailure)? failedToShare,
  }) {
    return failedToShare?.call(shareFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sharing,
    TResult Function(ShareEntity shareEntity)? maybeShared,
    TResult Function(ShareFailure shareFailure)? failedToShare,
    required TResult orElse(),
  }) {
    if (failedToShare != null) {
      return failedToShare(shareFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Sharing value) sharing,
    required TResult Function(_MaybeShared value) maybeShared,
    required TResult Function(_FailedToShare value) failedToShare,
  }) {
    return failedToShare(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Sharing value)? sharing,
    TResult? Function(_MaybeShared value)? maybeShared,
    TResult? Function(_FailedToShare value)? failedToShare,
  }) {
    return failedToShare?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Sharing value)? sharing,
    TResult Function(_MaybeShared value)? maybeShared,
    TResult Function(_FailedToShare value)? failedToShare,
    required TResult orElse(),
  }) {
    if (failedToShare != null) {
      return failedToShare(this);
    }
    return orElse();
  }
}

abstract class _FailedToShare implements ShareState {
  const factory _FailedToShare({required final ShareFailure shareFailure}) =
      _$FailedToShareImpl;

  ShareFailure get shareFailure;

  /// Create a copy of ShareState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedToShareImplCopyWith<_$FailedToShareImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
