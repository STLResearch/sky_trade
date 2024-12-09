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

sealed class CreateSkyTradeUserFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class InvalidEmailFailure extends CreateSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}

final class WalletAlreadyExistsFailure extends CreateSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}

final class CreateSkyTradeUserUnknownFailure extends CreateSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}

sealed class CheckSkyTradeUserFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

final class UserNotFoundFailure extends CheckSkyTradeUserFailure {
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

final class UserMismatchFailure extends CheckSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}

final class CheckSkyTradeUserUnknownFailure extends CheckSkyTradeUserFailure {
  @override
  List<Object?> get props => [];
}
