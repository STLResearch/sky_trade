// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_file_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SavedFileEvent {
  String get name => throw _privateConstructorUsedError;
  FileType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, FileType type) getSavedFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, FileType type)? getSavedFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, FileType type)? getSavedFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSavedFile value) getSavedFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSavedFile value)? getSavedFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSavedFile value)? getSavedFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SavedFileEventCopyWith<SavedFileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedFileEventCopyWith<$Res> {
  factory $SavedFileEventCopyWith(
          SavedFileEvent value, $Res Function(SavedFileEvent) then) =
      _$SavedFileEventCopyWithImpl<$Res, SavedFileEvent>;
  @useResult
  $Res call({String name, FileType type});
}

/// @nodoc
class _$SavedFileEventCopyWithImpl<$Res, $Val extends SavedFileEvent>
    implements $SavedFileEventCopyWith<$Res> {
  _$SavedFileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FileType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSavedFileImplCopyWith<$Res>
    implements $SavedFileEventCopyWith<$Res> {
  factory _$$GetSavedFileImplCopyWith(
          _$GetSavedFileImpl value, $Res Function(_$GetSavedFileImpl) then) =
      __$$GetSavedFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, FileType type});
}

/// @nodoc
class __$$GetSavedFileImplCopyWithImpl<$Res>
    extends _$SavedFileEventCopyWithImpl<$Res, _$GetSavedFileImpl>
    implements _$$GetSavedFileImplCopyWith<$Res> {
  __$$GetSavedFileImplCopyWithImpl(
      _$GetSavedFileImpl _value, $Res Function(_$GetSavedFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$GetSavedFileImpl(
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

class _$GetSavedFileImpl implements _GetSavedFile {
  const _$GetSavedFileImpl({required this.name, required this.type});

  @override
  final String name;
  @override
  final FileType type;

  @override
  String toString() {
    return 'SavedFileEvent.getSavedFile(name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSavedFileImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSavedFileImplCopyWith<_$GetSavedFileImpl> get copyWith =>
      __$$GetSavedFileImplCopyWithImpl<_$GetSavedFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, FileType type) getSavedFile,
  }) {
    return getSavedFile(name, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, FileType type)? getSavedFile,
  }) {
    return getSavedFile?.call(name, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, FileType type)? getSavedFile,
    required TResult orElse(),
  }) {
    if (getSavedFile != null) {
      return getSavedFile(name, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSavedFile value) getSavedFile,
  }) {
    return getSavedFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSavedFile value)? getSavedFile,
  }) {
    return getSavedFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSavedFile value)? getSavedFile,
    required TResult orElse(),
  }) {
    if (getSavedFile != null) {
      return getSavedFile(this);
    }
    return orElse();
  }
}

abstract class _GetSavedFile implements SavedFileEvent {
  const factory _GetSavedFile(
      {required final String name,
      required final FileType type}) = _$GetSavedFileImpl;

  @override
  String get name;
  @override
  FileType get type;
  @override
  @JsonKey(ignore: true)
  _$$GetSavedFileImplCopyWith<_$GetSavedFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SavedFileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FileEntity fileEntity) fileExists,
    required TResult Function() fileNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FileEntity fileEntity)? fileExists,
    TResult? Function()? fileNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FileEntity fileEntity)? fileExists,
    TResult Function()? fileNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FileExists value) fileExists,
    required TResult Function(_FileNotExist value) fileNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FileExists value)? fileExists,
    TResult? Function(_FileNotExist value)? fileNotExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FileExists value)? fileExists,
    TResult Function(_FileNotExist value)? fileNotExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedFileStateCopyWith<$Res> {
  factory $SavedFileStateCopyWith(
          SavedFileState value, $Res Function(SavedFileState) then) =
      _$SavedFileStateCopyWithImpl<$Res, SavedFileState>;
}

/// @nodoc
class _$SavedFileStateCopyWithImpl<$Res, $Val extends SavedFileState>
    implements $SavedFileStateCopyWith<$Res> {
  _$SavedFileStateCopyWithImpl(this._value, this._then);

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
    extends _$SavedFileStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SavedFileState.initial()';
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
    required TResult Function(FileEntity fileEntity) fileExists,
    required TResult Function() fileNotExist,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FileEntity fileEntity)? fileExists,
    TResult? Function()? fileNotExist,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FileEntity fileEntity)? fileExists,
    TResult Function()? fileNotExist,
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
    required TResult Function(_FileExists value) fileExists,
    required TResult Function(_FileNotExist value) fileNotExist,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FileExists value)? fileExists,
    TResult? Function(_FileNotExist value)? fileNotExist,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FileExists value)? fileExists,
    TResult Function(_FileNotExist value)? fileNotExist,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SavedFileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FileExistsImplCopyWith<$Res> {
  factory _$$FileExistsImplCopyWith(
          _$FileExistsImpl value, $Res Function(_$FileExistsImpl) then) =
      __$$FileExistsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FileEntity fileEntity});
}

