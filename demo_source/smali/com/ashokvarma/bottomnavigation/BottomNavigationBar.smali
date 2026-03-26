.class public Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;
    value = Lcom/ashokvarma/bottomnavigation/behaviour/BottomVerticalScrollBehavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;
    }
.end annotation


# static fields
.field private static final v:Landroid/view/animation/Interpolator;


# instance fields
.field private b:I

.field private c:I

.field private d:Ly/t;

.field private e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ashokvarma/bottomnavigation/c;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ashokvarma/bottomnavigation/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/widget/FrameLayout;

.field private o:Landroid/widget/FrameLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:I

.field private r:I

.field private s:F

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld0/c;

    invoke-direct {v0}, Ld0/c;-><init>()V

    sput-object v0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->v:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    iput p3, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c:I

    iput-boolean p3, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->g:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->h:I

    iput p3, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->i:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->q:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->r:I

    iput-boolean p3, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->u:Z

    invoke-direct {p0, p1, p2}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->m(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->i()V

    return-void
.end method

.method static synthetic a(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;IZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->p(IZZZ)V

    return-void
.end method

.method static synthetic b(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->o:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->n:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;)I
    .locals 0

    iget p0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->r:I

    return p0
.end method

.method private f(I)V
    .locals 3

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->d:Ly/t;

    if-nez v0, :cond_0

    invoke-static {p0}, Ly/p;->c(Landroid/view/View;)Ly/t;

    move-result-object v0

    iput-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->d:Ly/t;

    iget v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->r:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ly/t;->d(J)Ly/t;

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->d:Ly/t;

    sget-object v1, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->v:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ly/t;->e(Landroid/view/animation/Interpolator;)Ly/t;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ly/t;->b()V

    :goto_0
    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->d:Ly/t;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Ly/t;->k(F)Ly/t;

    move-result-object p1

    invoke-virtual {p1}, Ly/t;->j()V

    return-void
.end method

.method private i()V
    .locals 4

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ashokvarma/bottomnavigation/i;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/ashokvarma/bottomnavigation/h;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->n:Landroid/widget/FrameLayout;

    sget v1, Lcom/ashokvarma/bottomnavigation/h;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->o:Landroid/widget/FrameLayout;

    sget v1, Lcom/ashokvarma/bottomnavigation/h;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->p:Landroid/widget/LinearLayout;

    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->s:F

    invoke-static {p0, v0}, Ly/p;->h0(Landroid/view/View;F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    return-void
.end method

.method private m(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, -0x1

    const v1, -0x333334

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/ashokvarma/bottomnavigation/j;->u:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v2, Lcom/ashokvarma/bottomnavigation/j;->v:I

    sget v3, Lcom/ashokvarma/bottomnavigation/f;->a:I

    invoke-static {p1, v3}, Ll0/a;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->k:I

    sget p1, Lcom/ashokvarma/bottomnavigation/j;->B:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->l:I

    sget p1, Lcom/ashokvarma/bottomnavigation/j;->y:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->m:I

    sget p1, Lcom/ashokvarma/bottomnavigation/j;->x:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->t:Z

    sget p1, Lcom/ashokvarma/bottomnavigation/j;->A:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ashokvarma/bottomnavigation/g;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->s:F

    sget p1, Lcom/ashokvarma/bottomnavigation/j;->w:I

    const/16 v1, 0xc8

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->r(I)Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;

    sget p1, Lcom/ashokvarma/bottomnavigation/j;->C:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    iput v4, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    :goto_0
    sget p1, Lcom/ashokvarma/bottomnavigation/j;->z:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_3

    iput v4, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c:I

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c:I

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c:I

    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_5
    sget p2, Lcom/ashokvarma/bottomnavigation/f;->a:I

    invoke-static {p1, p2}, Ll0/a;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->k:I

    iput v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->l:I

    iput v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->m:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/ashokvarma/bottomnavigation/g;->a:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->s:F

    :goto_2
    return-void
.end method

.method private p(IZZZ)V
    .locals 4

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->h:I

    if-eq v0, p1, :cond_5

    iget v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-eq v0, v2, :cond_0

    iget-object p2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ashokvarma/bottomnavigation/d;

    iget v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->q:I

    invoke-virtual {p2, v3, v1}, Lcom/ashokvarma/bottomnavigation/d;->r(ZI)V

    :cond_0
    iget-object p2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->g:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ashokvarma/bottomnavigation/d;

    iget v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->q:I

    invoke-virtual {p2, v3, v1}, Lcom/ashokvarma/bottomnavigation/d;->e(ZI)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const/4 v1, 0x0

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ashokvarma/bottomnavigation/d;

    iget v3, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->q:I

    invoke-virtual {v2, v1, v3}, Lcom/ashokvarma/bottomnavigation/d;->r(ZI)V

    :cond_2
    iget-object v2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ashokvarma/bottomnavigation/d;

    iget v3, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->q:I

    invoke-virtual {v2, v1, v3}, Lcom/ashokvarma/bottomnavigation/d;->e(ZI)V

    iget-object v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ashokvarma/bottomnavigation/d;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Lcom/ashokvarma/bottomnavigation/d;->a()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->n:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->n:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$b;

    invoke-direct {v2, p0, v1}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$b;-><init>(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;Lcom/ashokvarma/bottomnavigation/d;)V

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->h:I

    :cond_5
    if-eqz p3, :cond_6

    invoke-direct {p0, v0, p1, p4}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->q(IIZ)V

    :cond_6
    return-void
.end method

.method private q(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->j:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    invoke-interface {v0, p2}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;->a(I)V

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    invoke-interface {v0, p2}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;->c(I)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;->a(I)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->j:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;

    invoke-interface {p2, p1}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private t(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->f(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->d:Ly/t;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ly/t;->b()V

    :cond_1
    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private u(ZLcom/ashokvarma/bottomnavigation/d;Lcom/ashokvarma/bottomnavigation/c;II)V
    .locals 0

    invoke-virtual {p2, p1}, Lcom/ashokvarma/bottomnavigation/d;->l(Z)V

    invoke-virtual {p2, p4}, Lcom/ashokvarma/bottomnavigation/d;->k(I)V

    invoke-virtual {p2, p5}, Lcom/ashokvarma/bottomnavigation/d;->g(I)V

    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/ashokvarma/bottomnavigation/d;->q(I)V

    new-instance p1, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$a;

    invoke-direct {p1, p0}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$a;-><init>(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3, p2, p0}, Lcom/ashokvarma/bottomnavigation/b;->a(Lcom/ashokvarma/bottomnavigation/c;Lcom/ashokvarma/bottomnavigation/d;Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;)V

    iget p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2, p3}, Lcom/ashokvarma/bottomnavigation/d;->d(Z)V

    iget-object p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public e(Lcom/ashokvarma/bottomnavigation/c;)Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;
    .locals 1

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->h(Z)V

    return-void
.end method

.method public getActiveColor()I
    .locals 1

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->k:I

    return v0
.end method

.method public getAnimationDuration()I
    .locals 1

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->q:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->m:I

    return v0
.end method

.method public getCurrentSelectedPosition()I
    .locals 1

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->h:I

    return v0
.end method

.method public getInActiveColor()I
    .locals 1

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->l:I

    return v0
.end method

.method public h(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->u:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->t(IZ)V

    return-void
.end method

.method public j()V
    .locals 12

    const/4 v0, -0x1

    iput v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->h:I

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    iput v3, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    if-ne v0, v3, :cond_2

    iput v3, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c:I

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c:I

    :cond_3
    :goto_1
    iget v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->c:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->n:Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->o:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->m:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ll0/a;->b(Landroid/content/Context;)I

    move-result v0

    iget v4, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    const/4 v5, 0x0

    if-eq v4, v3, :cond_8

    if-ne v4, v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x4

    if-eq v4, v1, :cond_6

    if-ne v4, v2, :cond_a

    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-boolean v6, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->e:Z

    invoke-static {v1, v0, v4, v6}, Lcom/ashokvarma/bottomnavigation/b;->c(Landroid/content/Context;IIZ)[I

    move-result-object v0

    aget v1, v0, v5

    aget v0, v0, v3

    iget-object v4, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/ashokvarma/bottomnavigation/c;

    new-instance v8, Lcom/ashokvarma/bottomnavigation/k;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/ashokvarma/bottomnavigation/k;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    if-ne v6, v2, :cond_7

    move v7, v3

    goto :goto_3

    :cond_7
    move v7, v5

    :goto_3
    move-object v6, p0

    move v10, v1

    move v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->u(ZLcom/ashokvarma/bottomnavigation/d;Lcom/ashokvarma/bottomnavigation/c;II)V

    goto :goto_2

    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-boolean v6, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->e:Z

    invoke-static {v1, v0, v4, v6}, Lcom/ashokvarma/bottomnavigation/b;->b(Landroid/content/Context;IIZ)[I

    move-result-object v0

    aget v0, v0, v5

    iget-object v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/ashokvarma/bottomnavigation/c;

    new-instance v8, Lcom/ashokvarma/bottomnavigation/e;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v8, v4}, Lcom/ashokvarma/bottomnavigation/e;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->b:I

    if-ne v4, v2, :cond_9

    move v7, v3

    goto :goto_6

    :cond_9
    move v7, v5

    :goto_6
    move-object v6, p0

    move v10, v0

    move v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->u(ZLcom/ashokvarma/bottomnavigation/d;Lcom/ashokvarma/bottomnavigation/c;II)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->i:I

    if-le v0, v1, :cond_b

    invoke-direct {p0, v1, v3, v5, v5}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->p(IZZZ)V

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, v5, v3, v5, v5}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->p(IZZZ)V

    :cond_c
    :goto_7
    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->t:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->u:Z

    return v0
.end method

.method public n(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->o(IZ)V

    return-void
.end method

.method public o(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p2}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->p(IZZZ)V

    return-void
.end method

.method public r(I)Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;
    .locals 4

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->q:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->r:I

    return-object p0
.end method

.method public s(Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;)Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;
    .locals 0

    iput-object p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->j:Lcom/ashokvarma/bottomnavigation/BottomNavigationBar$c;

    return-object p0
.end method

.method public setAutoHideEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->t:Z

    return-void
.end method

.method public setFab(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    new-instance v0, Lcom/ashokvarma/bottomnavigation/behaviour/BottomNavBarFabBehaviour;

    invoke-direct {v0}, Lcom/ashokvarma/bottomnavigation/behaviour/BottomNavBarFabBehaviour;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->o(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    :cond_0
    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->w(Z)V

    return-void
.end method

.method public w(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->u:Z

    invoke-direct {p0, v0, p1}, Lcom/ashokvarma/bottomnavigation/BottomNavigationBar;->t(IZ)V

    return-void
.end method
