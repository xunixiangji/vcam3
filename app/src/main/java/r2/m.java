package r2;

import com.nvshen.chmp4.SplashActivity;
import s2.b;

/**
 * SplashRootCallback (r2.m) - Root Shell Result for SplashActivity
 * Forwards root shell initialization result to SplashActivity.J()
 */
public final class m implements b.InterfaceC0076b {

    public final SplashActivity mSplashActivity;

    public m(SplashActivity splashActivity) {
        this.mSplashActivity = splashActivity;
    }

    @Override
    public final void a(s2.b shell) throws Throwable {
        // The original passed the shell object, but our SplashActivity.J() takes a String (su path).
        // Extract the su path from shell or just pass "su" as default.
        this.mSplashActivity.J("su");
    }
}
