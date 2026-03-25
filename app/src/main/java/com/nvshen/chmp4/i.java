package com.nvshen.chmp4;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import android.widget.Spinner;

/**
 * BinderService (class i) - RESTORED FROM BYTECODE [entry 2, 157 u16]
 *
 * Local Binder registered with daemon. Daemon calls back onTransact(0)
 * with data = {int(0), String("hello world")} when injection succeeds.
 *
 * BYTECODE CONFIRMED flow:
 *   pc=0:  read string from Parcel (daemon sends "hello world")
 *   pc=4:  ApiManager.B() → getInstance
 *   pc=8:  D() → remainingDays, check != 0
 *   pc=20: StringBuilder(remainDays + "" + message)
 *   pc=37: V(statusStr) → setBaseUrl (ignored if no "://")
 *   pc=44: r() → getContext, getWindow, findViewById(R.id.rotate)
 *   pc=65: Spinner.setSelection()
 *   pc=72: w() + h() → status check
 *   pc=92: getString(R.string.error_no_replace_camera)
 *   pc=95: Y(errorStr) → Toast display on error
 *   pc=99: Y(statusStr) → Toast display
 *
 * Daemon source confirms: binder_service.cpp transact(0) sends
 *   writeInt32(0) + writeString16("hello world")
 */
class i extends Binder {

    private static final String TAG = "CHMP4";

    i() {}

    @Override
    protected boolean onTransact(int code, Parcel data, Parcel reply, int flags)
            throws RemoteException {
        Log.e(TAG, "MyCbBinder11 onTransact " + code);
        try {
            // BYTECODE pc=0: read data from daemon
            // daemon sends: writeInt32(0) + writeString16("hello world")
            String message = "";
            int status = 0;
            if (data != null) {
                try {
                    status = data.readInt();
                    message = data.readString();
                } catch (Exception e) {
                    // some transaction codes may not have this data
                }
            }

            Log.e(TAG, "MyCbBinder11 " + code + ",s:" + message);

            // BYTECODE pc=4: ApiManager.B() getInstance
            com.nvshen.chmp4.d api = com.nvshen.chmp4.d.B();
            if (api == null) return true;

            // BYTECODE pc=8: D() check remainingDays
            int remainDays = api.D();

            // BYTECODE pc=12: if remainDays != 0, continue with UI update
            if (remainDays != 0) {
                // BYTECODE pc=20-37: build status string, call V()
                String statusStr = "" + remainDays + message;
                api.V(statusStr);  // setBaseUrl — only takes effect if contains "://"

                // BYTECODE pc=44-65: get context, find Spinner, set selection
                try {
                    android.content.Context ctx = api.r();
                    if (ctx instanceof android.app.Activity) {
                        android.app.Activity activity = (android.app.Activity) ctx;
                        android.view.View v = activity.getWindow().getDecorView()
                            .findViewById(com.telegram.a1064.R.id.rotate);
                        if (v instanceof Spinner) {
                            ((Spinner) v).setSelection(remainDays);
                        }
                    }
                } catch (Exception e) {
                    // UI access might fail
                }

                // BYTECODE pc=68-80: ServiceManager status check
                try {
                    k sm = k.c();
                    if (sm != null) {
                        sm.h("");
                    }
                } catch (Exception e) {
                    // ignore
                }
            }

            // BYTECODE pc=84-99: check result and show status via Y() (Toast)
            if (message != null && !message.isEmpty()) {
                // Connection success — show the daemon's message (e.g. "hello world")
                api.Y(message);
            } else {
                // Connection failed — show error
                try {
                    android.content.Context ctx = api.r();
                    if (ctx != null) {
                        String errorStr = ctx.getString(
                            com.telegram.a1064.R.string.error_no_replace_camera);
                        api.Y(errorStr);
                    }
                } catch (Exception e) {
                    // ignore
                }
            }

            if (reply != null) {
                reply.writeInt(0);
            }
            return true;
        } catch (Exception ex) {
            Log.e(TAG, "onTransact error: " + ex.getMessage());
            return false;
        }
    }
}
