// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handle_link_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HandleLinkEvent {
  String get link => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) handle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? handle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? handle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Handle value) handle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Handle value)? handle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Handle value)? handle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HandleLinkEventCopyWith<HandleLinkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandleLinkEventCopyWith<$Res> {
  factory $HandleLinkEventCopyWith(
          HandleLinkEvent value, $Res Function(HandleLinkEvent) then) =
      _$HandleLinkEventCopyWithImpl<$Res, HandleLinkEvent>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class _$HandleLinkEventCopyWithImpl<$Res, $Val extends HandleLinkEvent>
    implements $HandleLinkEventCopyWith<$Res> {
  _$HandleLinkEventCopyWithImpl(this._value, this._then);

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
abstract class _$$HandleImplCopyWith<$Res>
    implements $HandleLinkEventCopyWith<$Res> {
  factory _$$HandleImplCopyWith(
          _$HandleImpl value, $Res Function(_$HandleImpl) then) =
      __$$HandleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$HandleImplCopyWithImpl<$Res>
    extends _$HandleLinkEventCopyWithImpl<$Res, _$HandleImpl>
    implements _$$HandleImplCopyWith<$Res> {
  __$$HandleImplCopyWithImpl(
      _$HandleImpl _value, $Res Function(_$HandleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$HandleImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HandleImpl implements _Handle {
  const _$HandleImpl({required this.link});

  @override
  final String link;

  @override
  String toString() {
    return 'HandleLinkEvent.handle(link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandleImplCopyWith<_$HandleImpl> get copyWith =>
      __$$HandleImplCopyWithImpl<_$HandleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) handle,
  }) {
    return handle(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String link)? handle,
  }) {
    return handle?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? handle,
    required TResult orElse(),
  }) {
    if (handle != null) {
      return handle(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Handle value) handle,
  }) {
    return handle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Handle value)? handle,
  }) {
    return handle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Handle value)? handle,
    required TResult orElse(),
  }) {
    if (handle != null) {
      return handle(this);
    }
    return orElse();
  }
}

abstract class _Handle implements HandleLinkEvent {
  const factory _Handle({required final String link}) = _$HandleImpl;

  @override
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$HandleImplCopyWith<_$HandleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HandleLinkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() handling,
    required TResult Function(LinkEntity linkEntity) handled,
    required TResult Function(HandleLinkFailure handleLinkFailure)
        failedToHandle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? handling,
    TResult? Function(LinkEntity linkEntity)? handled,
    TResult? Function(HandleLinkFailure handleLinkFailure)? failedToHandle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? handling,
    TResult Function(LinkEntity linkEntity)? handled,
    TResult Function(HandleLinkFailure handleLinkFailure)? failedToHandle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Handling value) handling,
    required TResult Function(_Handled value) handled,
    required TResult Function(_FailedToHandle value) failedToHandle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Handling value)? handling,
    TResult? Function(_Handled value)? handled,
    TResult? Function(_FailedToHandle value)? failedToHandle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Handling value)? handling,
    TResult Function(_Handled value)? handled,
    TResult Function(_FailedToHandle value)? failedToHandle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HandleLinkStateCopyWith<$Res> {
  factory $HandleLinkStateCopyWith(
          HandleLinkState value, $Res Function(HandleLinkState) then) =
      _$HandleLinkStateCopyWithImpl<$Res, HandleLinkState>;
}

