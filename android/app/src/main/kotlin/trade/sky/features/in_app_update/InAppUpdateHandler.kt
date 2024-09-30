package trade.sky.features.in_app_update

import android.app.Activity
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import trade.sky.core.utils.constants.CHECK_AND_START_UPDATE_METHOD_CALL
import trade.sky.core.utils.constants.INSTALL_FLEXIBLE_UPDATE_METHOD_CALL
import trade.sky.core.utils.constants.REGISTER_UPDATE_STATE_LISTENER_AND_CHECK_AND_RESUME_STALLED_IMMEDIATE_UPDATE_IF_ANY_METHOD_CALL
import trade.sky.core.utils.constants.UNREGISTER_UPDATE_STATE_LISTENER_METHOD_CALL
import trade.sky.core.utils.enums.InAppUpdateExecutionChainState
import trade.sky.core.utils.enums.InAppUpdateState
import trade.sky.core.utils.enums.InAppUpdateType

class InAppUpdateHandler(activity: Activity) : MethodChannel.MethodCallHandler {
    private val inAppUpdateManager = InAppUpdateManager(activity)

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            CHECK_AND_START_UPDATE_METHOD_CALL -> checkAndStartUpdateAndReportSome(result)

            REGISTER_UPDATE_STATE_LISTENER_AND_CHECK_AND_RESUME_STALLED_IMMEDIATE_UPDATE_IF_ANY_METHOD_CALL -> {
                registerUpdateStateListenerAndReportSome(result)
                checkAndResumeStalledImmediateUpdateIfAnyAndReportSome(result)
            }

            INSTALL_FLEXIBLE_UPDATE_METHOD_CALL -> installFlexibleUpdateAndReportSome(result)

            UNREGISTER_UPDATE_STATE_LISTENER_METHOD_CALL -> unregisterUpdateStateListenerAndReportSome(
                result
            )

            else -> result.error("0", "Unimplemented", "Feature not implemented")
        }
    }

    private fun checkAndStartUpdateAndReportSome(result: MethodChannel.Result) {

        result.success(InAppUpdateExecutionChainState.CHECKING_FOR_UPDATE.value)

        inAppUpdateManager.checkUpdateAvailability(
            onSuccess = { appUpdateInfo, updateType ->

                result.success(InAppUpdateExecutionChainState.CHECKED_FOR_UPDATE.value)

                inAppUpdateManager.startUpdate(
                    appUpdateInfo, updateType
                )

                result.success(updateType.value)

                listenUpdateStateConsidering(updateType = updateType, result = result)
            },
            onFailure = { _ ->
                result.success(InAppUpdateExecutionChainState.FAILED_TO_CHECK_FOR_UPDATE.value)
            }
        )
    }

    private fun listenUpdateStateConsidering(
        updateType: InAppUpdateType,
        result: MethodChannel.Result
    ) {
        result.success(InAppUpdateExecutionChainState.LISTENING_UPDATE_STATE.value)

        inAppUpdateManager.listenUpdateState(
            updateType = updateType,
            onDownloading = { bytesDownloaded, totalBytesToDownload ->
                result.success(
                    mapOf<String, Any?>(
                        "State" to InAppUpdateState.DOWNLOADING.value,
                        "BytesDownloaded" to bytesDownloaded,
                        "TotalBytesToDownload" to totalBytesToDownload
                    )
                )
            },
            onDownloaded = {
                result.success(InAppUpdateState.DOWNLOADED.value)
            },
            onInstalling = {
                result.success(InAppUpdateState.INSTALLING.value)
            },
            onInstalled = {
                result.success(InAppUpdateState.INSTALLED.value)
            },
            onFailed = {
                result.success(InAppUpdateState.FAILED.value)
            },
            onCanceled = {
                result.success(InAppUpdateState.CANCELED.value)
            },
            onPending = {
                result.success(InAppUpdateState.PENDING.value)
            },
            onUnknown = {
                result.success(InAppUpdateState.UNKNOWN.value)
            }
        )
    }

    private fun registerUpdateStateListenerAndReportSome(result: MethodChannel.Result) {
        inAppUpdateManager.registerUpdateStateListener()

        result.success(InAppUpdateExecutionChainState.UPDATE_STATE_LISTENER_REGISTERED.value)
    }

    private fun checkAndResumeStalledImmediateUpdateIfAnyAndReportSome(
        result: MethodChannel.Result
    ) {
        inAppUpdateManager.checkAndResumeStalledImmediateUpdateIfAny()

        result.success(InAppUpdateExecutionChainState.CHECKING_AND_RESUMING_STALLED_IMMEDIATE_UPDATE_IF_ANY.value)
    }

    private fun installFlexibleUpdateAndReportSome(result: MethodChannel.Result) {
        inAppUpdateManager.installFlexibleUpdate()

        result.success(InAppUpdateExecutionChainState.INSTALLING_FLEXIBLE_UPDATE.value)
    }

    private fun unregisterUpdateStateListenerAndReportSome(result: MethodChannel.Result) {
        inAppUpdateManager.unregisterUpdateStateListener()

        result.success(InAppUpdateExecutionChainState.UPDATE_STATE_LISTENER_UNREGISTERED.value)
    }
}