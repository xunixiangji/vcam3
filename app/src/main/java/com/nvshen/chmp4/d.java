package com.nvshen.chmp4;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.util.Log;
import android.widget.Toast;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import l3.a0;
import l3.b0;
import l3.c0;
import l3.d0;
import l3.e0;
import l3.p;
import l3.x;
import l3.y;

/**
 * ApiManager (class d) - FULLY RESTORED FROM nmmp BYTECODE
 * HTTP Client / API Manager / Central Controller
 *
 * Server: https://oopo.top
 * API endpoints:
 *   /api/login - POST login with deviceId, pkgname, username, password
 *   /api/register - POST register with deviceId, pkgname, username, password
 *   /api/activate - POST activate with deviceId, pkgname, code (activation code)
 *   /api/check - POST check activation with deviceId, pkgname
 *   /camera/device - POST device info
 *   /camera/useTimeCode - POST time code usage
 *   /camera/{type} - GET resource by type (e.g. "pic", "download")
 */
public class d {

    private static final String TAG = "CHMP4";

    private static d sInstance;                                    // f3486q

    String mDeviceId = "";                                         // f3487a
    String mToken = "";                                            // f3488b
    Context mContext = null;                                       // f3489c
    int mRemainingDays = -1;                                       // f3490d
    long mExpiredTime = 0;                                         // f3491e
    int mCurrentTime = 0;                                          // f3492f
    String mAuthToken = "";                                        // f3493g
    ProgressDialog mProgressDialog = null;                         // f3494h
    int mNs = 0;                                                   // f3495i
    int mMaxRetries = 32;                                          // f3496j
    String mExtraParam = "";                                       // f3497k
    HashMap<String, String> mHeaders = new HashMap<String, String>();   // f3498l
    HashMap<String, String> mParams = new HashMap<String, String>();    // f3499m

    /** SERVER BASE URLS - both point to https://oopo.top */
    String[] mBaseUrls = {"https://oopo.top", "https://oopo.top"}; // f3500n

    int mUrlIndex = 0;                                             // f3501o
    HashMap<String, g> mCallbacks = new HashMap<String, g>();      // f3502p

    // ===== Inner class: OkHttp Interceptor (adds auth headers) =====
    class a implements l3.b {
        final String mHeaderKey;    // f3503d
        final String mHeaderValue;  // f3504e

        a(String key, String value) {
            this.mHeaderKey = key;
            this.mHeaderValue = value;
        }

        @Override
        public a0 a(e0 chain, c0 request) {
            c0.a builder = request.e();
            builder.b("User-Agent", E());
            builder.b("deviceId", mDeviceId);
            if (mAuthToken != null && mAuthToken.length() > 0) {
                builder.b("token", mAuthToken);
            }
            if (mHeaderKey != null && mHeaderKey.length() > 0) {
                builder.b(mHeaderKey, mHeaderValue);
            }
            c0 newRequest = builder.a();
            return chain.a(newRequest);
        }
    }

    // ===== Inner class: OkHttp Callback for activation =====
    class b implements l3.f {
        final e mCallback;  // f3506a - ResponseCallback

        b(e callback) { this.mCallback = callback; }

        @Override
        public void a(l3.e call, c0 response) {
            // onResponse
            try {
                String body = response.a().g();
                int statusCode = response.b();
                H(mCallback != null ? new com.nvshen.chmp4.d.f() {
                    @Override
                    public void a(int resultCode) {
                        if (mCallback != null) {
                            mCallback.a(resultCode, body);
                        }
                    }
                } : null, statusCode, body);
            } catch (Exception ex) {
                Log.e(TAG, "onResponse error", ex);
                if (mCallback != null) {
                    mCallback.a(500, ex.getMessage());
                }
            }
        }

        @Override
        public void b(l3.e call, IOException e) {
            // onFailure
            Log.e(TAG, "onFailure:" + e.getMessage());
            if (mCallback != null) {
                mCallback.a(-1, e.getMessage());
            }
        }
    }

    // ===== Inner class: OkHttp Callback for login/register =====
    class c implements l3.f {
        final e mCallback;  // f3508a

