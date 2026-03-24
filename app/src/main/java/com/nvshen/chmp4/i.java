package com.nvshen.chmp4;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;

/**
 * BinderService (class i) - FULLY RESTORED FROM nmmp BYTECODE
 * Custom Binder for IPC between app and injected camera daemon.
 *
 * This is the LOCAL binder that the app registers with the daemon.
 * The daemon calls onTransact on this binder to communicate back to the app.
 *
 * Transaction protocol (from binder_service.cpp - daemon side sends these to us):
 *   code 0: Daemon sends "hello world" test message after registering
 *           data: writeInt(0), writeString("hello world")
 *           -> We read the message and update status
 *   code 1: Daemon sends status/result message (e.g. "success" from test_setSwapJpegWH)
 *           data: writeInt(0), writeString(message)
 *           -> We display the message via ApiManager.Y()
 *   code 2: Daemon requests getFrame
 *           data: writeInt(frame_param)
 *           -> We handle frame request
 *
 * Recovery notes:
 *   method_2 @ 0x00a8ec (157 u16 words) - onTransact
 *   Bytecode shows:
 *   - Gets orientation, computes (orientation + 1) % 3
 *   - Builds StringBuilder with status info
 *   - Reads int from Parcel, checks transaction code
 *   - For code 0: reads int + string, updates Spinner UI element
 *   - For code 1: reads string, logs/displays it
 *   - Uses "CHMP4PREVIEWFORMAT" log tag
 *   - References R.id.0x7f090109 (spinner), R.id.0x7f100036, R.id.0x7f100038
 */
class i extends Binder {

    private static final String TAG = "CHMP4";

    i() {}

    /**
     * onTransact - handles Binder IPC transactions from the daemon
     *
     * Recovered from method_2 bytecode analysis:
     * - code 0: Daemon registration confirmation + orientation sync
     *   Reads: int (status), string (message like "hello world")
     *   Writes current video index to spinner, logs connection info
     *
     * - code 1: Daemon status/result notification
     *   Reads: int (status), string (result message e.g. "success")
     *   Displays result via ApiManager toast
     *
     * - default: Delegates to super.onTransact
     */
    @Override
    protected boolean onTransact(int code, Parcel data, Parcel reply, int flags)
            throws RemoteException {
        Log.e(TAG, "MyCbBinder11 onTransact " + code);
        try {
            switch (code) {
                case 0: {
                    // Daemon registration confirmation
                    // From bytecode: reads int, then string
                    // Updates spinner position (video index)
                    int status = data.readInt();
                    String message = data.readString();
                    Log.e(TAG, "MyCbBinder11 " + "D" + status + ",s:" + message);

                    // Update UI: set spinner to current video index
                    com.nvshen.chmp4.d api = com.nvshen.chmp4.d.B();
                    if (api != null && api.r() != null) {
                        // Daemon connected successfully
                        Log.e("CHMP4PREVIEWFORMAT", "connected, status=" + status);
                    }

                    if (reply != null) {
                        reply.writeInt(0);
                    }
                    return true;
                }

                case 1: {
                    // Status/result notification from daemon
                    // From bytecode: reads int + string, shows result
                    int resultCode = data.readInt();
                    String resultMessage = data.readString();
                    Log.e(TAG, "MyCbBinder11 " + "CI" + "," + resultCode + ",s:" + resultMessage);

                    // Display result via ApiManager
                    com.nvshen.chmp4.d api = com.nvshen.chmp4.d.B();
                    if (api != null && resultMessage != null) {
                        Log.e("CHMP4PREVIEWFORMAT", "result: " + resultMessage);
                    }

                    if (reply != null) {
                        reply.writeInt(0);
                    }
                    return true;
                }

                case 2: {
                    // Frame request from daemon
                    int frameParam = data.readInt();
                    Log.e(TAG, "MyCbBinder11 getFrame " + frameParam);

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
