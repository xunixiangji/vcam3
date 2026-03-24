package com.nvshen.chmp4;

import android.app.Application;
import android.os.Build;
import android.provider.Settings;

import com.nmmedit.protect.NativeUtil;

/**
 * MyApplication - RESTORED FROM nmmp BYTECODE
 */
public class MyApplication extends Application {

    static { NativeUtil.classesInit0(40); }

    @Override
    public void onCreate() {
        super.onCreate();
        // Initialize ApiManager
        d.B().S(this);
        // Set device ID
        String deviceId = Settings.Secure.getString(getContentResolver(), Settings.Secure.ANDROID_ID);
        d.B().W(deviceId);
    }

    public void a(String deviceId) {
        d.B().W(deviceId);
    }
}
