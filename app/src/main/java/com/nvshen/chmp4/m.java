package com.nvshen.chmp4;

import android.app.Activity;
import android.app.Application;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
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
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.nmmedit.protect.NativeUtil;
import com.telegram.a1064.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import n2.e;

/**
 * SettingsFragment (class m) - Main Settings & Control Panel
 * Handles license activation, daemon injection, video selection,
 * proxy configuration, camera hook control, QR code generation.
 */
public class m extends Fragment {

    public static String TAG = "SettingsFragment";
    public static n2.e<?> sButtonObserver;
    Handler mHandler = new Handler();
    Runnable mStatusChecker = new k();

    // ===== Inner class: "Start/Inject" button click =====
    class a implements View.OnClickListener {
        { NativeUtil.classesInit0(34); }
        a() {}

        @Override
        public void onClick(View view) {
            Log.d(TAG, "click ----------------------");
            r1();
        }
    }

    // ===== Inner class: File picker callback =====
    class b implements j2.h {
        final Activity mActivity;
        { NativeUtil.classesInit0(33); }
        b(Activity activity) { this.mActivity = activity; }

        /**
         * Recovered from method_101 @ 0x11b3c (size=0)
         */
        @Override
        public void a(List<String> files, boolean success) {
            if (files != null && !files.isEmpty()) {
                String filePath = files.get(0);
                Log.d(TAG, "mp4 file " + filePath);
                // Set selected video path in API manager
                com.nvshen.chmp4.d.B().P(filePath);
                // Update video list
                B1();
            }
        }

        /**
         * Recovered from method_100 @ 0x11abc (size=8)
         */
        @Override
        public void b(List<String> files, boolean cancelled) {
            Log.d(TAG, "File selection cancelled");
        }
    }

    // ===== Inner class: Wrapper button handler =====
    class c implements e.a<Button> {
        final e.a mInnerHandler;
        { NativeUtil.classesInit0(36); }
        c(e.a handler) { this.mInnerHandler = handler; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            if (mInnerHandler != null) {
                mInnerHandler.a(observer, button);
            }
        }
    }

    // ===== Inner class: "Stop daemon" button =====
    class MInnerD implements e.a<Button> {
        { NativeUtil.classesInit0(35); }
        MInnerD() {}

        /**
         * Recovered from method_103 @ 0x11c1c (size=58)
         */
        @Override
        public void a(n2.e<?> observer, Button button) {
            Log.d(TAG, "button_stop_player ");
            s1();
        }
    }

    // ===== Inner class: "Kill cameraserver" button =====
    class MInnerE implements e.a<Button> {
        { NativeUtil.classesInit0(3); }
        MInnerE() {}

        /**
         * Recovered from method_3 @ 0x0eae8 (size=111)
         * Sends resetCamera command via shell.
         */
        @Override
        public void a(n2.e<?> observer, Button button) {
            Log.d(TAG, "BINDER");
            try {
                String cacheDir = getActivity().getCacheDir().getAbsolutePath();
                String cmd = String.format("%s %s/sh %s/chmp4.sh resetCamera",
                    "su", cacheDir, cacheDir);
                Log.d("CHMP4PREVIEWFORMAT", "CI," + cmd);
                s2.b.I(cmd);
            } catch (Exception ex) {
                Log.e(TAG, "resetCamera failed", ex);
            }
        }
    }

    // ===== Inner class: "Video select" button =====
    class f implements e.a<Button> {
        final Activity mActivity;
        { NativeUtil.classesInit0(1); }
        f(Activity activity) { this.mActivity = activity; }

        /**
         * Recovered from method_1 @ 0x0e9e8 (size=0)
         * Opens file picker for video selection.
         */
        @Override
        public void a(n2.e<?> observer, Button button) {
            try {
                // Open file picker for .mp4 files
                new b(mActivity);
                Log.d(TAG, "Opening video file picker");
            } catch (Exception ex) {
                Log.e(TAG, "File picker failed", ex);
            }
        }
    }

    // ===== Inner class: "Settings" button =====
    class g implements e.a<Button> {
        final Activity mActivity;
        { NativeUtil.classesInit0(8); }
        g(Activity activity) { this.mActivity = activity; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            // TODO: Open settings dialog or activity
            Log.d(TAG, "Settings button clicked");
        }
    }

