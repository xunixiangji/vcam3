.class public abstract Lo2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private b:Ln2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/e<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private final d:Landroid/graphics/Rect;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo2/d;->d:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic a(Lo2/d;FIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo2/d;->k(FIF)V

    return-void
.end method

.method public static synthetic b(Lo2/d;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lo2/d;->l(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic k(FIF)V
    .locals 3

    invoke-virtual {p0}, Lo2/d;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo2/d;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lo2/d;->d:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    int-to-float v0, v1

    mul-float/2addr v0, p1

    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    sub-float/2addr v0, p1

    float-to-int p2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p3

    sub-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p2, p1}, Lo2/d;->q(II)V

    invoke-virtual {p0}, Lo2/d;->e()Ln2/e;

    move-result-object p1

    new-instance p2, Lo2/b;

    invoke-direct {p2, p0}, Lo2/b;-><init>(Lo2/d;)V

    invoke-virtual {p1, p2}, Ln2/e;->m(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic l(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Lo2/d;->n()V

    invoke-interface {p0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo2/d;->c:Landroid/view/View;

    return-object v0
.end method

.method protected d()F
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method protected e()Ln2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln2/e<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lo2/d;->b:Ln2/e;

    return-object v0
.end method

.method protected f()I
    .locals 1

    iget v0, p0, Lo2/d;->f:I

    return v0
.end method

.method protected g()I
    .locals 1

    iget v0, p0, Lo2/d;->j:I

    return v0
.end method

.method protected h()I
    .locals 1

    iget v0, p0, Lo2/d;->i:I

    return v0
.end method

.method protected i()I
    .locals 1

    iget v0, p0, Lo2/d;->e:I

    return v0
.end method

.method protected j(FFFF)Z
    .locals 1

    invoke-virtual {p0}, Lo2/d;->d()F

    move-result v0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-gez p1, :cond_1

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public m()V
    .locals 9

    invoke-virtual {p0}, Lo2/d;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lo2/d;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Lo2/d;->g:I

    iget v3, p0, Lo2/d;->i:I

    sub-int/2addr v2, v3

    iget v3, p0, Lo2/d;->h:I

    iget v4, p0, Lo2/d;->j:I

    sub-int/2addr v3, v4

    int-to-float v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-gez v6, :cond_0

    move v4, v8

    goto :goto_0

    :cond_0
    iget v6, p0, Lo2/d;->e:I

    add-int/2addr v2, v0

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    int-to-float v2, v0

    div-float/2addr v2, v7

    add-float/2addr v4, v2

    iget v2, p0, Lo2/d;->e:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    :goto_0
    int-to-float v2, v3

    cmpg-float v6, v2, v5

    if-gez v6, :cond_2

    move v5, v8

    goto :goto_1

    :cond_2
    iget v6, p0, Lo2/d;->f:I

    add-int/2addr v3, v1

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    int-to-float v1, v1

    div-float/2addr v1, v7

    add-float/2addr v2, v1

    iget v1, p0, Lo2/d;->f:I

    int-to-float v1, v1

    div-float v5, v2, v1

    :goto_1
    invoke-virtual {p0}, Lo2/d;->e()Ln2/e;

    move-result-object v1

    new-instance v2, Lo2/c;

    invoke-direct {v2, p0, v4, v0, v5}, Lo2/c;-><init>(Lo2/d;FIF)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Ln2/e;->o(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public n()V
    .locals 3

    invoke-virtual {p0}, Lo2/d;->c()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo2/d;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lo2/d;->d:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lo2/d;->e:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, p0, Lo2/d;->f:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lo2/d;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lo2/d;->g:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lo2/d;->h:I

    iget-object v0, p0, Lo2/d;->d:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lo2/d;->i:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lo2/d;->j:I

    return-void
.end method

.method public o(Ln2/e;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/e<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lo2/d;->b:Ln2/e;

    invoke-virtual {p1}, Ln2/e;->h()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo2/d;->c:Landroid/view/View;

    new-instance v0, Lo2/a;

    invoke-direct {v0, p0}, Lo2/a;-><init>(Lo2/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lo2/d;->c:Landroid/view/View;

    new-instance v0, Lo2/b;

    invoke-direct {v0, p0}, Lo2/b;-><init>(Lo2/d;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected p(FF)V
    .locals 0

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lo2/d;->q(II)V

    return-void
.end method

.method protected q(II)V
    .locals 3

    iget-object v0, p0, Lo2/d;->b:Ln2/e;

    invoke-virtual {v0}, Ln2/e;->i()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x800033

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lo2/d;->b:Ln2/e;

    invoke-virtual {p1}, Ln2/e;->L()V

    return-void
.end method
