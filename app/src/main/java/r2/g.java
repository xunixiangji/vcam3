package r2;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.HttpAuthHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.fragment.app.Fragment;
import com.telegram.a1064.R;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;

/**
 * WebViewFragment (r2.g) - In-App WebView for Help/Dashboard
 *
 * Displays a web page from the server with device info.
 * URL: {baseUrl}/html/chmp4.html?t=1&lan={locale}
 */
public class g extends Fragment {

    // No-op Executor for proxy setup
    class a implements Executor {
        a() {}
        @Override
        public void execute(Runnable runnable) { /* no-op */ }
    }

    // No-op Runnable for proxy callback
    class b implements Runnable {
        b() {}
        @Override
        public void run() { /* no-op */ }
    }

    // WebViewClient with proxy auth and header injection
    class c extends WebViewClient {
        final Map<String, String> mHeaders;
        final String mProxyUser;
        final String mProxyPass;

        c(Map<String, String> headers, String proxyUser, String proxyPass) {
            this.mHeaders = headers;
            this.mProxyUser = proxyUser;
            this.mProxyPass = proxyPass;
        }

        @Override
        public void onReceivedHttpAuthRequest(WebView webView, HttpAuthHandler handler,
                String host, String realm) {
            Log.e("HOOK", "onReceivedHttpAuthRequest" + this.mProxyUser);
            if (!this.mProxyUser.isEmpty() && !this.mProxyPass.isEmpty()) {
                handler.proceed(this.mProxyUser, this.mProxyPass);
            }
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView webView, String url) {
            webView.loadUrl(url, this.mHeaders);
            return false;
        }
    }

    @Override
    @SuppressLint({"SetJavaScriptEnabled"})
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_index, container, false);
        WebView webView = (WebView) view.findViewById(R.id.webview);

        String deviceId = com.nvshen.chmp4.d.B().s();
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setUserAgentString(com.nvshen.chmp4.d.B().E());

        // Parse proxy URL: "protocol://user:password@host:port"
        String proxyUrl = com.nvshen.chmp4.d.B().C();
        String proxyUser = "";
        String proxyPass = "";
        if (proxyUrl != null && proxyUrl.indexOf("@") > 0) {
            try {
                String[] parts = proxyUrl.split("@");
                String[] authParts = parts[0].split("://")[1].split(":");
                if (authParts.length == 2) {
                    proxyUser = authParts[0];
                    proxyPass = authParts[1];
                }
                proxyUrl = parts[0].split("://")[0] + "://" + parts[1];
            } catch (Exception ex) {
                Log.e("HOOK", "Proxy URL parse error", ex);
                proxyUrl = "";
            }
        }
        if (proxyUrl == null) {
            proxyUrl = "";
        }

        // Apply proxy if configured
        if (j0.c.a("PROXY_OVERRIDE") && !proxyUrl.isEmpty()) {
            j0.a proxyConfig = new j0.a.C0049a().a(proxyUrl).b();
            Log.e("HOOK", "webview proxy " + proxyUrl + ", " + proxyUser + ":" + proxyPass);
            j0.b.a().b(proxyConfig, new a(), new b());
        }

        // Load page with device headers
        HashMap<String, String> headers = new HashMap<String, String>();
        headers.put("deviceId", deviceId);
        String packageName = "";
        if (getActivity() != null) {
            packageName = getActivity().getPackageName();
        }
        headers.put("pkgname", packageName);
        webView.loadUrl(com.nvshen.chmp4.d.B().o() + "/html/chmp4.html?t=1&lan="
            + Locale.getDefault().getLanguage(), headers);
        webView.setWebViewClient(new c(headers, proxyUser, proxyPass));

        return view;
    }
}
