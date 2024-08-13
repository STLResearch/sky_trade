import 'package:equatable/equatable.dart' show Equatable;

abstract final class CacheFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class WriteDataFailure extends CacheFailure {
  @override
  List<Object?> get props => [];
}

final class ReadDataFailure extends CacheFailure {
  @override
  List<Object?> get props => [];
}

final class DataNotFoundFailure extends CacheFailure {
  @override
  List<Object?> get props => [];
}

final class DataStaleFailure extends CacheFailure {
  @override
  List<Object?> get props => [];
}
