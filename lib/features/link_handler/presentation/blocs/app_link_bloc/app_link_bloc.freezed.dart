// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_link_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppLinkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenLink,
    required TResult Function(Uri uri) linkGotten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenLink,
    TResult? Function(Uri uri)? linkGotten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenLink,
    TResult Function(Uri uri)? linkGotten,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenLink value) listenLink,
    required TResult Function(_LinkGotten value) linkGotten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenLink value)? listenLink,
    TResult? Function(_LinkGotten value)? linkGotten,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenLink value)? listenLink,
    TResult Function(_LinkGotten value)? linkGotten,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLinkEventCopyWith<$Res> {
  factory $AppLinkEventCopyWith(
          AppLinkEvent value, $Res Function(AppLinkEvent) then) =
      _$AppLinkEventCopyWithImpl<$Res, AppLinkEvent>;
}

/// @nodoc
class _$AppLinkEventCopyWithImpl<$Res, $Val extends AppLinkEvent>
    implements $AppLinkEventCopyWith<$Res> {
  _$AppLinkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListenLinkImplCopyWith<$Res> {
  factory _$$ListenLinkImplCopyWith(
          _$ListenLinkImpl value, $Res Function(_$ListenLinkImpl) then) =
      __$$ListenLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListenLinkImplCopyWithImpl<$Res>
    extends _$AppLinkEventCopyWithImpl<$Res, _$ListenLinkImpl>
    implements _$$ListenLinkImplCopyWith<$Res> {
  __$$ListenLinkImplCopyWithImpl(
      _$ListenLinkImpl _value, $Res Function(_$ListenLinkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListenLinkImpl implements _ListenLink {
  const _$ListenLinkImpl();

  @override
  String toString() {
    return 'AppLinkEvent.listenLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListenLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenLink,
    required TResult Function(Uri uri) linkGotten,
  }) {
    return listenLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenLink,
    TResult? Function(Uri uri)? linkGotten,
  }) {
    return listenLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenLink,
    TResult Function(Uri uri)? linkGotten,
    required TResult orElse(),
  }) {
    if (listenLink != null) {
      return listenLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenLink value) listenLink,
    required TResult Function(_LinkGotten value) linkGotten,
  }) {
    return listenLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenLink value)? listenLink,
    TResult? Function(_LinkGotten value)? linkGotten,
  }) {
    return listenLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenLink value)? listenLink,
    TResult Function(_LinkGotten value)? linkGotten,
    required TResult orElse(),
  }) {
    if (listenLink != null) {
      return listenLink(this);
    }
    return orElse();
  }
}

abstract class _ListenLink implements AppLinkEvent {
  const factory _ListenLink() = _$ListenLinkImpl;
}

/// @nodoc
abstract class _$$LinkGottenImplCopyWith<$Res> {
  factory _$$LinkGottenImplCopyWith(
          _$LinkGottenImpl value, $Res Function(_$LinkGottenImpl) then) =
      __$$LinkGottenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Uri uri});
}

/// @nodoc
class __$$LinkGottenImplCopyWithImpl<$Res>
    extends _$AppLinkEventCopyWithImpl<$Res, _$LinkGottenImpl>
    implements _$$LinkGottenImplCopyWith<$Res> {
  __$$LinkGottenImplCopyWithImpl(
      _$LinkGottenImpl _value, $Res Function(_$LinkGottenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uri = null,
  }) {
    return _then(_$LinkGottenImpl(
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$LinkGottenImpl implements _LinkGotten {
  const _$LinkGottenImpl({required this.uri});

  @override
  final Uri uri;

  @override
  String toString() {
    return 'AppLinkEvent.linkGotten(uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkGottenImpl &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkGottenImplCopyWith<_$LinkGottenImpl> get copyWith =>
      __$$LinkGottenImplCopyWithImpl<_$LinkGottenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenLink,
    required TResult Function(Uri uri) linkGotten,
  }) {
    return linkGotten(uri);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenLink,
    TResult? Function(Uri uri)? linkGotten,
  }) {
    return linkGotten?.call(uri);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenLink,
    TResult Function(Uri uri)? linkGotten,
    required TResult orElse(),
  }) {
    if (linkGotten != null) {
      return linkGotten(uri);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenLink value) listenLink,
    required TResult Function(_LinkGotten value) linkGotten,
  }) {
    return linkGotten(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenLink value)? listenLink,
    TResult? Function(_LinkGotten value)? linkGotten,
  }) {
    return linkGotten?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenLink value)? listenLink,
    TResult Function(_LinkGotten value)? linkGotten,
    required TResult orElse(),
  }) {
    if (linkGotten != null) {
      return linkGotten(this);
    }
    return orElse();
  }
}