/// @nodoc
class _$HandleLinkStateCopyWithImpl<$Res, $Val extends HandleLinkState>
    implements $HandleLinkStateCopyWith<$Res> {
  _$HandleLinkStateCopyWithImpl(this._value, this._then);

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
    extends _$HandleLinkStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'HandleLinkState.initial()';
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
    required TResult Function() handling,
    required TResult Function(LinkEntity linkEntity) handled,
    required TResult Function(HandleLinkFailure handleLinkFailure)
        failedToHandle,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? handling,
    TResult? Function(LinkEntity linkEntity)? handled,
    TResult? Function(HandleLinkFailure handleLinkFailure)? failedToHandle,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? handling,
    TResult Function(LinkEntity linkEntity)? handled,
    TResult Function(HandleLinkFailure handleLinkFailure)? failedToHandle,
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
    required TResult Function(_Handling value) handling,
    required TResult Function(_Handled value) handled,
    required TResult Function(_FailedToHandle value) failedToHandle,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Handling value)? handling,
    TResult? Function(_Handled value)? handled,
    TResult? Function(_FailedToHandle value)? failedToHandle,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Handling value)? handling,
    TResult Function(_Handled value)? handled,
    TResult Function(_FailedToHandle value)? failedToHandle,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HandleLinkState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HandlingImplCopyWith<$Res> {
  factory _$$HandlingImplCopyWith(
          _$HandlingImpl value, $Res Function(_$HandlingImpl) then) =
      __$$HandlingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HandlingImplCopyWithImpl<$Res>
    extends _$HandleLinkStateCopyWithImpl<$Res, _$HandlingImpl>
    implements _$$HandlingImplCopyWith<$Res> {
  __$$HandlingImplCopyWithImpl(
      _$HandlingImpl _value, $Res Function(_$HandlingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HandlingImpl implements _Handling {
  const _$HandlingImpl();

  @override
  String toString() {
    return 'HandleLinkState.handling()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HandlingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() handling,
    required TResult Function(LinkEntity linkEntity) handled,
    required TResult Function(HandleLinkFailure handleLinkFailure)
        failedToHandle,
  }) {
    return handling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? handling,
    TResult? Function(LinkEntity linkEntity)? handled,
    TResult? Function(HandleLinkFailure handleLinkFailure)? failedToHandle,
  }) {
    return handling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? handling,
    TResult Function(LinkEntity linkEntity)? handled,
    TResult Function(HandleLinkFailure handleLinkFailure)? failedToHandle,
    required TResult orElse(),
  }) {
    if (handling != null) {
      return handling();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Handling value) handling,
    required TResult Function(_Handled value) handled,
    required TResult Function(_FailedToHandle value) failedToHandle,
  }) {
    return handling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Handling value)? handling,
    TResult? Function(_Handled value)? handled,
    TResult? Function(_FailedToHandle value)? failedToHandle,
  }) {
    return handling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Handling value)? handling,
    TResult Function(_Handled value)? handled,
    TResult Function(_FailedToHandle value)? failedToHandle,
    required TResult orElse(),
  }) {
    if (handling != null) {
      return handling(this);
    }
    return orElse();
  }
}

abstract class _Handling implements HandleLinkState {
  const factory _Handling() = _$HandlingImpl;
}

/// @nodoc
abstract class _$$HandledImplCopyWith<$Res> {
  factory _$$HandledImplCopyWith(
          _$HandledImpl value, $Res Function(_$HandledImpl) then) =
      __$$HandledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LinkEntity linkEntity});
}

/// @nodoc
class __$$HandledImplCopyWithImpl<$Res>
    extends _$HandleLinkStateCopyWithImpl<$Res, _$HandledImpl>
    implements _$$HandledImplCopyWith<$Res> {
  __$$HandledImplCopyWithImpl(
      _$HandledImpl _value, $Res Function(_$HandledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkEntity = null,
  }) {
    return _then(_$HandledImpl(
      linkEntity: null == linkEntity
          ? _value.linkEntity
          : linkEntity // ignore: cast_nullable_to_non_nullable
              as LinkEntity,
    ));
  }
}

/// @nodoc

class _$HandledImpl implements _Handled {
  const _$HandledImpl({required this.linkEntity});

  @override
  final LinkEntity linkEntity;

  @override
  String toString() {
    return 'HandleLinkState.handled(linkEntity: $linkEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandledImpl &&
            (identical(other.linkEntity, linkEntity) ||
                other.linkEntity == linkEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, linkEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandledImplCopyWith<_$HandledImpl> get copyWith =>
      __$$HandledImplCopyWithImpl<_$HandledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() handling,
    required TResult Function(LinkEntity linkEntity) handled,
    required TResult Function(HandleLinkFailure handleLinkFailure)
        failedToHandle,
  }) {
    return handled(linkEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? handling,
    TResult? Function(LinkEntity linkEntity)? handled,
    TResult? Function(HandleLinkFailure handleLinkFailure)? failedToHandle,
  }) {
    return handled?.call(linkEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? handling,
    TResult Function(LinkEntity linkEntity)? handled,
    TResult Function(HandleLinkFailure handleLinkFailure)? failedToHandle,
    required TResult orElse(),
  }) {
    if (handled != null) {
      return handled(linkEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Handling value) handling,
    required TResult Function(_Handled value) handled,
    required TResult Function(_FailedToHandle value) failedToHandle,
  }) {
    return handled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Handling value)? handling,
    TResult? Function(_Handled value)? handled,
    TResult? Function(_FailedToHandle value)? failedToHandle,
  }) {
    return handled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Handling value)? handling,
    TResult Function(_Handled value)? handled,
    TResult Function(_FailedToHandle value)? failedToHandle,
    required TResult orElse(),
  }) {
    if (handled != null) {
      return handled(this);
    }
    return orElse();
  }
}

