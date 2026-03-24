package s2;

import android.util.Log;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.ArrayList;

/**
 * Root Shell wrapper (s2.b)
 * Uses Runtime.getRuntime().exec("su") for root shell access.
 */
public class b {

    private static final String TAG = "RootShell";
    public static boolean f5887c = false;

    /** Callback interface for shell results */
    public interface f {
        void a(b.e result);
    }

    /** Callback interface for new shell */
    public interface InterfaceC0076b {
        void a(b shell) throws Throwable;
    }

    /** Shell command result */
    public static class e {
        private int mExitCode;
        private String mStdout;
        private List<String> mStderr;

        public e(int exitCode, String stdout, List<String> stderr) {
            this.mExitCode = exitCode;
            this.mStdout = stdout;
            this.mStderr = stderr;
        }

        /** getExitCode */
        public int a() { return mExitCode; }

        /** getStderr as List */
        public List<String> b() { return mStderr; }

        /** getStdout as String (first line or full output) */
        public String c() { return mStdout; }

        /** isSuccess - true if exit code == 0 */
        public boolean M() { return mExitCode == 0; }

        /** async callback */
        public void a(f callback) {
            if (callback != null) {
                callback.a(this);
            }
        }
    }

    /** Shell configuration builder */
    public static class a {
        private int mFlags = 0;
        private long mTimeout = 0;

        public static a a() { return new a(); }

        public a b(int val) {
            this.mFlags = val;
            return this;
        }

        public a c(long val) {
            this.mTimeout = val;
            return this;
        }
    }

    /** Async command builder */
    public static class d {
        private String mCmd;

        public d a(String cmd) {
            this.mCmd = cmd;
            return this;
        }

        public void a(f callback) {
            // Execute async
            final String cmd = this.mCmd;
            new Thread(new Runnable() {
                @Override
                public void run() {
                    e result = I(cmd);
                    if (callback != null) {
                        callback.a(result);
                    }
                }
            }).start();
        }
    }

    /** Configure shell (no-op for compatibility) */
    public static void N(a config) {
        // Configuration stub
    }

    /**
     * I(cmd) - Execute a command via su (root shell) and return result.
     */
    public static e I(String cmd) {
        StringBuilder stdout = new StringBuilder();
        List<String> stderr = new ArrayList<String>();
        int exitCode = -1;
        Process process = null;
        try {
            process = Runtime.getRuntime().exec("su");
            DataOutputStream os = new DataOutputStream(process.getOutputStream());
            os.writeBytes(cmd + "\n");
            os.writeBytes("exit\n");
            os.flush();

            // Read stdout
            BufferedReader stdoutReader = new BufferedReader(
                new InputStreamReader(process.getInputStream()));
            String line;
            boolean first = true;
            while ((line = stdoutReader.readLine()) != null) {
                if (!first) {
                    stdout.append("\n");
                }
                stdout.append(line);
                first = false;
            }

            // Read stderr
            BufferedReader stderrReader = new BufferedReader(
                new InputStreamReader(process.getErrorStream()));
            while ((line = stderrReader.readLine()) != null) {
                stderr.add(line);
            }

            exitCode = process.waitFor();
            Log.d(TAG, "cmd: " + cmd + " exitCode: " + exitCode);
        } catch (Exception ex) {
            Log.e(TAG, "Shell exec failed: " + cmd, ex);
            stderr.add(ex.getMessage());
        } finally {
            if (process != null) {
                process.destroy();
            }
        }
        return new e(exitCode, stdout.toString(), stderr);
    }

    /**
     * i(cmd) - Execute a command via normal shell (no su).
     */
    public static e i(String cmd) {
        StringBuilder stdout = new StringBuilder();
        List<String> stderr = new ArrayList<String>();
        int exitCode = -1;
        Process process = null;
        try {
            process = Runtime.getRuntime().exec(new String[]{"sh", "-c", cmd});

            BufferedReader stdoutReader = new BufferedReader(
                new InputStreamReader(process.getInputStream()));
            String line;
            boolean first = true;
            while ((line = stdoutReader.readLine()) != null) {
                if (!first) {
                    stdout.append("\n");
                }
                stdout.append(line);
                first = false;
            }

            BufferedReader stderrReader = new BufferedReader(
                new InputStreamReader(process.getErrorStream()));
            while ((line = stderrReader.readLine()) != null) {
                stderr.add(line);
            }

            exitCode = process.waitFor();
        } catch (Exception ex) {
            Log.e(TAG, "Shell exec failed: " + cmd, ex);
            stderr.add(ex.getMessage());
        } finally {
            if (process != null) {
                process.destroy();
            }
        }
        return new e(exitCode, stdout.toString(), stderr);
    }

    /**
     * c(cmd) - Create async command builder.
     */
    public static d c(String cmd) {
        d builder = new d();
        builder.a(cmd);
        return builder;
    }
}