abstract class _LinkGotten implements AppLinkEvent {
  const factory _LinkGotten({required final Uri uri}) = _$LinkGottenImpl;

  Uri get uri;
  @JsonKey(ignore: true)
  _$$LinkGottenImplCopyWith<_$LinkGottenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppLinkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingLink,
    required TResult Function() noLink,
    required TResult Function() gotLink,
    required TResult Function() emailVerificationLink,
    required TResult Function() unrecognizedLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLink,
    TResult? Function()? noLink,
    TResult? Function()? gotLink,
    TResult? Function()? emailVerificationLink,
    TResult? Function()? unrecognizedLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLink,
    TResult Function()? noLink,
    TResult Function()? gotLink,
    TResult Function()? emailVerificationLink,
    TResult Function()? unrecognizedLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingLink value) gettingLink,
    required TResult Function(_NoLink value) noLink,
    required TResult Function(_GotLink value) gotLink,
    required TResult Function(_EmailVerificationLink value)
        emailVerificationLink,
    required TResult Function(_UnrecognizedLink value) unrecognizedLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLink value)? gettingLink,
    TResult? Function(_NoLink value)? noLink,
    TResult? Function(_GotLink value)? gotLink,
    TResult? Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult? Function(_UnrecognizedLink value)? unrecognizedLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLink value)? gettingLink,
    TResult Function(_NoLink value)? noLink,
    TResult Function(_GotLink value)? gotLink,
    TResult Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult Function(_UnrecognizedLink value)? unrecognizedLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLinkStateCopyWith<$Res> {
  factory $AppLinkStateCopyWith(
          AppLinkState value, $Res Function(AppLinkState) then) =
      _$AppLinkStateCopyWithImpl<$Res, AppLinkState>;
}