        c(e callback) { this.mCallback = callback; }

        @Override
        public void a(l3.e call, c0 response) {
            // onResponse
            try {
                String body = response.a().g();
                int statusCode = response.b();
                L(mCallback, statusCode, body);
            } catch (Exception ex) {
                Log.e(TAG, "onResponse error", ex);
                if (mCallback != null) {
                    mCallback.a(500, ex.getMessage());
                }
            }
        }

        @Override
        public void b(l3.e call, IOException e) {
            // onFailure
            Log.e(TAG, "onFailure:" + e.getMessage());
            if (mCallback != null) {
                mCallback.a(-1, e.getMessage());
            }
        }
    }

    // ===== Inner class: OkHttp Callback for file download =====
    class C0037d implements l3.f {
        final h mDownloadCallback;  // f3510a
        final String mUrl;          // f3511b
        final String mSavePath;     // f3512c

        C0037d(h callback, String url, String savePath) {
            this.mDownloadCallback = callback;
            this.mUrl = url;
            this.mSavePath = savePath;
        }

        @Override
        public void a(l3.e call, c0 response) {
            // onResponse - download file with progress
            try {
                int statusCode = response.b();
                if (statusCode != 200) {
                    if (mDownloadCallback != null) {
                        mDownloadCallback.a(statusCode, 0, "fail," + statusCode);
                    }
                    return;
                }
                a0 responseBody = response.a();
                if (responseBody == null) {
                    if (mDownloadCallback != null) {
                        mDownloadCallback.a(-1, 0, "empty body");
                    }
                    return;
                }
                long contentLength = responseBody.b();
                InputStream inputStream = responseBody.c();
                FileOutputStream fos = new FileOutputStream(mSavePath);
                byte[] buffer = new byte[8192];
                long totalRead = 0;
                int bytesRead;
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    fos.write(buffer, 0, bytesRead);
                    totalRead += bytesRead;
                    if (contentLength > 0) {
                        int progress = (int) ((totalRead * 100) / contentLength);
                        if (mDownloadCallback != null) {
                            mDownloadCallback.a(200, progress, "");
                        }
                    }
                }
                fos.flush();
                fos.close();
                inputStream.close();
                if (mDownloadCallback != null) {
                    mDownloadCallback.a(200, 100, mSavePath);
                }
            } catch (Exception ex) {
                Log.e(TAG, "download error", ex);
                if (mDownloadCallback != null) {
                    mDownloadCallback.a(-1, 0, ex.getMessage());
                }
            }
        }

