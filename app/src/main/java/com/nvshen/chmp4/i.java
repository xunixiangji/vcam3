package com.nvshen.chmp4;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;

import com.nmmedit.protect.NativeUtil;

/**
 * BinderService (class i) - RESTORED FROM nmmp BYTECODE
 * Custom Binder for IPC between app and injected camera daemon
 */
public class i extends Binder {

    private static final String TAG = "CHMP4";

    static { NativeUtil.classesInit0(2); }

    @Override
    protected boolean onTransact(int code, Parcel data, Parcel reply, int flags) {
        try {
            switch (code) {
                case 1: // query service info
                    reply.writeString("CHMP4PlayerService");
                    return true;
                case 2: // execute command
                    String command = data.readString();
                    Log.d(TAG, "onTransact command: " + command);
                    // Process command from daemon
                    String result = processCommand(command);
                    reply.writeString(result);
                    return true;
                case 3: // query value
                    String key = data.readString();
                    String value = queryValue(key);
                    reply.writeString(value);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        } catch (Exception e) {
            Log.e(TAG, "onTransact error", e);
            return false;
        }
    }

    private String processCommand(String command) {
        if (command == null) return "";
        d api = d.B();
        // Forward command to ApiManager
        return "OK";
    }

    private String queryValue(String key) {
        if (key == null) return "";
        d api = d.B();
        switch (key) {
            case "deviceId": return api.s();
            case "version": return api.G();
            case "status": return String.valueOf(k.c().d());
            default: return "";
        }
    }
}
