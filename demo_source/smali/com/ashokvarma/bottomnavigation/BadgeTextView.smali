.class Lcom/ashokvarma/bottomnavigation/BadgeTextView;
.super Landroidx/appcompat/widget/z;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Instantiatable"
    }
.end annotation


# instance fields
.field private f:Z

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ashokvarma/bottomnavigation/BadgeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BadgeTextView;->g:I

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BadgeTextView;->h:I

    invoke-direct {p0}, Lcom/ashokvarma/bottomnavigation/BadgeTextView;->f()V

    return-void
.end method

.method private f()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/ashokvarma/bottomnavigation/BadgeTextView;->f:Z

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_1

    iget p1, p0, Lcom/ashokvarma/bottomnavigation/BadgeTextView;->g:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BadgeTextView;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_3

    iget p2, p0, Lcom/ashokvarma/bottomnavigation/BadgeTextView;->h:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BadgeTextView;->h:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_4
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/z;->onMeasure(II)V

    :goto_2
    return-void
.end method
