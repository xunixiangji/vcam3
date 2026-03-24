package r2;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.ImageFormat;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.Size;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import com.nvshen.chmp4.AutoFitTextureView;
import com.telegram.a1064.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/**
 * Camera2PreviewFragment (r2.a) - Camera2 API Preview Fragment
 *
 * Full Camera2 implementation for camera preview and photo capture.
 * When the hook is active, displays the virtual camera (mp4 video)
 * instead of the real camera feed.
 *
 * Camera2 State Machine:
 *   STATE_PREVIEW (0)              -> waiting for user action
 *   STATE_WAITING_LOCK (1)         -> AF lock requested
 *   STATE_WAITING_PRECAPTURE (2)   -> AE precapture triggered
 *   STATE_WAITING_NON_PRECAPTURE (3) -> waiting for AE to settle
 *   STATE_PICTURE_TAKEN (4)        -> capture complete
 */
public class a extends Fragment implements View.OnClickListener {

    private static final String TAG = "Camera2Preview";
    private static final int STATE_PREVIEW = 0;
    private static final int STATE_WAITING_LOCK = 1;
    private static final int STATE_WAITING_PRECAPTURE = 2;
    private static final int STATE_WAITING_NON_PRECAPTURE = 3;
    private static final int STATE_PICTURE_TAKEN = 4;
    private static final int REQUEST_CAMERA_PERMISSION = 1;
    private static final int MAX_PREVIEW_WIDTH = 1920;
    private static final int MAX_PREVIEW_HEIGHT = 1080;

    /** Rotation to JPEG orientation mapping */
    private static final SparseIntArray ORIENTATIONS;

    static {
        SparseIntArray orientations = new SparseIntArray();
        ORIENTATIONS = orientations;
        orientations.append(0, 90);
        orientations.append(1, 0);
        orientations.append(2, 270);
        orientations.append(3, 180);
    }

    private String mCameraId;
    private AutoFitTextureView mTextureView;
    private CameraCaptureSession mCaptureSession;
    private CameraDevice mCameraDevice;
    private Size mPreviewSize;
    private HandlerThread mBackgroundThread;
    private Handler mBackgroundHandler;
    private ImageReader mImageReader;
    private CaptureRequest.Builder mPreviewRequestBuilder;
    private CaptureRequest mPreviewRequest;
    private boolean mFlashSupported;
    private int mSensorOrientation;
    private int mState = STATE_PREVIEW;
    private Semaphore mCameraOpenCloseLock = new Semaphore(1);

    // SurfaceTextureListener
    private final TextureView.SurfaceTextureListener mSurfaceTextureListener =
        new TextureViewSurfaceTextureListenerC0073a();

    // CameraDevice.StateCallback
    private final CameraDevice.StateCallback mStateCallback = new b();

    // ImageReader callback
    private final ImageReader.OnImageAvailableListener mOnImageAvailableListener = new c();

    // CaptureCallback for preview state machine
    private CameraCaptureSession.CaptureCallback mCaptureCallback = new d();

    // ===== Inner class: SurfaceTextureListener =====
    class TextureViewSurfaceTextureListenerC0073a implements TextureView.SurfaceTextureListener {
        @Override
        public void onSurfaceTextureAvailable(SurfaceTexture texture, int width, int height) {
            P1(width, height);
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture texture, int width, int height) {
            L1(width, height);
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture texture) {
            return true;
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture texture) {
        }
    }

    // ===== Inner class: CameraDevice.StateCallback =====
    class b extends CameraDevice.StateCallback {
        @Override
        public void onOpened(@NonNull CameraDevice cameraDevice) {
            mCameraOpenCloseLock.release();
            mCameraDevice = cameraDevice;
            M1();
        }

        @Override
        public void onDisconnected(@NonNull CameraDevice cameraDevice) {
            mCameraOpenCloseLock.release();
            cameraDevice.close();
            mCameraDevice = null;
        }

        @Override
        public void onError(@NonNull CameraDevice cameraDevice, int error) {
            mCameraOpenCloseLock.release();
            cameraDevice.close();
            mCameraDevice = null;
            Activity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
    }

    // ===== Inner class: ImageReader.OnImageAvailableListener =====
    class c implements ImageReader.OnImageAvailableListener {
        @Override
        public void onImageAvailable(ImageReader reader) {
            File file = new File(Environment.getExternalStoragePublicDirectory(
                Environment.DIRECTORY_DCIM), "pic_" + System.currentTimeMillis() + ".jpg");
            mBackgroundHandler.post(new k(reader.acquireNextImage(), file));
        }
    }

