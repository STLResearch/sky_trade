// SPDX-License-Identifier: UNLICENSED
                            
part of 'request_delete_account_bloc.dart';

@freezed
class RequestDeleteAccountEvent with _$RequestDeleteAccountEvent {
  const factory RequestDeleteAccountEvent.sendOtp() = _SendOtp;
}
