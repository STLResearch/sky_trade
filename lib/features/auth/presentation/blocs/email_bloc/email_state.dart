// SPDX-License-Identifier: UNLICENSED
                            
part of 'email_bloc.dart';

@freezed
class EmailState with _$EmailState {
  const factory EmailState.initial() = _Initial;

  const factory EmailState.gettingEmail() = _GettingEmail;

  const factory EmailState.gotEmail({
    required String email,
  }) = _GotEmail;

  const factory EmailState.failedToGetEmail() = _FailedToGetEmail;
}
