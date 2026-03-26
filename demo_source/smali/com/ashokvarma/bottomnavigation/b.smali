.class Lcom/ashokvarma/bottomnavigation/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/ashokvarma/bottomnavigation/c;Lcom/ashokvarma/bottomnavigation/d;Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;)V
    .locals 3

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ashokvarma/bottomnavigation/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ashokvarma/bottomnavigation/d;->n(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ashokvarma/bottomnavigation/c;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ashokvarma/bottomnavigation/d;->h(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/ashokvarma/bottomnavigation/c;->a(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/ashokvarma/bottomnavigation/c;->d(Landroid/content/Context;)I

    move-result v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->getActiveColor()I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1}, Lcom/ashokvarma/bottomnavigation/d;->f(I)V

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Lcom/ashokvarma/bottomnavigation/d;->i(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->getInActiveColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ashokvarma/bottomnavigation/d;->i(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/ashokvarma/bottomnavigation/c;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/ashokvarma/bottomnavigation/c;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lcom/ashokvarma/bottomnavigation/d;->j(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {p2}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->getBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ashokvarma/bottomnavigation/d;->m(I)V

    invoke-virtual {p0}, Lcom/ashokvarma/bottomnavigation/c;->b()Lcom/ashokvarma/bottomnavigation/a;

    return-void
.end method

.method static b(Landroid/content/Context;IIZ)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ashokvarma/bottomnavigation/g;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ashokvarma/bottomnavigation/g;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr p1, p2

    if-ge p1, v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int v2, p0

    goto :goto_0

    :cond_0
    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    const/4 p0, 0x0

    aput v2, v0, p0

    return-object v0
.end method

.method static c(Landroid/content/Context;IIZ)[I
    .locals 20

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ashokvarma/bottomnavigation/g;->o:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ashokvarma/bottomnavigation/g;->n:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-double v3, v1

    move/from16 v5, p2

    int-to-double v5, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v5

    mul-double v9, v3, v7

    int-to-double v11, v2

    const-wide/high16 v13, 0x3fe8000000000000L    # 0.75

    add-double/2addr v13, v5

    mul-double v15, v11, v13

    move/from16 v17, v1

    move/from16 p0, v2

    move/from16 v1, p1

    int-to-double v1, v1

    cmpg-double v9, v1, v9

    const-wide/high16 v18, 0x3ff8000000000000L    # 1.5

    if-gez v9, :cond_1

    if-eqz p3, :cond_0

    mul-double v3, v3, v18

    double-to-int v1, v3

    move v2, v1

    move/from16 v1, v17

    goto :goto_1

    :cond_0
    div-double/2addr v1, v7

    double-to-int v1, v1

    int-to-double v2, v1

    mul-double v2, v2, v18

    :goto_0
    double-to-int v2, v2

    goto :goto_1

    :cond_1
    cmpl-double v9, v1, v15

    const-wide/high16 v15, 0x3ffc000000000000L    # 1.75

    if-lez v9, :cond_2

    mul-double/2addr v11, v15

    double-to-int v1, v11

    move v2, v1

    move/from16 v1, p0

    goto :goto_1

    :cond_2
    const-wide/high16 v9, 0x3fe4000000000000L    # 0.625

    add-double/2addr v5, v9

    mul-double v9, v3, v5

    mul-double/2addr v3, v13

    div-double v7, v1, v7

    double-to-int v7, v7

    int-to-double v11, v7

    mul-double v11, v11, v18

    double-to-int v8, v11

    cmpl-double v9, v1, v9

    if-lez v9, :cond_4

    div-double v5, v1, v5

    double-to-int v5, v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ffa000000000000L    # 1.625

    mul-double/2addr v6, v8

    double-to-int v6, v6

    cmpl-double v3, v1, v3

    if-lez v3, :cond_3

    div-double/2addr v1, v13

    double-to-int v1, v1

    int-to-double v2, v1

    mul-double/2addr v2, v15

    goto :goto_0

    :cond_3
    move v1, v5

    move v2, v6

    goto :goto_1

    :cond_4
    move v1, v7

    move v2, v8

    :goto_1
    const/4 v3, 0x0

    aput v1, v0, v3

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method static d(Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    const/4 v2, 0x0

    int-to-float v1, v1

    invoke-static {p2, v0, p0, v2, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p0

    int-to-long v0, p4

    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance p4, Lcom/ashokvarma/bottomnavigation/b$a;

    invoke-direct {p4, p1, p3, p2}, Lcom/ashokvarma/bottomnavigation/b$a;-><init>(Landroid/view/View;ILandroid/view/View;)V

    invoke-virtual {p0, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method
