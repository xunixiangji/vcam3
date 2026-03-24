package s2;
import java.util.List;
import java.util.ArrayList;
public class b {
    public static boolean f5887c = false;
    public interface f { void a(b.e result); }
    public static class e {
        public int a() { return 0; } // getExitCode
        public List<java.lang.String> b() { return new ArrayList<java.lang.String>(); } // getStderr
        public String c() { return ""; } // getStdout - returns first line as String
        public boolean M() { return false; } // isSuccess
        public void a(f callback) {} // async callback
    }
    public static class a {
        public static a a() { return new a(); }
        public a b(int val) { return this; }
        public a c(long val) { return this; }
    }
    public static class d {
        public d a(String cmd) { return this; }
        public void a(f callback) {}
    }
    public static void N(a config) {}
    public static e I(String cmd) { return new e(); }
    public e i() { return this instanceof e ? (e) this : new e(); }
    public static d c(String cmd) { return new d(); }
}
