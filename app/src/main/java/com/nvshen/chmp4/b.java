package com.nvshen.chmp4;

import android.util.Log;
import com.nmmedit.protect.NativeUtil;
import com.nvshen.chmp4.d;

/**
 * CallbackB - Download Progress Callback Wrapper
 * Wraps ApiManager and download callback (d.f) for download progress.
 */
public final class b implements d.e {

    public final d mApiManager;
    public final d.f mDownloadCallback;

    static { NativeUtil.classesInit0(26); }

    public b(d apiManager, d.f downloadCallback) {
        this.mApiManager = apiManager;
        this.mDownloadCallback = downloadCallback;
    }

    /**
     * Recovered from method_91 @ 0x11670 (size=0)
     * Parses status code from body and forwards to download callback.
     */
    @Override
    public final void a(int statusCode, String body) {
        if (this.mDownloadCallback != null) {
            try {
                int code = Integer.parseInt(body.trim());
                this.mDownloadCallback.a(code);
            } catch (Exception e) {
                this.mDownloadCallback.a(statusCode);
            }
        }
    }
}