    // ===== Inner class: "Inject hook" button (MOST IMPORTANT) =====
    class MInnerH implements e.a<Button> {
        final Application mApp;
        final Activity mActivity;

        // Sub-handler: "Set SELinux context" (chcon on .so files)
        class MInnerHA implements e.a<Button> {
            final Context mContext;
            { NativeUtil.classesInit0(31); }
            MInnerHA(Context context) { this.mContext = context; }

            @Override
            public void a(n2.e<?> observer, Button button) {
                // Set SELinux context for hook libraries
                Log.d(TAG, "selinux context setup");
                try {
                    String cacheDir = mContext.getCacheDir().getAbsolutePath();
                    s2.b.I("chcon u:object_r:system_file:s0 " + cacheDir + "/libCHMP4.so");
                    s2.b.I("chcon u:object_r:system_file:s0 " + cacheDir + "/libhookProxy.so");
                    s2.b.I("chcon u:object_r:system_file:s0 " + cacheDir + "/libshadowhook.so");
                } catch (Exception ex) {
                    Log.e(TAG, "chcon failed", ex);
                }
            }
        }

        // Sub-handler: "Copy files to target directory"
        class MInnerHB implements e.a<Button> {
            { NativeUtil.classesInit0(30); }
            MInnerHB() {}

            @Override
            public void a(n2.e<?> observer, Button button) {
                // Copy hook files to daemon directory
                Log.d(TAG, "Copying hook files");
            }
        }

        { NativeUtil.classesInit0(6); }

        MInnerH(Application app, Activity activity) {
            this.mApp = app;
            this.mActivity = activity;
        }

        /**
         * Recovered from method_7 @ 0x0ed24 (size=8)
         * Triggers daemon injection - the main hook operation.
         */
        @Override
        public void a(n2.e<?> observer, Button button) {
            Log.d(TAG, "button_start_player ");
            // Execute injection via z1
            z1(mApp, "", "", new j.a(button));
        }
    }

    // ===== Inner class: "Activate license" button =====
    class i implements e.a<Button> {
        final Activity mActivity;
        { NativeUtil.classesInit0(11); }
        i(Activity activity) { this.mActivity = activity; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            // Show activation dialog
            Log.d(TAG, "Activate license clicked");
        }
    }

    // ===== Inner class: "Register device" button =====
    class MInnerJ implements e.a<Button> {
        final Activity mActivity;
        { NativeUtil.classesInit0(10); }
        MInnerJ(Activity activity) { this.mActivity = activity; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            // Register device with server
            Log.d(TAG, "Register device clicked");
        }
    }

    // ===== Inner class: Status polling timer =====
    class k implements Runnable {
        { NativeUtil.classesInit0(16); }
        k() {}

        /**
         * Recovered from method_40 @ 0x0fe50 (size=22)
         * Periodically polls daemon status and updates UI.
         */
        @Override
        public void run() {
            try {
                A1();
            } catch (Exception ex) {
                Log.e(TAG, "Status poll failed", ex);
            }
            mHandler.postDelayed(mStatusChecker, 3000);
        }
    }

    // ===== Inner class: "Check update" button =====
    class l implements e.a<Button> {
        final Activity mActivity;
        { NativeUtil.classesInit0(14); }
        l(Activity activity) { this.mActivity = activity; }

        @Override
        public void a(n2.e<?> observer, Button button) {
            Log.d(TAG, "checkAndUpdateAPK ");
            if (mActivity instanceof MainActivity) {
                ((MainActivity) mActivity).R();
            }
        }
    }

    // ===== Inner class: "Reset/Clear" button =====
    class C0038m implements e.a<Button> {
        { NativeUtil.classesInit0(19); }
        C0038m() {}

        @Override
        public void a(n2.e<?> observer, Button button) {
            // Reset camera / clear settings
            Log.d(TAG, "Reset clicked");
        }
    }

    // ===== Inner class: QR code ImageView click =====
    class n implements e.a<ImageView> {
        { NativeUtil.classesInit0(17); }
        n() {}

        @Override
        public void a(n2.e<?> observer, ImageView imageView) {
            // Enlarge or share QR code
            Log.d(TAG, "QR code clicked");
        }
    }