/// @nodoc
class __$$FileExistsImplCopyWithImpl<$Res>
    extends _$SavedFileStateCopyWithImpl<$Res, _$FileExistsImpl>
    implements _$$FileExistsImplCopyWith<$Res> {
  __$$FileExistsImplCopyWithImpl(
      _$FileExistsImpl _value, $Res Function(_$FileExistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileEntity = null,
  }) {
    return _then(_$FileExistsImpl(
      fileEntity: null == fileEntity
          ? _value.fileEntity
          : fileEntity // ignore: cast_nullable_to_non_nullable
              as FileEntity,
    ));
  }
}

/// @nodoc

class _$FileExistsImpl implements _FileExists {
  const _$FileExistsImpl({required this.fileEntity});

  @override
  final FileEntity fileEntity;

  @override
  String toString() {
    return 'SavedFileState.fileExists(fileEntity: $fileEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileExistsImpl &&
            (identical(other.fileEntity, fileEntity) ||
                other.fileEntity == fileEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileExistsImplCopyWith<_$FileExistsImpl> get copyWith =>
      __$$FileExistsImplCopyWithImpl<_$FileExistsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FileEntity fileEntity) fileExists,
    required TResult Function() fileNotExist,
  }) {
    return fileExists(fileEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FileEntity fileEntity)? fileExists,
    TResult? Function()? fileNotExist,
  }) {
    return fileExists?.call(fileEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FileEntity fileEntity)? fileExists,
    TResult Function()? fileNotExist,
    required TResult orElse(),
  }) {
    if (fileExists != null) {
      return fileExists(fileEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FileExists value) fileExists,
    required TResult Function(_FileNotExist value) fileNotExist,
  }) {
    return fileExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FileExists value)? fileExists,
    TResult? Function(_FileNotExist value)? fileNotExist,
  }) {
    return fileExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FileExists value)? fileExists,
    TResult Function(_FileNotExist value)? fileNotExist,
    required TResult orElse(),
  }) {
    if (fileExists != null) {
      return fileExists(this);
    }
    return orElse();
  }
}

abstract class _FileExists implements SavedFileState {
  const factory _FileExists({required final FileEntity fileEntity}) =
      _$FileExistsImpl;

  FileEntity get fileEntity;
  @JsonKey(ignore: true)
  _$$FileExistsImplCopyWith<_$FileExistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileNotExistImplCopyWith<$Res> {
  factory _$$FileNotExistImplCopyWith(
          _$FileNotExistImpl value, $Res Function(_$FileNotExistImpl) then) =
      __$$FileNotExistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileNotExistImplCopyWithImpl<$Res>
    extends _$SavedFileStateCopyWithImpl<$Res, _$FileNotExistImpl>
    implements _$$FileNotExistImplCopyWith<$Res> {
  __$$FileNotExistImplCopyWithImpl(
      _$FileNotExistImpl _value, $Res Function(_$FileNotExistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FileNotExistImpl implements _FileNotExist {
  const _$FileNotExistImpl();

  @override
  String toString() {
    return 'SavedFileState.fileNotExist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FileNotExistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FileEntity fileEntity) fileExists,
    required TResult Function() fileNotExist,
  }) {
    return fileNotExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FileEntity fileEntity)? fileExists,
    TResult? Function()? fileNotExist,
  }) {
    return fileNotExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FileEntity fileEntity)? fileExists,
    TResult Function()? fileNotExist,
    required TResult orElse(),
  }) {
    if (fileNotExist != null) {
      return fileNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FileExists value) fileExists,
    required TResult Function(_FileNotExist value) fileNotExist,
  }) {
    return fileNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FileExists value)? fileExists,
    TResult? Function(_FileNotExist value)? fileNotExist,
  }) {
    return fileNotExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FileExists value)? fileExists,
    TResult Function(_FileNotExist value)? fileNotExist,
    required TResult orElse(),
  }) {
    if (fileNotExist != null) {
      return fileNotExist(this);
    }
    return orElse();
  }
}

abstract class _FileNotExist implements SavedFileState {
  const factory _FileNotExist() = _$FileNotExistImpl;
}
