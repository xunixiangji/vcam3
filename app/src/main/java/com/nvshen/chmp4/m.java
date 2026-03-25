package com.nvshen.chmp4;

import android.Manifest;
import android.app.Activity;
import android.app.Application;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;
import com.telegram.a1064.R;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import n2.e;

/**
 * SettingsFragment (class m) - FULLY RESTORED FROM nmmp BYTECODE
 * Main Settings & Control Panel
 *
 * Handles license activation, daemon injection, video selection,
 * proxy configuration, camera hook control, QR code generation.
 */
public class m extends Fragment {

    public static String TAG = "SettingsFragment";
    public static n2.e<?> sButtonObserver;
    Handler mHandler = new Handler();
    Runnable mStatusChecker = new k();

    // DEMO CONFIRMED: adaptive retry - if binder not found after injection, auto-retry once
    boolean mInjectionDone = false;
    boolean mRetryDone = false;

    // ===== Inner class: "Start/Inject" button click =====
    class a implements View.OnClickListener {
        a() {}

        @Override
        public void onClick(View view) {
            Log.d(TAG, "click ----------------------");
            Activity act = getActivity();
            if (act != null) {
                Application app = act.getApplication();
                h handler = new h(app, act);
                handler.a(null, null);
            } else {
                r1();
            }
        }
    }

    // ===== Inner class: File picker callback =====
    class b implements j2.h {
        final Activity mActivity;
        b(Activity activity) { this.mActivity = activity; }

        @Override
        public void a(List<String> files, boolean success) {
            if (files != null && !files.isEmpty()) {
                String filePath = files.get(0);
                Log.d(TAG, "mp4 file " + filePath);
                com.nvshen.chmp4.d.B().P(filePath);
                B1();
            }
        }

        @Override
        public void b(List<String> files, boolean cancelled) {
            Log.d(TAG, "File selection cancelled");
        }
    }

    // ===== Inner class: Wrapper button handler =====
    class c implements e.a<Button> {
        final e.a mInnerHandler;
        c(e.a handler) { this.mInnerHandler = handler; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            if (mInnerHandler != null) {
                mInnerHandler.a(observer, button);
            }
        }
    }

    // ===== Inner class: "Stop daemon" button =====
    class d implements e.a<Button> {
        d() {}

        @Override
        public void a(n2.e<?> observer, Button button) {
            Log.d(TAG, "button_stop_player ");
            s1();
        }
    }

    // ===== Inner class: "Kill cameraserver" button =====
    class MInnerE implements e.a<Button> {
        MInnerE() {}

