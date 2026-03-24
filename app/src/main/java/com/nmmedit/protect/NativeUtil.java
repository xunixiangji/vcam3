package com.nmmedit.protect;

/**
 * NativeUtil - NMMP PROTECTION REMOVED
 * Original: loaded libnmmp.so and registered native methods via classesInit0()
 * Now: no-op, all methods are pure Java
 */
public class NativeUtil {
    /**
     * Originally registered native method implementations from the VM.
     * Now a no-op since all methods are implemented in Java.
     */
    public static void classesInit0(int classId) {
        // No-op: nmmp protection removed, all methods are now pure Java
    }
}
