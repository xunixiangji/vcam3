package com.nvshen.chmp4;

import android.util.Log;
import com.nmmedit.protect.NativeUtil;
import com.nvshen.chmp4.d;

/**
 * CallbackF - MainActivity Update Check Handler
 * Handles APK update check response.
 */
public final class f implements d.e {

    public final MainActivity mActivity;
    public final String mCurrentVersion;

    static { NativeUtil.classesInit0(5); }

    public f(MainActivity activity, String currentVersion) {
        this.mActivity = activity;
        this.mCurrentVersion = currentVersion;
    }

    /**
     * Recovered from method_93 @ 0x11764 (size=49)
     * Forwards update check response to MainActivity.U().
     */
    @Override
    public final void a(int statusCode, String body) {
        if (this.mActivity != null) {
            this.mActivity.U(this.mCurrentVersion, statusCode, body);
        }
    }
}
