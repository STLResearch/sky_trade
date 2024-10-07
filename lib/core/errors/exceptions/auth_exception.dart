abstract final class CreateSkyTradeUserException implements Exception {}

final class InvalidEmailException implements CreateSkyTradeUserException {}

final class UserAlreadyExistsException implements CreateSkyTradeUserException {}

final class CreateSkyTradeUserUnknownException
    implements CreateSkyTradeUserException {}

abstract final class CheckSkyTradeUserException implements Exception {}

final class UserDoesNotExistException implements CheckSkyTradeUserException {}

final class UnauthorizedException implements CheckSkyTradeUserException {}

final class InvalidSignatureException implements CheckSkyTradeUserException {}

final class CheckSkyTradeUserUnknownException
    implements CheckSkyTradeUserException {}
