package com.nvshen.chmp4;

import android.content.Context;
import android.util.AttributeSet;
import android.view.TextureView;
import com.nmmedit.protect.NativeUtil;

/**
 * AutoFitTextureView - Camera Preview View
 * Custom TextureView that adjusts aspect ratio to match camera preview.
 */
public class AutoFitTextureView extends TextureView {

    private int mRatioWidth;
    private int mRatioHeight;

    static {
        NativeUtil.classesInit0(4);
    }

    public AutoFitTextureView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AutoFitTextureView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mRatioWidth = 0;
        this.mRatioHeight = 0;
    }

    /**
     * setAspectRatio(width, height)
     * Recovered from method_4 @ 0x0eb90 (size=155)
     */
    public void a(int width, int height) {
        if (width < 0 || height < 0) {
            throw new IllegalArgumentException("Size cannot be negative.");
        }
        this.mRatioWidth = width;
        this.mRatioHeight = height;
        requestLayout();
    }

    /**
     * onMeasure - maintains aspect ratio
     * Recovered from method_5 @ 0x0ec20
     */
    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int width = MeasureSpec.getSize(widthMeasureSpec);
        int height = MeasureSpec.getSize(heightMeasureSpec);
        if (mRatioWidth == 0 || mRatioHeight == 0) {
            setMeasuredDimension(width, height);
        } else {
            if (width < height * mRatioWidth / mRatioHeight) {
                setMeasuredDimension(width, width * mRatioHeight / mRatioWidth);
            } else {
                setMeasuredDimension(height * mRatioWidth / mRatioHeight, height);
            }
        }
    }
}
