// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SaveFileEvent {
  String get name => throw _privateConstructorUsedError;
  Object get content => throw _privateConstructorUsedError;
  FileType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Object content, FileType type)
        saveToFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, Object content, FileType type)? saveToFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Object content, FileType type)? saveToFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveToFile value) saveToFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveToFile value)? saveToFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveToFile value)? saveToFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveFileEventCopyWith<SaveFileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFileEventCopyWith<$Res> {
  factory $SaveFileEventCopyWith(
          SaveFileEvent value, $Res Function(SaveFileEvent) then) =
      _$SaveFileEventCopyWithImpl<$Res, SaveFileEvent>;
  @useResult
  $Res call({String name, Object content, FileType type});
}

/// @nodoc
class _$SaveFileEventCopyWithImpl<$Res, $Val extends SaveFileEvent>
    implements $SaveFileEventCopyWith<$Res> {
  _$SaveFileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content ? _value.content : content,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveToFileImplCopyWith<$Res>
    implements $SaveFileEventCopyWith<$Res> {
  factory _$$SaveToFileImplCopyWith(
          _$SaveToFileImpl value, $Res Function(_$SaveToFileImpl) then) =
      __$$SaveToFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Object content, FileType type});
}

/// @nodoc
class __$$SaveToFileImplCopyWithImpl<$Res>
    extends _$SaveFileEventCopyWithImpl<$Res, _$SaveToFileImpl>
    implements _$$SaveToFileImplCopyWith<$Res> {
  __$$SaveToFileImplCopyWithImpl(
      _$SaveToFileImpl _value, $Res Function(_$SaveToFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? content = null,
    Object? type = null,
  }) {
    return _then(_$SaveToFileImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content ? _value.content : content,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileType,
    ));
  }
}

/// @nodoc

class _$SaveToFileImpl implements _SaveToFile {
  const _$SaveToFileImpl(
      {required this.name, required this.content, required this.type});

  @override
  final String name;
  @override
  final Object content;
  @override
  final FileType type;

  @override
  String toString() {
    return 'SaveFileEvent.saveToFile(name: $name, content: $content, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveToFileImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(content), type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveToFileImplCopyWith<_$SaveToFileImpl> get copyWith =>
      __$$SaveToFileImplCopyWithImpl<_$SaveToFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, Object content, FileType type)
        saveToFile,
  }) {
    return saveToFile(name, content, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, Object content, FileType type)? saveToFile,
  }) {
    return saveToFile?.call(name, content, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, Object content, FileType type)? saveToFile,
    required TResult orElse(),
  }) {
    if (saveToFile != null) {
      return saveToFile(name, content, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveToFile value) saveToFile,
  }) {
    return saveToFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveToFile value)? saveToFile,
  }) {
    return saveToFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveToFile value)? saveToFile,
    required TResult orElse(),
  }) {
    if (saveToFile != null) {
      return saveToFile(this);
    }
    return orElse();
  }
}

abstract class _SaveToFile implements SaveFileEvent {
  const factory _SaveToFile(
      {required final String name,
      required final Object content,
      required final FileType type}) = _$SaveToFileImpl;

  @override
  String get name;
  @override
  Object get content;
  @override
  FileType get type;
  @override
  @JsonKey(ignore: true)
  _$$SaveToFileImplCopyWith<_$SaveToFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SaveFileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saving,
    required TResult Function(String name, FileType type) saved,
    required TResult Function() failedToSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saving,
    TResult? Function(String name, FileType type)? saved,
    TResult? Function()? failedToSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saving,
    TResult Function(String name, FileType type)? saved,
    TResult Function()? failedToSave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailedToSave value) failedToSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_FailedToSave value)? failedToSave,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailedToSave value)? failedToSave,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFileStateCopyWith<$Res> {
  factory $SaveFileStateCopyWith(
          SaveFileState value, $Res Function(SaveFileState) then) =
      _$SaveFileStateCopyWithImpl<$Res, SaveFileState>;
}

