package r2;

import android.widget.TextView;

/**
 * StatusUpdateRunnable (r2.l) - Settings Status UI Update Runnable
 * Runs on the UI thread to update the license expiration status display.
 */
public final class l implements Runnable {

    public final com.nvshen.chmp4.m mSettingsFragment;
    public final TextView mStatusTextView;

    public l(com.nvshen.chmp4.m settingsFragment, TextView textView) {
        this.mSettingsFragment = settingsFragment;
        this.mStatusTextView = textView;
    }

    @Override
    public final void run() {
        this.mSettingsFragment.w1(this.mStatusTextView);
    }
}
