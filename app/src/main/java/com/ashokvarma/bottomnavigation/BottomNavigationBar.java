package com.ashokvarma.bottomnavigation;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
public class BottomNavigationBar extends FrameLayout {
    public interface c {
        void a(int tabIndex); // onTabSelected
        void b(int tabIndex); // onTabUnselected
        void c(int tabIndex); // onTabReselected
    }
    public BottomNavigationBar(Context ctx) { super(ctx); }
    public BottomNavigationBar(Context ctx, AttributeSet attrs) { super(ctx, attrs); }
    public BottomNavigationBar a(c listener) { return this; }
    public BottomNavigationBar a(BottomNavigationItem item) { return this; }
    public void b() {} // initialise
    public void a(int index) {} // selectTab
}
