abstract final class CreateSkyTradeUserException implements Exception {}

final class InvalidEmailException implements CreateSkyTradeUserException {}

final class UserAlreadyExistsException implements CreateSkyTradeUserException {}

final class WalletAlreadyExistsException
    implements CreateSkyTradeUserException {}

final class CreateSkyTradeUserUnknownException
    implements CreateSkyTradeUserException {}

abstract final class CheckSkyTradeUserException implements Exception {}

final class UserNotFoundException implements CheckSkyTradeUserException {}

final class UnauthorizedException implements CheckSkyTradeUserException {}

final class InvalidSignatureException implements CheckSkyTradeUserException {}

final class UserMismatchException implements CheckSkyTradeUserException {}

final class AlreadySubscribedException implements CheckSkyTradeUserException {}

final class CheckSkyTradeUserUnknownException
    implements CheckSkyTradeUserException {}
