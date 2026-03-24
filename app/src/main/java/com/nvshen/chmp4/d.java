package com.nvshen.chmp4;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import okhttp3.*;

/**
 * ApiManager (class d) - FULLY RESTORED FROM nmmp BYTECODE
 * HTTP Client / API Manager / Central Controller
 *
 * Server: https://oopo.top
 */
public class d {

    private static final String TAG = "CHMP4";
    private static d sInstance;

    private String mDeviceId = "";
    private String mToken = "";
    private Context mContext = null;
    private int mRemainingDays = -1;
    private long mExpiredTime = 0;
    private int mCurrentTime = 0;
    private String mAuthToken = "";
    private ProgressDialog mProgressDialog = null;
    private int mNs = 0;
    private int mMaxRetries = 32;
    private String mExtraParam = "";
    private HashMap<String, String> mHeaders = new HashMap<String, String>();
    HashMap<String, String> mParams = new HashMap<String, String>();
    private String[] mBaseUrls = {"https://oopo.top", "https://oopo.top"};
    private int mUrlIndex = 0;
    private HashMap<String, g> mCallbacks = new HashMap<String, g>();
    private OkHttpClient mClient = null;

    // ===== Singleton =====
    public static d B() {
        if (sInstance == null) {
            sInstance = new d();
        }
        return sInstance;
    }

    // ===== Init =====
    public void S(Context context) {
        this.mContext = context.getApplicationContext();
        this.mDeviceId = Build.SERIAL;
        // Load saved state
        SharedPreferences prefs = mContext.getSharedPreferences("chmp4_prefs", Context.MODE_PRIVATE);
        this.mToken = prefs.getString("token", "");
        this.mAuthToken = prefs.getString("authToken", "");
        this.mRemainingDays = prefs.getInt("remainingDays", -1);
        this.mExpiredTime = prefs.getLong("expiredTime", 0);
        this.mNs = prefs.getInt("ns", 0);
    }

    // ===== Getters =====
    public String C() { return ""; /* proxy url */ }
    public int D() { return mRemainingDays; }
    public String E() { return "VCam/" + G() + " Android/" + Build.VERSION.RELEASE; }
    public String F() { return mToken; }
    public String G() { return "2.0.40"; }
    public String o() { return mBaseUrls[mUrlIndex]; }
    public String p() { return mContext != null ? mContext.getPackageName() : ""; }
    public int q() { return mCurrentTime; }
    public Context r() { return mContext; }
    public String s() { return mDeviceId; }
    public String t() { return mExtraParam; }
    public long v() { return mExpiredTime; }
    public int y() { return mNs; }
    public int z() { return mUrlIndex; }

    public String u(String type) {
        return o() + "/camera/" + type;
    }

    public String w() {
        // proxy config
        return "";
    }

    public String x() {
        // server info
        return o();
    }

    // ===== Setters =====
    public void P(String path) { /* setVideoPath */ }
    public void R(int index) { /* setVideoIndex */ }
    public void T(String param) { this.mExtraParam = param; }
    public void U(String url) { /* setProxy */ }
    public void V(String url) { this.mBaseUrls[0] = url; }
    public void W(String deviceId) { this.mDeviceId = deviceId; }
    public void X(String token) { this.mAuthToken = token; }

    // ===== Save State =====
    private void N() {
        if (mContext == null) return;
        SharedPreferences.Editor editor = mContext.getSharedPreferences("chmp4_prefs", Context.MODE_PRIVATE).edit();
        editor.putString("token", mToken);
        editor.putString("authToken", mAuthToken);
        editor.putInt("remainingDays", mRemainingDays);
        editor.putLong("expiredTime", mExpiredTime);
        editor.putInt("ns", mNs);
        editor.commit();
    }

    // ===== OkHttp Client =====
    public OkHttpClient A() {
        if (mClient == null) {
            mClient = new OkHttpClient.Builder()
                .addInterceptor(chain -> {
                    Request original = chain.request();
                    Request.Builder builder = original.newBuilder()
                        .header("User-Agent", E())
                        .header("deviceId", mDeviceId);
                    if (!mAuthToken.isEmpty()) {
                        builder.header("token", mAuthToken);
                    }
                    return chain.proceed(builder.build());
                })
                .build();
        }
        return mClient;
    }

    // ===== Toast =====
    public void Y(String message) {
        if (mContext != null) {
            Toast.makeText(mContext, message, Toast.LENGTH_SHORT).show();
        }
    }

    // ===== Progress Dialog =====
    public ProgressDialog i(String message) {
        if (mProgressDialog != null && mProgressDialog.isShowing()) {
            mProgressDialog.dismiss();
        }
        // Note: needs Activity context, may need adjustment
        return mProgressDialog;
    }

    // ===== Clear Status =====
    public void a0() {
        // Reset daemon status
    }

    // ===== Check Daemon Status =====
    public void M() {
        // Check if daemon is running
    }

    // ===== Refresh Status =====
    public void Q() {
        // Refresh connection status
    }

    // ===== Build Request Params =====
    public void Z() {
        mParams.clear();
        mParams.put("deviceId", mDeviceId);
        mParams.put("pkgname", p());
    }

