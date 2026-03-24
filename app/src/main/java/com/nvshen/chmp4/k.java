package com.nvshen.chmp4;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

/**
 * ServiceManager (class k) - RESTORED FROM nmmp BYTECODE
 * Singleton Binder service manager for daemon IPC
 */
public class k {

    private static final String TAG = "CHMP4";
    private static k sInstance;
    private i mBinderService;
    private IBinder mRemoteBinder;
    private int mStatus = 0;

    private k() {
        a(); // init
    }

    // getInstance
    static k c() {
        if (sInstance == null) {
            sInstance = new k();
        }
        return sInstance;
    }

    // init - create binder service
    private void a() {
        mBinderService = new i();
        // Register with Android ServiceManager (hidden API)
        try {
            Class<?> sm = Class.forName("android.os.ServiceManager");
            sm.getMethod("addService", String.class, IBinder.class)
              .invoke(null, "CHMP4PlayerService", mBinderService);
        } catch (Exception e) {
            Log.e(TAG, "Failed to register binder service", e);
        }
    }

    // refresh - re-establish connection
    public void b() {
        try {
            Class<?> sm = Class.forName("android.os.ServiceManager");
            mRemoteBinder = (IBinder) sm.getMethod("getService", String.class)
                .invoke(null, "CHMP4PlayerService");
        } catch (Exception e) {
            Log.e(TAG, "Failed to get binder service", e);
        }
    }

    // getStatus
    public int d() { return mStatus; }

    // queryService
    public String e(IBinder binder) {
        if (binder == null) return "";
        try {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            binder.transact(1, data, reply, 0);
            String result = reply.readString();
            data.recycle();
            reply.recycle();
            return result != null ? result : "";
        } catch (Exception e) {
            return "";
        }
    }

    // cleanup
    private void f() {
        mRemoteBinder = null;
    }

    // sendCommand
    public String g(String command) {
        if (mRemoteBinder == null) return "";
        try {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            data.writeString(command);
            mRemoteBinder.transact(2, data, reply, 0);
            String result = reply.readString();
            data.recycle();
            reply.recycle();
            return result != null ? result : "";
        } catch (Exception e) {
            Log.e(TAG, "sendCommand failed", e);
            return "";
        }
    }

    // queryValue
    public String h(String key) {
        if (mRemoteBinder == null) return "";
        try {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            data.writeString(key);
            mRemoteBinder.transact(3, data, reply, 0);
            String result = reply.readString();
            data.recycle();
            reply.recycle();
            return result != null ? result : "";
        } catch (Exception e) {
            return "";
        }
    }

    // transact with int code
    public int i(int code) {
        if (mRemoteBinder == null) return -1;
        try {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            mRemoteBinder.transact(code, data, reply, 0);
            int result = reply.readInt();
            data.recycle();
            reply.recycle();
            return result;
        } catch (Exception e) {
            return -1;
        }
    }

    public String j(int code) { return ""; }
    public String k(int code) { return ""; }
    public int l() { return mStatus; }
}
