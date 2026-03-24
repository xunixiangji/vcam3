package com.nvshen.chmp4;

import android.app.Application;
import com.nmmedit.protect.NativeUtil;

/**
 * MyApplication - matches original demo exactly
 * Only initializes ApiManager with context, NO shell commands here.
 * Shell commands happen later in SplashActivity after files are copied.
 */
public class MyApplication extends Application {

    static { NativeUtil.classesInit0(40); }

    @Override
    public void onCreate() {
        super.onCreate();
        // Only initialize ApiManager with context and load SharedPreferences
        // Do NOT execute any shell commands here - cache files don't exist yet
        d.B().S(this);
    }

    public void a(String deviceId) {
        d.B().W(deviceId);
    }
}
