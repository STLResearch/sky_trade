// SPDX-License-Identifier: UNLICENSED
                            
part of 'internet_connection_checker_bloc.dart';

@freezed
class InternetConnectionCheckerEvent with _$InternetConnectionCheckerEvent {
  const factory InternetConnectionCheckerEvent.checkActiveInternetConnection() =
      _CheckActiveInternetConnection;
}
