package j0;

/**
 * ProxyConfig wrapper (j0.a)
 * Wraps AndroidX WebKit ProxyConfig.
 */
public class a {

    private final String mProxyUrl;

    private a(String proxyUrl) {
        this.mProxyUrl = proxyUrl;
    }

    public String getProxyUrl() {
        return mProxyUrl;
    }

    // Builder (originally named C0049a to avoid collision)
    public static class C0049a {
        private String mProxyUrl = "";

        public C0049a() {}

        public C0049a a(String proxyUrl) {
            this.mProxyUrl = proxyUrl;
            return this;
        }

        public a b() {
            return new a(mProxyUrl);
        }
    }
}
