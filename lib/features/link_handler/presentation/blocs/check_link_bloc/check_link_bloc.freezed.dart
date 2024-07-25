// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_link_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckLinkEvent {
  String get link => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Check value) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Check value)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Check value)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckLinkEventCopyWith<CheckLinkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckLinkEventCopyWith<$Res> {
  factory $CheckLinkEventCopyWith(
          CheckLinkEvent value, $Res Function(CheckLinkEvent) then) =
      _$CheckLinkEventCopyWithImpl<$Res, CheckLinkEvent>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class _$CheckLinkEventCopyWithImpl<$Res, $Val extends CheckLinkEvent>
    implements $CheckLinkEventCopyWith<$Res> {
  _$CheckLinkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$CheckImplCopyWith<$Res>
    implements $CheckLinkEventCopyWith<$Res> {
  factory _$$CheckImplCopyWith(
          _$CheckImpl value, $Res Function(_$CheckImpl) then) =
      __$$CheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$CheckImplCopyWithImpl<$Res>
    extends _$CheckLinkEventCopyWithImpl<$Res, _$CheckImpl>
    implements _$$CheckImplCopyWith<$Res> {
  __$$CheckImplCopyWithImpl(
      _$CheckImpl _value, $Res Function(_$CheckImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$CheckImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckImpl implements _Check {
  const _$CheckImpl({required this.link});

  @override
  final String link;

  @override
  String toString() {
    return 'CheckLinkEvent.check(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckImplCopyWith<_$CheckImpl> get copyWith =>
      __$$CheckImplCopyWithImpl<_$CheckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) check,
  }) {
    return check(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? check,
  }) {
    return check?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Check value) check,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Check value)? check,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Check value)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class _Check implements CheckLinkEvent {
  const factory _Check({required final String link}) = _$CheckImpl;

  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$CheckImplCopyWith<_$CheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckLinkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(LinkEntity linkEntity) checked,
    required TResult Function(CheckLinkFailure checkLinkFailure) failedToCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(LinkEntity linkEntity)? checked,
    TResult? Function(CheckLinkFailure checkLinkFailure)? failedToCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(LinkEntity linkEntity)? checked,
    TResult Function(CheckLinkFailure checkLinkFailure)? failedToCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FailedToCheck value) failedToCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
    TResult? Function(_FailedToCheck value)? failedToCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FailedToCheck value)? failedToCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckLinkStateCopyWith<$Res> {
  factory $CheckLinkStateCopyWith(
          CheckLinkState value, $Res Function(CheckLinkState) then) =
      _$CheckLinkStateCopyWithImpl<$Res, CheckLinkState>;
}

/// @nodoc
class _$CheckLinkStateCopyWithImpl<$Res, $Val extends CheckLinkState>
    implements $CheckLinkStateCopyWith<$Res> {
  _$CheckLinkStateCopyWithImpl(this._value, this._then);

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
    extends _$CheckLinkStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CheckLinkState.initial()';
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
    required TResult Function() checking,
    required TResult Function(LinkEntity linkEntity) checked,
    required TResult Function(CheckLinkFailure checkLinkFailure) failedToCheck,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(LinkEntity linkEntity)? checked,
    TResult? Function(CheckLinkFailure checkLinkFailure)? failedToCheck,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(LinkEntity linkEntity)? checked,
    TResult Function(CheckLinkFailure checkLinkFailure)? failedToCheck,
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
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FailedToCheck value) failedToCheck,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
    TResult? Function(_FailedToCheck value)? failedToCheck,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FailedToCheck value)? failedToCheck,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckLinkState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckingImplCopyWith<$Res> {
  factory _$$CheckingImplCopyWith(
          _$CheckingImpl value, $Res Function(_$CheckingImpl) then) =
      __$$CheckingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingImplCopyWithImpl<$Res>
    extends _$CheckLinkStateCopyWithImpl<$Res, _$CheckingImpl>
    implements _$$CheckingImplCopyWith<$Res> {
  __$$CheckingImplCopyWithImpl(
      _$CheckingImpl _value, $Res Function(_$CheckingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckingImpl implements _Checking {
  const _$CheckingImpl();

  @override
  String toString() {
    return 'CheckLinkState.checking()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(LinkEntity linkEntity) checked,
    required TResult Function(CheckLinkFailure checkLinkFailure) failedToCheck,
  }) {
    return checking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(LinkEntity linkEntity)? checked,
    TResult? Function(CheckLinkFailure checkLinkFailure)? failedToCheck,
  }) {
    return checking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(LinkEntity linkEntity)? checked,
    TResult Function(CheckLinkFailure checkLinkFailure)? failedToCheck,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FailedToCheck value) failedToCheck,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
    TResult? Function(_FailedToCheck value)? failedToCheck,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FailedToCheck value)? failedToCheck,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class _Checking implements CheckLinkState {
  const factory _Checking() = _$CheckingImpl;
}

/// @nodoc
abstract class _$$CheckedImplCopyWith<$Res> {
  factory _$$CheckedImplCopyWith(
          _$CheckedImpl value, $Res Function(_$CheckedImpl) then) =
      __$$CheckedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LinkEntity linkEntity});
}

/// @nodoc
class __$$CheckedImplCopyWithImpl<$Res>
    extends _$CheckLinkStateCopyWithImpl<$Res, _$CheckedImpl>
    implements _$$CheckedImplCopyWith<$Res> {
  __$$CheckedImplCopyWithImpl(
      _$CheckedImpl _value, $Res Function(_$CheckedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkEntity = null,
  }) {
    return _then(_$CheckedImpl(
      linkEntity: null == linkEntity
          ? _value.linkEntity
          : linkEntity // ignore: cast_nullable_to_non_nullable
              as LinkEntity,
    ));
  }
}

/// @nodoc

class _$CheckedImpl implements _Checked {
  const _$CheckedImpl({required this.linkEntity});

  @override
  final LinkEntity linkEntity;

  @override
  String toString() {
    return 'CheckLinkState.checked(linkEntity: $linkEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckedImpl &&
            (identical(other.linkEntity, linkEntity) ||
                other.linkEntity == linkEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, linkEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckedImplCopyWith<_$CheckedImpl> get copyWith =>
      __$$CheckedImplCopyWithImpl<_$CheckedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(LinkEntity linkEntity) checked,
    required TResult Function(CheckLinkFailure checkLinkFailure) failedToCheck,
  }) {
    return checked(linkEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(LinkEntity linkEntity)? checked,
    TResult? Function(CheckLinkFailure checkLinkFailure)? failedToCheck,
  }) {
    return checked?.call(linkEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(LinkEntity linkEntity)? checked,
    TResult Function(CheckLinkFailure checkLinkFailure)? failedToCheck,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked(linkEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FailedToCheck value) failedToCheck,
  }) {
    return checked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
    TResult? Function(_FailedToCheck value)? failedToCheck,
  }) {
    return checked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FailedToCheck value)? failedToCheck,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked(this);
    }
    return orElse();
  }
}

