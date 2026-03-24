package s2;
import java.util.List;
import java.util.ArrayList;
public class b {
    public interface f { void a(b.e result); }
    public static class e {
        public int a() { return 0; } // getExitCode
        public List<String> b() { return new ArrayList<>(); } // getStderr
        public List<String> c() { return new ArrayList<>(); } // getStdout
    }
    public static class d {
        public d a(String cmd) { return this; }
        public void a(f callback) {}
    }
    public static class b {
        public static void a(f callback) {}
    }
    public static d c(String cmd) { return new d(); }
}
