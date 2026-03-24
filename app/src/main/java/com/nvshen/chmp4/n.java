package com.nvshen.chmp4;

import android.util.Log;
import android.widget.TextView;
import com.nmmedit.protect.NativeUtil;
import com.nvshen.chmp4.d;
import com.nvshen.chmp4.m;

/**
 * CallbackN - Activation Result Display Handler
 * Updates activation status text after license activation.
 */
public final class n implements d.f {

    public final m.q mActivationHandler;
    public final TextView mStatusTextView;

    static { NativeUtil.classesInit0(32); }

    public n(m.q activationHandler, TextView statusTextView) {
        this.mActivationHandler = activationHandler;
        this.mStatusTextView = statusTextView;
    }

    /**
     * Recovered from method_99 @ 0x11a30 (size=196)
     * Updates activation status display based on result code.
     */
    @Override
    public final void a(int resultCode) {
        Log.d("CHMP4", "Activation result: " + resultCode);
        if (this.mActivationHandler != null) {
            this.mActivationHandler.b(this.mStatusTextView, resultCode);
        }
    }
}
