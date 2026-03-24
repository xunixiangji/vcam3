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

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

/**
 * ApiManager (class d) - FULLY RESTORED FROM nmmp BYTECODE
 * HTTP Client / API Manager / Central Controller
 *
 * Server: https://oopo.top
 * API endpoints:
 *   /api/login - POST login with deviceId, pkgname, username, password
 *   /api/register - POST register with deviceId, pkgname, username, password
 *   /camera/useTimeCode - POST activate with code
 *   /camera/device - POST check activation
 *   /camera/{type} - GET resource by type
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
    private OkHttpClient mClient = null;

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
    public OkHttpClient A() {
        if (mClient == null) {
            mClient = new OkHttpClient.Builder()
                .addInterceptor(new Interceptor() {
                    @Override
                    public Response intercept(Chain chain) throws IOException {
                        Request original = chain.request();
                        Request.Builder builder = original.newBuilder()
                            .header("User-Agent", E())
                            .header("deviceId", mDeviceId);
                        if (mAuthToken != null && mAuthToken.length() > 0) {
                            builder.header("token", mAuthToken);
                        }
                        return chain.proceed(builder.build());
                    }
                })
                .build();
        }
        return mClient;
    }

    /** getProxyUrl() -> proxy URL string */
    public String C() {
        return mExtraParam;
    }

    /** getRemainingDays() */
    public int D() {
        if (mContext == null) return mRemainingDays;
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
    public void O(String username, String password, final e callback) {
        Z();  // build base params
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
                Log.e(TAG, "onFailure:" + e2.getMessage());
                if (callback != null) callback.a(-1, e2.getMessage());
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String body = response.body() != null ? response.body().string() : "";
                int statusCode = response.code();
                L(callback, statusCode, body);
            }
        });
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

            // Build filter string
            String filterStr = "";
            if (mContext != null) {
                SharedPreferences prefs = mContext.getSharedPreferences("CHMP4", Context.MODE_PRIVATE);
                int flip = Integer.parseInt(prefs.getString("flip", "0"));
                int rotate = Integer.parseInt(prefs.getString("rotate", "0"));

                if (rotate == 1) filterStr = filterStr + ",transpose=2";
                if (rotate == 2) filterStr = filterStr + ",transpose=1";
                if (flip == 1) filterStr = filterStr + ",hflip";
                if (flip == 2) filterStr = filterStr + ",vflip";
            }

            k serviceManager = k.c();
            if (serviceManager != null) {
                serviceManager.g(videoPath);
            }

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

    /** clearStatus() - resets operational state, dismisses progress dialog */
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
    public void b0(final e callback) {
        Z();  // build base params

        FormBody.Builder formBuilder = new FormBody.Builder();
        for (String key : mParams.keySet()) {
            formBuilder.add(key, mParams.get(key));
        }

        Request request = new Request.Builder()
            .url(o() + "/camera/device")
            .post(formBuilder.build())
            .build();

        A().newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e2) {
                Log.e(TAG, "onFailure:" + e2.getMessage());
                if (callback != null) callback.a(-1, e2.getMessage());
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String body = response.body() != null ? response.body().string() : "";
                int statusCode = response.code();
                // Parse as activation response
                H(new f() {
                    @Override
                    public void a(int resultCode) {
                        if (callback != null) callback.a(resultCode, body);
                    }
                }, statusCode, body);
            }
        });
    }

    /** activate(code, callback) - activates license with activation code */
    public void f(String code, final f callback) {
        Z();  // build base params
        mParams.put("code", code);

        FormBody.Builder formBuilder = new FormBody.Builder();
        for (String key : mParams.keySet()) {
            formBuilder.add(key, mParams.get(key));
        }

        String url = o() + "/camera/useTimeCode";

        Request request = new Request.Builder()
            .url(url)
            .post(formBuilder.build())
            .build();

        A().newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e2) {
                Log.e(TAG, "activate onFailure:" + e2.getMessage());
                if (callback != null) callback.a(-1);
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String body = response.body() != null ? response.body().string() : "";
                int statusCode = response.code();
                H(callback, statusCode, body);
            }
        });
    }

    /**
     * runDaemonCommand(command, callback) - executes shell command for daemon
     * Uses s2.b.I (root shell) to execute, then calls K() on result
     */
    public void g(String command, final g callback) {
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

    /** getVideoCount(path) - counts video files */
    public int j(String path) {
        List<String> list = m();
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    /** downloadFile(url, path, callback) - OkHttp download with progress */
    public void k(String url, String path, final h callback) {
        Request request = new Request.Builder().url(url).build();

        A().newCall(request).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException e2) {
                Log.e(TAG, "download onFailure:" + e2.getMessage());
                if (callback != null) callback.a(-1, 0, e2.getMessage());
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                int statusCode = response.code();
                if (statusCode != 200) {
                    if (callback != null) callback.a(statusCode, 0, "fail," + statusCode);
                    return;
                }
                ResponseBody responseBody = response.body();
                if (responseBody == null) {
                    if (callback != null) callback.a(-1, 0, "empty body");
                    return;
                }
                long contentLength = responseBody.contentLength();
                InputStream inputStream = responseBody.byteStream();
                FileOutputStream fos = new FileOutputStream(path);
                byte[] buffer = new byte[8192];
                long totalRead = 0;
                int bytesRead;
                while ((bytesRead = inputStream.read(buffer)) != -1) {
                    fos.write(buffer, 0, bytesRead);
                    totalRead += bytesRead;
                    if (contentLength > 0) {
                        int progress = (int) ((totalRead * 100) / contentLength);
                        if (callback != null) callback.a(200, progress, "");
                    }
                }
                fos.flush();
                fos.close();
                inputStream.close();
                if (callback != null) callback.a(200, 100, path);
            }
        });
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
    public void n(String username, String password, final e callback) {
        Z();  // build base params
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
                Log.e(TAG, "onFailure:" + e2.getMessage());
                if (callback != null) callback.a(-1, e2.getMessage());
            }

            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String body = response.body() != null ? response.body().string() : "";
                int statusCode = response.code();
                L(callback, statusCode, body);
            }
        });
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