/// @nodoc
class _$AppLinkStateCopyWithImpl<$Res, $Val extends AppLinkState>
    implements $AppLinkStateCopyWith<$Res> {
  _$AppLinkStateCopyWithImpl(this._value, this._then);

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
    extends _$AppLinkStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AppLinkState.initial()';
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
    required TResult Function() gettingLink,
    required TResult Function() noLink,
    required TResult Function() gotLink,
    required TResult Function() emailVerificationLink,
    required TResult Function() unrecognizedLink,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLink,
    TResult? Function()? noLink,
    TResult? Function()? gotLink,
    TResult? Function()? emailVerificationLink,
    TResult? Function()? unrecognizedLink,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLink,
    TResult Function()? noLink,
    TResult Function()? gotLink,
    TResult Function()? emailVerificationLink,
    TResult Function()? unrecognizedLink,
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
    required TResult Function(_GettingLink value) gettingLink,
    required TResult Function(_NoLink value) noLink,
    required TResult Function(_GotLink value) gotLink,
    required TResult Function(_EmailVerificationLink value)
        emailVerificationLink,
    required TResult Function(_UnrecognizedLink value) unrecognizedLink,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLink value)? gettingLink,
    TResult? Function(_NoLink value)? noLink,
    TResult? Function(_GotLink value)? gotLink,
    TResult? Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult? Function(_UnrecognizedLink value)? unrecognizedLink,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLink value)? gettingLink,
    TResult Function(_NoLink value)? noLink,
    TResult Function(_GotLink value)? gotLink,
    TResult Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult Function(_UnrecognizedLink value)? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppLinkState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GettingLinkImplCopyWith<$Res> {
  factory _$$GettingLinkImplCopyWith(
          _$GettingLinkImpl value, $Res Function(_$GettingLinkImpl) then) =
      __$$GettingLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GettingLinkImplCopyWithImpl<$Res>
    extends _$AppLinkStateCopyWithImpl<$Res, _$GettingLinkImpl>
    implements _$$GettingLinkImplCopyWith<$Res> {
  __$$GettingLinkImplCopyWithImpl(
      _$GettingLinkImpl _value, $Res Function(_$GettingLinkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GettingLinkImpl implements _GettingLink {
  const _$GettingLinkImpl();

  @override
  String toString() {
    return 'AppLinkState.gettingLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GettingLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingLink,
    required TResult Function() noLink,
    required TResult Function() gotLink,
    required TResult Function() emailVerificationLink,
    required TResult Function() unrecognizedLink,
  }) {
    return gettingLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLink,
    TResult? Function()? noLink,
    TResult? Function()? gotLink,
    TResult? Function()? emailVerificationLink,
    TResult? Function()? unrecognizedLink,
  }) {
    return gettingLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLink,
    TResult Function()? noLink,
    TResult Function()? gotLink,
    TResult Function()? emailVerificationLink,
    TResult Function()? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (gettingLink != null) {
      return gettingLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingLink value) gettingLink,
    required TResult Function(_NoLink value) noLink,
    required TResult Function(_GotLink value) gotLink,
    required TResult Function(_EmailVerificationLink value)
        emailVerificationLink,
    required TResult Function(_UnrecognizedLink value) unrecognizedLink,
  }) {
    return gettingLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLink value)? gettingLink,
    TResult? Function(_NoLink value)? noLink,
    TResult? Function(_GotLink value)? gotLink,
    TResult? Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult? Function(_UnrecognizedLink value)? unrecognizedLink,
  }) {
    return gettingLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLink value)? gettingLink,
    TResult Function(_NoLink value)? noLink,
    TResult Function(_GotLink value)? gotLink,
    TResult Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult Function(_UnrecognizedLink value)? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (gettingLink != null) {
      return gettingLink(this);
    }
    return orElse();
  }
}

abstract class _GettingLink implements AppLinkState {
  const factory _GettingLink() = _$GettingLinkImpl;
}

/// @nodoc
abstract class _$$NoLinkImplCopyWith<$Res> {
  factory _$$NoLinkImplCopyWith(
          _$NoLinkImpl value, $Res Function(_$NoLinkImpl) then) =
      __$$NoLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoLinkImplCopyWithImpl<$Res>
    extends _$AppLinkStateCopyWithImpl<$Res, _$NoLinkImpl>
    implements _$$NoLinkImplCopyWith<$Res> {
  __$$NoLinkImplCopyWithImpl(
      _$NoLinkImpl _value, $Res Function(_$NoLinkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoLinkImpl implements _NoLink {
  const _$NoLinkImpl();

  @override
  String toString() {
    return 'AppLinkState.noLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingLink,
    required TResult Function() noLink,
    required TResult Function() gotLink,
    required TResult Function() emailVerificationLink,
    required TResult Function() unrecognizedLink,
  }) {
    return noLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLink,
    TResult? Function()? noLink,
    TResult? Function()? gotLink,
    TResult? Function()? emailVerificationLink,
    TResult? Function()? unrecognizedLink,
  }) {
    return noLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLink,
    TResult Function()? noLink,
    TResult Function()? gotLink,
    TResult Function()? emailVerificationLink,
    TResult Function()? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (noLink != null) {
      return noLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingLink value) gettingLink,
    required TResult Function(_NoLink value) noLink,
    required TResult Function(_GotLink value) gotLink,
    required TResult Function(_EmailVerificationLink value)
        emailVerificationLink,
    required TResult Function(_UnrecognizedLink value) unrecognizedLink,
  }) {
    return noLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLink value)? gettingLink,
    TResult? Function(_NoLink value)? noLink,
    TResult? Function(_GotLink value)? gotLink,
    TResult? Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult? Function(_UnrecognizedLink value)? unrecognizedLink,
  }) {
    return noLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLink value)? gettingLink,
    TResult Function(_NoLink value)? noLink,
    TResult Function(_GotLink value)? gotLink,
    TResult Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult Function(_UnrecognizedLink value)? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (noLink != null) {
      return noLink(this);
    }
    return orElse();
  }
}

