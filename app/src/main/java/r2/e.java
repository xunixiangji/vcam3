package r2;

import java.util.function.BiConsumer;

/**
 * BiConsumer (r2.e) - Query String Parameter Builder
 * Iterates over HashMap and builds query string via ApiManager.I().
 */
public final class e implements BiConsumer<String, String> {

    public final StringBuffer mBuffer;

    public e(StringBuffer buffer) {
        this.mBuffer = buffer;
    }

    @Override
    public final void accept(String key, String value) {
        // Append "key=value " format to the buffer
        if (this.mBuffer.length() > 0) {
            this.mBuffer.append("&");
        }
        this.mBuffer.append(key);
        this.mBuffer.append("=");
        this.mBuffer.append(value);
    }
}
