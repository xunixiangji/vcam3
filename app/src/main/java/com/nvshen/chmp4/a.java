package com.nvshen.chmp4;

import android.util.Log;
import com.nmmedit.protect.NativeUtil;
import com.nvshen.chmp4.d;

/**
 * CallbackA - HTTP Response Callback Wrapper
 * Chains through ApiManager then forwards to inner callback.
 */
public final class a implements d.e {

    public final d mApiManager;
    public final d.e mInnerCallback;

    static { NativeUtil.classesInit0(18); }

    public a(d apiManager, d.e innerCallback) {
        this.mApiManager = apiManager;
        this.mInnerCallback = innerCallback;
    }

    /**
     * Recovered from method_6 @ 0x0ec94 (size=41)
     * Forwards response to inner callback after processing.
     */
    @Override
    public final void a(int statusCode, String body) {
        if (this.mInnerCallback != null) {
            this.mInnerCallback.a(statusCode, body);
        }
    }
}