    // ===== Inner class: CaptureCallback (preview state machine) =====
    class d extends CameraCaptureSession.CaptureCallback {
        private void process(CaptureResult result) {
            switch (mState) {
                case STATE_PREVIEW: {
                    // Normal preview, do nothing
                    break;
                }
                case STATE_WAITING_LOCK: {
                    Integer afState = result.get(CaptureResult.CONTROL_AF_STATE);
                    if (afState == null) {
                        I1();
                    } else if (CaptureResult.CONTROL_AF_STATE_FOCUSED_LOCKED == afState
                            || CaptureResult.CONTROL_AF_STATE_NOT_FOCUSED_LOCKED == afState) {
                        Integer aeState = result.get(CaptureResult.CONTROL_AE_STATE);
                        if (aeState == null || aeState == CaptureResult.CONTROL_AE_STATE_CONVERGED) {
                            mState = STATE_PICTURE_TAKEN;
                            I1();
                        } else {
                            R1();
                        }
                    }
                    break;
                }
                case STATE_WAITING_PRECAPTURE: {
                    Integer aeState = result.get(CaptureResult.CONTROL_AE_STATE);
                    if (aeState == null
                            || aeState == CaptureResult.CONTROL_AE_STATE_PRECAPTURE
                            || aeState == CaptureRequest.CONTROL_AE_STATE_FLASH_REQUIRED) {
                        mState = STATE_WAITING_NON_PRECAPTURE;
                    }
                    break;
                }
                case STATE_WAITING_NON_PRECAPTURE: {
                    Integer aeState = result.get(CaptureResult.CONTROL_AE_STATE);
                    if (aeState == null
                            || aeState != CaptureResult.CONTROL_AE_STATE_PRECAPTURE) {
                        mState = STATE_PICTURE_TAKEN;
                        I1();
                    }
                    break;
                }
            }
        }

        @Override
        public void onCaptureProgressed(@NonNull CameraCaptureSession session,
                @NonNull CaptureRequest request, @NonNull CaptureResult partialResult) {
            process(partialResult);
        }

        @Override
        public void onCaptureCompleted(@NonNull CameraCaptureSession session,
                @NonNull CaptureRequest request, @NonNull TotalCaptureResult result) {
            process(result);
        }
    }

    // ===== Inner class: Runnable for showing toast =====
    class e implements Runnable {
        final String mText;
        e(String text) { this.mText = text; }
        @Override
        public void run() {
            Activity activity = getActivity();
            if (activity != null) {
                Toast.makeText(activity, mText, Toast.LENGTH_SHORT).show();
            }
        }
    }

    // ===== Inner class: CameraCaptureSession.StateCallback for preview =====
    class f extends CameraCaptureSession.StateCallback {
        @Override
        public void onConfigured(@NonNull CameraCaptureSession cameraCaptureSession) {
            if (mCameraDevice == null) return;
            mCaptureSession = cameraCaptureSession;
            try {
                mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AF_MODE,
                    CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE);
                S1(mPreviewRequestBuilder);
                mPreviewRequest = mPreviewRequestBuilder.build();
                mCaptureSession.setRepeatingRequest(mPreviewRequest, mCaptureCallback,
                    mBackgroundHandler);
            } catch (CameraAccessException ex) {
                Log.e(TAG, "onConfigured failed", ex);
            }
        }

        @Override
        public void onConfigureFailed(@NonNull CameraCaptureSession cameraCaptureSession) {
            U1("Failed to configure camera");
        }
    }

    // ===== Inner class: CaptureCallback for photo capture complete =====
    class g extends CameraCaptureSession.CaptureCallback {
        @Override
        public void onCaptureCompleted(@NonNull CameraCaptureSession session,
                @NonNull CaptureRequest request, @NonNull TotalCaptureResult result) {
            U1("Saved");
            Log.d(TAG, "Photo captured");
            // Clear API status and try to view the photo
            try {
                com.nvshen.chmp4.d.B().a0();
            } catch (Exception ex) {
                Log.e(TAG, "clearStatus failed", ex);
            }
            Y1();
        }
    }

