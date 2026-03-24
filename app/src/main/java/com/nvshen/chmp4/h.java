package com.nvshen.chmp4;

import android.app.ProgressDialog;
import android.util.Log;
import com.nmmedit.protect.NativeUtil;

/**
 * CallbackH - Shell Command Result Handler
 * Dismisses progress dialog when shell command completes.
 */
public final class h implements s2.b.f {

    public final ProgressDialog mProgressDialog;

    static { NativeUtil.classesInit0(0); }

    public h(ProgressDialog progressDialog) {
        this.mProgressDialog = progressDialog;
    }

    /**
     * Recovered from method_0 @ 0x0e8d8
     * Dismisses progress dialog on shell result.
     */
    @Override
    public final void a(s2.b.e shellResult) {
        try {
            if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
                this.mProgressDialog.dismiss();
            }
        } catch (Exception e) {
            Log.e("CHMP4", "Error dismissing dialog", e);
        }
    }
}
