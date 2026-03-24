package com.nvshen.chmp4;

import android.util.Log;
import com.nmmedit.protect.NativeUtil;
import com.nvshen.chmp4.d;

/**
 * CallbackE - MainActivity Response Handler
 * Handles API response in context of MainActivity.
 */
public final class e implements d.e {

    public final MainActivity mActivity;
    public final d mApiManager;
    public final int mRequestType;

    static { NativeUtil.classesInit0(24); }

    public e(MainActivity activity, d apiManager, int requestType) {
        this.mActivity = activity;
        this.mApiManager = apiManager;
        this.mRequestType = requestType;
    }

    /**
     * Recovered from method_42 @ 0x0ff38 (size=0)
     * Forwards response to MainActivity.X() for processing.
     */
    @Override
    public final void a(int statusCode, String body) {
        if (this.mActivity != null) {
            this.mActivity.X(body, statusCode);
        }
    }
}