        /**
         * Recovered from method_3 @ 0x0eae8 (size=111)
         * Builds resetCamera command: "%s /system/bin/sh %s/chmp4.sh resetCamera"
         * Executes via s2.b.I() (root shell)
         */
        @Override
        public void a(n2.e<?> observer, Button button) {
            Log.d(TAG, "BINDER");
            try {
                final Context ctx = getActivity();
                if (ctx == null) return;
                final String cacheDir = ctx.getCacheDir().getAbsolutePath();
                // s2.b.I() already wraps in su shell, no su prefix needed
                final String cdir = cacheDir.replace("/data/user/0/", "/data/data/");
                final String cmd = String.format("%s/sh %s/chmp4.sh resetCamera", cdir, cdir);
                Log.d("CHMP4PREVIEWFORMAT", cmd);
                // Run on background thread to avoid ANR
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        s2.b.I(cmd);
                        if (getActivity() != null) {
                            getActivity().runOnUiThread(new Runnable() {
                                @Override
                                public void run() { A1(); }
                            });
                        }
                    }
                }).start();
            } catch (Exception ex) {
                Log.e(TAG, "resetCamera failed", ex);
            }
        }
    }

    // ===== Inner class: "Video select" button =====
    class f implements e.a<Button> {
        final Activity mActivity;
        f(Activity activity) { this.mActivity = activity; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            try {
                // Refresh video list from filesystem
                B1();
                Log.d(TAG, "Video list refreshed");
            } catch (Exception ex) {
                Log.e(TAG, "File picker failed", ex);
            }
        }
    }

    // ===== Inner class: "Settings" button =====
    class g implements e.a<Button> {
        final Activity mActivity;
        g(Activity activity) { this.mActivity = activity; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            try {
                // Open settings - navigate to app settings
                Intent intent = new Intent(android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
                intent.setData(Uri.parse("package:" + mActivity.getPackageName()));
                mActivity.startActivity(intent);
            } catch (Exception ex) {
                Log.e(TAG, "Settings button failed", ex);
            }
        }
    }

    // ===== Inner class: "Inject hook" button (MOST IMPORTANT) =====
    class h implements e.a<Button> {
        final Application mApp;
        final Activity mActivity;

        // Sub-handler: "Set SELinux context" (chcon on .so files)
        class MInnerHA implements e.a<Button> {
            final Context mContext;
            MInnerHA(Context context) { this.mContext = context; }

            @Override
            public void a(n2.e<?> observer, Button button) {
                Log.d(TAG, "selinux ");
                try {
                    String cacheDir = mContext.getCacheDir().getAbsolutePath();
                    s2.b.I("chcon u:object_r:system_file:s0 " + cacheDir + "/libCHMP4.so");
                    s2.b.I("chcon u:object_r:system_file:s0 " + cacheDir + "/libhookProxy.so");
                    s2.b.I("chcon u:object_r:system_file:s0 " + cacheDir + "/libshadowhook.so");
                    s2.b.I("chcon u:object_r:system_file:s0 " + cacheDir + "/CHMP4");
                } catch (Exception ex) {
                    Log.e(TAG, "chcon failed", ex);
                }
            }
        }

        // Sub-handler: "Copy files to target directory"
        class MInnerHB implements e.a<Button> {
            MInnerHB() {}

            @Override
            public void a(n2.e<?> observer, Button button) {
                Log.d(TAG, "Copying hook files");
                try {
                    Context ctx = mActivity;
                    String cacheDir = ctx.getCacheDir().getAbsolutePath();
                    // Copy native binaries from assets to cache dir
                    // Asset filenames have suffix: CHMP4-1364 (64bit) or CHMP4-1032 (32bit)
                    String abi = Build.CPU_ABI;
                    boolean is64 = abi.contains("64");
                    String binDir = is64 ? "bin64" : "bin";
                    String suffix = is64 ? "-1364" : "-1032";
                    String[][] fileMap = {
                        {binDir + "/CHMP4" + suffix, "CHMP4"},
                        {binDir + "/libCHMP4" + suffix + ".so", "libCHMP4.so"},
                        {binDir + "/libhookProxy" + suffix + ".so", "libhookProxy.so"},
                        {binDir + "/libshadowhook" + suffix + ".so", "libshadowhook.so"},
                        {"chmp4.sh", "chmp4.sh"},
                        {"sh", "sh"},
                    };
                    // Delete old files first (may be root-owned from previous copy)
                    for (String[] entry : fileMap) {
                        s2.b.I("rm -f " + cacheDir + "/" + entry[1]);
                    }

                    for (String[] entry : fileMap) {
                        try {
                            java.io.InputStream is = ctx.getAssets().open(entry[0]);
                            java.io.FileOutputStream fos = new java.io.FileOutputStream(cacheDir + "/" + entry[1]);
                            byte[] buffer = new byte[8192];
                            int len;
                            while ((len = is.read(buffer)) != -1) {
                                fos.write(buffer, 0, len);
                            }
                            fos.close();
                            is.close();
                            Log.d(TAG, "copied " + entry[0] + " -> " + entry[1]);
                        } catch (Exception ex) {
                            Log.e(TAG, "copyDown err " + entry[0], ex);
                        }
                    }
                    // Make executable
                    s2.b.I("chmod +x " + cacheDir + "/sh");
                    s2.b.I("chmod +x " + cacheDir + "/CHMP4");
                    s2.b.I("chmod +x " + cacheDir + "/chmp4.sh");
                } catch (Exception ex) {
                    Log.e(TAG, "Copy files failed", ex);
                }
            }
        }

        h(Application app, Activity activity) {
            this.mApp = app;
            this.mActivity = activity;
        }

        /**
         * Triggers injection — directly calls r1()
         * LOGCAT CONFIRMED: demo does NOT re-copy files on inject button click.
         * Our logcat shows MInnerHB "rm -f cache/CHMP4" overwrites SplashActivity's
         * path-replaced chmp4.sh, causing exit code 10.
         * Demo logcat (A13): no "Copying hook files" or "rm -f" during injection.
         * Files are already copied by SplashActivity.os12copyfile() at startup.
         */
        @Override
        public void a(final n2.e<?> observer, final Button button) {
            Log.d(TAG, "button_start_player");
            r1();
        }
    }

    // ===== Inner class: "Activate license" button =====
    class MInnerI implements e.a<Button> {
        final Activity mActivity;
        MInnerI(Activity activity) { this.mActivity = activity; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            Log.d(TAG, "Activate license clicked");
            // Navigate to activation screen or show dialog
        }
    }

    // ===== Inner class: "Register device" button =====
    class j implements e.a<Button> {
        final Activity mActivity;
        j(Activity activity) { this.mActivity = activity; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            Log.d(TAG, "Register device clicked");
        }
    }

    // ===== Inner class: Status polling timer =====
    class k implements Runnable {
        k() {}

        /**
         * Recovered from method_40 @ 0x0fe50 (size=22)
         * Periodically polls daemon status and updates UI.
         * Posts itself again with 3000ms delay.
         */
        @Override
        public void run() {
            try {
                A1(); // refreshStatus
            } catch (Exception ex) {
                Log.e(TAG, "Status poll failed", ex);
            }
            mHandler.postDelayed(mStatusChecker, 2000);  // DEMO: polls every ~2 seconds
        }
    }

    // ===== Inner class: "Check update" button =====
    class l implements e.a<Button> {
        final Activity mActivity;
        l(Activity activity) { this.mActivity = activity; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            Log.d(TAG, "checkAndUpdateAPK ");
            if (mActivity instanceof MainActivity) {
                // Trigger update check via MainActivity
                com.nvshen.chmp4.d api = com.nvshen.chmp4.d.B();
                api.b0(new com.nvshen.chmp4.d.e() {
                    @Override
                    public void a(int statusCode, String body) {
                        Log.d(TAG, "check update: " + statusCode + " " + body);
                    }
                });
            }
        }
    }

    // ===== Inner class: "Reset/Clear" button =====
    class C0038m implements e.a<Button> {
        C0038m() {}

        @Override
        public void a(n2.e<?> observer, Button button) {
            Log.d(TAG, "Reset clicked");
            s1(); // stop daemon
            A1(); // refresh status
        }
    }

    // ===== Inner class: QR code ImageView click =====
    class n implements e.a<ImageView> {
        n() {}

        @Override
        public void a(n2.e<?> observer, ImageView imageView) {
            // Enlarge QR code or copy device ID
            Log.d(TAG, "QR code clicked");
            try {
                Context ctx = getActivity();
                if (ctx != null) {
                    String deviceId = com.nvshen.chmp4.d.B().s();
                    ClipboardManager clipboard = (ClipboardManager) ctx.getSystemService(Context.CLIPBOARD_SERVICE);
                    if (clipboard != null) {
                        clipboard.setPrimaryClip(ClipData.newPlainText("DeviceID", deviceId));
                    }
                }
            } catch (Exception ex) {
                Log.e(TAG, "QR click failed", ex);
            }
        }
    }

    // ===== Inner class: "Copy device ID" button =====
    class o implements View.OnClickListener {
        o() {}

        @Override
        public void onClick(View view) {
            try {
                Context ctx = view.getContext();
                String deviceInfo = t1(ctx);
                ClipboardManager clipboard = (ClipboardManager) ctx.getSystemService(Context.CLIPBOARD_SERVICE);
                if (clipboard != null) {
                    clipboard.setPrimaryClip(ClipData.newPlainText("DeviceID", deviceInfo));
                }
                com.nvshen.chmp4.d.B().Y("Copied");
            } catch (Exception ex) {
                Log.e(TAG, "Copy failed", ex);
            }
        }
    }

    // ===== Inner class: "Share" button =====
    class p implements View.OnClickListener {
        p() {}

        @Override
        public void onClick(View view) {
            try {
                Context ctx = view.getContext();
                String deviceInfo = t1(ctx);
                Intent intent = new Intent(Intent.ACTION_SEND);
                intent.setType("text/plain");
                intent.putExtra(Intent.EXTRA_TEXT, deviceInfo);
                ctx.startActivity(Intent.createChooser(intent, "Share"));
            } catch (Exception ex) {
                Log.e(TAG, "Share failed", ex);
            }
        }
    }

    // ===== Inner class: "Activate code" submit =====
    class q implements View.OnClickListener {
        final EditText mCodeInput;
        final TextView mStatusText;

        // Sub-class: Updates activation result text on UI thread
        class QInnerA implements Runnable {
            final int mResultCode;
            final TextView mTextView;
            QInnerA(int resultCode, TextView textView) {
                this.mResultCode = resultCode;
                this.mTextView = textView;
            }

            @Override
            public void run() {
                if (mTextView == null) return;
                if (mResultCode == 200) {
                    mTextView.setText(m.this.getString(R.string.activate_success));
                    mTextView.setTextColor(0xFF00FF00); // green
                    // Refresh expiration display
                    w1(mTextView);
                } else {
                    mTextView.setText(m.this.getString(R.string.activate_fail) + " " + mResultCode);
                    mTextView.setTextColor(0xFFFF0000); // red
                }
            }
        }

        q(EditText codeInput, TextView statusText) {
            this.mCodeInput = codeInput;
            this.mStatusText = statusText;
        }

        /** Activation callback -> updates UI on result */
        public void b(TextView textView, int resultCode) {
            Activity activity = getActivity();
            if (activity != null) {
                activity.runOnUiThread(new QInnerA(resultCode, textView));
            }
        }

        @Override
        public void onClick(View view) {
            if (mCodeInput == null) return;
            String code = mCodeInput.getText().toString().trim();
            if (code.length() == 0) return;

            com.nvshen.chmp4.d.B().f(code, new com.nvshen.chmp4.d.f() {
                @Override
                public void a(int resultCode) {
                    b(mStatusText, resultCode);
                }
            });
        }
    }

    // ===== Inner class: "Open website" button =====
    class r implements View.OnClickListener {
        final Context mContext;
        r(Context context) { this.mContext = context; }

        @Override
        public void onClick(View view) {
            try {
                String url = com.nvshen.chmp4.d.B().o();
                Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
                mContext.startActivity(intent);
            } catch (Exception ex) {
                Log.e(TAG, "Open website failed", ex);
            }
        }
    }

    // ===== Inner class: "Refresh" button =====
    class s implements View.OnClickListener {
        s() {}

        @Override
        public void onClick(View view) {
            A1(); // refreshStatus
            B1(); // updateVideoList
        }
    }

    // ===== Inner class: Toggle switch (auto-inject / float window) =====
    class t implements CompoundButton.OnCheckedChangeListener {
        t() {}

        @Override
        public void onCheckedChanged(CompoundButton button, boolean isChecked) {
            Log.d(TAG, "onCheeck " + isChecked);
            // Save preference for auto-inject
            Context ctx = button.getContext();
            if (ctx != null) {
                SharedPreferences.Editor editor = ctx.getSharedPreferences("CHMP4", Context.MODE_PRIVATE).edit();
                editor.putInt("switch_float", isChecked ? 1 : 0);
                editor.commit();
            }
        }
    }

    // ===== Inner class: Toggle switch (su type) =====
    class u implements CompoundButton.OnCheckedChangeListener {
        u() {}

        /**
         * Recovered from method_106 @ 0x11d88 (size=392)
         * Handles su toggle - switches between built-in su and custom su path
         * When toggled ON: executes toggleSu via shell script
         * Also reads checkSu exit code (252=su exists, 251=nvsu only, 250=none)
         */
        @Override
        public void onCheckedChanged(CompoundButton button, boolean isChecked) {
            Log.d(TAG, "onCheeck su " + isChecked);
            Context ctx = button.getContext();
            if (ctx == null) return;
            String cacheDir = ctx.getCacheDir().getAbsolutePath();

            if (isChecked) {
                // Enable su via toggleSu - no su prefix, s2.b.I() wraps in su
                String cmd = String.format("/system/bin/sh %s/chmp4.sh toggleSu", cacheDir);
                s2.b.I(cmd);
            } else {
                // Disable su
                String cmd = String.format("/system/bin/sh %s/chmp4.sh toggleSu", cacheDir);
                s2.b.I(cmd);
            }

            // Check su status
            String checkCmd = String.format("/system/bin/sh %s/chmp4.sh checkSu", cacheDir);
            s2.b.e result = s2.b.I(checkCmd);
            int exitCode = result.a();
            Log.d(TAG, "checkSu exit: " + exitCode);

            SharedPreferences.Editor editor = ctx.getSharedPreferences("CHMP4", Context.MODE_PRIVATE).edit();
            editor.putInt("su_type", isChecked ? 1 : 0);
            editor.commit();
        }
    }

    // ===== Inner class: "Apply settings" button =====
    // Captures 5 Spinners: flip, rotate, height_padding, viewsize, and one more
    class v implements View.OnClickListener {
        final Spinner mSpinner1;  // flip
        final Context mContext;
        final Spinner mSpinner2;  // rotate
        final Spinner mSpinner3;  // height_padding
        final Spinner mSpinner4;  // viewsize
        final Spinner mSpinner5;  // extra

        v(Spinner s1, Context ctx, Spinner s2, Spinner s3, Spinner s4, Spinner s5) {
            this.mSpinner1 = s1;
            this.mContext = ctx;
            this.mSpinner2 = s2;
            this.mSpinner3 = s3;
            this.mSpinner4 = s4;
            this.mSpinner5 = s5;
        }

        /**
         * Recovered from method_106 bytecode analysis
         * Reads spinner positions for flip, rotate, height padding, viewsize
         * Saves to SharedPreferences and sends filter string to daemon
         */
        @Override
        public void onClick(View view) {
            int flip = mSpinner1 != null ? mSpinner1.getSelectedItemPosition() : 0;
            int rotate = mSpinner2 != null ? mSpinner2.getSelectedItemPosition() : 0;
            int heightPadding = mSpinner3 != null ? mSpinner3.getSelectedItemPosition() : 0;

            // Save settings
            com.nvshen.chmp4.d api = com.nvshen.chmp4.d.B();
            api.h("flip", String.valueOf(flip));
            api.h("rotate", String.valueOf(rotate));
            api.h("heightPadding", String.valueOf(heightPadding));

            // Build filter string for ffmpeg
            String filterStr = "";
            if (rotate == 1) {
                filterStr = filterStr + ",transpose=2";
            }
            if (rotate == 2) {
                filterStr = filterStr + ",transpose=1";
            }
            if (flip == 1) {
                filterStr = filterStr + ",hflip";
            }
            if (flip == 2) {
                filterStr = filterStr + ",vflip";
            }

            // Send filter to daemon via binder
            com.nvshen.chmp4.k serviceManager = com.nvshen.chmp4.k.c();
            serviceManager.h(filterStr);

            // Handle height padding via binder transaction code 5
            if (heightPadding > 0) {
                serviceManager.i(5); // test_setHeightPadding
            }

            Log.d(TAG, "Settings applied: flip=" + flip + " rotate=" + rotate +
                " heightPadding=" + heightPadding + " filter=" + filterStr);
        }
    }

    // ===== Main class methods =====

    /**
     * isServiceRunning(context) -> checks if CHMP4 daemon process is active
     * Recovered from method_14 @ 0x0f0bc (size=526)
     * Executes "pgrep -f initchmp4" to check for running daemon
     */
    public static boolean q1(Context context) {
        try {
            s2.b.e result = s2.b.I("pgrep -f initchmp4 -L 9");
            if (result != null && result.a() == 0) {
                String output = result.c();
                return output != null && output.trim().length() > 0;
            }
        } catch (Exception ex) {
            Log.e(TAG, "q1 failed", ex);
        }
        return false;
    }

    /**
     * updateExpirationDisplay(textView) - shows license expiry status
     * Green text if not expired, red if expired or not activated
     * ORIGINAL JAVA from demo-restore
     */
    public void w1(TextView textView) {
        long expiredTime = com.nvshen.chmp4.d.B().v();  // getExpiredTime()
        if (expiredTime <= 0) {
            textView.setText(R.string.setting_inactivated);
        } else {
            textView.setText(String.format(getString(R.string.setting_expired_time),
                new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(expiredTime))));
            Log.e(TAG, "expiredTime:" + expiredTime);
            Log.e(TAG, "current:" + System.currentTimeMillis());
            if (expiredTime > System.currentTimeMillis()) {
                textView.setTextColor(-16711936);  // green (0xFF00FF00)
                return;
            }
        }
        textView.setTextColor(-65536);  // red (0xFFFF0000)
    }

    /**
     * requestPermissions(activity) - requests camera + storage permissions
     * Recovered from method_22 @ 0x0f4b0
     */
    public static void y1(Activity activity) {
        List<String> permissions = new ArrayList<String>();
        if (ContextCompat.checkSelfPermission(activity, Manifest.permission.CAMERA) != PackageManager.PERMISSION_GRANTED) {
            permissions.add(Manifest.permission.CAMERA);
        }
        if (ContextCompat.checkSelfPermission(activity, Manifest.permission.READ_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED) {
            permissions.add(Manifest.permission.READ_EXTERNAL_STORAGE);
        }
        if (ContextCompat.checkSelfPermission(activity, Manifest.permission.SYSTEM_ALERT_WINDOW) != PackageManager.PERMISSION_GRANTED) {
            permissions.add(Manifest.permission.SYSTEM_ALERT_WINDOW);
        }
        if (!permissions.isEmpty()) {
            ActivityCompat.requestPermissions(activity, permissions.toArray(new String[0]), 100);
        }
    }

    /**
     * setupDaemonButton(app, command, param, handler)
     * Recovered from method_23 @ 0x0f524
     * Static method to configure a button for daemon operation
     */
    static void z1(Application app, String command, String param, e.a<Button> handler) {
        // Trigger the handler
        if (handler != null && sButtonObserver != null) {
            handler.a(sButtonObserver, null);
        }
    }

    /**
     * refreshStatus() - updates all UI elements from current daemon state
     * Recovered from method_15 @ 0x0f144 (size=30)
     * Checks daemon running status and updates status TextViews
     */
    public void A1() {
        View view = getView();
        if (view == null) return;

        // === 替换相机 status ===
        com.nvshen.chmp4.k sm = com.nvshen.chmp4.k.c();
        boolean hookActive = (sm.mRemoteBinder != null && sm.mRemoteBinder.isBinderAlive());

        // Binder polling: only when not connected
        if (!hookActive) {
            Log.e("HOOK", "selinux " + (isSelinuxEnforcing() ? "1" : "0"));
            sm.b();
            Log.e("HOOK", "binder = " + sm.mRemoteBinder);
            hookActive = (sm.mRemoteBinder != null && sm.mRemoteBinder.isBinderAlive());

            // DEMO: does NOT auto-send video path on connect
            // Video path is sent only when user clicks 播放 button

            // Auto retry once if injection done but binder still null
            if (mInjectionDone && !mRetryDone && !hookActive) {
                mRetryDone = true;
                Log.e("HOOK", "auto-retry: calling r1() again");
                r1();
            }
        }

        TextView replaceStatus = (TextView) view.findViewById(R.id.textView_camera_replace_status);
        if (replaceStatus != null) {
            if (hookActive) {
                replaceStatus.setText(R.string.setting_replace_success);
                replaceStatus.setTextColor(-16711936); // green
            } else {
                replaceStatus.setText(R.string.setting_replace_fail);
                replaceStatus.setTextColor(-65536); // red
            }
        }

        // DEMO: 替换相机 button disabled when already succeeded
        Button btnSettings = (Button) view.findViewById(R.id.button_settings);
        if (btnSettings != null) {
            btnSettings.setEnabled(!hookActive);
        }

        // === 播放视频 status ===
        // DEMO 55.png/59.png: green only when ffplay process is running
        TextView playerStatus = (TextView) view.findViewById(R.id.textView_player_status);
        if (playerStatus != null) {
            boolean ffplayRunning = isFFplayRunning();
            if (ffplayRunning) {
                playerStatus.setText(R.string.setting_player_running);
                playerStatus.setTextColor(-16711936); // green
            } else {
                playerStatus.setText(R.string.setting_player_stop);
                playerStatus.setTextColor(-65536); // red
            }
        }

        // DEMO 54.png: 播放 enabled when 替换成功 (hookActive) AND not already playing
        Button btnStartPlayer2 = (Button) view.findViewById(R.id.button_start_player);
        if (btnStartPlayer2 != null) {
            boolean ffplayRunning2 = isFFplayRunning();
            btnStartPlayer2.setEnabled(hookActive && !ffplayRunning2);
        }

        // Update CDKey / expiration info
        TextView cdkeyInfo = (TextView) view.findViewById(R.id.cdkey_info);
        if (cdkeyInfo != null) {
            w1(cdkeyInfo);
        }
    }

    /**
     * updateVideoList() - refreshes available video list in spinner
     * Recovered from method_17 @ 0x0f22c (size=23)
     * Calls ApiManager.m() to get video list, populates spinner
     */
    public void B1() {
        final View view = getView();
        if (view == null) return;
        final Activity activity = getActivity();
        if (activity == null) return;

        new Thread(new Runnable() {
            @Override
            public void run() {
                final List<String> videoList = com.nvshen.chmp4.d.B().m();
                activity.runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            Spinner spinner = (Spinner) view.findViewById(R.id.spinner);
                            if (spinner == null) return;

                            List<String> list = videoList != null ? videoList : new ArrayList<String>();
                            ArrayAdapter<String> adapter = new ArrayAdapter<String>(
                                activity, android.R.layout.simple_spinner_item, list);
                            adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                            spinner.setAdapter(adapter);

                            // Set item selection listener to update daemon when video changes
                            spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
                                @Override
                                public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
                                    Log.d(TAG, "Video selected: index=" + position);
                                    com.nvshen.chmp4.d.B().R(position);
                                }
                                @Override
                                public void onNothingSelected(AdapterView<?> parent) {}
                            });

                            SharedPreferences prefs = activity.getSharedPreferences("CHMP4", Context.MODE_PRIVATE);
                            int savedIndex = prefs.getInt("index", 0);
                            if (savedIndex >= 0 && savedIndex < list.size()) {
                                spinner.setSelection(savedIndex);
                            }
                        } catch (Exception e) {
                            Log.e(TAG, "B1 update UI failed", e);
                        }
                    }
                });
            }
        }).start();
    }

    /**
     * initViews(view) - alias for C1, initializes view references
     * Recovered from method_13 @ 0x0f04c (size=0, delegates to C1)
     */
    public void v1(View view) {
        C1(view);
    }

    /**
     * C1(view) - initializes all view references via findViewById
     * Recovered from method_19 @ 0x0f314 (size=52)
     * Sets up references to all buttons, spinners, switches, text views
     */
    public void C1(View view) {
        // Views are accessed via findViewById in the methods that need them
        // This method primarily ensures views exist and sets initial states

        // Update QR code with device ID
        ImageView qrcode = (ImageView) view.findViewById(R.id.qrcode);
        if (qrcode != null) {
            String deviceId = com.nvshen.chmp4.d.B().s();
            if (deviceId != null && deviceId.length() > 0) {
                Bitmap qrBitmap = x1(deviceId);
                if (qrBitmap != null) {
                    qrcode.setImageBitmap(qrBitmap);
                }
            }
        }

        // Update device ID text
        TextView deviceIdView = (TextView) view.findViewById(R.id.deviceid);
        if (deviceIdView != null) {
            deviceIdView.setText(com.nvshen.chmp4.d.B().s());
        }

        // Update CDKey info
        TextView cdkeyInfo = (TextView) view.findViewById(R.id.cdkey_info);
        if (cdkeyInfo != null) {
            w1(cdkeyInfo);
        }
    }

    /**
     * onCreateView - inflates fragment_settings layout
     * Recovered from method_25 @ 0x0f634 (size=51)
     * Inflates R.layout.fragment_settings, calls C1() and u1()
     */
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return d0(inflater, container, savedInstanceState);
    }

    /** d0() - original bytecode entry point for onCreateView */
    public View d0(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_settings, container, false);
        if (view != null) {
            // Request permissions first (storage, camera)
            Activity activity = getActivity();
            if (activity != null) {
                y1(activity);
            }

            C1(view);
            u1(view);

            // Check activation status from server (restores auth after reinstall)
            final TextView cdkeyInfo = (TextView) view.findViewById(R.id.cdkey_info);
            com.nvshen.chmp4.d.B().b0(new com.nvshen.chmp4.d.e() {
                @Override
                public void a(int statusCode, String body) {
                    if (statusCode == 200 && cdkeyInfo != null) {
                        Activity act = getActivity();
                        if (act != null) {
                            act.runOnUiThread(new Runnable() {
                                @Override
                                public void run() {
                                    int remain = com.nvshen.chmp4.d.B().D();
                                    if (remain > 0) {
                                        // remain is in seconds, not days
                                        long hours = remain / 3600;
                                        long mins = (remain % 3600) / 60;
                                        cdkeyInfo.setText("已激活，剩余 " + hours + "小时" + mins + "分钟");
                                        cdkeyInfo.setTextColor(0xFF00AA00);
                                    }
                                }
                            });
                        }
                    }
                }
            });
        }
        return view;
    }

    /**
     * startDaemon() - begins daemon injection
     * Recovered from method_20 @ 0x0f3ac (size=43)
     *
     * Builds initchmp4 command:
     *   "%s/system/bin/sh %s/chmp4.sh initchmp4 %d %d %s %s %s"
     *   args: suPath, cacheDir, cacheDir, remain, now, token, mp4file, filterstr
     *
     * Executes via s2.b with callback to K() (onShellResult)
     */
    public void r1() {
        Context ctx = getActivity();
        if (ctx == null) return;

        // Set injection flag for auto-retry in A1() polling
        mInjectionDone = false;
        mRetryDone = false;

        com.nvshen.chmp4.d api = com.nvshen.chmp4.d.B();
        // DEMO CONFIRMED: must use /data/data/ path format, not /data/user/0/
        String cacheDir = ctx.getCacheDir().getAbsolutePath().replace("/data/user/0/", "/data/data/");

        // Get current settings
        int remain = api.D(); // remainingDays
        int now = api.q();    // serverTime

        String token = api.F(); // auth token
        if (token == null) token = "";

        // Get selected video file
        List<String> videoList = api.m();
        String mp4file = "";
        if (videoList != null && videoList.size() > 0) {
            View view = getView();
            if (view != null) {
                Spinner spinner = (Spinner) view.findViewById(R.id.spinner);
                if (spinner != null) {
                    int idx = spinner.getSelectedItemPosition();
                    if (idx >= 0 && idx < videoList.size()) {
                        mp4file = videoList.get(idx);
                    } else if (videoList.size() > 0) {
                        mp4file = videoList.get(0);
                    }
                }
            }
        }

        // Build filter string from flip/rotate spinners
        String filterStr = "";
        View view = getView();
        if (view != null) {
            Spinner flipSpinner = (Spinner) view.findViewById(R.id.flip);
            Spinner rotateSpinner = (Spinner) view.findViewById(R.id.rotate);
            int flip = 0;
            int rotate = 0;
            if (flipSpinner != null) flip = flipSpinner.getSelectedItemPosition();
            if (rotateSpinner != null) rotate = rotateSpinner.getSelectedItemPosition();

            if (rotate == 1) filterStr = filterStr + ",transpose=2";
            if (rotate == 2) filterStr = filterStr + ",transpose=1";
            if (flip == 1) filterStr = filterStr + ",hflip";
            if (flip == 2) filterStr = filterStr + ",vflip";
        }

        if (mp4file.isEmpty()) {
            Log.e(TAG, "r1: No video file selected! Refresh video list first.");
            com.nvshen.chmp4.d.B().Y("No video file selected. Place .mp4 files in /sdcard/Movies/");
            return;
        }

        // LOGCAT CONFIRMED (demo): environment variables set before initchmp4:
        //   nservice=AL3VXEYf5 policybin=supolicy MYUA=chmp4-<deviceId>-<pkg>.<ver>-64 URLINDEX=0
        // Daemon inherits these env vars and uses nservice to register binder
        // MYUA is critical for server license verification (exit 101 without it)
        String serviceName = api.getServiceName();
        String deviceId = api.s();  // getDeviceId
        String packageName = ctx.getPackageName();
        String version = api.G();   // getVersion
        String arch = android.os.Build.SUPPORTED_ABIS[0].contains("64") ? "64" : "32";
        String myua = String.format("chmp4-%s-%s.%s-%s", deviceId, packageName, version, arch);
        // SELinux policies must be applied before injection
        String selinuxCmd = "magiskpolicy --live 'allow {cameraserver} {shell_data_file system_data_root_file} dir *' 2>/dev/null; " +
            "magiskpolicy --live 'allow {cameraserver} {shell_data_file system_data_root_file} file *' 2>/dev/null; " +
            "magiskpolicy --live 'allow {system_server} {vendor_persist_camera_prop} file *' 2>/dev/null; " +
            "magiskpolicy --live 'allow {cameraserver} {default_android_service} service_manager *' 2>/dev/null; " +
            "magiskpolicy --live 'allow {untrusted_app} {default_android_service} service_manager {find}' 2>/dev/null; " +
            "magiskpolicy --live 'allow {untrusted_app_27} {default_android_service} service_manager {find}' 2>/dev/null; " +
            "magiskpolicy --live 'allow {untrusted_app_29} {default_android_service} service_manager {find}' 2>/dev/null; " +
            "magiskpolicy --live 'allow {cameraserver} {untrusted_app} binder {call transfer}' 2>/dev/null; " +
            "magiskpolicy --live 'allow {untrusted_app} {cameraserver} binder {call transfer}' 2>/dev/null; ";

        // Use encrypted sh binary + encrypted chmp4.sh — 100% identical to demo execution
        String envSetup = String.format(
            "export nservice=%s; export policybin=supolicy; export MYUA=%s; export URLINDEX=%d; ",
            serviceName, myua, api.mUrlIndex);

        // Demo uses single initchmp4 call — daemon starts ffplay automatically
        String command = selinuxCmd + envSetup + String.format(
            "%s/sh %s/chmp4.sh initchmp4 %d %d %s '%s' %s",
            cacheDir, cacheDir, remain, now, token, mp4file, filterStr);

        // DEMO CONFIRMED: logs env vars with HOOK tag
        Log.d("HOOK", envSetup);
        Log.d(TAG, "r1: " + command);

        // Execute via root shell with callback
        api.g(command, new com.nvshen.chmp4.d.g() {
            @Override
            public void a() {
                Log.d(TAG, "Daemon command complete");
                mInjectionDone = true;  // signal polling loop for auto-retry
            }
        });
    }

    /** Check if CHMP4 ffplay is running — demo 55.png: green when ffplay alive */
    private boolean isFFplayRunning() {
        try {
            s2.b.e result = s2.b.I("pgrep -f 'CHMP4 ffplay'");
            return result != null && result.a() == 0;
        } catch (Exception e) {
            return false;
        }
    }

    /** Check SELinux enforcing status — demo logs this every poll cycle */
    private boolean isSelinuxEnforcing() {
        try {
            Class<?> cls = Class.forName("android.os.SELinux");
            return (Boolean) cls.getMethod("isSELinuxEnforced").invoke(null);
        } catch (Exception e) {
            return true;
        }
    }

    /**
     * stopDaemon() - stops running daemon
     * Recovered from method_21 @ 0x0f434
     * Executes resetCamera command via shell
     */
    public void s1() {
        final Context ctx = getActivity();
        if (ctx == null) return;

        final String cacheDir = ctx.getCacheDir().getAbsolutePath();
        new Thread(new Runnable() {
            @Override
            public void run() {
                // No su prefix needed - s2.b.I() already wraps in su shell
                // Use encrypted sh like demo does
                String cdir = cacheDir.replace("/data/user/0/", "/data/data/");
                String cmd = String.format("%s/sh %s/chmp4.sh resetCamera", cdir, cdir);
                Log.d(TAG, "s1: " + cmd);
                s2.b.I(cmd);
                if (getActivity() != null) {
                    getActivity().runOnUiThread(new Runnable() {
                        @Override
                        public void run() { A1(); }
                    });
                }
            }
        }).start();
    }

    /**
     * getDeviceInfo(context) -> device info string
     * Recovered from method_24 @ 0x0f5a4 (size=82)
     * Executes getDeviceInfo shell command and returns result
     */
    public String t1(Context context) {
        if (context == null) return "";
        try {
            String cacheDir = context.getCacheDir().getAbsolutePath();
            String cmd = String.format("/system/bin/sh %s/chmp4.sh getDeviceInfo", cacheDir);
            s2.b.e result = s2.b.I(cmd);
            if (result != null && result.a() == 0) {
                String output = result.c();
                if (output != null) {
                    return output;
                }
            }
        } catch (Exception ex) {
            Log.e(TAG, "getDeviceInfo failed", ex);
        }
        return "";
    }

    /**
     * setupButtons(view) - binds all click handlers to buttons
     * Recovered from methods 31-38 (u1 delegates to a series of button setup methods)
     *
     * This is the MASSIVE button setup method that creates handlers for all UI elements:
     * button_settings, button_close, button_activate, button_start_player,
     * button_stop_player, spinner, flip, rotate, height_padding,
     * switch_float, switch_su, qrcode, deviceid, cdkey_info, cdkey_input
     */
    public void u1(View view) {
        Activity activity = getActivity();
        if (activity == null) return;
        Application app = activity.getApplication();

        // ---- "Replace Camera" (inject) button ----
        // DEMO 22.png: shows "激活码已过期或未激活" if not activated
        // DEMO 29.png: shows ProgressDialog "正在替换，请稍等..." during injection
        Button btnSettings = (Button) view.findViewById(R.id.button_settings);
        if (btnSettings != null) {
            final Application finalApp = app;
            final Activity finalActivity = activity;
            btnSettings.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    // DEMO: check activation before allowing replace
                    int days = com.nvshen.chmp4.d.B().D();
                    if (days <= 0) {
                        com.nvshen.chmp4.d.B().Y("激活码已过期或未激活");
                        return;
                    }
                    Log.d(TAG, "button_settings: Replace Camera clicked");
                    // DEMO 29.png: show progress dialog during injection
                    android.app.ProgressDialog pd = new android.app.ProgressDialog(finalActivity);
                    pd.setMessage("正在替换，请稍等...");
                    pd.setCancelable(false);
                    pd.show();
                    com.nvshen.chmp4.d.B().mProgressDialog = pd;
                    h handler = new h(finalApp, finalActivity);
                    handler.a(null, null);
                }
            });
        }

        // ---- "Reset Camera" (还原相机) button ----
        // DEMO: resets everything — kills daemon, clears binder, all status back to red
        Button btnClose = (Button) view.findViewById(R.id.button_close);
        if (btnClose != null) {
            btnClose.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Log.d(TAG, "button_close: Reset Camera clicked");
                    // DEMO 66.png 68.png: full reset — kill all, back to initial state
                    // Toast "还原成功", preview area black, all status red
                    com.nvshen.chmp4.k.c().mRemoteBinder = null;
                    com.nvshen.chmp4.k.c().mStatus = 0;
                    mInjectionDone = false;
                    mRetryDone = false;
                    // Run resetCamera (kills CHMP4 + cameraserver)
                    new MInnerE().a(null, null);
                    com.nvshen.chmp4.d.B().Y("还原成功");
                    // Clear preview area
                    View pv = getView();
                    if (pv != null) {
                        android.widget.FrameLayout previewFrame = pv.findViewById(R.id.camera_preview);
                        if (previewFrame != null) previewFrame.removeAllViews();
                    }
                    A1();
                }
            });
        }

        // ---- "Activate" button ----
        Button btnActivate = (Button) view.findViewById(R.id.button_activate);
        EditText cdkeyInput = (EditText) view.findViewById(R.id.cdkey_input);
        TextView cdkeyInfo = (TextView) view.findViewById(R.id.cdkey_info);
        if (btnActivate != null && cdkeyInput != null && cdkeyInfo != null) {
            btnActivate.setOnClickListener(new q(cdkeyInput, cdkeyInfo));
        }

        // ---- "Start Player" (播放) button ----
        // DEMO CONFIRMED: does NOT call r1() (no re-injection)
        // Instead sends video path via binder to already-running daemon → daemon spawns ffplay
        // Enabled only when binder connected (替换成功)
        Button btnStartPlayer = (Button) view.findViewById(R.id.button_start_player);
        if (btnStartPlayer != null) {
            com.nvshen.chmp4.k sm0 = com.nvshen.chmp4.k.c();
            boolean connected = (sm0.mRemoteBinder != null && sm0.mRemoteBinder.isBinderAlive());
            btnStartPlayer.setEnabled(connected);

            btnStartPlayer.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Log.d(TAG, "button_start_player: sending video path to daemon");
                    // Send current selected video path via binder → daemon spawns ffplay
                    com.nvshen.chmp4.d.B().R(0);  // R(index) sends video path via transact code 2
                }
            });
        }

        // ---- "Stop Player" (关闭) button ----
        // DEMO 59.png: only stops ffplay playback, does NOT reset camera hook
        // 替换相机 stays green, 播放 turns red, play button becomes clickable
        Button btnStopPlayer = (Button) view.findViewById(R.id.button_stop_player);
        if (btnStopPlayer != null) {
            btnStopPlayer.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Log.d(TAG, "button_stop_player: killing ffplay only");
                    // Kill only ffplay process, keep play daemon alive
                    new Thread(new Runnable() {
                        @Override
                        public void run() {
                            s2.b.I("pgrep -f 'CHMP4 ffplay' | xargs kill -9 2>/dev/null");
                            if (getActivity() != null) {
                                getActivity().runOnUiThread(new Runnable() {
                                    @Override
                                    public void run() { A1(); }
                                });
                            }
                        }
                    }).start();
                }
            });
        }

        // ---- Float switch ----
        Switch switchFloat = (Switch) view.findViewById(R.id.switch_float);
        if (switchFloat != null) {
            // Restore saved state
            SharedPreferences prefs = activity.getSharedPreferences("CHMP4", Context.MODE_PRIVATE);
            switchFloat.setChecked(prefs.getInt("switch_float", 0) == 1);
            switchFloat.setOnCheckedChangeListener(new t());
        }

        // ---- SU switch ----
        Switch switchSu = (Switch) view.findViewById(R.id.switch_su);
        if (switchSu != null) {
            SharedPreferences prefs = activity.getSharedPreferences("CHMP4", Context.MODE_PRIVATE);
            switchSu.setChecked(prefs.getInt("su_type", 0) == 1);
            switchSu.setOnCheckedChangeListener(new u());
        }

        // ---- QR code image ----
        ImageView qrImageView = (ImageView) view.findViewById(R.id.qrcode);
        if (qrImageView != null) {
            qrImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    new n().a(null, (ImageView) v);
                }
            });
        }

        // ---- Device ID text (copy on click) ----
        TextView deviceIdView = (TextView) view.findViewById(R.id.deviceid);
        if (deviceIdView != null) {
            deviceIdView.setOnClickListener(new o());
        }

        // ---- Flip/Rotate spinners: handled via "Apply" button ----
        Spinner flipSpinner = (Spinner) view.findViewById(R.id.flip);
        Spinner rotateSpinner = (Spinner) view.findViewById(R.id.rotate);
        Spinner heightPaddingSpinner = (Spinner) view.findViewById(R.id.height_padding);

        // ---- Preview buttons ----
        Button btnStartPreview = (Button) view.findViewById(R.id.button_start_preview);
        if (btnStartPreview != null) {
            final Spinner fFlip = flipSpinner;
            final Spinner fRotate = rotateSpinner;
            final Spinner fPadding = heightPaddingSpinner;
            final Activity fActivity = activity;
            // Apply settings then navigate to camera preview
            btnStartPreview.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Log.d(TAG, "button_start_preview clicked");
                    // Apply settings first
                    new m.v(fFlip, fActivity, fRotate, fPadding, null, null).onClick(v);
                    // Then navigate to camera tab
                    if (fActivity instanceof com.nvshen.chmp4.MainActivity) {
                        ((com.nvshen.chmp4.MainActivity) fActivity).O(1);
                    }
                }
            });
        }

        Button btnStopPreview = (Button) view.findViewById(R.id.button_stop_preview);
        if (btnStopPreview != null) {
            btnStopPreview.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Log.d(TAG, "button_stop_preview clicked");
                    A1(); // refresh status
                    B1(); // refresh video list
                }
            });
        }

        // Populate video list (delay to ensure su is authorized from SplashActivity)
        mHandler.postDelayed(new Runnable() {
            @Override
            public void run() { B1(); }
        }, 2000);

        // Start status polling
        mHandler.postDelayed(mStatusChecker, 2000);  // DEMO: polls every ~2 seconds
    }

    /**
     * onDestroyView - cleanup
     * Recovered from method_16 @ 0x0f1c0 (size=62)
     * Removes status polling callbacks
     */
    @Override
    public void onDestroyView() {
        super.onDestroyView();
        mHandler.removeCallbacks(mStatusChecker);
    }

    /** x0() alias for onDestroyView - maintains bytecode compatibility */
    public void x0() {
        onDestroyView();
    }

    /**
     * generateQRCode(text) -> QR code Bitmap
     * Recovered from method_18 @ 0x0f2a0 (size=19)
     * Uses ZXing MultiFormatWriter to generate QR code bitmap
     */
    public Bitmap x1(String text) {
        try {
            int size = 128;
            MultiFormatWriter writer = new MultiFormatWriter();
            BitMatrix matrix = writer.encode(text, BarcodeFormat.QR_CODE, size, size);
            int width = matrix.getWidth();
            int height = matrix.getHeight();
            int[] pixels = new int[width * height];
            for (int y = 0; y < height; y++) {
                for (int x = 0; x < width; x++) {
                    pixels[y * width + x] = matrix.get(x, y) ? 0xFF000000 : 0xFFFFFFFF;
                }
            }
            Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            bitmap.setPixels(pixels, 0, width, 0, 0, width, height);
            return bitmap;
        } catch (Exception ex) {
            Log.e(TAG, "QR generation failed", ex);
            return null;
        }
    }

    // Helper to get string resource (used in w1)
    private String I(int resId) {
        return getString(resId);
    }

    // Alias for getActivity (used in inner class q)
    public Activity i() {
        return getActivity();
    }
}
