import 'package:equatable/equatable.dart' show Equatable;

sealed class ApiVersionFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class IncompatibleBackendApiVersionFailure extends ApiVersionFailure {
  @override
  List<Object?> get props => [];
}

final class UnknownApiVersionFailure extends ApiVersionFailure {
  @override
  List<Object?> get props => [];
}
