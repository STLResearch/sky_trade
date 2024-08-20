// ignore_for_file: lines_longer_than_80_chars

part of 'internet_connection_checker_bloc.dart';

@freezed
class InternetConnectionCheckerState with _$InternetConnectionCheckerState {
  const factory InternetConnectionCheckerState.initial() = _Initial;

  const factory InternetConnectionCheckerState.checkingActiveInternetConnection() =
      _CheckingActiveInternetConnection;

  const factory InternetConnectionCheckerState.hasActiveInternetConnection() =
      _HasActiveInternetConnection;

  const factory InternetConnectionCheckerState.noActiveInternetConnection() =
      _NoActiveInternetConnection;
}