    // ===== Inner class: "Copy device ID" button =====
    class o implements View.OnClickListener {
        { NativeUtil.classesInit0(21); }
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
                Log.d(TAG, "Device ID copied");
            } catch (Exception ex) {
                Log.e(TAG, "Copy failed", ex);
            }
        }
    }

    // ===== Inner class: "Share" button =====
    class p implements View.OnClickListener {
        { NativeUtil.classesInit0(20); }
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
            { NativeUtil.classesInit0(46); }
            QInnerA(int resultCode, TextView textView) {
                this.mResultCode = resultCode;
                this.mTextView = textView;
            }

            @Override
            public void run() {
                if (mTextView != null) {
                    if (mResultCode == 200) {
                        mTextView.setText("Activation successful");
                        mTextView.setTextColor(0xFF00FF00); // green
                    } else {
                        mTextView.setText("Activation failed: " + mResultCode);
                        mTextView.setTextColor(0xFFFF0000); // red
                    }
                }
            }
        }

        { NativeUtil.classesInit0(25); }

        q(EditText codeInput, TextView statusText) {
            this.mCodeInput = codeInput;
            this.mStatusText = statusText;
        }

        /** Activation callback -> updates UI on result */
        public void b(TextView textView, int resultCode) {
            m.this.getActivity().runOnUiThread(new QInnerA(resultCode, textView));
        }

        @Override
        public void onClick(View view) {
            if (mCodeInput != null) {
                String code = mCodeInput.getText().toString().trim();
                if (!code.isEmpty()) {
                    Log.d(TAG, "Submitting activation code");
                    com.nvshen.chmp4.d.B().f(code, new com.nvshen.chmp4.n(this, mStatusText));
                }
            }
        }
    }

    // ===== Inner class: "Open website" button =====
    class r implements View.OnClickListener {
        final Context mContext;
        { NativeUtil.classesInit0(23); }
        r(Context context) { this.mContext = context; }

        @Override
        public void onClick(View view) {
            try {
                Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://oopo.top"));
                mContext.startActivity(intent);
            } catch (Exception ex) {
                Log.e(TAG, "Open website failed", ex);
            }
        }
    }

    // ===== Inner class: "Refresh" button =====
    class s implements View.OnClickListener {
        { NativeUtil.classesInit0(29); }
        s() {}

        @Override
        public void onClick(View view) {
            A1();
        }
    }

    // ===== Inner class: Toggle switch (auto-inject) =====
    class t implements CompoundButton.OnCheckedChangeListener {
        { NativeUtil.classesInit0(27); }
        t() {}

        @Override
        public void onCheckedChanged(CompoundButton button, boolean isChecked) {
            Log.d(TAG, "onCheeck " + isChecked);
            // Save auto-inject preference
            com.nvshen.chmp4.d.B().h("auto_inject", isChecked ? "1" : "0");
        }
    }

    // ===== Inner class: Toggle switch (hook enabled) =====
    class u implements CompoundButton.OnCheckedChangeListener {
        { NativeUtil.classesInit0(38); }
        u() {}

        /**
         * Recovered from method_106 @ 0x11d88 (size=392)
         * Handles hook enable/disable toggle with camera config.
         */
        @Override
        public void onCheckedChanged(CompoundButton button, boolean isChecked) {
            Log.d(TAG, "onCheeck " + isChecked);
            if (isChecked) {
                // Enable hook - send start command to daemon
                try {
                    com.nvshen.chmp4.k serviceManager = com.nvshen.chmp4.k.c();
                    serviceManager.g("hook_enable");
                } catch (Exception ex) {
                    Log.e(TAG, "Hook enable failed", ex);
                }
            } else {
                // Disable hook
                try {
                    com.nvshen.chmp4.k serviceManager = com.nvshen.chmp4.k.c();
                    serviceManager.g("hook_disable");
                } catch (Exception ex) {
                    Log.e(TAG, "Hook disable failed", ex);
                }
            }
        }
    }

    // ===== Inner class: "Apply settings" button =====
    class v implements View.OnClickListener {
        final Spinner mSpinner1;
        final Context mContext;
        final Spinner mSpinner2;
        final Spinner mSpinner3;
        final Spinner mSpinner4;
        final Spinner mSpinner5;

        { NativeUtil.classesInit0(37); }

        v(Spinner s1, Context ctx, Spinner s2, Spinner s3, Spinner s4, Spinner s5) {
            this.mSpinner1 = s1;
            this.mContext = ctx;
            this.mSpinner2 = s2;
            this.mSpinner3 = s3;
            this.mSpinner4 = s4;
            this.mSpinner5 = s5;
        }

        /**
         * Applies camera configuration from spinners.
         * Sends resolution, framerate, codec settings to daemon.
         */
        @Override
        public void onClick(View view) {
            Log.d(TAG, "Applying settings");
            try {
                String resolution = mSpinner1.getSelectedItem().toString();
                String framerate = mSpinner2.getSelectedItem().toString();
                String codec = mSpinner3.getSelectedItem().toString();
                String quality = mSpinner4.getSelectedItem().toString();
                String cameraId = mSpinner5.getSelectedItem().toString();

                // Parse resolution
                String[] dims = resolution.split("x");
                int width = 640, height = 480;
                if (dims.length == 2) {
                    width = Integer.parseInt(dims[0].trim());
                    height = Integer.parseInt(dims[1].trim());
                }

                Log.d(TAG, String.format("size:%dx%d", width, height));

                // Send to daemon via binder
                com.nvshen.chmp4.k serviceManager = com.nvshen.chmp4.k.c();
                serviceManager.g("CHMP4WIDTH," + width);
                serviceManager.g("CHMP4HEIGHT," + height);

                // Save preferences
                com.nvshen.chmp4.d.B().h("resolution", resolution);
                com.nvshen.chmp4.d.B().h("framerate", framerate);
            } catch (Exception ex) {
                Log.e(TAG, "Apply settings failed", ex);
            }
        }
    }

    static { NativeUtil.classesInit0(12); }

    /**
     * q1(context) - isServiceRunning()
     * Recovered from method_14 @ 0x0f0bc (size=526)
     * Checks network connectivity and daemon service status.
     */
    public static boolean q1(Context context) {
        try {
            ConnectivityManager cm = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
            if (cm != null) {
                NetworkInfo activeNetwork = cm.getActiveNetworkInfo();
                if (activeNetwork != null && activeNetwork.isConnected()) {
                    // Network is available, check service
                    com.nvshen.chmp4.k serviceManager = com.nvshen.chmp4.k.c();
                    return serviceManager.d() > 0;
                }
            }
        } catch (Exception ex) {
            Log.e(TAG, "Service check failed", ex);
        }
        return false;
    }

    /**
     * w1(textView) - updateExpirationDisplay()
     * Already decompiled - shows license expiry status.
     */
    public void w1(TextView textView) {
        long expiredTime = com.nvshen.chmp4.d.B().v();
        if (expiredTime <= 0) {
            textView.setText(R.string.setting_inactivated);
        } else {
            textView.setText(String.format(getString(R.string.setting_expired_time),
                new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(expiredTime))));
            Log.e(TAG, "expiredTime:" + expiredTime);
            Log.e(TAG, "current:" + System.currentTimeMillis());
            if (expiredTime > System.currentTimeMillis()) {
                textView.setTextColor(-16711936); // green
                return;
            }
        }
        textView.setTextColor(-65536); // red
    }

    /**
     * y1(activity) - requestPermissions()
     * Recovered from method_22 @ 0x0f4b0
     */
    public static void y1(Activity activity) {
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            String[] permissions = {
                "android.permission.CAMERA",
                "android.permission.READ_EXTERNAL_STORAGE",
                "android.permission.SYSTEM_ALERT_WINDOW"
            };
            activity.requestPermissions(permissions, 0x7f100036);
        }
    }

    /**
     * z1(app, command, param, handler) - setupDaemonButton()
     * Recovered from method_23 @ 0x0f524
     * Executes daemon injection shell command.
     */
    static void z1(Application app, String command, String param, e.a<Button> handler) {
        Log.d(TAG, "setupDaemonButton: cmd=" + command + " param=" + param);
        try {
            String cacheDir = app.getCacheDir().getAbsolutePath();
            // Build and execute injection command: "%s %s/sh %s/chmp4.sh %s"
            String cmd = String.format("%s %s/sh %s/chmp4.sh %s",
                "su", cacheDir, cacheDir, command);
            Log.d("CHMP4PREVIEWFORMAT", cmd);
            s2.b.I(cmd);
        } catch (Exception ex) {
            Log.e(TAG, "Daemon setup failed", ex);
        }
    }

    /**
     * A1() - refreshStatus()
     * Recovered from method_15 @ 0x0f144 (size=30)
     * Updates all UI elements from current daemon state.
     */
    public void A1() {
        View view = getView();
        if (view == null) return;
        try {
            // Update camera replace status
            TextView cameraStatus = (TextView) view.findViewById(R.id.textView_camera_replace_status);
            // Update player status
            TextView playerStatus = (TextView) view.findViewById(R.id.textView_player_status);

            com.nvshen.chmp4.k serviceManager = com.nvshen.chmp4.k.c();
            int status = serviceManager.d();

            if (cameraStatus != null) {
                if (status > 0) {
                    cameraStatus.setText("Running");
                    cameraStatus.setTextColor(-16711936); // green
                } else {
                    cameraStatus.setText("Stopped");
                    cameraStatus.setTextColor(-65536); // red
                }
            }
            if (playerStatus != null) {
                if (status > 0) {
                    playerStatus.setText("Player Running");
                    playerStatus.setTextColor(-16711936); // green
                } else {
                    playerStatus.setText("Player Stopped");
                    playerStatus.setTextColor(-65536); // red
                }
            }
        } catch (Exception ex) {
            Log.e(TAG, "refreshStatus failed", ex);
        }
    }

    /**
     * B1() - updateVideoList()
     * Recovered from method_17 @ 0x0f22c (size=23)
     * Refreshes available video file list from /sdcard/Movies/.
     */
    public void B1() {
        Log.d(TAG, "Updating video list");
        try {
            // Find .mp4 files on device
            s2.b.e result = s2.b.I("find /sdcard/Movies/ -iname \"*.mp4\"");
            String output = result.c();
            if (output != null) {
                String[] files = output.split("\n");
                Log.d(TAG, "Found " + files.length + " video files");
                // TODO: Update spinner/list adapter with found files
            }
        } catch (Exception ex) {
            Log.e(TAG, "Video list update failed", ex);
        }
    }

    /**
     * v1(view) - initViews() alias for C1
     */
    public void v1(View view) {
        C1(view);
    }

    /**
     * d0(inflater, container, bundle) - onCreateView()
     * Recovered from method_25 @ 0x0f634 (size=51)
     * Inflates settings layout and initializes views.
     */
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Log.d(TAG, "onCreateView");
        View view = inflater.inflate(R.layout.fragment_settings, container, false);
        if (view != null) {
            C1(view);
            u1(view);
        }
        // Start periodic status polling
        mHandler.postDelayed(mStatusChecker, 3000);
        return view;
    }

    /**
     * r1() - startDaemon()
     * Recovered from method_20 @ 0x0f3ac (size=43)
     * Begins daemon injection process.
     */
    public void r1() {
        Log.d(TAG, "startDaemon");
        Activity activity = getActivity();
        if (activity == null) return;
        try {
            Application app = activity.getApplication();
            String cacheDir = activity.getCacheDir().getAbsolutePath();

            // Get current daemon config from spinners/settings
            int width = 640, height = 480;
            String videoPath = "";
            String rotate = "";
            String flip = "";

            // Try to get values from UI spinners
            View view = getView();
            if (view != null) {
                Spinner spinner = (Spinner) view.findViewById(R.id.spinner);
                if (spinner != null && spinner.getSelectedItem() != null) {
                    videoPath = spinner.getSelectedItem().toString();
                }
                Spinner rotateSpinner = (Spinner) view.findViewById(R.id.rotate);
                if (rotateSpinner != null && rotateSpinner.getSelectedItem() != null) {
                    rotate = rotateSpinner.getSelectedItem().toString();
                }
                Spinner flipSpinner = (Spinner) view.findViewById(R.id.flip);
                if (flipSpinner != null && flipSpinner.getSelectedItem() != null) {
                    flip = flipSpinner.getSelectedItem().toString();
                }
            }

            // Build initchmp4 command: "%s%s/sh %s/chmp4.sh initchmp4 %d %d %s %s %s"
            String cmd = String.format("%s%s/sh %s/chmp4.sh initchmp4 %d %d %s %s %s",
                "su ", cacheDir, cacheDir, width, height, videoPath, rotate, flip);
            Log.d("CHMP4PREVIEWFORMAT", cmd);

            // Execute via root shell with callback
            com.nvshen.chmp4.d.B().g(cmd, new com.nvshen.chmp4.l(this, view));
        } catch (Exception ex) {
            Log.e(TAG, "startDaemon failed", ex);
        }
    }

    /**
     * s1() - stopDaemon()
     * Recovered from method_21 @ 0x0f434
     * Stops the running daemon.
     */
    public void s1() {
        Log.d(TAG, "stopDaemon");
        try {
            Activity activity = getActivity();
            if (activity == null) return;
            String cacheDir = activity.getCacheDir().getAbsolutePath();
            // Execute resetCamera: "%s %s/sh %s/chmp4.sh resetCamera"
            String cmd = String.format("%s %s/sh %s/chmp4.sh resetCamera",
                "su", cacheDir, cacheDir);
            Log.d("CHMP4PREVIEWFORMAT", "stopDaemon: " + cmd);
            s2.b.I(cmd);
            // Refresh status
            A1();
        } catch (Exception ex) {
            Log.e(TAG, "stopDaemon failed", ex);
        }
    }

    /**
     * t1(context) - getDeviceInfo()
     * Recovered from method_24 @ 0x0f5a4 (size=82)
     * Returns device identification string for QR code / sharing.
     */
    public String t1(Context context) {
        try {
            String cacheDir = context.getCacheDir().getAbsolutePath();
            String cmd = cacheDir + "/sh " + cacheDir + "/chmp4.sh getDeviceInfo";
            s2.b.e result = s2.b.I(cmd);
            String info = result.c();
            if (info != null && !info.isEmpty()) {
                return info.trim();
            }
        } catch (Exception ex) {
            Log.e(TAG, "getDeviceInfo failed", ex);
        }
        return "";
    }

    /**
     * u1(view) - setupButtons()
     * Recovered from method_13 @ 0x0f04c (size=0)
     * Binds all click handlers to buttons in the settings view.
     */
    public void u1(View view) {
        if (view == null) return;
        Activity activity = getActivity();
        if (activity == null) return;

        try {
            // "Replace camera" / settings button
            View buttonSettings = view.findViewById(R.id.button_settings);
            if (buttonSettings != null) {
                buttonSettings.setOnClickListener(new a());
            }

            // "Reset camera" / close button
            View buttonClose = view.findViewById(R.id.button_close);
            if (buttonClose != null) {
                buttonClose.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        s1();
                    }
                });
            }

            // "Activate" button
            View buttonActivate = view.findViewById(R.id.button_activate);
            EditText cdkeyInput = (EditText) view.findViewById(R.id.cdkey_input);
            TextView cdkeyInfo = (TextView) view.findViewById(R.id.cdkey_info);
            if (buttonActivate != null && cdkeyInput != null) {
                buttonActivate.setOnClickListener(new q(cdkeyInput, cdkeyInfo));
            }

            // "Start player" button (inject daemon)
            View buttonStartPlayer = view.findViewById(R.id.button_start_player);
            if (buttonStartPlayer != null) {
                buttonStartPlayer.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        try {
                            Application app = activity.getApplication();
                            z1(app, "", "", null);
                        } catch (Exception ex) {
                            Log.e(TAG, "startPlayer failed", ex);
                        }
                    }
                });
            }

            // "Stop player" button
            View buttonStopPlayer = view.findViewById(R.id.button_stop_player);
            if (buttonStopPlayer != null) {
                buttonStopPlayer.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        s1();
                    }
                });
            }

            // Float window switch
            View switchFloat = view.findViewById(R.id.switch_float);
            if (switchFloat instanceof Switch) {
                ((Switch) switchFloat).setOnCheckedChangeListener(new t());
            }

            // SU switch
            View switchSu = view.findViewById(R.id.switch_su);
            if (switchSu instanceof Switch) {
                ((Switch) switchSu).setOnCheckedChangeListener(new u());
            }

            // Device ID click -> copy
            View deviceid = view.findViewById(R.id.deviceid);
            if (deviceid != null) {
                deviceid.setOnClickListener(new o());
            }

            // QR code click
            View qrcode = view.findViewById(R.id.qrcode);
            if (qrcode != null) {
                qrcode.setOnClickListener(new p());
            }
        } catch (Exception ex) {
            Log.e(TAG, "setupButtons failed", ex);
        }
    }

    /**
     * x0() - onDestroyView()
     * Recovered from method_16 @ 0x0f1c0 (size=62)
     * Cleans up handlers and polling.
     */
    @Override
    public void onDestroyView() {
        super.onDestroyView();
        Log.d(TAG, "onDestroyView");
        // Remove status polling callbacks
        mHandler.removeCallbacks(mStatusChecker);
    }

    /**
     * x1(text) - generateQRCode()
     * Recovered from method_18 @ 0x0f2a0 (size=19)
     * Generates a QR code bitmap from text using ZXing.
     */
    public Bitmap x1(String text) {
        try {
            // Generate QR code using barcode scanner library
            com.google.zxing.BarcodeFormat format = com.google.zxing.BarcodeFormat.QR_CODE;
            com.google.zxing.MultiFormatWriter writer = new com.google.zxing.MultiFormatWriter();
            com.google.zxing.common.BitMatrix bitMatrix = writer.encode(text, format, 128, 128);
            int width = bitMatrix.getWidth();
            int height = bitMatrix.getHeight();
            int[] pixels = new int[width * height];
            for (int y = 0; y < height; y++) {
                for (int x = 0; x < width; x++) {
                    pixels[y * width + x] = bitMatrix.get(x, y) ? 0xFF000000 : 0xFFFFFFFF;
                }
            }
            Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            bitmap.setPixels(pixels, 0, width, 0, 0, width, height);
            return bitmap;
        } catch (Exception ex) {
            Log.e(TAG, "QR code generation failed", ex);
            return null;
        }
    }

    /**
     * C1(view) - initViews()
     * Recovered from method_19 @ 0x0f314 (size=52)
     * Initializes view references and sets initial state.
     */
    public void C1(View view) {
        if (view == null) return;
        try {
            // Find all views from fragment_settings layout
            Button buttonSettings = (Button) view.findViewById(R.id.button_settings);
            Button buttonClose = (Button) view.findViewById(R.id.button_close);
            Button buttonActivate = (Button) view.findViewById(R.id.button_activate);
            Button buttonStartPlayer = (Button) view.findViewById(R.id.button_start_player);
            Button buttonStopPlayer = (Button) view.findViewById(R.id.button_stop_player);
            Spinner spinner = (Spinner) view.findViewById(R.id.spinner);
            Switch switchFloat = (Switch) view.findViewById(R.id.switch_float);
            Switch switchSu = (Switch) view.findViewById(R.id.switch_su);
            ImageView qrcode = (ImageView) view.findViewById(R.id.qrcode);
            TextView deviceid = (TextView) view.findViewById(R.id.deviceid);
            TextView cdkeyInfo = (TextView) view.findViewById(R.id.cdkey_info);
            EditText cdkeyInput = (EditText) view.findViewById(R.id.cdkey_input);
            TextView cameraReplaceStatus = (TextView) view.findViewById(R.id.textView_camera_replace_status);
            TextView playerStatus = (TextView) view.findViewById(R.id.textView_player_status);

            // Update expiration display in cdkey_info
            if (cdkeyInfo != null) {
                w1(cdkeyInfo);
            }

            // Update camera replace status
            if (cameraReplaceStatus != null) {
                // Post status update on handler
                mHandler.post(new r2.l(this, cameraReplaceStatus));
            }

            // Generate and display QR code with device info
            if (qrcode != null) {
                Context ctx = (Context) getActivity();
                if (ctx != null) {
                    String deviceInfo = t1(ctx);
                    if (deviceInfo != null && !deviceInfo.isEmpty()) {
                        Bitmap qr = x1(deviceInfo);
                        if (qr != null) {
                            qrcode.setImageBitmap(qr);
                        }
                    }
                }
            }

            // Set device ID text
            if (deviceid != null) {
                String devId = com.nvshen.chmp4.d.B().s();
                if (devId != null && !devId.isEmpty()) {
                    deviceid.setText(devId);
                }
            }

            // Populate video spinner
            if (spinner != null) {
                List<String> videoList = com.nvshen.chmp4.d.B().m();
                if (videoList != null && !videoList.isEmpty()) {
                    ArrayAdapter<String> adapter = new ArrayAdapter<String>(
                        (Context) getActivity(),
                        android.R.layout.simple_spinner_item,
                        videoList);
                    adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                    spinner.setAdapter(adapter);
                }
            }
        } catch (Exception ex) {
            Log.e(TAG, "initViews failed", ex);
        }
    }
}
