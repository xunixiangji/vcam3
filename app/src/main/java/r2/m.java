package r2;

import com.nvshen.chmp4.SplashActivity;

/**
 * SplashRootCallback (r2.m) - Root Shell Result for SplashActivity
 * Forwards root shell initialization result to SplashActivity.J()
 */
public final class m implements Runnable {

    public final SplashActivity mSplashActivity;

    public m(SplashActivity splashActivity) {
        this.mSplashActivity = splashActivity;
    }

    @Override
    public void run() {
        this.mSplashActivity.J("su");
    }
}