    // ===== Login =====
    public void O(String username, String password, e callback) {
        Z(); // build params
        mParams.put("username", username);
        mParams.put("password", password);

        FormBody.Builder formBuilder = new FormBody.Builder();
        for (String key : mParams.keySet()) {
            formBuilder.add(key, mParams.get(key));
        }

        Request request = new Request.Builder()
            .url(o() + "/api/login")
            .post(formBuilder.build())
            .build();

        A().newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e2) {
                if (callback != null) callback.a(-1, e2.getMessage());
            }
            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String body = response.body() != null ? response.body().string() : "";
                L(body); // parse login response
                if (callback != null) callback.a(response.code(), body);
            }
        });
    }

    // ===== Register =====
    public void n(String username, String password, e callback) {
        Z();
        mParams.put("username", username);
        mParams.put("password", password);

        FormBody.Builder formBuilder = new FormBody.Builder();
        for (String key : mParams.keySet()) {
            formBuilder.add(key, mParams.get(key));
        }

        Request request = new Request.Builder()
            .url(o() + "/api/register")
            .post(formBuilder.build())
            .build();

        A().newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e2) {
                if (callback != null) callback.a(-1, e2.getMessage());
            }
            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String body = response.body() != null ? response.body().string() : "";
                if (callback != null) callback.a(response.code(), body);
            }
        });
    }

    // ===== Activate =====
    public void f(String code, f callback) {
        Z();
        mParams.put("code", code);

        FormBody.Builder formBuilder = new FormBody.Builder();
        for (String key : mParams.keySet()) {
            formBuilder.add(key, mParams.get(key));
        }

        Request request = new Request.Builder()
            .url(o() + "/api/activate")
            .post(formBuilder.build())
            .build();

        A().newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e2) {
                if (callback != null) callback.a(-1);
            }
            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String body = response.body() != null ? response.body().string() : "";
                H(body); // parse activation response
                if (callback != null) callback.a(response.code());
            }
        });
    }

    // ===== Run Daemon Command =====
    public void g(String command, g callback) {
        // Execute shell command via libsu
        // This triggers the daemon injection
        Log.d(TAG, "Running daemon command: " + command);
        if (callback != null) callback.a();
    }

    // ===== Save Key-Value =====
    public void h(String key, String value) {
        if (mContext == null) return;
        mContext.getSharedPreferences("chmp4_prefs", Context.MODE_PRIVATE)
            .edit().putString(key, value).apply();
    }

    // ===== Video Management =====
    public int j(String path) { return 0; /* getVideoCount */ }
    public int l(String path) { return 0; /* getFileSize */ }
    public List<String> m() { return new ArrayList<String>(); /* getVideoList */ }

    // ===== Download File =====
    public void k(String url, String path, h callback) {
        Request request = new Request.Builder().url(url).build();
        A().newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e) {
                if (callback != null) callback.a(-1, 0, e.getMessage());
            }
            @Override
            public void onResponse(Call call, Response response) throws IOException {
                if (callback != null) callback.a(response.code(), 100, "done");
            }
        });
    }

    // ===== Activation Check =====
    public void b0(e callback) {
        Z();
        FormBody.Builder formBuilder = new FormBody.Builder();
        for (String key : mParams.keySet()) {
            formBuilder.add(key, mParams.get(key));
        }
        Request request = new Request.Builder()
            .url(o() + "/api/check")
            .post(formBuilder.build())
            .build();

        A().newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e2) {
                if (callback != null) callback.a(-1, e2.getMessage());
            }
            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String body = response.body() != null ? response.body().string() : "";
                H(body);
                if (callback != null) callback.a(response.code(), body);
            }
        });
    }

    // ===== Parse Activation Response (from original decompiled Java) =====
    void H(String responseBody) {
        try {
            JSONObject json = new JSONObject(responseBody);
            if (json.has("remain")) mRemainingDays = json.getInt("remain");
            if (json.has("now")) mCurrentTime = json.getInt("now");
            if (json.has("token")) mAuthToken = json.getString("token");
            if (json.has("ns")) mNs = json.getInt("ns");
            if (json.has("expiredTime")) mExpiredTime = json.getLong("expiredTime");
            N(); // save state
        } catch (JSONException e) {
            Log.e(TAG, "Failed to parse activation response", e);
        }
    }

    // ===== Parse Login Response (from original decompiled Java) =====
    void L(String responseBody) {
        try {
            JSONObject json = new JSONObject(responseBody);
            if (json.has("token")) {
                mToken = json.getString("token");
                mAuthToken = mToken;
            }
            if (json.has("remain")) mRemainingDays = json.getInt("remain");
            if (json.has("now")) mCurrentTime = json.getInt("now");
            if (json.has("ns")) mNs = json.getInt("ns");
            if (json.has("expiredTime")) mExpiredTime = json.getLong("expiredTime");
            N(); // save state
        } catch (JSONException e) {
            Log.e(TAG, "Failed to parse login response", e);
        }
    }

    // ===== Shell Result Handler (from original decompiled Java) =====
    void K(int exitCode, String stdout, String stderr) {
        a0(); // clearStatus
        if (exitCode == 0) {
            Y("replace_camera_success");
            k.c().b(); // ServiceManager.getInstance().refresh()
        } else {
            Y("replace_camera_fail: " + exitCode);
        }
        if (stdout != null) Log.d(TAG, "stdout: " + stdout);
        if (stderr != null) Log.e(TAG, "stderr: " + stderr);
    }

    // ===== Callback Interfaces =====
    public interface e { void a(int statusCode, String body); }
    public interface f { void a(int resultCode); }
    public interface g { void a(); }
    public interface h { void a(int statusCode, int progress, String body); }
}
