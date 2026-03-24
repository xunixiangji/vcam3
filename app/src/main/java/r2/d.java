package r2;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.telegram.a1064.R;

/**
 * PreviewFragment (r2.d) - Instructions/说明 tab
 *
 * Displays copyright text, version info, and preview buttons.
 * Inflates fragment_preview.xml which has a camera_preview FrameLayout,
 * copyright text, and start/stop preview buttons.
 *
 * Original: Tab 0 in the demo app's bottom navigation.
 */
public class d extends Fragment {

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_preview, container, false);

        // Setup preview buttons
        Button btnStartPreview = view.findViewById(R.id.button_start_preview);
        Button btnStopPreview = view.findViewById(R.id.button_stop_preview);

        if (btnStartPreview != null) {
            btnStartPreview.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    // Navigate to camera tab (tab index 1)
                    if (getActivity() instanceof com.nvshen.chmp4.MainActivity) {
                        ((com.nvshen.chmp4.MainActivity) getActivity()).O(1);
                    }
                }
            });
        }

        if (btnStopPreview != null) {
            btnStopPreview.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    // Stop preview - no-op on this tab, just a placeholder
                }
            });
        }

        return view;
    }
}
