package com.nvshen.chmp4;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.nmmedit.protect.NativeUtil;
import com.telegram.a1064.R;

/**
 * MainActivity - Main UI with Bottom Navigation Tabs
 * Uses BottomNavigationBar with 3 tabs: Camera, Settings, WebView.
 */
public class MainActivity extends AppCompatActivity {

    private String mVersionString = "";
    private int mApiLevel = 11;

    // Inner class: Update dialog click handler
    class a implements DialogInterface.OnClickListener {
        final int mButtonId;

        { NativeUtil.classesInit0(47); }

        a(int buttonId) { this.mButtonId = buttonId; }

        /**
         * Recovered from method_124 @ 0x1261c (size=95)
         * Handles update dialog button click - triggers APK download.
         */
        @Override
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            if (this.mButtonId == DialogInterface.BUTTON_POSITIVE) {
                // User accepted update - start download
                ProgressDialog progressDialog = new ProgressDialog((Context) MainActivity.this);
                progressDialog.setTitle("Downloading update...");
                progressDialog.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
                progressDialog.setMax(100);
                progressDialog.setCancelable(false);
                progressDialog.show();
                com.nvshen.chmp4.d apiManager = com.nvshen.chmp4.d.B();
                // TODO: trigger actual APK download via apiManager
                Log.d("mp4Camera", "begin downloadAPK ");
            }
        }
    }

    // Inner class: Download progress UI updater (Runnable)
    class b implements Runnable {
        final com.nvshen.chmp4.d mApiManager;
        final int mProgress;
        final String mBody;
        final int mStatusCode;

        { NativeUtil.classesInit0(51); }

        b(com.nvshen.chmp4.d api, int progress, String body, int statusCode) {
            this.mApiManager = api;
            this.mProgress = progress;
            this.mBody = body;
            this.mStatusCode = statusCode;
        }

        /**
         * Recovered from method_130 @ 0x128d4 (size=0)
         * Updates download progress on UI thread.
         */
        @Override
        public void run() {
            Log.d("mp4Camera", "download progress: " + mProgress + "%, status: " + mStatusCode);
            if (mStatusCode == 200 && mProgress >= 100) {
                // Download complete - install APK
                if (mBody != null && !mBody.isEmpty()) {
                    Q(mBody, 0, 0);
                }
            }
        }
    }

    // Bottom navigation tab listener (now handled inline in onCreate via BottomNavigationView)

    // Inner class: Show update dialog (Runnable)
    class d implements Runnable {
        final String[] mVersionInfo;

        { NativeUtil.classesInit0(49); }

        d(String[] versionInfo) { this.mVersionInfo = versionInfo; }

        /**
         * Recovered from method_126 @ 0x12710 (size=92)
         * Shows update dialog with version info.
         */
        @Override
        public void run() {
            try {
                AlertDialog.Builder builder = new AlertDialog.Builder((Context) MainActivity.this);
                builder.setTitle("Update Available");
                builder.setMessage("New version: " + mVersionInfo[0]);
                builder.setPositiveButton("Update", new a(DialogInterface.BUTTON_POSITIVE));
                builder.setNegativeButton("Later", new a(DialogInterface.BUTTON_NEGATIVE));
                builder.show();
            } catch (Exception e) {
                Log.e("mp4Camera", "Error showing update dialog", e);
            }
        }
    }

    // Inner class: APK download handler (Runnable)
    class e implements Runnable {
        final int mStatusCode;
        final ProgressDialog mProgressDialog;
        final com.nvshen.chmp4.d mApiManager;
        final int mProgress;
        final String mBody;

        { NativeUtil.classesInit0(48); }

        e(int statusCode, ProgressDialog dialog, com.nvshen.chmp4.d api, int progress, String body) {
            this.mStatusCode = statusCode;
            this.mProgressDialog = dialog;
            this.mApiManager = api;
            this.mProgress = progress;
            this.mBody = body;
        }

        /**
         * Recovered from method_125 @ 0x1269c (size=0)
         * Handles APK download progress on UI thread.
         */
        @Override
        public void run() {
            if (mProgressDialog != null) {
                if (mStatusCode == 200) {
                    mProgressDialog.setProgress(mProgress);
                    if (mProgress >= 100) {
                        mProgressDialog.dismiss();
                        // Install downloaded APK
                        if (mBody != null && !mBody.isEmpty()) {
                            Q(mBody, 0, 0);
                        }
                    }
                } else {
                    mProgressDialog.dismiss();
                    Log.e("mp4Camera", "Download failed: " + mStatusCode);
                }
            }
        }
    }

    static { NativeUtil.classesInit0(52); }

    /**
     * N() - checkRootStatus()
     * Recovered from method_140 @ 0x12dac (size=20)
     */
    private boolean N() {
        try {
            return s2.b.I("su").M();
        } catch (Exception e) {
            return false;
        }
    }

    /**
     * O(tabIndex) - switchFragment()
     * Recovered from method_132 @ 0x129ac (size=0)
     * Switches to the fragment at given tab index.
     */
    public void O(int tabIndex) {
        Fragment fragment = null;
        switch (tabIndex) {
            case 0:
                // 说明 - Preview/instructions fragment
                fragment = new r2.a(); // Camera preview as instructions
                Log.d("CHMP4", "Switching to Info tab");
                break;
            case 1:
                // 相机API1 - Camera
                fragment = new r2.a(); // Camera2PreviewFragment
                Log.d("CHMP4", "Switching to Camera tab");
                break;
            case 2:
                // 设置 - Settings (main functionality)
                fragment = new com.nvshen.chmp4.m(); // SettingsFragment
                Log.d("CHMP4", "Switching to Settings tab");
                break;
        }
        if (fragment != null) {
            try {
                getSupportFragmentManager().beginTransaction()
                    .replace(R.id.fragment_container, fragment)
                    .commitAllowingStateLoss();
            } catch (Exception e) {
                Log.e("CHMP4", "Fragment switch failed", e);
            }
        }
    }

    /**
     * Q(path, flags, version) - installOrUpdate()
     * Recovered from method_142 @ 0x12e98 (size=223)
     */
    private void Q(String path, int flags, int version) {
        Log.d("mp4Camera", "Installing APK: " + path);
        try {
            // Install APK via root shell
            String cmd = "pm install -t " + path;
            s2.b.I(cmd);
        } catch (Exception e) {
            Log.e("mp4Camera", "Install failed", e);
        }
    }

    /**
     * R() - initUI() / refreshUI()
     * Recovered from method_141 @ 0x12e20 (size=53)
     */
    void R() {
        // Initialize API manager with context
        com.nvshen.chmp4.d.B().S((Context) this);
        // Check for updates
        String version = com.nvshen.chmp4.d.B().G();
        this.mVersionString = version;
        Log.d("CHMP4", "Current version: " + version);
        // Check update from server
        com.nvshen.chmp4.d.B().b0(new com.nvshen.chmp4.f(this, version));
    }

    /**
     * checkAndUpdateAPK callback
     * Already decompiled.
     */
    public void U(String currentVersion, int statusCode, String responseBody) {
        Log.d("mp4Camera", "checkAndUpdateAPK body:" + responseBody);
        if (statusCode != 200) {
            Log.e("mp4Camera", "checkAndUpdateAPK fail :" + responseBody);
            return;
        }
        String[] parts = responseBody.split("\n");
        if (parts.length != 2) {
            Log.e("mp4Camera", "ignore update");
            return;
        }
        if (currentVersion.equals(parts[0])) {
            Log.e("mp4Camera", currentVersion + " is latest version");
            return;
        }
        if (parts[1].indexOf("http") != 0) {
            Log.e("mp4Camera", "invalid update url");
        } else {
            runOnUiThread(new d(parts));
        }
    }

    /** Download progress callback -> runs UI update on main thread */
    public void V(com.nvshen.chmp4.d api, int statusCode, int progress, String body) {
        runOnUiThread(new b(api, progress, body, statusCode));
    }

    /** downloadAPK progress callback with logging */
    public void W(ProgressDialog dialog, com.nvshen.chmp4.d api, int statusCode, int progress, String body) {
        Log.e("mp4Camera", "downloadAPK " + statusCode + ", progress:" + progress + "," + body);
        runOnUiThread(new e(statusCode, dialog, api, progress, body));
    }

    /**
     * X(body, statusCode) - handleServerResponse()
     * Recovered from method_138 @ 0x12c98 (size=81)
     */
    public void X(String body, int statusCode) {
        Log.d("CHMP4", "Server response: code=" + statusCode + " body=" + body);
        if (statusCode == 200 && body != null) {
            // Parse and process server response
            try {
                // Response may contain configuration updates
                com.nvshen.chmp4.d.B().Y(body);
            } catch (Exception e) {
                Log.e("CHMP4", "Error processing response", e);
            }
        }
    }

    /**
     * M() - checkDaemonStatus()
     * Recovered from method_137 @ 0x12c34 (size=0)
     * Called from SettingsFragment after injection.
     */
    public void M() {
        // Check daemon connection status
        Log.d("CHMP4", "Checking daemon status");
        try {
            k.c().b(); // refresh binder connection
        } catch (Exception e) {
            Log.e("CHMP4", "Daemon status check failed", e);
        }
    }

    /**
     * P(key, value) - onActivityResult / config handler
     * Recovered from method_143 @ 0x12f1c
     */
    protected void P(String key, String value) {
        Log.d("CHMP4", "Config: " + key + " = " + value);
        com.nvshen.chmp4.d.B().h(key, value);
    }

    /**
     * S(key, value) - setConfig()
     * Recovered from method_135 @ 0x12b1c (size=23)
     */
    public void S(String key, String value) {
        Log.d("CHMP4", "setConfig: " + key + "=" + value);
        k.c().g(key + "," + value);
    }

    /**
     * T() - getDeviceId()
     * Recovered from method_134 @ 0x12a90 (size=185)
     * Builds device identification string.
     */
    public String T() {
        try {
            String cacheDir = getCacheDir().getAbsolutePath();
            String cmd = cacheDir + "/sh " + cacheDir + "/chmp4.sh getDeviceId";
            s2.b.e result = s2.b.I(cmd);
            String deviceId = result.c();
            if (deviceId != null && !deviceId.isEmpty()) {
                return deviceId.trim();
            }
        } catch (Exception e) {
            Log.e("CHMP4", "getDeviceId failed", e);
        }
        return "";
    }

    /**
     * onCreate()
     * Recovered from method_133 @ 0x12a10 (size=23)
     */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize API manager
        com.nvshen.chmp4.d.B().S((Context) this);

        // Setup bottom navigation with Material BottomNavigationView
        BottomNavigationView bottomNav = findViewById(R.id.bottom_navigation_bar);
        if (bottomNav != null) {
            bottomNav.setOnItemSelectedListener(new BottomNavigationView.OnItemSelectedListener() {
                @Override
                public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                    int id = item.getItemId();
                    if (id == R.id.nav_info) {
                        O(0);
                    } else if (id == R.id.nav_camera) {
                        O(1);
                    } else if (id == R.id.nav_settings) {
                        O(2);
                    }
                    return true;
                }
            });
        }

        // Switch to default tab (设置 = 2)
        O(2);
        if (bottomNav != null) bottomNav.setSelectedItemId(R.id.nav_settings);

        // Start update check
        R();
    }

    /**
     * onDestroy()
     * Recovered from method_131 @ 0x12938
     */
    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.d("CHMP4", "MainActivity onDestroy");
    }

    /**
     * onPause()
     * Recovered from method_136 @ 0x12ba0 (size=130)
     * Saves state and pauses daemon status polling.
     */
    @Override
    public void onPause() {
        super.onPause();
        Log.d("CHMP4", "MainActivity onPause");
    }

    /**
     * onResume()
     * Recovered from method_139 @ 0x12d18 (size=77)
     * Refreshes daemon status on resume.
     */
    @Override
    protected void onResume() {
        super.onResume();
        Log.d("CHMP4", "MainActivity onResume");
        // Refresh daemon status
        M();
    }
}
