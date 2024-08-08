import 'package:equatable/equatable.dart' show Equatable;

abstract final class FileFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class WriteFileFailure extends FileFailure {
  @override
  List<Object?> get props => [];
}

final class ReadFileFailure extends FileFailure {
  @override
  List<Object?> get props => [];
}

final class FileNotFoundFailure extends FileFailure {
  @override
  List<Object?> get props => [];
}

final class FileStaleFailure extends FileFailure {
  @override
  List<Object?> get props => [];
}