    // ===== Inner class: Size comparator by area =====
    static class h implements Comparator<Size> {
        @Override
        public int compare(Size lhs, Size rhs) {
            return Long.signum((long) lhs.getWidth() * lhs.getHeight()
                    - (long) rhs.getWidth() * rhs.getHeight());
        }
    }

    // ===== Inner class: Camera permission request dialog =====
    public static class i extends DialogFragment {
        @NonNull
        @Override
        public Dialog onCreateDialog(Bundle savedInstanceState) {
            return new AlertDialog.Builder(getActivity())
                .setMessage("This app needs camera permission.")
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Activity parent = getActivity();
                        if (parent != null) {
                            parent.requestPermissions(
                                new String[]{"android.permission.CAMERA"},
                                REQUEST_CAMERA_PERMISSION);
                        }
                    }
                })
                .setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Activity parent = getActivity();
                        if (parent != null) {
                            parent.finish();
                        }
                    }
                })
                .create();
        }
    }

    // ===== Inner class: Error dialog =====
    public static class j extends DialogFragment {
        private static final String ARG_MESSAGE = "message";

        public static j newInstance(String message) {
            j dialog = new j();
            Bundle args = new Bundle();
            args.putString(ARG_MESSAGE, message);
            dialog.setArguments(args);
            return dialog;
        }

        @NonNull
        @Override
        public Dialog onCreateDialog(Bundle savedInstanceState) {
            String message = getArguments().getString(ARG_MESSAGE);
            return new AlertDialog.Builder(getActivity())
                .setMessage(message)
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Activity parent = getActivity();
                        if (parent != null) {
                            parent.finish();
                        }
                    }
                })
                .create();
        }
    }

    // ===== Inner class: ImageSaver Runnable =====
    class k implements Runnable {
        private final Image mImage;
        private final File mFile;

        k(Image image, File file) {
            this.mImage = image;
            this.mFile = file;
        }

        @Override
        public void run() {
            ByteBuffer buffer = mImage.getPlanes()[0].getBuffer();
            byte[] bytes = new byte[buffer.remaining()];
            buffer.get(bytes);
            FileOutputStream output = null;
            try {
                output = new FileOutputStream(mFile);
                output.write(bytes);
                Log.d(TAG, "Image saved: " + mFile.getAbsolutePath());
                // Save path via ApiManager
                try {
                    com.nvshen.chmp4.d.B().h("pic", mFile.getAbsolutePath());
                } catch (Exception ex) {
                    Log.e(TAG, "saveKeyValue failed", ex);
                }
            } catch (IOException ex) {
                Log.e(TAG, "Failed to save image", ex);
            } finally {
                mImage.close();
                if (output != null) {
                    try {
                        output.close();
                    } catch (IOException ex) {
                        // ignore
                    }
                }
            }
        }
    }

    // ===== Public static factory method =====
    public static a newInstance() {
        return new a();
    }

    // ===== d0() -> onCreateView =====
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
            Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_camera2_basic, container, false);
    }

    // ===== y0() -> onViewCreated =====
    @Override
    public void onViewCreated(@NonNull View view, Bundle savedInstanceState) {
        view.findViewById(R.id.picture).setOnClickListener(this);
        View infoBtn = view.findViewById(R.id.info);
        if (infoBtn != null) {
            infoBtn.setOnClickListener(this);
        }
        mTextureView = (AutoFitTextureView) view.findViewById(R.id.texture);
    }

    // ===== u0() -> onResume =====
    @Override
    public void onResume() {
        super.onResume();
        V1();
        if (mTextureView.isAvailable()) {
            P1(mTextureView.getWidth(), mTextureView.getHeight());
        } else {
            mTextureView.setSurfaceTextureListener(mSurfaceTextureListener);
        }
    }

    // ===== p0() -> onPause =====
    @Override
    public void onPause() {
        K1();
        W1();
        super.onPause();
    }

    // ===== onClick =====
    @Override
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.picture) {
            X1();
        } else if (id == R.id.info) {
            Activity activity = getActivity();
            if (activity != null) {
                new AlertDialog.Builder(activity)
                    .setMessage("Camera2 Preview")
                    .setPositiveButton(android.R.string.ok, null)
                    .show();
            }
        }
    }

    // ===== I1() -> captureStillPicture =====
    private void I1() {
        try {
            Activity activity = getActivity();
            if (activity == null || mCameraDevice == null) return;

            CaptureRequest.Builder captureBuilder =
                mCameraDevice.createCaptureRequest(CameraDevice.TEMPLATE_STILL_CAPTURE);
            captureBuilder.addTarget(mImageReader.getSurface());

            captureBuilder.set(CaptureRequest.CONTROL_AF_MODE,
                CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE);
            S1(captureBuilder);

            int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
            captureBuilder.set(CaptureRequest.JPEG_ORIENTATION, N1(rotation));

            CameraCaptureSession.CaptureCallback captureCallback = new g();

            mCaptureSession.stopRepeating();
            mCaptureSession.abortCaptures();
            mCaptureSession.capture(captureBuilder.build(), captureCallback, null);
        } catch (CameraAccessException ex) {
            Log.e(TAG, "captureStillPicture failed", ex);
        }
    }

    // ===== J1() -> chooseOptimalSize (static) =====
    private static Size J1(Size[] choices, int textureViewWidth, int textureViewHeight,
            int maxWidth, int maxHeight, Size aspectRatio) {
        List<Size> bigEnough = new ArrayList<Size>();
        List<Size> notBigEnough = new ArrayList<Size>();
        int w = aspectRatio.getWidth();
        int h = aspectRatio.getHeight();
        for (Size option : choices) {
            if (option.getWidth() <= maxWidth && option.getHeight() <= maxHeight
                    && option.getHeight() == option.getWidth() * h / w) {
                if (option.getWidth() >= textureViewWidth
                        && option.getHeight() >= textureViewHeight) {
                    bigEnough.add(option);
                } else {
                    notBigEnough.add(option);
                }
            }
        }
        if (bigEnough.size() > 0) {
            return Collections.min(bigEnough, new h());
        } else if (notBigEnough.size() > 0) {
            return Collections.max(notBigEnough, new h());
        } else {
            Log.e(TAG, "Couldn't find any suitable preview size");
            return choices[0];
        }
    }

    // ===== K1() -> closeCamera =====
    private void K1() {
        try {
            mCameraOpenCloseLock.acquire();
            if (mCaptureSession != null) {
                mCaptureSession.close();
                mCaptureSession = null;
            }
            if (mCameraDevice != null) {
                mCameraDevice.close();
                mCameraDevice = null;
            }
            if (mImageReader != null) {
                mImageReader.close();
                mImageReader = null;
            }
        } catch (InterruptedException ex) {
            throw new RuntimeException("Interrupted while closing camera.", ex);
        } finally {
            mCameraOpenCloseLock.release();
        }
    }

    // ===== L1() -> configureTransform =====
    private void L1(int viewWidth, int viewHeight) {
        Activity activity = getActivity();
        if (mTextureView == null || mPreviewSize == null || activity == null) return;

        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        Matrix matrix = new Matrix();
        RectF viewRect = new RectF(0, 0, viewWidth, viewHeight);
        RectF bufferRect = new RectF(0, 0, mPreviewSize.getHeight(), mPreviewSize.getWidth());
        float centerX = viewRect.centerX();
        float centerY = viewRect.centerY();

        if (Surface.ROTATION_90 == rotation || Surface.ROTATION_270 == rotation) {
            bufferRect.offset(centerX - bufferRect.centerX(), centerY - bufferRect.centerY());
            matrix.setRectToRect(viewRect, bufferRect, Matrix.ScaleToFit.FILL);
            float scale = Math.max(
                (float) viewHeight / mPreviewSize.getHeight(),
                (float) viewWidth / mPreviewSize.getWidth());
            matrix.postScale(scale, scale, centerX, centerY);
            matrix.postRotate(90 * (rotation - 2), centerX, centerY);
        } else if (Surface.ROTATION_180 == rotation) {
            matrix.postRotate(180, centerX, centerY);
        }
        mTextureView.setTransform(matrix);
    }

    // ===== M1() -> createCameraPreviewSession =====
    private void M1() {
        try {
            SurfaceTexture texture = mTextureView.getSurfaceTexture();
            if (texture == null) return;

            texture.setDefaultBufferSize(mPreviewSize.getWidth(), mPreviewSize.getHeight());
            Surface surface = new Surface(texture);

            mPreviewRequestBuilder =
                mCameraDevice.createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW);
            mPreviewRequestBuilder.addTarget(surface);

            mCameraDevice.createCaptureSession(
                Arrays.asList(surface, mImageReader.getSurface()),
                new f(), null);
        } catch (CameraAccessException ex) {
            Log.e(TAG, "createCameraPreviewSession failed", ex);
        }
    }

    // ===== N1() -> getOrientation =====
    private int N1(int rotation) {
        return (ORIENTATIONS.get(rotation) + mSensorOrientation + 270) % 360;
    }

    // ===== O1() -> lockFocus =====
    private void O1() {
        try {
            mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER,
                CaptureRequest.CONTROL_AF_TRIGGER_START);
            mState = STATE_WAITING_LOCK;
            mCaptureSession.capture(mPreviewRequestBuilder.build(), mCaptureCallback,
                mBackgroundHandler);
        } catch (CameraAccessException ex) {
            Log.e(TAG, "lockFocus failed", ex);
        }
    }

    // ===== P1() -> openCamera =====
    private void P1(int width, int height) {
        Activity activity = getActivity();
        if (activity == null) return;

        if (ContextCompat.checkSelfPermission(activity, "android.permission.CAMERA")
                != PackageManager.PERMISSION_GRANTED) {
            Q1();
            return;
        }

        T1(width, height);
        L1(width, height);

        CameraManager manager = (CameraManager) activity.getSystemService(
            android.content.Context.CAMERA_SERVICE);
        try {
            if (!mCameraOpenCloseLock.tryAcquire(2500, TimeUnit.MILLISECONDS)) {
                throw new RuntimeException("Time out waiting to lock camera opening.");
            }
            manager.openCamera(mCameraId, mStateCallback, mBackgroundHandler);
        } catch (CameraAccessException ex) {
            Log.e(TAG, "openCamera failed", ex);
        } catch (InterruptedException ex) {
            throw new RuntimeException("Interrupted while opening camera.", ex);
        } catch (SecurityException ex) {
            Log.e(TAG, "Camera permission denied", ex);
        }
    }

    // ===== Q1() -> requestCameraPermission =====
    private void Q1() {
        if (shouldShowRequestPermissionRationale("android.permission.CAMERA")) {
            new i().show(getChildFragmentManager(), "dialog");
        } else {
            requestPermissions(new String[]{"android.permission.CAMERA"},
                REQUEST_CAMERA_PERMISSION);
        }
    }

    // ===== R1() -> runPrecaptureSequence =====
    private void R1() {
        try {
            mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER,
                CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER_START);
            mState = STATE_WAITING_PRECAPTURE;
            mCaptureSession.capture(mPreviewRequestBuilder.build(), mCaptureCallback,
                mBackgroundHandler);
        } catch (CameraAccessException ex) {
            Log.e(TAG, "runPrecaptureSequence failed", ex);
        }
    }

    // ===== S1() -> setAutoFlash =====
    private void S1(CaptureRequest.Builder requestBuilder) {
        if (mFlashSupported) {
            requestBuilder.set(CaptureRequest.CONTROL_AE_MODE,
                CaptureRequest.CONTROL_AE_MODE_ON_AUTO_FLASH);
        }
    }

    // ===== T1() -> setUpCameraOutputs =====
    private void T1(int width, int height) {
        Activity activity = getActivity();
        if (activity == null) return;

        CameraManager manager = (CameraManager) activity.getSystemService(
            android.content.Context.CAMERA_SERVICE);
        try {
            for (String cameraId : manager.getCameraIdList()) {
                CameraCharacteristics characteristics =
                    manager.getCameraCharacteristics(cameraId);

                Integer facing = characteristics.get(CameraCharacteristics.LENS_FACING);
                if (facing != null && facing == CameraCharacteristics.LENS_FACING_FRONT) {
                    continue;
                }

                StreamConfigurationMap map = characteristics.get(
                    CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                if (map == null) continue;

                Size largest = Collections.max(
                    Arrays.asList(map.getOutputSizes(ImageFormat.JPEG)),
                    new h());

                mImageReader = ImageReader.newInstance(largest.getWidth(), largest.getHeight(),
                    ImageFormat.JPEG, 2);
                mImageReader.setOnImageAvailableListener(mOnImageAvailableListener,
                    mBackgroundHandler);

                int displayRotation = activity.getWindowManager().getDefaultDisplay().getRotation();
                mSensorOrientation = characteristics.get(
                    CameraCharacteristics.SENSOR_ORIENTATION);
                boolean swappedDimensions = false;
                switch (displayRotation) {
                    case Surface.ROTATION_0:
                    case Surface.ROTATION_180:
                        if (mSensorOrientation == 90 || mSensorOrientation == 270) {
                            swappedDimensions = true;
                        }
                        break;
                    case Surface.ROTATION_90:
                    case Surface.ROTATION_270:
                        if (mSensorOrientation == 0 || mSensorOrientation == 180) {
                            swappedDimensions = true;
                        }
                        break;
                    default:
                        Log.e(TAG, "Display rotation is invalid: " + displayRotation);
                }

                Point displaySize = new Point();
                activity.getWindowManager().getDefaultDisplay().getSize(displaySize);
                int rotatedPreviewWidth = width;
                int rotatedPreviewHeight = height;
                int maxPreviewWidth = displaySize.x;
                int maxPreviewHeight = displaySize.y;

                if (swappedDimensions) {
                    rotatedPreviewWidth = height;
                    rotatedPreviewHeight = width;
                    maxPreviewWidth = displaySize.y;
                    maxPreviewHeight = displaySize.x;
                }

                if (maxPreviewWidth > MAX_PREVIEW_WIDTH) {
                    maxPreviewWidth = MAX_PREVIEW_WIDTH;
                }
                if (maxPreviewHeight > MAX_PREVIEW_HEIGHT) {
                    maxPreviewHeight = MAX_PREVIEW_HEIGHT;
                }

                mPreviewSize = J1(
                    map.getOutputSizes(SurfaceTexture.class),
                    rotatedPreviewWidth, rotatedPreviewHeight,
                    maxPreviewWidth, maxPreviewHeight,
                    largest);

                int orientation = getResources().getConfiguration().orientation;
                if (orientation == Configuration.ORIENTATION_LANDSCAPE) {
                    mTextureView.a(mPreviewSize.getWidth(), mPreviewSize.getHeight());
                } else {
                    mTextureView.a(mPreviewSize.getHeight(), mPreviewSize.getWidth());
                }

                Boolean available = characteristics.get(
                    CameraCharacteristics.FLASH_INFO_AVAILABLE);
                mFlashSupported = available == null ? false : available;

                mCameraId = cameraId;
                return;
            }
        } catch (CameraAccessException ex) {
            Log.e(TAG, "setUpCameraOutputs failed", ex);
        } catch (NullPointerException ex) {
            // Camera2 API not supported
            j.newInstance("Camera2 API not supported on this device")
                .show(getChildFragmentManager(), "dialog");
        }
    }

    // ===== U1() -> showToast =====
    private void U1(String text) {
        Activity activity = getActivity();
        if (activity != null) {
            activity.runOnUiThread(new e(text));
        }
    }

    // ===== V1() -> startBackgroundThread =====
    private void V1() {
        mBackgroundThread = new HandlerThread("CameraBackground");
        mBackgroundThread.start();
        mBackgroundHandler = new Handler(mBackgroundThread.getLooper());
    }

    // ===== W1() -> stopBackgroundThread =====
    private void W1() {
        if (mBackgroundThread != null) {
            mBackgroundThread.quitSafely();
            try {
                mBackgroundThread.join();
                mBackgroundThread = null;
                mBackgroundHandler = null;
            } catch (InterruptedException ex) {
                Log.e(TAG, "stopBackgroundThread interrupted", ex);
            }
        }
    }

    // ===== X1() -> takePicture =====
    private void X1() {
        O1();
    }

    // ===== Y1() -> unlockFocus =====
    private void Y1() {
        try {
            mPreviewRequestBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER,
                CaptureRequest.CONTROL_AF_TRIGGER_CANCEL);
            S1(mPreviewRequestBuilder);
            mCaptureSession.capture(mPreviewRequestBuilder.build(), mCaptureCallback,
                mBackgroundHandler);
            mState = STATE_PREVIEW;
            mCaptureSession.setRepeatingRequest(mPreviewRequest, mCaptureCallback,
                mBackgroundHandler);
        } catch (CameraAccessException ex) {
            Log.e(TAG, "unlockFocus failed", ex);
        }
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions,
            @NonNull int[] grantResults) {
        if (requestCode == REQUEST_CAMERA_PERMISSION) {
            if (grantResults.length != 1
                    || grantResults[0] != PackageManager.PERMISSION_GRANTED) {
                j.newInstance("Camera permission required")
                    .show(getChildFragmentManager(), "dialog");
            }
        } else {
            super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}
