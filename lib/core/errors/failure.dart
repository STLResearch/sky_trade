import 'package:equatable/equatable.dart' show Equatable;

abstract base class Failure extends Equatable {}

final class Web3AuthInitializationFailure extends Failure {
  @override
  List<Object?> get props => [];
}

final class Web3AuthAuthenticationFailure extends Failure {
  @override
  List<Object?> get props => [];
}

final class Web3AuthLogoutFailure extends Failure {
  @override
  List<Object?> get props => [];
}
