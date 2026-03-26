.class Lcom/ashokvarma/bottomnavigation/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ashokvarma/bottomnavigation/d;->e(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ashokvarma/bottomnavigation/d;


# direct methods
.method constructor <init>(Lcom/ashokvarma/bottomnavigation/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ashokvarma/bottomnavigation/d$a;->a:Lcom/ashokvarma/bottomnavigation/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/d$a;->a:Lcom/ashokvarma/bottomnavigation/d;

    iget-object v0, v0, Lcom/ashokvarma/bottomnavigation/d;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v2, p0, Lcom/ashokvarma/bottomnavigation/d$a;->a:Lcom/ashokvarma/bottomnavigation/d;

    iget-object v2, v2, Lcom/ashokvarma/bottomnavigation/d;->p:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/ashokvarma/bottomnavigation/d$a;->a:Lcom/ashokvarma/bottomnavigation/d;

    iget-object v3, v3, Lcom/ashokvarma/bottomnavigation/d;->p:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
