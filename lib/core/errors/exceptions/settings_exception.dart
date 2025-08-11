// SPDX-License-Identifier: UNLICENSED
                            
final class RequestDeleteAccountException implements Exception {}

abstract final class DeleteAccountException implements Exception {}

final class InvalidCodeException extends DeleteAccountException {}

final class DeleteAccountUnknownException extends DeleteAccountException {}