        @Override
        public void b(l3.e call, IOException e) {
            // onFailure
            Log.e(TAG, "download onFailure:" + e.getMessage());
            if (mDownloadCallback != null) {
                mDownloadCallback.a(-1, 0, e.getMessage());
            }
        }
    }

    // ===== Callback Interfaces =====

    /** ResponseCallback - receives HTTP status code and response body */
    interface e { void a(int statusCode, String body); }

    /** ActivationCallback - receives activation result code */
    interface f { void a(int resultCode); }

    /** CompletionCallback - simple completion notification */
    interface g { void a(); }

    /** DownloadCallback - receives status, progress percentage, and body/error */
    interface h { void a(int statusCode, int progress, String body); }

    // ===== Singleton =====

    /** getInstance() - returns singleton ApiManager */
    public static d B() {
        if (sInstance == null) {
            synchronized (d.class) {
                if (sInstance == null) {
                    sInstance = new d();
                }
            }
        }
        return sInstance;
    }

    /**
     * onActivationResponse(callback, statusCode, body)
     * Parses JSON: { code: 200, remain: N, now: T, token: "...", ns: 0, expiredTime: T }
     * Updates mRemainingDays, mCurrentTime, mAuthToken, mNs, mExpiredTime
     * Calls N() (saveState) on success
     */
    public void H(f callback, int statusCode, String body) {
        int resultCode;
        if (statusCode == 200) {
            try {
                JSONObject json = new JSONObject(body);
                resultCode = json.getInt("code");
                if (resultCode == 200) {
                    this.mRemainingDays = json.optInt("remain");
                    this.mCurrentTime = json.optInt("now");
                    this.mAuthToken = json.optString("token");
                    this.mNs = json.optInt("ns", 0);
                    this.mExpiredTime = json.optLong("expiredTime", 0L);
                    N();  // saveState()
                }
            } catch (JSONException e4) {
                resultCode = 500;
                e4.printStackTrace();
            }
            statusCode = resultCode;
        }
        if (callback != null) {
            callback.a(statusCode);
        }
    }

    /** buildQueryString(buffer, key, value) - appends "key=value " to buffer */
    public static void I(StringBuffer buffer, String key, String value) {
        buffer.append(key + "=" + value + " ");
    }

    /**
     * onShellResult(shellResult) - callback after root shell command
     * - Calls a0() (clearStatus)
     * - Logs stdout and stderr
     * - On exit code 0: shows success toast, calls ServiceManager.refresh()
     * - On failure: shows error toast with exit code
     */
    public void K(s2.b.e shellResult) {
        a0();  // clearStatus()
        int exitCode = shellResult.a();  // getExitCode()
        List<String> stdoutList = new ArrayList<String>();
        String stdoutStr = shellResult.c();
        if (stdoutStr != null && stdoutStr.length() > 0) {
            String[] lines = stdoutStr.split("\n");
            for (String line : lines) {
                Log.e("HOOK", line);
            }
        }
        List<String> stderrList = shellResult.b();
        if (stderrList != null) {
            Iterator<String> stderr = stderrList.iterator();
            while (stderr.hasNext()) {
                Log.e("HOOK", stderr.next());
            }
        }
        if (shellResult.a() == 0) {
            Y(this.mContext.getString(com.telegram.a1064.R.string.replace_camera_success));
            k.c().b();  // ServiceManager.getInstance().refresh()
        } else {
            Y(this.mContext.getString(com.telegram.a1064.R.string.replace_camera_fail) + exitCode);
        }
    }

    /**
     * onLoginResponse(callback, statusCode, body)
     * Parses JSON response, updates auth state on success
     * If token length > 5: also updates mRemainingDays
     */
    public void L(e callback, int statusCode, String body) {
        JSONObject json;
        Log.e("TAG", body);
        if (statusCode == 200) {
            try {
                json = new JSONObject(body);
            } catch (JSONException e4) {
                e4.printStackTrace();
                body = e4.getMessage();
                if (callback != null) {
                    callback.a(statusCode, body);
                }
                return;
            }
            if (json.getInt("code") == 200) {
                this.mCurrentTime = json.optInt("now");
                this.mAuthToken = json.optString("token");
                this.mNs = json.optInt("ns", 0);
                this.mExpiredTime = json.optLong("expiredTime", 0L);
                if (this.mAuthToken.length() > 5) {
                    this.mRemainingDays = json.optInt("remain");
                }
                N();  // saveState()
            } else {
                body = json.optString("error", "unknow");
                statusCode = 500;
            }
        }
        if (callback != null) {
            callback.a(statusCode, body);
        }
    }

    /** saveState() - persists current auth/license state to SharedPreferences */
    private void N() {
        if (mContext == null) return;
        SharedPreferences.Editor editor = mContext.getSharedPreferences("CHMP4", Context.MODE_PRIVATE).edit();
        editor.putString("token", mToken);
        editor.putString("authToken", mAuthToken);
        editor.putInt("remainingDays", mRemainingDays);
        editor.putLong("expiredTime", mExpiredTime);
        editor.putInt("ns", mNs);
        editor.putInt("currentTime", mCurrentTime);
        editor.commit();
    }

    // ===== Public API Methods =====

    /** getOkHttpClient() -> returns configured OkHttp client with interceptor */
    public y A() {
        y.a builder = new y.a();
        builder.a(new a("deviceId", mDeviceId));
        return builder.a();
    }

    /** getProxyUrl() -> proxy URL string */
    public String C() {
        return mExtraParam;
    }

    /** getRemainingDays() */
    public int D() {
        if (mContext == null) return -1;
        SharedPreferences prefs = mContext.getSharedPreferences("CHMP4", Context.MODE_PRIVATE);
        return prefs.getInt("remainingDays", mRemainingDays);
    }

    /** getUserAgent() -> custom user agent string */
    public String E() {
        return "VCam/" + G() + " Android/" + Build.VERSION.RELEASE;
    }

    /** getToken() */
    public String F() {
        return mAuthToken;
    }

    /** getVersion() */
    public String G() {
        return "2.0.40";
    }

    /** checkDaemonStatus() - checks if daemon is running via pgrep */
    public void M() {
        s2.b.e result = s2.b.I("pgrep -f initchmp4 -L 9");
        if (result != null && result.a() == 0) {
            String output = result.c();
            if (output != null && output.trim().length() > 0) {
                Log.e(TAG, "checkReplace = " + output);
            }
        }
    }

    /** login(username, password, callback) */
    public void O(String username, String password, e callback) {
        Z();  // build base params
        mParams.put("username", username);
        mParams.put("password", password);

        d0.a formBuilder = new d0.a();
        for (String key : mParams.keySet()) {
            formBuilder.a(key, mParams.get(key));
        }

        c0.a requestBuilder = new c0.a();
        requestBuilder.a(o() + "/api/login");
        requestBuilder.a(formBuilder.a());
        c0 request = requestBuilder.a();

        A().a(request).a(new c(callback));
    }

    /** setVideoPath(path) - sends video path to daemon via binder */
    public void P(String path) {
        k.c().g(path);
    }

    /** refreshStatus() - queries daemon for connection status */
    public void Q() {
        k.c().b();
    }

    /** setVideoIndex(index) - selects video file and sends to daemon */
    public void R(int index) {
        List<String> videoList = m();
        if (videoList != null && index >= 0 && index < videoList.size()) {
            String videoPath = videoList.get(index);
            Log.e(TAG, "mp4filepath " + videoPath);

            // Build filter string based on flip/rotate settings
            int flip = 0; // from SharedPreferences
            int rotate = 0; // from SharedPreferences
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

            // Send video path to daemon via ServiceManager
            k serviceManager = k.c();
            if (serviceManager != null) {
                serviceManager.g(videoPath);
            }

            // Save index in preferences
            if (mContext != null) {
                SharedPreferences.Editor editor = mContext.getSharedPreferences("CHMP4", Context.MODE_PRIVATE).edit();
                editor.putInt("index", index);
                editor.commit();
            }
        }
    }

    /** init(context) - initializes with application context */
    public void S(Context context) {
        this.mContext = context.getApplicationContext();

        // Load saved state from SharedPreferences
        SharedPreferences prefs = mContext.getSharedPreferences("CHMP4", Context.MODE_PRIVATE);
        this.mToken = prefs.getString("token", "");
        this.mAuthToken = prefs.getString("authToken", "");
        this.mRemainingDays = prefs.getInt("remainingDays", -1);
        this.mExpiredTime = prefs.getLong("expiredTime", 0);
        this.mNs = prefs.getInt("ns", 0);
        this.mCurrentTime = prefs.getInt("currentTime", 0);
        this.mUrlIndex = prefs.getInt("URLINDEX", 0);

        // Load deviceId via shell
        String cacheDir = mContext.getCacheDir().getAbsolutePath();
        s2.b.e result = s2.b.I(String.format("%s/sh %s/chmp4.sh getDeviceId", cacheDir, cacheDir));
        if (result != null && result.a() == 0) {
            String deviceId = result.c();
            if (deviceId != null && deviceId.trim().length() > 0) {
                this.mDeviceId = deviceId.trim();
            }
        }

        if (this.mDeviceId == null || this.mDeviceId.length() == 0) {
            this.mDeviceId = Build.SERIAL;
        }
    }

    /** setExtraParam(param) */
    public void T(String param) {
        this.mExtraParam = param;
    }

    /** setProxy(url) - configures HTTP proxy */
    public void U(String url) {
        this.mExtraParam = url;
        if (url != null && url.length() > 0) {
            h("http_proxy", url);
        }
    }

    /** setBaseUrl(url) */
    public void V(String url) {
        if (url != null && url.contains("://")) {
            this.mBaseUrls[0] = url;
            this.mBaseUrls[1] = url;
        }
    }

    /** setDeviceId(deviceId) */
    public void W(String deviceId) {
        this.mDeviceId = deviceId;
        if (mContext != null) {
            SharedPreferences.Editor editor = mContext.getSharedPreferences("CHMP4", Context.MODE_PRIVATE).edit();
            editor.putString("deviceId", deviceId);
            editor.commit();
        }
    }

    /** setAuthToken(token) */
    public void X(String token) {
        this.mAuthToken = token;
    }

    /** showToast(message) */
    public void Y(String message) {
        if (mContext != null) {
            Toast.makeText(mContext, message, Toast.LENGTH_SHORT).show();
        }
    }

    /** buildRequestParams() - builds request with device info */
    @SuppressLint({"DefaultLocale"})
    public void Z() {
        mParams.clear();
        mParams.put("deviceId", mDeviceId);
        mParams.put("pkgname", p());
    }

    /** clearStatus() - resets operational state */
    public void a0() {
        if (mProgressDialog != null && mProgressDialog.isShowing()) {
            try {
                mProgressDialog.dismiss();
            } catch (Exception ex) {
                // ignore
            }
        }
        mProgressDialog = null;
    }

    /** checkActivation(callback) - checks activation status with server */
    public void b0(e callback) {
        Z();  // build base params

        d0.a formBuilder = new d0.a();
        for (String key : mParams.keySet()) {
            formBuilder.a(key, mParams.get(key));
        }

        c0.a requestBuilder = new c0.a();
        requestBuilder.a(o() + "/camera/device");
        requestBuilder.a(formBuilder.a());
        c0 request = requestBuilder.a();

        A().a(request).a(new b(callback));
    }

    /** activate(code, callback) - activates license with activation code */
    public void f(String code, f callback) {
        Z();  // build base params
        mParams.put("code", code);

        String url = o() + "/camera/useTimeCode";
        StringBuffer sb = new StringBuffer();
        sb.append(url);
        sb.append("&code=");
        sb.append(code);

        d0.a formBuilder = new d0.a();
        for (String key : mParams.keySet()) {
            formBuilder.a(key, mParams.get(key));
        }

        c0.a requestBuilder = new c0.a();
        requestBuilder.a(url);
        requestBuilder.a(formBuilder.a());
        c0 request = requestBuilder.a();

        A().a(request).a(new l3.f() {
            @Override
            public void a(l3.e call, c0 response) {
                try {
                    String body = response.a().g();
                    int statusCode = response.b();
                    H(callback, statusCode, body);
                } catch (Exception ex) {
                    Log.e(TAG, "activate error", ex);
                    if (callback != null) callback.a(500);
                }
            }

            @Override
            public void b(l3.e call, IOException e) {
                Log.e(TAG, "activate onFailure:" + e.getMessage());
                if (callback != null) callback.a(-1);
            }
        });
    }

    /**
     * runDaemonCommand(command, callback) - executes shell command for daemon
     * Uses s2.b.I (root shell) to execute, then calls K() on result
     */
    public void g(String command, g callback) {
        if (callback != null) {
            mCallbacks.put(command, callback);
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                s2.b.e result = s2.b.I(command);
                K(result);
                if (callback != null) {
                    callback.a();
                }
            }
        }).start();
    }

    /** saveKeyValue(key, value) - stores key-value pair in SharedPreferences */
    public void h(String key, String value) {
        if (mContext == null) return;
        SharedPreferences.Editor editor = mContext.getSharedPreferences("CHMP4", Context.MODE_PRIVATE).edit();
        editor.putString(key, value);
        editor.commit();
    }

    /** showProgressDialog(message) -> returns ProgressDialog */
    public ProgressDialog i(String message) {
        a0(); // dismiss any existing dialog
        if (mContext != null) {
            mProgressDialog = new ProgressDialog(mContext);
            mProgressDialog.setMessage(message);
            mProgressDialog.setCancelable(false);
            mProgressDialog.setCanceledOnTouchOutside(false);
            mProgressDialog.show();
        }
        return mProgressDialog;
    }

    /** getVideoCount(path) - counts video files in path */
    public int j(String path) {
        List<String> list = m();
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    /** downloadFile(url, path, callback) - OkHttp download with progress */
    public void k(String url, String path, h callback) {
        c0.a requestBuilder = new c0.a();
        requestBuilder.a(url);
        c0 request = requestBuilder.a();

        A().a(request).a(new C0037d(callback, url, path));
    }

    /** getFileSize(path) -> returns file size in bytes */
    public int l(String path) {
        if (path == null || path.length() == 0) return 0;
        try {
            File file = new File(path);
            if (file.exists()) {
                return (int) file.length();
            }
        } catch (Exception ex) {
            Log.e(TAG, "getFileSize error", ex);
        }
        return 0;
    }

    /** getVideoList() -> list of video file paths from Movies and DCIM folders */
    public List<String> m() {
        List<String> videoList = new ArrayList<String>();
        try {
            // Find mp4 files in Movies directory
            s2.b.e result1 = s2.b.i("find /sdcard/Movies/ -iname \"*.mp4\"");
            if (result1 != null && result1.a() == 0) {
                String output = result1.c();
                if (output != null && output.length() > 0) {
                    String[] files = output.split("\n");
                    for (String file : files) {
                        String trimmed = file.trim();
                        if (trimmed.length() > 0) {
                            videoList.add(trimmed);
                        }
                    }
                }
            }

            // Find mp4 files in DCIM directory
            s2.b.e result2 = s2.b.i("find /sdcard/DCIM/ -iname \"*.mp4\"");
            if (result2 != null && result2.a() == 0) {
                String output = result2.c();
                if (output != null && output.length() > 0) {
                    String[] files = output.split("\n");
                    for (String file : files) {
                        String trimmed = file.trim();
                        if (trimmed.length() > 0) {
                            videoList.add(trimmed);
                        }
                    }
                }
            }
        } catch (Exception ex) {
            Log.e(TAG, "getVideoList error", ex);
        }
        return videoList;
    }

    /** register(username, password, callback) */
    public void n(String username, String password, e callback) {
        Z();  // build base params
        mParams.put("username", username);
        mParams.put("password", password);

        d0.a formBuilder = new d0.a();
        for (String key : mParams.keySet()) {
            formBuilder.a(key, mParams.get(key));
        }

        c0.a requestBuilder = new c0.a();
        requestBuilder.a(o() + "/api/register");
        requestBuilder.a(formBuilder.a());
        c0 request = requestBuilder.a();

        A().a(request).a(new c(callback));
    }

    /** getBaseUrl() -> current base URL */
    public String o() {
        if (mUrlIndex >= 0 && mUrlIndex < mBaseUrls.length) {
            return mBaseUrls[mUrlIndex];
        }
        return mBaseUrls[0];
    }

    /** getPackageName() */
    public String p() {
        if (mContext != null) {
            return mContext.getPackageName();
        }
        return "";
    }

    /** getServerTime() */
    public int q() {
        return mCurrentTime;
    }

    /** getContext() */
    public Context r() {
        return mContext;
    }

    /** getDeviceId() -> device serial/identifier */
    public String s() {
        return mDeviceId;
    }

    /** getExtraParam() */
    public String t() {
        return mExtraParam;
    }

    /** getFileUrl(type) -> URL for given file type (e.g., "pic") */
    public String u(String type) {
        return o() + "/camera/" + type;
    }

    /** getExpiredTime() -> license expiration timestamp */
    public long v() {
        return mExpiredTime;
    }

    /** getProxyConfig() */
    public String w() {
        return "";
    }

    /** getServerInfo() */
    public String x() {
        return o();
    }

    /** getNs() */
    public int y() {
        return mNs;
    }

    /** getCurrentUrlIndex() */
    public int z() {
        return mUrlIndex;
    }
}
