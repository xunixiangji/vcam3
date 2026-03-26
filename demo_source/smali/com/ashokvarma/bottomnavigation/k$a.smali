.class Lcom/ashokvarma/bottomnavigation/k$a;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ashokvarma/bottomnavigation/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/view/View;

.field final synthetic e:Lcom/ashokvarma/bottomnavigation/k;


# direct methods
.method constructor <init>(Lcom/ashokvarma/bottomnavigation/k;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/ashokvarma/bottomnavigation/k$a;->e:Lcom/ashokvarma/bottomnavigation/k;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-object p2, p0, Lcom/ashokvarma/bottomnavigation/k$a;->d:Landroid/view/View;

    iput p3, p0, Lcom/ashokvarma/bottomnavigation/k$a;->b:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/k$a;->c:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lcom/ashokvarma/bottomnavigation/k$a;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/k$a;->c:I

    iget v1, p0, Lcom/ashokvarma/bottomnavigation/k$a;->b:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/k$a;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
