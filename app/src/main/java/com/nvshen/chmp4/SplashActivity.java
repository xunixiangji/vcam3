package com.nvshen.chmp4;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.app.AppCompatActivity;
import com.nmmedit.protect.NativeUtil;
import com.telegram.a1064.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import k2.o;

/**
 * SplashActivity - Entry point activity
 * Handles root check, SELinux, native binary setup, then launches MainActivity.
 */
public class SplashActivity extends AppCompatActivity {

    public static int sInitState;
    private int mSetupStep = 0;

    // Inner class: Error dialog dismiss handler
    class a implements DialogInterface.OnClickListener {
        { NativeUtil.classesInit0(54); }
        a() {}

        /**
         * Recovered from method_145 @ 0x13050 (size=79)
         * Dismisses dialog and finishes activity.
         */
        @Override
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            SplashActivity.this.finish();
        }
    }

    // Inner class: Setup/activate button click handler
    class b implements View.OnClickListener {
        final EditText mInputField;
        final Activity mActivity;

        { NativeUtil.classesInit0(53); }

        b(EditText input, Activity activity) {
            this.mInputField = input;
            this.mActivity = activity;
        }

        /**
         * Recovered from method_144 @ 0x12fc0 (size=73)
         * Handles activation code submission from splash screen.
         */
        @Override
        public void onClick(View view) {
            if (this.mInputField != null) {
                String code = this.mInputField.getText().toString().trim();
                if (!code.isEmpty()) {
                    Log.d("CHMP4", "Activation code entered: " + code);
                    com.nvshen.chmp4.d.B().f(code, new com.nvshen.chmp4.d.f() {
                        @Override
                        public void a(int resultCode) {
                            Log.d("CHMP4", "Activation result: " + resultCode);
                            if (resultCode == 200) {
                                // Success - proceed to setup
                                SplashActivity.this.I();
                            }
                        }
                    });
                }
            }
        }
    }

    static {
        NativeUtil.classesInit0(39);
        s2.b.f5887c = false;
        s2.b.N(new s2.b.a().b(8).c(10L));
        sInitState = 1;
    }

    /**
     * I() - initSetup()
     * Recovered from method_112 @ 0x12094 (size=32)
     * Starts the permission/root check flow.
     */
    private void I() {
        // Request root shell and proceed with setup
        s2.b.e result = s2.b.I("su");
        result.a(new s2.b.f() {
            @Override
            public void a(s2.b.e result2) {
                try {
                    SplashActivity.this.J(s2.b.I("su"));
                } catch (Throwable t) {
                    Log.e("CHMP4", "Root check failed", t);
                    SplashActivity.this.M();
                }
            }
        });
    }

    /**
     * J(shell) - onRootResult()
     * Already decompiled - checks SELinux, copies files, launches MainActivity.
     */
    public void J(s2.b.e shell) throws Throwable {
        if (!shell.M()) {
            M();
            return;
        }
        String getenforceOutput = s2.b.I("getenforce").c();
        if (getenforceOutput != null && getenforceOutput.contains("Enforcing")) {
            s2.b.I("setenforce 0");
            String getenforceOutput2 = s2.b.I("getenforce").c();
            if (getenforceOutput2 != null && getenforceOutput2.contains("Permissive")) {
                s2.b.I("setenforce 1");
            } else {
                Log.e("HOOK", "setenforce 0 fail!");
                o.j(getString(R.string.check_selinux));
            }
        }
        Intent intent = new Intent((Context) this, MainActivity.class);
        os12copyfile();
        startActivity(intent);
        finish();
    }

    /**
     * K(context) - extractAssets()
     * Recovered from method_111 @ 0x1200c (size=0)
     * Static method to extract assets to cache directory.
     */
    public static void K(Context context) {
        try {
            // Copy shell binary
            String cacheDir = context.getCacheDir().getAbsolutePath();
            releaseAssetToCacheDir(context, isos64bit() ? "bin64/sh" : "bin/sh", "sh");
            // Make shell executable
            Runtime.getRuntime().exec("chmod +x " + cacheDir + "/sh").waitFor();
        } catch (Throwable e) {
            Log.e("CHMP4", "extractAssets failed", e);
        }
    }

    /**
     * L() - showSetupUI()
     * Recovered from method_107 @ 0x11e14 (size=0)
     * Shows the setup/splash UI.
     */
    private void L() {
        setContentView(R.layout.activity_splash);
        // UI is handled by onCreate flow
    }

    /**
     * M() - showNoRootDialog()
     * Recovered from method_108 @ 0x11e9c (size=38)
     * Shows error dialog when root is unavailable.
     */
    void M() {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                try {
                    AlertDialog.Builder builder = new AlertDialog.Builder((Context) SplashActivity.this);
                    builder.setTitle("Root Not Detected");
                    builder.setMessage("Root access not available. Hook injection will not work, but you can still browse the app.\n\nFor full functionality, please grant root access.");
                    builder.setPositiveButton("Continue Anyway", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.dismiss();
                            // Launch MainActivity even without root
                            Intent intent = new Intent((Context) SplashActivity.this, MainActivity.class);
                            startActivity(intent);
                            finish();
                        }
                    });
                    builder.setNegativeButton("Exit", new a());
                    builder.setCancelable(false);
                    builder.show();
                } catch (Exception e) {
                    Log.e("CHMP4", "Error showing no-root dialog", e);
                    // Fallback: just launch MainActivity
                    Intent intent = new Intent((Context) SplashActivity.this, MainActivity.class);
                    startActivity(intent);
                    finish();
                }
            }
        });
    }

    /**
     * onCreate()
     * Recovered from method_109 @ 0x11f10 (size=98)
     * Initializes splash screen and starts setup flow.
     */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        L();
        // Request permissions first
        if (Build.VERSION.SDK_INT >= 23) {
            String[] permissions = {
                "android.permission.CAMERA",
                "android.permission.READ_EXTERNAL_STORAGE",
                "android.permission.SYSTEM_ALERT_WINDOW"
            };
            requestPermissions(permissions, 0x7f100036);
        } else {
            I();
        }
    }

    /**
     * onRequestPermissionsResult()
     * Recovered from method_110 @ 0x11f90 (size=101)
     * Handles permission grant results, then proceeds to setup.
     */
    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 0x7f100036) {
            boolean allGranted = true;
            if (grantResults != null) {
                for (int result : grantResults) {
                    if (result != 0) {
                        allGranted = false;
                        break;
                    }
                }
            }
            if (allGranted) {
                Log.d("CHMP4", "PERMISSION_GRANTED-----------------");
                I();
            } else {
                Log.e("CHMP4", "PERMISSION_DENIED------------2-------------");
                // Re-request or show explanation
                M();
            }
        }
    }

    /** Check if device supports 64-bit ARM */
    public static boolean isos64bit() {
        for (String abi : Build.SUPPORTED_ABIS) {
            if (abi.contains("arm64")) {
                return true;
            }
        }
        return false;
    }

    /** Copy an asset file to the app's cache directory */
    public static boolean releaseAssetToCacheDir(Context context, String assetPath, String outputName) throws Throwable {
        FileOutputStream fos;
        AssetManager assets = context.getAssets();
        InputStream is = null;
        try {
            fos = new FileOutputStream(new File(context.getCacheDir(), outputName));
        } catch (IOException unused) {
            fos = null;
        } catch (Throwable th) {
            fos = null;
            throw th;
        }
        try {
            is = assets.open(assetPath);
            byte[] buffer = new byte[1024];
            while (true) {
                int bytesRead = is.read(buffer);
                if (bytesRead == -1) break;
                fos.write(buffer, 0, bytesRead);
            }
            if (is != null) try { is.close(); } catch (IOException ignored) {}
            try { fos.close(); } catch (IOException ignored) {}
            return true;
        } catch (IOException unused2) {
            if (is != null) try { is.close(); } catch (IOException ignored) {}
            if (fos == null) return false;
            try { fos.close(); return false; } catch (IOException ignored) { return false; }
        }
    }

    /**
     * os12copyfile() - Android 12 specific binary copy
     * Copies 4 native files from APK assets to cache dir.
     */
    public void os12copyfile() throws Throwable {
        if (Build.VERSION.RELEASE.equals("12")) {
            Context ctx = getApplicationContext();
            String dir = isos64bit() ? "bin64" : "bin";
            String suffix = isos64bit() ? "1364" : "1032";

            String[] names = {"CHMP4", "libCHMP4", "libhookProxy", "libshadowhook"};
            for (int i = 0; i < 4; i++) {
                String assetPath, outputName;
                if (i > 0) {
                    assetPath = String.format("%s/%s-%s.so", dir, names[i], suffix);
                    outputName = names[i] + ".so";
                } else {
                    assetPath = String.format("%s/%s-%s", dir, names[i], suffix);
                    outputName = names[i];
                }
                releaseAssetToCacheDir(ctx, assetPath, outputName);
            }
        }
    }
}
