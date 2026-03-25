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
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.nmmedit.protect.NativeUtil;
import com.telegram.a1064.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * SplashActivity - RESTORED matching original demo behavior
 * Root flow: libsu/Magisk prompt → SELinux check → copy binaries → MainActivity
 * No root: show "无法获得root权限" dialog with su path input
 */
public class SplashActivity extends AppCompatActivity {

    private static final String TAG = "CHMP4";
    public static int sInitState = 1;
    private int mSetupStep = 0;

    static {
        NativeUtil.classesInit0(39);
        // Match demo: configure libsu shell before any shell is created
        s2.b.f5887c = false;  // disable shell logging
        s2.b.N(s2.b.a.a().b(8).c(10L));  // shell config: timeout=8, bufferSize=10
        sInitState = 1;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);
        // Start root check
        I();
    }

    /**
     * I() - initSetup: try to get root via libsu (s2.b)
     * This triggers Magisk/KSU authorization prompt through libsu
     */
    private void I() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    // Use libsu to get root shell - handles Magisk/KSU properly
                    s2.b.e result = s2.b.I("id");
                    if (result != null && result.M()) {
                        // Root granted! Proceed with setup
                        J("su");
                    } else {
                        // Root denied or not available
                        M();
                    }
                } catch (Exception e) {
                    Log.e(TAG, "Root check failed", e);
                    M();
                }
            }
        }).start();
    }

    /**
     * J(suPath) - onRootResult: root obtained, check SELinux, copy files, launch MainActivity
     * Uses libsu (s2.b) for all shell commands - matches demo behavior
     */
    public void J(String suPath) {
        try {
            // Check SELinux using libsu
            s2.b.e geResult = s2.b.I("getenforce");
            String getenforce = (geResult != null) ? geResult.c() : "";
            if (getenforce.contains("Enforcing")) {
                s2.b.I("setenforce 0");
                s2.b.e checkResult = s2.b.I("getenforce");
                String check = (checkResult != null) ? checkResult.c() : "";
                if (check.contains("Permissive")) {
                    s2.b.I("setenforce 1"); // test: can restore
                } else {
                    Log.e("HOOK", "setenforce 0 fail!");
                    runOnUiThread(new Runnable() {
                        @Override
                        public void run() {
                            Toast.makeText(SplashActivity.this,
                                getString(R.string.check_selinux), Toast.LENGTH_LONG).show();
                        }
                    });
                }
            }

            // Copy native binaries from assets to cacheDir
            os12copyfile();

            // Load deviceId from shell (SYNCHRONOUS - we're on background thread)
            d.B().loadDeviceIdFromShell();

            // Launch MainActivity
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    Intent intent = new Intent(SplashActivity.this, MainActivity.class);
                    startActivity(intent);
                    finish();
                }
            });
        } catch (Throwable t) {
            Log.e(TAG, "Setup failed after root", t);
            M();
        }
    }

    /**
     * M() - showNoRootDialog: matches original demo exactly
     * Shows "无法获得root权限" with su path input field
     */
    void M() {
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                try {
                    AlertDialog.Builder builder = new AlertDialog.Builder(SplashActivity.this);
                    builder.setTitle("\u65e0\u6cd5\u83b7\u5f97root\u6743\u9650"); // 无法获得root权限
                    builder.setIcon(android.R.drawable.ic_dialog_alert);

                    final EditText input = new EditText(SplashActivity.this);
                    input.setHint("\u8bf7\u8f93\u5165su\u8def\u5f84"); // 请输入su路径
                    builder.setView(input);

                    // ✔ button - retry root check
                    builder.setPositiveButton("\u2714", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.dismiss();
                            // Retry with libsu
                            I();
                        }
                    });

                    // ✘ button - exit app
                    builder.setNegativeButton("\u2718", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.dismiss();
                            SplashActivity.this.finish();
                        }
                    });

                    builder.setCancelable(false);
                    builder.show();
                } catch (Exception e) {
                    Log.e(TAG, "Error showing root dialog", e);
                }
            }
        });
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (requestCode == 1) {
            I(); // retry after permission grant
        }
    }

/** Check if device supports 64-bit ARM */
    public static boolean isos64bit() {
        for (String abi : Build.SUPPORTED_ABIS) {
            if (abi.contains("arm64")) return true;
        }
        return false;
    }

    /** Copy asset file to cache directory */
    public static boolean releaseAssetToCacheDir(Context context, String assetPath, String outputName) throws Throwable {
        AssetManager assets = context.getAssets();
        InputStream is = null;
        FileOutputStream fos = null;
        try {
            is = assets.open(assetPath);
            fos = new FileOutputStream(new File(context.getCacheDir(), outputName));
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = is.read(buffer)) != -1) {
                fos.write(buffer, 0, bytesRead);
            }
            return true;
        } catch (IOException e) {
            return false;
        } finally {
            if (is != null) try { is.close(); } catch (IOException ignored) {}
            if (fos != null) try { fos.close(); } catch (IOException ignored) {}
        }
    }

    /** Copy ALL daemon + hook binaries + shell scripts from assets */
    public void os12copyfile() throws Throwable {
        Context ctx = getApplicationContext();
        String dir = isos64bit() ? "bin64" : "bin";
        String suffix = isos64bit() ? "-1364" : "-1032";
        String cacheDir = ctx.getCacheDir().getAbsolutePath();

        // Delete old files first (may have wrong ownership from previous install)
        s2.b.I("rm -f " + cacheDir + "/CHMP4 " + cacheDir + "/libCHMP4.so " +
               cacheDir + "/libhookProxy.so " + cacheDir + "/libshadowhook.so " +
               cacheDir + "/sh " + cacheDir + "/chmp4.sh");

        // Copy 4 native binaries (with suffix in asset name, without suffix in output)
        String[] names = {"CHMP4", "libCHMP4", "libhookProxy", "libshadowhook"};
        for (int i = 0; i < 4; i++) {
            String assetPath, outputName;
            if (i > 0) {
                assetPath = String.format("%s/%s%s.so", dir, names[i], suffix);
                outputName = names[i] + ".so";
            } else {
                assetPath = String.format("%s/%s%s", dir, names[i], suffix);
                outputName = names[i];
            }
            releaseAssetToCacheDir(ctx, assetPath, outputName);
        }

        // Copy sh binary
        releaseAssetToCacheDir(ctx, "sh", "sh");

        // Copy chmp4.sh script
        releaseAssetToCacheDir(ctx, "chmp4.sh", "chmp4.sh");

        // Make all files executable via root
        s2.b.I("chmod +x " + cacheDir + "/sh");
        s2.b.I("chmod +x " + cacheDir + "/CHMP4");
        s2.b.I("chmod +x " + cacheDir + "/chmp4.sh");

        Log.d("CHMP4", "os12copyfile done, files in " + cacheDir);
    }
}
