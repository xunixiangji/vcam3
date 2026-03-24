package com.nvshen.chmp4;

import com.nmmedit.protect.NativeUtil;
import java.util.function.BiConsumer;

/**
 * CallbackC - BiConsumer Singleton
 * Used by ApiManager for HashMap.forEach() to build query string parameters.
 */
public final class c implements BiConsumer<java.lang.Object, java.lang.Object> {

    public static final c INSTANCE;

    static {
        NativeUtil.classesInit0(28);
        INSTANCE = new c();
    }

    private c() {}

    /**
     * Recovered from method_95 @ 0x11874 (size=0)
     * Appends "key=value " to a shared StringBuffer.
     */
    @Override
    public final void accept(java.lang.Object key, java.lang.Object value) {
        // Build query string: "key=value "
        if (key != null && value != null) {
            d.B().mParams.put(key.toString(), value.toString());
        }
    }
}
