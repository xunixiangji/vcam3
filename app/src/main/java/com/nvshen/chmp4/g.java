package com.nvshen.chmp4;

import android.app.ProgressDialog;
import android.util.Log;
import com.nmmedit.protect.NativeUtil;
import com.nvshen.chmp4.d;

/**
 * CallbackG - APK Download Progress Handler
 * Handles download progress for APK updates with UI progress dialog.
 */
public final class g implements d.h {

    public final MainActivity mActivity;
    public final ProgressDialog mProgressDialog;
    public final d mApiManager;

    static { NativeUtil.classesInit0(7); }

    public g(MainActivity activity, ProgressDialog dialog, d apiManager) {
        this.mActivity = activity;
        this.mProgressDialog = dialog;
        this.mApiManager = apiManager;
    }

    /**
     * Recovered from method_8 @ 0x0edac (size=69)
     * Forwards download progress to MainActivity.W() for UI update.
     */
    @Override
    public final void a(int statusCode, int progress, String body) {
        if (this.mActivity != null) {
            this.mActivity.W(this.mProgressDialog, this.mApiManager, statusCode, progress, body);
        }
    }
}
