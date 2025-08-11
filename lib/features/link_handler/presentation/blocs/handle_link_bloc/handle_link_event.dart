// SPDX-License-Identifier: UNLICENSED
                            
part of 'handle_link_bloc.dart';

@freezed
class HandleLinkEvent with _$HandleLinkEvent {
  const factory HandleLinkEvent.handle({
    required String link,
  }) = _Handle;
}