abstract class _Handled implements HandleLinkState {
  const factory _Handled({required final LinkEntity linkEntity}) =
      _$HandledImpl;

  LinkEntity get linkEntity;
  @JsonKey(ignore: true)
  _$$HandledImplCopyWith<_$HandledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToHandleImplCopyWith<$Res> {
  factory _$$FailedToHandleImplCopyWith(_$FailedToHandleImpl value,
          $Res Function(_$FailedToHandleImpl) then) =
      __$$FailedToHandleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HandleLinkFailure handleLinkFailure});
}

/// @nodoc
class __$$FailedToHandleImplCopyWithImpl<$Res>
    extends _$HandleLinkStateCopyWithImpl<$Res, _$FailedToHandleImpl>
    implements _$$FailedToHandleImplCopyWith<$Res> {
  __$$FailedToHandleImplCopyWithImpl(
      _$FailedToHandleImpl _value, $Res Function(_$FailedToHandleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handleLinkFailure = null,
  }) {
    return _then(_$FailedToHandleImpl(
      handleLinkFailure: null == handleLinkFailure
          ? _value.handleLinkFailure
          : handleLinkFailure // ignore: cast_nullable_to_non_nullable
              as HandleLinkFailure,
    ));
  }
}

/// @nodoc

class _$FailedToHandleImpl implements _FailedToHandle {
  const _$FailedToHandleImpl({required this.handleLinkFailure});

  @override
  final HandleLinkFailure handleLinkFailure;

  @override
  String toString() {
    return 'HandleLinkState.failedToHandle(handleLinkFailure: $handleLinkFailure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedToHandleImpl &&
            (identical(other.handleLinkFailure, handleLinkFailure) ||
                other.handleLinkFailure == handleLinkFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, handleLinkFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedToHandleImplCopyWith<_$FailedToHandleImpl> get copyWith =>
      __$$FailedToHandleImplCopyWithImpl<_$FailedToHandleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() handling,
    required TResult Function(LinkEntity linkEntity) handled,
    required TResult Function(HandleLinkFailure handleLinkFailure)
        failedToHandle,
  }) {
    return failedToHandle(handleLinkFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? handling,
    TResult? Function(LinkEntity linkEntity)? handled,
    TResult? Function(HandleLinkFailure handleLinkFailure)? failedToHandle,
  }) {
    return failedToHandle?.call(handleLinkFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? handling,
    TResult Function(LinkEntity linkEntity)? handled,
    TResult Function(HandleLinkFailure handleLinkFailure)? failedToHandle,
    required TResult orElse(),
  }) {
    if (failedToHandle != null) {
      return failedToHandle(handleLinkFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Handling value) handling,
    required TResult Function(_Handled value) handled,
    required TResult Function(_FailedToHandle value) failedToHandle,
  }) {
    return failedToHandle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Handling value)? handling,
    TResult? Function(_Handled value)? handled,
    TResult? Function(_FailedToHandle value)? failedToHandle,
  }) {
    return failedToHandle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Handling value)? handling,
    TResult Function(_Handled value)? handled,
    TResult Function(_FailedToHandle value)? failedToHandle,
    required TResult orElse(),
  }) {
    if (failedToHandle != null) {
      return failedToHandle(this);
    }
    return orElse();
  }
}

abstract class _FailedToHandle implements HandleLinkState {
  const factory _FailedToHandle(
          {required final HandleLinkFailure handleLinkFailure}) =
      _$FailedToHandleImpl;

  HandleLinkFailure get handleLinkFailure;
  @JsonKey(ignore: true)
  _$$FailedToHandleImplCopyWith<_$FailedToHandleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
