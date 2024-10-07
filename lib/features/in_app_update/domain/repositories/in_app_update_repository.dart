abstract interface class InAppUpdateRepository {
  void checkAndStartUpdate();

  void
      registerUpdateStateListenerAndCheckAndResumeStalledImmediateUpdateIfAny();

  void installFlexibleUpdate();

  void unregisterUpdateStateListener();
}
