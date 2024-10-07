import 'package:flutter/services.dart' show MethodChannel;
import 'package:sky_ways/core/resources/strings/environments.dart'
    show inAppUpdateChannelName;
import 'package:sky_ways/features/in_app_update/domain/repositories/in_app_update_repository.dart';

final class InAppUpdateRepositoryImplementation
    implements InAppUpdateRepository {
  @override
  void checkAndStartUpdate() {
    // TODO: implement checkAndStartUpdate
  }

  @override
  void installFlexibleUpdate() {
    // TODO: implement installFlexibleUpdate
  }

  @override
  void
      registerUpdateStateListenerAndCheckAndResumeStalledImmediateUpdateIfAny() {
    // TODO: implement registerUpdateStateListenerAndCheckAndResumeStalledImmediateUpdateIfAny
  }

  @override
  void unregisterUpdateStateListener() {
    // TODO: implement unregisterUpdateStateListener
  }

  MethodChannel get _inAppUpdateChannel => const MethodChannel(
        inAppUpdateChannelName,
      );
}