/// @nodoc
class _$SaveFileStateCopyWithImpl<$Res, $Val extends SaveFileState>
    implements $SaveFileStateCopyWith<$Res> {
  _$SaveFileStateCopyWithImpl(this._value, this._then);

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
    extends _$SaveFileStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SaveFileState.initial()';
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
    required TResult Function() saving,
    required TResult Function(String name, FileType type) saved,
    required TResult Function() failedToSave,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saving,
    TResult? Function(String name, FileType type)? saved,
    TResult? Function()? failedToSave,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saving,
    TResult Function(String name, FileType type)? saved,
    TResult Function()? failedToSave,
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
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailedToSave value) failedToSave,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_FailedToSave value)? failedToSave,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailedToSave value)? failedToSave,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SaveFileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SavingImplCopyWith<$Res> {
  factory _$$SavingImplCopyWith(
          _$SavingImpl value, $Res Function(_$SavingImpl) then) =
      __$$SavingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavingImplCopyWithImpl<$Res>
    extends _$SaveFileStateCopyWithImpl<$Res, _$SavingImpl>
    implements _$$SavingImplCopyWith<$Res> {
  __$$SavingImplCopyWithImpl(
      _$SavingImpl _value, $Res Function(_$SavingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavingImpl implements _Saving {
  const _$SavingImpl();

  @override
  String toString() {
    return 'SaveFileState.saving()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saving,
    required TResult Function(String name, FileType type) saved,
    required TResult Function() failedToSave,
  }) {
    return saving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saving,
    TResult? Function(String name, FileType type)? saved,
    TResult? Function()? failedToSave,
  }) {
    return saving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saving,
    TResult Function(String name, FileType type)? saved,
    TResult Function()? failedToSave,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailedToSave value) failedToSave,
  }) {
    return saving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_FailedToSave value)? failedToSave,
  }) {
    return saving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailedToSave value)? failedToSave,
    required TResult orElse(),
  }) {
    if (saving != null) {
      return saving(this);
    }
    return orElse();
  }
}

abstract class _Saving implements SaveFileState {
  const factory _Saving() = _$SavingImpl;
}

/// @nodoc
abstract class _$$SavedImplCopyWith<$Res> {
  factory _$$SavedImplCopyWith(
          _$SavedImpl value, $Res Function(_$SavedImpl) then) =
      __$$SavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, FileType type});
}

/// @nodoc
class __$$SavedImplCopyWithImpl<$Res>
    extends _$SaveFileStateCopyWithImpl<$Res, _$SavedImpl>
    implements _$$SavedImplCopyWith<$Res> {
  __$$SavedImplCopyWithImpl(
      _$SavedImpl _value, $Res Function(_$SavedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$SavedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileType,
    ));
  }
}

/// @nodoc

class _$SavedImpl implements _Saved {
  const _$SavedImpl({required this.name, required this.type});

  @override
  final String name;
  @override
  final FileType type;

  @override
  String toString() {
    return 'SaveFileState.saved(name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedImplCopyWith<_$SavedImpl> get copyWith =>
      __$$SavedImplCopyWithImpl<_$SavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saving,
    required TResult Function(String name, FileType type) saved,
    required TResult Function() failedToSave,
  }) {
    return saved(name, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saving,
    TResult? Function(String name, FileType type)? saved,
    TResult? Function()? failedToSave,
  }) {
    return saved?.call(name, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saving,
    TResult Function(String name, FileType type)? saved,
    TResult Function()? failedToSave,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(name, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailedToSave value) failedToSave,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_FailedToSave value)? failedToSave,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailedToSave value)? failedToSave,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements SaveFileState {
  const factory _Saved(
      {required final String name, required final FileType type}) = _$SavedImpl;

  String get name;
  FileType get type;
  @JsonKey(ignore: true)
  _$$SavedImplCopyWith<_$SavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedToSaveImplCopyWith<$Res> {
  factory _$$FailedToSaveImplCopyWith(
          _$FailedToSaveImpl value, $Res Function(_$FailedToSaveImpl) then) =
      __$$FailedToSaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedToSaveImplCopyWithImpl<$Res>
    extends _$SaveFileStateCopyWithImpl<$Res, _$FailedToSaveImpl>
    implements _$$FailedToSaveImplCopyWith<$Res> {
  __$$FailedToSaveImplCopyWithImpl(
      _$FailedToSaveImpl _value, $Res Function(_$FailedToSaveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedToSaveImpl implements _FailedToSave {
  const _$FailedToSaveImpl();

  @override
  String toString() {
    return 'SaveFileState.failedToSave()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedToSaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saving,
    required TResult Function(String name, FileType type) saved,
    required TResult Function() failedToSave,
  }) {
    return failedToSave();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? saving,
    TResult? Function(String name, FileType type)? saved,
    TResult? Function()? failedToSave,
  }) {
    return failedToSave?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saving,
    TResult Function(String name, FileType type)? saved,
    TResult Function()? failedToSave,
    required TResult orElse(),
  }) {
    if (failedToSave != null) {
      return failedToSave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saving value) saving,
    required TResult Function(_Saved value) saved,
    required TResult Function(_FailedToSave value) failedToSave,
  }) {
    return failedToSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saving value)? saving,
    TResult? Function(_Saved value)? saved,
    TResult? Function(_FailedToSave value)? failedToSave,
  }) {
    return failedToSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saving value)? saving,
    TResult Function(_Saved value)? saved,
    TResult Function(_FailedToSave value)? failedToSave,
    required TResult orElse(),
  }) {
    if (failedToSave != null) {
      return failedToSave(this);
    }
    return orElse();
  }
}

abstract class _FailedToSave implements SaveFileState {
  const factory _FailedToSave() = _$FailedToSaveImpl;
}
