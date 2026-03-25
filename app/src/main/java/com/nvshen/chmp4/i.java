package com.nvshen.chmp4;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;

/**
 * BinderService (class i) - LOCAL Binder for daemon IPC
 *
 * LOGCAT CONFIRMED (A12 + A13 demo):
 *   Tag = "CHMP4PlayerService" (NOT "CHMP4")
 *   code=0: daemon sends {writeInt(0), writeString("hello world")}
 *     Log: "MyCbBinder11 onTransact 0"
 *     Log: "MyCbBinder11 0,s:hello world"
 *     Log: "regCb 0"
 *   code=1: daemon sends camera size info
 *     Log: "MyCbBinder11 onTransact 1"
 *     Log: "size:640x480"
 *
 * BYTECODE [entry 2, 157 u16]: after code=0 reads data, calls
 *   ApiManager.B() → D() → V() → Y() for UI update
 */
class i extends Binder {

    // LOGCAT CONFIRMED: demo uses "CHMP4PlayerService" as log tag
    private static final String TAG = "CHMP4PlayerService";

    i() {}

    @Override
    protected boolean onTransact(int code, Parcel data, Parcel reply, int flags)
            throws RemoteException {
        // LOGCAT CONFIRMED format: "MyCbBinder11 onTransact N"
        Log.e(TAG, "MyCbBinder11 onTransact " + code + " thread=" + Thread.currentThread().getName());
        try {
            switch (code) {
                case 0: {
                    // LOGCAT CONFIRMED: daemon sends writeInt(0) + writeString("hello world")
                    int status = data.readInt();
                    String message = data.readString();

                    // LOGCAT CONFIRMED format: "MyCbBinder11 0,s:hello world"
                    Log.e(TAG, "MyCbBinder11 " + status + ",s:" + message);

                    // BYTECODE [entry 2]: after reading data, calls ApiManager methods
                    com.nvshen.chmp4.d api = com.nvshen.chmp4.d.B();
                    if (api != null) {
                        // BYTECODE pc=37: V(statusStr) — sets base URL if contains "://"
                        api.V("" + status + message);
                        // BYTECODE pc=99: Y(message) — Toast display
                        if (message != null) {
                            api.Y(message);
                        }
                    }

                    // LOGCAT CONFIRMED: "regCb 0" logged after processing code=0
                    Log.e(TAG, "regCb " + status);

                    if (reply != null) {
                        reply.writeInt(0);
                    }
                    return true;
                }

                case 1: {
                    // LOGCAT CONFIRMED: code=1 sends camera size info
                    // Demo log: "size:640x480" or "size:4624x3472"
                    String sizeInfo = data.readString();
                    Log.e(TAG, sizeInfo != null ? sizeInfo : "");

                    if (reply != null) {
                        reply.writeInt(0);
                    }
                    return true;
                }

                default:
                    return super.onTransact(code, data, reply, flags);
            }
        } catch (Exception ex) {
            Log.e(TAG, "onTransact error: " + ex.getMessage());
            return false;
        }
    }
}
