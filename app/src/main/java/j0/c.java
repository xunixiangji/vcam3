package j0;

/**
 * Proxy feature check stub (j0.c)
 * Wraps AndroidX WebKit ProxyController feature check.
 * Returns false if webkit library is not available.
 */
public class c {
    public static boolean a(String feature) {
        try {
            // Use reflection to avoid compile-time dependency on androidx.webkit
            Class<?> clazz = Class.forName("androidx.webkit.WebViewFeature");
            java.lang.reflect.Method method = clazz.getMethod("isFeatureSupported", String.class);
            Object result = method.invoke(null, feature);
            return result instanceof Boolean && (Boolean) result;
        } catch (Throwable t) {
            return false;
        }
    }
}
