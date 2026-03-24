package s2;

import android.util.Log;
import com.topjohnwu.superuser.Shell;
import java.util.List;
import java.util.ArrayList;

/**
 * Root Shell wrapper (s2.b) - uses libsu (topjohnwu) for persistent root shell.
 * Persistent shell survives cameraserver restarts (no SIGKILL).
 */
public class b {

    private static final String TAG = "RootShell";
    public static boolean f5887c = false;

    static {
        // Configure libsu: set flags before any shell is created
        Shell.enableVerboseLogging = true;
        Shell.setDefaultBuilder(Shell.Builder.create()
            .setFlags(Shell.FLAG_MOUNT_MASTER)
            .setTimeout(30)
        );
    }

    /** Callback interface for shell results */
    public interface f {
        void a(b.e result);
    }

    /** Shell command result */
    public static class e {
        private int mExitCode;
        private List<String> mStdout;
        private List<String> mStderr;

        public e(int exitCode, List<String> stdout, List<String> stderr) {
            this.mExitCode = exitCode;
            this.mStdout = stdout != null ? stdout : new ArrayList<String>();
            this.mStderr = stderr != null ? stderr : new ArrayList<String>();
        }

        /** getExitCode */
        public int a() { return mExitCode; }

        /** getStderr as List */
        public List<String> b() { return mStderr; }

        /** getStdout as String (joined by newline) */
        public String c() {
            if (mStdout == null || mStdout.isEmpty()) return "";
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < mStdout.size(); i++) {
                if (i > 0) sb.append("\n");
                sb.append(mStdout.get(i));
            }
            return sb.toString();
        }

        /** isSuccess */
        public boolean M() { return mExitCode == 0; }

        /** async callback */
        public void a(f callback) {
            if (callback != null) callback.a(this);
        }
    }

    /** Shell configuration builder (compatibility stub) */
    public static class a {
        public static a a() { return new a(); }
        public a b(int val) { return this; }
        public a c(long val) { return this; }
    }

    /** Async command builder */
    public static class d {
        private String mCmd;
        public d a(String cmd) { this.mCmd = cmd; return this; }
        public void a(final f callback) {
            final String cmd = this.mCmd;
            new Thread(new Runnable() {
                @Override
                public void run() {
                    e result = I(cmd);
                    if (callback != null) callback.a(result);
                }
            }).start();
        }
    }

    /** Configure shell (compatibility - libsu handles config in static block) */
    public static void N(a config) {}

    /**
     * I(cmd) - Execute command via persistent ROOT shell (libsu).
     * The shell persists across calls - won't be killed when cameraserver restarts.
     */
    public static e I(String cmd) {
        try {
            Log.d(TAG, "cmd: " + cmd);
            Shell.Result result = Shell.cmd(cmd).exec();
            int exitCode = result.getCode();
            List<String> stdout = result.getOut();
            List<String> stderr = result.getErr();
            Log.d(TAG, "exitCode: " + exitCode);
            return new e(exitCode, stdout, stderr);
        } catch (Exception ex) {
            Log.e(TAG, "Shell exec failed: " + cmd, ex);
            List<String> errList = new ArrayList<String>();
            errList.add(ex.getMessage());
            return new e(-1, new ArrayList<String>(), errList);
        }
    }

    /**
     * i(cmd) - Execute command via NON-root shell.
     */
    public static e i(String cmd) {
        try {
            Shell.Result result = Shell.cmd(cmd).to(new ArrayList<String>(), new ArrayList<String>()).exec();
            return new e(result.getCode(), result.getOut(), result.getErr());
        } catch (Exception ex) {
            Log.e(TAG, "Shell exec failed: " + cmd, ex);
            List<String> errList = new ArrayList<String>();
            errList.add(ex.getMessage());
            return new e(-1, new ArrayList<String>(), errList);
        }
    }

    /** c(cmd) - Create async command builder */
    public static d c(String cmd) {
        d builder = new d();
        builder.a(cmd);
        return builder;
    }
}
