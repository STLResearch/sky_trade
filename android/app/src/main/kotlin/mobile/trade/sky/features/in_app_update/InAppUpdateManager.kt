package mobile.trade.sky.features.in_app_update

import android.app.Activity
import com.google.android.play.core.appupdate.AppUpdateInfo
import com.google.android.play.core.appupdate.AppUpdateManagerFactory
import com.google.android.play.core.appupdate.AppUpdateOptions
import com.google.android.play.core.install.InstallStateUpdatedListener
import com.google.android.play.core.install.model.AppUpdateType
import com.google.android.play.core.install.model.InstallStatus
import com.google.android.play.core.install.model.UpdateAvailability
import com.google.android.play.core.ktx.bytesDownloaded
import com.google.android.play.core.ktx.clientVersionStalenessDays
import com.google.android.play.core.ktx.installStatus
import com.google.android.play.core.ktx.totalBytesToDownload
import com.google.android.play.core.ktx.updatePriority
import mobile.trade.sky.core.utils.constants.FLEXIBLE_UPDATE_MAX_PRIORITY
import mobile.trade.sky.core.utils.constants.FLEXIBLE_UPDATE_MAX_STALENESS_DAYS
import mobile.trade.sky.core.utils.constants.IN_APP_UPDATE_REQUEST_CODE
import mobile.trade.sky.core.utils.enums.InAppUpdateType
import kotlin.properties.Delegates

class InAppUpdateManager(private val activity: Activity) {
    private var appUpdateManager = AppUpdateManagerFactory.create(activity)
    private var listener: InstallStateUpdatedListener? = null

    fun checkUpdateAvailability(
        onSuccess: (appUpdateInfo: AppUpdateInfo, updateType: InAppUpdateType) -> Unit,
        onFailure: ((message: String?) -> Unit)? = null
    ) {
        appUpdateManager.appUpdateInfo.addOnSuccessListener {
            onSuccess(
                it,
                when {
                    isConditionForFlexibleUpdate(appUpdateInfo = it)
                    -> InAppUpdateType.FLEXIBLE

                    isConditionForImmediateUpdate(appUpdateInfo = it)
                    -> InAppUpdateType.IMMEDIATE

                    else -> InAppUpdateType.NONE
                }
            )
        }.addOnFailureListener {
            onFailure?.invoke(it.message)
        }
    }

    // Adjust condition for flexible update to not always check for updates consecutively
    // when staleness days and/or update priority conditions are consecutively satisfied
    private fun isConditionForFlexibleUpdate(
        appUpdateInfo: AppUpdateInfo
    ) = appUpdateInfo.updateAvailability() == UpdateAvailability.UPDATE_AVAILABLE
            && appUpdateInfo.isUpdateTypeAllowed(AppUpdateType.FLEXIBLE)
            && ((appUpdateInfo.clientVersionStalenessDays ?: 0)
            <= FLEXIBLE_UPDATE_MAX_STALENESS_DAYS)
            && appUpdateInfo.updatePriority <= FLEXIBLE_UPDATE_MAX_PRIORITY

    // Adjust condition for immediate update to not always check for updates consecutively
    // when staleness days and/or update priority conditions are consecutively satisfied
    private fun isConditionForImmediateUpdate(
        appUpdateInfo: AppUpdateInfo
    ) = appUpdateInfo.updateAvailability() == UpdateAvailability.UPDATE_AVAILABLE
            && appUpdateInfo.isUpdateTypeAllowed(AppUpdateType.IMMEDIATE)
            && (((appUpdateInfo.clientVersionStalenessDays ?: 0)
            > FLEXIBLE_UPDATE_MAX_STALENESS_DAYS)
            || appUpdateInfo.updatePriority > FLEXIBLE_UPDATE_MAX_PRIORITY)

    fun checkAndResumeStalledImmediateUpdateIfAny() {
        appUpdateManager.appUpdateInfo.addOnSuccessListener {
            if (it.updateAvailability()
                == UpdateAvailability.DEVELOPER_TRIGGERED_UPDATE_IN_PROGRESS
            ) {
                startUpdate(
                    appUpdateInfo = it,
                    updateType = InAppUpdateType.IMMEDIATE
                )
            }
        }
    }

    fun startUpdate(
        appUpdateInfo: AppUpdateInfo,
        updateType: InAppUpdateType
    ) {
        if (updateType == InAppUpdateType.NONE) {
            return
        }

        var appUpdateType by Delegates.notNull<Int>()
        if (updateType == InAppUpdateType.FLEXIBLE) {
            appUpdateType = AppUpdateType.FLEXIBLE
        } else if (updateType == InAppUpdateType.IMMEDIATE) {
            appUpdateType = AppUpdateType.IMMEDIATE
        }

        appUpdateManager.startUpdateFlowForResult(
            appUpdateInfo,
            activity,
            AppUpdateOptions.newBuilder(
                appUpdateType
            ).build(),
            IN_APP_UPDATE_REQUEST_CODE
        )
    }

    fun listenUpdateState(
        updateType: InAppUpdateType,
        onDownloading: ((bytesDownloaded: Long, totalBytesToDownload: Long) -> Unit)? = null,
        onDownloaded: (() -> Unit)? = null,
        onInstalling: (() -> Unit)? = null,
        onInstalled: (() -> Unit)? = null,
        onFailed: (() -> Unit)? = null,
        onCanceled: (() -> Unit)? = null,
        onPending: (() -> Unit)? = null,
        onUnknown: (() -> Unit)? = null
    ) {
        if (doesNotRequireUpdateStateListenerFor(updateType)) {
            return
        }

        listener = InstallStateUpdatedListener {
            when (it.installStatus) {
                InstallStatus.DOWNLOADING -> {
                    onDownloading?.invoke(
                        it.bytesDownloaded, it.totalBytesToDownload
                    )
                }

                InstallStatus.DOWNLOADED -> {
                    onDownloaded?.invoke()
                }

                InstallStatus.INSTALLING -> {
                    onInstalling?.invoke()
                }

                InstallStatus.INSTALLED -> {
                    onInstalled?.invoke()
                }

                InstallStatus.FAILED -> {
                    onFailed?.invoke()
                }

                InstallStatus.CANCELED -> {
                    onCanceled?.invoke()
                }

                InstallStatus.PENDING -> {
                    onPending?.invoke()
                }

                else -> {
                    onUnknown?.invoke()
                }
            }
        }
    }

    private fun doesNotRequireUpdateStateListenerFor(updateType: InAppUpdateType) =
        updateType == InAppUpdateType.IMMEDIATE || updateType == InAppUpdateType.NONE

    fun registerUpdateStateListener() {
        listener?.let {
            appUpdateManager.registerListener(it)
        }
    }

    fun unregisterUpdateStateListener() {
        listener?.let {
            appUpdateManager.unregisterListener(it)
        }
    }

    fun installFlexibleUpdate() {
        appUpdateManager.completeUpdate()
    }

    @Deprecated(
        message = "Caller should implement listenUpdateState " +
                "appropriately instead of using this method"
    )
    fun handlePendingFlexibleUpdateInstallation(
        onPendingFlexibleUpdateInstallationDetected: (() -> Unit)?,
    ) {
        appUpdateManager.appUpdateInfo.addOnSuccessListener {
            if (it.installStatus == InstallStatus.DOWNLOADED) {
                onPendingFlexibleUpdateInstallationDetected?.invoke()
            }
        }
    }
}