abstract class _Checked implements CheckLinkState {
  const factory _Checked({required final LinkEntity linkEntity}) =
      _$CheckedImpl;

  LinkEntity get linkEntity;
  @JsonKey(ignore: true)
  _$$CheckedImplCopyWith<_$CheckedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToCheckImplCopyWith<$Res> {
  factory _$$FailedToCheckImplCopyWith(
          _$FailedToCheckImpl value, $Res Function(_$FailedToCheckImpl) then) =
      __$$FailedToCheckImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CheckLinkFailure checkLinkFailure});
}

/// @nodoc
class __$$FailedToCheckImplCopyWithImpl<$Res>
    extends _$CheckLinkStateCopyWithImpl<$Res, _$FailedToCheckImpl>
    implements _$$FailedToCheckImplCopyWith<$Res> {
  __$$FailedToCheckImplCopyWithImpl(
      _$FailedToCheckImpl _value, $Res Function(_$FailedToCheckImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkLinkFailure = null,
  }) {
    return _then(_$FailedToCheckImpl(
      checkLinkFailure: null == checkLinkFailure
          ? _value.checkLinkFailure
          : checkLinkFailure // ignore: cast_nullable_to_non_nullable
              as CheckLinkFailure,
    ));
  }
}

/// @nodoc

class _$FailedToCheckImpl implements _FailedToCheck {
  const _$FailedToCheckImpl({required this.checkLinkFailure});

  @override
  final CheckLinkFailure checkLinkFailure;

  @override
  String toString() {
    return 'CheckLinkState.failedToCheck(checkLinkFailure: $checkLinkFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToCheckImpl &&
            (identical(other.checkLinkFailure, checkLinkFailure) ||
                other.checkLinkFailure == checkLinkFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, checkLinkFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToCheckImplCopyWith<_$FailedToCheckImpl> get copyWith =>
      __$$FailedToCheckImplCopyWithImpl<_$FailedToCheckImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function(LinkEntity linkEntity) checked,
    required TResult Function(CheckLinkFailure checkLinkFailure) failedToCheck,
  }) {
    return failedToCheck(checkLinkFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function(LinkEntity linkEntity)? checked,
    TResult? Function(CheckLinkFailure checkLinkFailure)? failedToCheck,
  }) {
    return failedToCheck?.call(checkLinkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function(LinkEntity linkEntity)? checked,
    TResult Function(CheckLinkFailure checkLinkFailure)? failedToCheck,
    required TResult orElse(),
  }) {
    if (failedToCheck != null) {
      return failedToCheck(checkLinkFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Checking value) checking,
    required TResult Function(_Checked value) checked,
    required TResult Function(_FailedToCheck value) failedToCheck,
  }) {
    return failedToCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Checking value)? checking,
    TResult? Function(_Checked value)? checked,
    TResult? Function(_FailedToCheck value)? failedToCheck,
  }) {
    return failedToCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Checking value)? checking,
    TResult Function(_Checked value)? checked,
    TResult Function(_FailedToCheck value)? failedToCheck,
    required TResult orElse(),
  }) {
    if (failedToCheck != null) {
      return failedToCheck(this);
    }
    return orElse();
  }
}

abstract class _FailedToCheck implements CheckLinkState {
  const factory _FailedToCheck(
      {required final CheckLinkFailure checkLinkFailure}) = _$FailedToCheckImpl;

  CheckLinkFailure get checkLinkFailure;
  @JsonKey(ignore: true)
  _$$FailedToCheckImplCopyWith<_$FailedToCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
