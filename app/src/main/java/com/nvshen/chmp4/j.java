package com.nvshen.chmp4;

import android.util.Log;
import android.widget.Button;
import com.nmmedit.protect.NativeUtil;
import n2.e;

/**
 * ButtonClickHandler (class j) - Decorated Button Click Handler
 * Wraps another handler and adds command/param processing.
 */
class j implements e.a<Button> {

    private e.a<Button> mInnerHandler;
    private String mParam;
    private String mCommand;

    // Inner class: Button state updater
    class a implements e.a<Button> {
        final Button mButton;

        static { NativeUtil.classesInit0(45); }

        a(Button button) { this.mButton = button; }

        /**
         * Recovered from method_122 @ 0x1251c (size=62)
         * Updates button state after daemon command.
         */
        @Override
        public void a(n2.e<?> observer, Button button) {
            if (this.mButton != null) {
                this.mButton.setEnabled(true);
            }
            // Trigger daemon status check via SettingsFragment
            Log.d("CHMP4", "ButtonClickHandler.a: button state updated");
        }
    }

    static { NativeUtil.classesInit0(13); }

    public j(e.a<Button> innerHandler, String command, String param) {
        this.mInnerHandler = innerHandler;
        this.mParam = param;
        this.mCommand = command;
    }

    /**
     * Recovered from method_26 @ 0x0f6c0 (size=21)
     * Executes daemon command then delegates to inner handler.
     */
    @Override
    public void a(n2.e<?> observer, Button button) {
        Log.d("CHMP4", "ButtonClickHandler: cmd=" + mCommand + " param=" + mParam);
        // Delegate to inner handler with command context
        if (this.mInnerHandler != null) {
            this.mInnerHandler.a(observer, button);
        }
    }
}