abstract class _NoLink implements AppLinkState {
  const factory _NoLink() = _$NoLinkImpl;
}

/// @nodoc
abstract class _$$GotLinkImplCopyWith<$Res> {
  factory _$$GotLinkImplCopyWith(
          _$GotLinkImpl value, $Res Function(_$GotLinkImpl) then) =
      __$$GotLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GotLinkImplCopyWithImpl<$Res>
    extends _$AppLinkStateCopyWithImpl<$Res, _$GotLinkImpl>
    implements _$$GotLinkImplCopyWith<$Res> {
  __$$GotLinkImplCopyWithImpl(
      _$GotLinkImpl _value, $Res Function(_$GotLinkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GotLinkImpl implements _GotLink {
  const _$GotLinkImpl();

  @override
  String toString() {
    return 'AppLinkState.gotLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GotLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingLink,
    required TResult Function() noLink,
    required TResult Function() gotLink,
    required TResult Function() emailVerificationLink,
    required TResult Function() unrecognizedLink,
  }) {
    return gotLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLink,
    TResult? Function()? noLink,
    TResult? Function()? gotLink,
    TResult? Function()? emailVerificationLink,
    TResult? Function()? unrecognizedLink,
  }) {
    return gotLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLink,
    TResult Function()? noLink,
    TResult Function()? gotLink,
    TResult Function()? emailVerificationLink,
    TResult Function()? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (gotLink != null) {
      return gotLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingLink value) gettingLink,
    required TResult Function(_NoLink value) noLink,
    required TResult Function(_GotLink value) gotLink,
    required TResult Function(_EmailVerificationLink value)
        emailVerificationLink,
    required TResult Function(_UnrecognizedLink value) unrecognizedLink,
  }) {
    return gotLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLink value)? gettingLink,
    TResult? Function(_NoLink value)? noLink,
    TResult? Function(_GotLink value)? gotLink,
    TResult? Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult? Function(_UnrecognizedLink value)? unrecognizedLink,
  }) {
    return gotLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLink value)? gettingLink,
    TResult Function(_NoLink value)? noLink,
    TResult Function(_GotLink value)? gotLink,
    TResult Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult Function(_UnrecognizedLink value)? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (gotLink != null) {
      return gotLink(this);
    }
    return orElse();
  }
}

abstract class _GotLink implements AppLinkState {
  const factory _GotLink() = _$GotLinkImpl;
}

/// @nodoc
abstract class _$$EmailVerificationLinkImplCopyWith<$Res> {
  factory _$$EmailVerificationLinkImplCopyWith(
          _$EmailVerificationLinkImpl value,
          $Res Function(_$EmailVerificationLinkImpl) then) =
      __$$EmailVerificationLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailVerificationLinkImplCopyWithImpl<$Res>
    extends _$AppLinkStateCopyWithImpl<$Res, _$EmailVerificationLinkImpl>
    implements _$$EmailVerificationLinkImplCopyWith<$Res> {
  __$$EmailVerificationLinkImplCopyWithImpl(_$EmailVerificationLinkImpl _value,
      $Res Function(_$EmailVerificationLinkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailVerificationLinkImpl implements _EmailVerificationLink {
  const _$EmailVerificationLinkImpl();

  @override
  String toString() {
    return 'AppLinkState.emailVerificationLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingLink,
    required TResult Function() noLink,
    required TResult Function() gotLink,
    required TResult Function() emailVerificationLink,
    required TResult Function() unrecognizedLink,
  }) {
    return emailVerificationLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLink,
    TResult? Function()? noLink,
    TResult? Function()? gotLink,
    TResult? Function()? emailVerificationLink,
    TResult? Function()? unrecognizedLink,
  }) {
    return emailVerificationLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLink,
    TResult Function()? noLink,
    TResult Function()? gotLink,
    TResult Function()? emailVerificationLink,
    TResult Function()? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (emailVerificationLink != null) {
      return emailVerificationLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingLink value) gettingLink,
    required TResult Function(_NoLink value) noLink,
    required TResult Function(_GotLink value) gotLink,
    required TResult Function(_EmailVerificationLink value)
        emailVerificationLink,
    required TResult Function(_UnrecognizedLink value) unrecognizedLink,
  }) {
    return emailVerificationLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLink value)? gettingLink,
    TResult? Function(_NoLink value)? noLink,
    TResult? Function(_GotLink value)? gotLink,
    TResult? Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult? Function(_UnrecognizedLink value)? unrecognizedLink,
  }) {
    return emailVerificationLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLink value)? gettingLink,
    TResult Function(_NoLink value)? noLink,
    TResult Function(_GotLink value)? gotLink,
    TResult Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult Function(_UnrecognizedLink value)? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (emailVerificationLink != null) {
      return emailVerificationLink(this);
    }
    return orElse();
  }
}

