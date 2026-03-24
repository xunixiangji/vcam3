package r2;

import s2.b;

/**
 * Callback F (r2.f) - Shell Result Forwarder
 * Forwards shell command results to ApiManager's K() method.
 */
public final class f implements b.f {

    public final com.nvshen.chmp4.d mApiManager;

    public f(com.nvshen.chmp4.d apiManager) {
        this.mApiManager = apiManager;
    }

    @Override
    public final void a(b.e shellResult) {
        // Forward shell result directly to ApiManager.K()
        this.mApiManager.K(shellResult);
    }
}
