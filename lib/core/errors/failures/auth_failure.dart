import 'package:equatable/equatable.dart' show Equatable;

final class Web3AuthInitializationFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class Web3AuthAuthenticationFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class Web3AuthLogoutFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

abstract final class CreateSkyTradeUserFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class InvalidEmailFailure extends CreateSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}

final class UserAlreadyExistsFailure extends CreateSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}

final class CreateSkyTradeUserUnknownFailure extends CreateSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}

abstract final class CheckSkyTradeUserFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class UserDoesNotExistFailure extends CheckSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}

final class UnauthorizedFailure extends CheckSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}

final class InvalidSignatureFailure extends CheckSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}

final class CheckSkyTradeUserUnknownFailure extends CheckSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}
