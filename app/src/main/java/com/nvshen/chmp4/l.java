package com.nvshen.chmp4;

import android.util.Log;
import android.view.View;
import com.nmmedit.protect.NativeUtil;
import com.nvshen.chmp4.d;

/**
 * CallbackL - Daemon Command Completion Handler
 * Updates SettingsFragment UI after daemon command finishes.
 */
public final class l implements d.g {

    public final m mSettingsFragment;
    public final View mView;

    static { NativeUtil.classesInit0(9); }

    public l(m settingsFragment, View view) {
        this.mSettingsFragment = settingsFragment;
        this.mView = view;
    }

    /**
     * Recovered from method_10 @ 0x0eed4 (size=174)
     * Refreshes settings UI after daemon operation completes.
     */
    @Override
    public final void a() {
        Log.d("CHMP4", "Daemon command completed, refreshing UI");
        if (this.mSettingsFragment != null) {
            try {
                // Refresh status after daemon command
                this.mSettingsFragment.A1();
                // Update video list
                this.mSettingsFragment.B1();
                // Check if MainActivity is available for status update
                if (this.mSettingsFragment.getActivity() instanceof MainActivity) {
                    ((MainActivity) this.mSettingsFragment.getActivity()).M();
                }
            } catch (Exception e) {
                Log.e("CHMP4", "Error refreshing after daemon completion", e);
            }
        }
    }
}
