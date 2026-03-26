.class Lcom/ashokvarma/bottomnavigation/k;
.super Lcom/ashokvarma/bottomnavigation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ashokvarma/bottomnavigation/k$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ashokvarma/bottomnavigation/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method c()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ashokvarma/bottomnavigation/g;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ashokvarma/bottomnavigation/d;->c:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ashokvarma/bottomnavigation/g;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ashokvarma/bottomnavigation/d;->d:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ashokvarma/bottomnavigation/i;->c:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/ashokvarma/bottomnavigation/h;->j:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ashokvarma/bottomnavigation/d;->p:Landroid/view/View;

    sget v1, Lcom/ashokvarma/bottomnavigation/h;->m:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ashokvarma/bottomnavigation/d;->q:Landroid/widget/TextView;

    sget v1, Lcom/ashokvarma/bottomnavigation/h;->k:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ashokvarma/bottomnavigation/d;->r:Landroid/widget/ImageView;

    sget v1, Lcom/ashokvarma/bottomnavigation/h;->l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/ashokvarma/bottomnavigation/d;->s:Landroid/widget/FrameLayout;

    sget v1, Lcom/ashokvarma/bottomnavigation/h;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ashokvarma/bottomnavigation/BadgeTextView;

    iput-object v0, p0, Lcom/ashokvarma/bottomnavigation/d;->t:Lcom/ashokvarma/bottomnavigation/BadgeTextView;

    invoke-super {p0}, Lcom/ashokvarma/bottomnavigation/d;->c()V

    return-void
.end method

.method public e(ZI)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/ashokvarma/bottomnavigation/d;->e(ZI)V

    new-instance p1, Lcom/ashokvarma/bottomnavigation/k$a;

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/d;->i:I

    invoke-direct {p1, p0, p0, v0}, Lcom/ashokvarma/bottomnavigation/k$a;-><init>(Lcom/ashokvarma/bottomnavigation/k;Landroid/view/View;I)V

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/d;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected o(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ashokvarma/bottomnavigation/g;->p:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ashokvarma/bottomnavigation/g;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    return-void
.end method

.method protected p(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ashokvarma/bottomnavigation/g;->r:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ashokvarma/bottomnavigation/g;->s:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    return-void
.end method

.method public r(ZI)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/ashokvarma/bottomnavigation/d;->r(ZI)V

    new-instance p1, Lcom/ashokvarma/bottomnavigation/k$a;

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/d;->j:I

    invoke-direct {p1, p0, p0, v0}, Lcom/ashokvarma/bottomnavigation/k$a;-><init>(Lcom/ashokvarma/bottomnavigation/k;Landroid/view/View;I)V

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/d;->q:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