abstract class _EmailVerificationLink implements AppLinkState {
  const factory _EmailVerificationLink() = _$EmailVerificationLinkImpl;
}

/// @nodoc
abstract class _$$UnrecognizedLinkImplCopyWith<$Res> {
  factory _$$UnrecognizedLinkImplCopyWith(_$UnrecognizedLinkImpl value,
          $Res Function(_$UnrecognizedLinkImpl) then) =
      __$$UnrecognizedLinkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnrecognizedLinkImplCopyWithImpl<$Res>
    extends _$AppLinkStateCopyWithImpl<$Res, _$UnrecognizedLinkImpl>
    implements _$$UnrecognizedLinkImplCopyWith<$Res> {
  __$$UnrecognizedLinkImplCopyWithImpl(_$UnrecognizedLinkImpl _value,
      $Res Function(_$UnrecognizedLinkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnrecognizedLinkImpl implements _UnrecognizedLink {
  const _$UnrecognizedLinkImpl();

  @override
  String toString() {
    return 'AppLinkState.unrecognizedLink()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnrecognizedLinkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() gettingLink,
    required TResult Function() noLink,
    required TResult Function() gotLink,
    required TResult Function() emailVerificationLink,
    required TResult Function() unrecognizedLink,
  }) {
    return unrecognizedLink();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? gettingLink,
    TResult? Function()? noLink,
    TResult? Function()? gotLink,
    TResult? Function()? emailVerificationLink,
    TResult? Function()? unrecognizedLink,
  }) {
    return unrecognizedLink?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? gettingLink,
    TResult Function()? noLink,
    TResult Function()? gotLink,
    TResult Function()? emailVerificationLink,
    TResult Function()? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (unrecognizedLink != null) {
      return unrecognizedLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GettingLink value) gettingLink,
    required TResult Function(_NoLink value) noLink,
    required TResult Function(_GotLink value) gotLink,
    required TResult Function(_EmailVerificationLink value)
        emailVerificationLink,
    required TResult Function(_UnrecognizedLink value) unrecognizedLink,
  }) {
    return unrecognizedLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GettingLink value)? gettingLink,
    TResult? Function(_NoLink value)? noLink,
    TResult? Function(_GotLink value)? gotLink,
    TResult? Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult? Function(_UnrecognizedLink value)? unrecognizedLink,
  }) {
    return unrecognizedLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GettingLink value)? gettingLink,
    TResult Function(_NoLink value)? noLink,
    TResult Function(_GotLink value)? gotLink,
    TResult Function(_EmailVerificationLink value)? emailVerificationLink,
    TResult Function(_UnrecognizedLink value)? unrecognizedLink,
    required TResult orElse(),
  }) {
    if (unrecognizedLink != null) {
      return unrecognizedLink(this);
    }
    return orElse();
  }
}

abstract class _UnrecognizedLink implements AppLinkState {
  const factory _UnrecognizedLink() = _$UnrecognizedLinkImpl;
}
