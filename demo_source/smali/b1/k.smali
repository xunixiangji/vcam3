.class public Lb1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/k$c;,
        Lb1/k$b;
    }
.end annotation


# static fields
.field public static final m:Lb1/c;


# instance fields
.field a:Lb1/d;

.field b:Lb1/d;

.field c:Lb1/d;

.field d:Lb1/d;

.field e:Lb1/c;

.field f:Lb1/c;

.field g:Lb1/c;

.field h:Lb1/c;

.field i:Lb1/f;

.field j:Lb1/f;

.field k:Lb1/f;

.field l:Lb1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb1/i;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lb1/i;-><init>(F)V

    sput-object v0, Lb1/k;->m:Lb1/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lb1/h;->b()Lb1/d;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->a:Lb1/d;

    invoke-static {}, Lb1/h;->b()Lb1/d;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->b:Lb1/d;

    invoke-static {}, Lb1/h;->b()Lb1/d;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->c:Lb1/d;

    invoke-static {}, Lb1/h;->b()Lb1/d;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->d:Lb1/d;

    new-instance v0, Lb1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb1/a;-><init>(F)V

    iput-object v0, p0, Lb1/k;->e:Lb1/c;

    new-instance v0, Lb1/a;

    invoke-direct {v0, v1}, Lb1/a;-><init>(F)V

    iput-object v0, p0, Lb1/k;->f:Lb1/c;

    new-instance v0, Lb1/a;

    invoke-direct {v0, v1}, Lb1/a;-><init>(F)V

    iput-object v0, p0, Lb1/k;->g:Lb1/c;

    new-instance v0, Lb1/a;

    invoke-direct {v0, v1}, Lb1/a;-><init>(F)V

    iput-object v0, p0, Lb1/k;->h:Lb1/c;

    invoke-static {}, Lb1/h;->c()Lb1/f;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->i:Lb1/f;

    invoke-static {}, Lb1/h;->c()Lb1/f;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->j:Lb1/f;

    invoke-static {}, Lb1/h;->c()Lb1/f;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->k:Lb1/f;

    invoke-static {}, Lb1/h;->c()Lb1/f;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->l:Lb1/f;

    return-void
.end method

.method private constructor <init>(Lb1/k$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lb1/k$b;->a(Lb1/k$b;)Lb1/d;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->a:Lb1/d;

    invoke-static {p1}, Lb1/k$b;->e(Lb1/k$b;)Lb1/d;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->b:Lb1/d;

    invoke-static {p1}, Lb1/k$b;->f(Lb1/k$b;)Lb1/d;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->c:Lb1/d;

    invoke-static {p1}, Lb1/k$b;->g(Lb1/k$b;)Lb1/d;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->d:Lb1/d;

    invoke-static {p1}, Lb1/k$b;->h(Lb1/k$b;)Lb1/c;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->e:Lb1/c;

    invoke-static {p1}, Lb1/k$b;->i(Lb1/k$b;)Lb1/c;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->f:Lb1/c;

    invoke-static {p1}, Lb1/k$b;->j(Lb1/k$b;)Lb1/c;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->g:Lb1/c;

    invoke-static {p1}, Lb1/k$b;->k(Lb1/k$b;)Lb1/c;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->h:Lb1/c;

    invoke-static {p1}, Lb1/k$b;->l(Lb1/k$b;)Lb1/f;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->i:Lb1/f;

    invoke-static {p1}, Lb1/k$b;->b(Lb1/k$b;)Lb1/f;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->j:Lb1/f;

    invoke-static {p1}, Lb1/k$b;->c(Lb1/k$b;)Lb1/f;

    move-result-object v0

    iput-object v0, p0, Lb1/k;->k:Lb1/f;

    invoke-static {p1}, Lb1/k$b;->d(Lb1/k$b;)Lb1/f;

    move-result-object p1

    iput-object p1, p0, Lb1/k;->l:Lb1/f;

    return-void
.end method

.method synthetic constructor <init>(Lb1/k$b;Lb1/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lb1/k;-><init>(Lb1/k$b;)V

    return-void
.end method

.method public static a()Lb1/k$b;
    .locals 1

    new-instance v0, Lb1/k$b;

    invoke-direct {v0}, Lb1/k$b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;II)Lb1/k$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lb1/k;->c(Landroid/content/Context;III)Lb1/k$b;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;III)Lb1/k$b;
    .locals 1

    new-instance v0, Lb1/a;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Lb1/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lb1/k;->d(Landroid/content/Context;IILb1/c;)Lb1/k$b;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;IILb1/c;)Lb1/k$b;
    .locals 6

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    :cond_0
    sget-object p2, Lm0/k;->B2:[I

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    :try_start_0
    sget p1, Lm0/k;->C2:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget p2, Lm0/k;->F2:I

    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    sget v0, Lm0/k;->G2:I

    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget v1, Lm0/k;->E2:I

    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lm0/k;->D2:I

    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget v2, Lm0/k;->H2:I

    invoke-static {p0, v2, p3}, Lb1/k;->m(Landroid/content/res/TypedArray;ILb1/c;)Lb1/c;

    move-result-object p3

    sget v2, Lm0/k;->K2:I

    invoke-static {p0, v2, p3}, Lb1/k;->m(Landroid/content/res/TypedArray;ILb1/c;)Lb1/c;

    move-result-object v2

    sget v3, Lm0/k;->L2:I

    invoke-static {p0, v3, p3}, Lb1/k;->m(Landroid/content/res/TypedArray;ILb1/c;)Lb1/c;

    move-result-object v3

    sget v4, Lm0/k;->J2:I

    invoke-static {p0, v4, p3}, Lb1/k;->m(Landroid/content/res/TypedArray;ILb1/c;)Lb1/c;

    move-result-object v4

    sget v5, Lm0/k;->I2:I

    invoke-static {p0, v5, p3}, Lb1/k;->m(Landroid/content/res/TypedArray;ILb1/c;)Lb1/c;

    move-result-object p3

    new-instance v5, Lb1/k$b;

    invoke-direct {v5}, Lb1/k$b;-><init>()V

    invoke-virtual {v5, p2, v2}, Lb1/k$b;->x(ILb1/c;)Lb1/k$b;

    move-result-object p2

    invoke-virtual {p2, v0, v3}, Lb1/k$b;->B(ILb1/c;)Lb1/k$b;

    move-result-object p2

    invoke-virtual {p2, v1, v4}, Lb1/k$b;->t(ILb1/c;)Lb1/k$b;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lb1/k$b;->p(ILb1/c;)Lb1/k$b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static e(Landroid/content/Context;Landroid/util/AttributeSet;II)Lb1/k$b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lb1/k;->f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lb1/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Landroid/util/AttributeSet;III)Lb1/k$b;
    .locals 1

    new-instance v0, Lb1/a;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Lb1/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lb1/k;->g(Landroid/content/Context;Landroid/util/AttributeSet;IILb1/c;)Lb1/k$b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Landroid/util/AttributeSet;IILb1/c;)Lb1/k$b;
    .locals 1

    sget-object v0, Lm0/k;->f2:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lm0/k;->g2:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    sget v0, Lm0/k;->h2:I

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p0, p2, p3, p4}, Lb1/k;->d(Landroid/content/Context;IILb1/c;)Lb1/k$b;

    move-result-object p0

    return-object p0
.end method

.method private static m(Landroid/content/res/TypedArray;ILb1/c;)Lb1/c;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance p2, Lb1/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lb1/a;-><init>(F)V

    return-object p2

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    new-instance p0, Lb1/i;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lb1/i;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method


# virtual methods
.method public h()Lb1/f;
    .locals 1

    iget-object v0, p0, Lb1/k;->k:Lb1/f;

    return-object v0
.end method

.method public i()Lb1/d;
    .locals 1

    iget-object v0, p0, Lb1/k;->d:Lb1/d;

    return-object v0
.end method

.method public j()Lb1/c;
    .locals 1

    iget-object v0, p0, Lb1/k;->h:Lb1/c;

    return-object v0
.end method

.method public k()Lb1/d;
    .locals 1

    iget-object v0, p0, Lb1/k;->c:Lb1/d;

    return-object v0
.end method

.method public l()Lb1/c;
    .locals 1

    iget-object v0, p0, Lb1/k;->g:Lb1/c;

    return-object v0
.end method

.method public n()Lb1/f;
    .locals 1

    iget-object v0, p0, Lb1/k;->l:Lb1/f;

    return-object v0
.end method

.method public o()Lb1/f;
    .locals 1

    iget-object v0, p0, Lb1/k;->j:Lb1/f;

    return-object v0
.end method

.method public p()Lb1/f;
    .locals 1

    iget-object v0, p0, Lb1/k;->i:Lb1/f;

    return-object v0
.end method

.method public q()Lb1/d;
    .locals 1

    iget-object v0, p0, Lb1/k;->a:Lb1/d;

    return-object v0
.end method

.method public r()Lb1/c;
    .locals 1

    iget-object v0, p0, Lb1/k;->e:Lb1/c;

    return-object v0
.end method

.method public s()Lb1/d;
    .locals 1

    iget-object v0, p0, Lb1/k;->b:Lb1/d;

    return-object v0
.end method

.method public t()Lb1/c;
    .locals 1

    iget-object v0, p0, Lb1/k;->f:Lb1/c;

    return-object v0
.end method

.method public u(Landroid/graphics/RectF;)Z
    .locals 5

    const-class v0, Lb1/f;

    iget-object v1, p0, Lb1/k;->l:Lb1/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb1/k;->j:Lb1/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb1/k;->i:Lb1/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb1/k;->k:Lb1/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v1, p0, Lb1/k;->e:Lb1/c;

    invoke-interface {v1, p1}, Lb1/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget-object v4, p0, Lb1/k;->f:Lb1/c;

    invoke-interface {v4, p1}, Lb1/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lb1/k;->h:Lb1/c;

    invoke-interface {v4, p1}, Lb1/c;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    iget-object v4, p0, Lb1/k;->g:Lb1/c;

    invoke-interface {v4, p1}, Lb1/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iget-object v1, p0, Lb1/k;->b:Lb1/d;

    instance-of v1, v1, Lb1/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb1/k;->a:Lb1/d;

    instance-of v1, v1, Lb1/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb1/k;->c:Lb1/d;

    instance-of v1, v1, Lb1/j;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb1/k;->d:Lb1/d;

    instance-of v1, v1, Lb1/j;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    return v2
.end method

.method public v()Lb1/k$b;
    .locals 1

    new-instance v0, Lb1/k$b;

    invoke-direct {v0, p0}, Lb1/k$b;-><init>(Lb1/k;)V

    return-object v0
.end method

.method public w(F)Lb1/k;
    .locals 1

    invoke-virtual {p0}, Lb1/k;->v()Lb1/k$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb1/k$b;->o(F)Lb1/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lb1/k$b;->m()Lb1/k;

    move-result-object p1

    return-object p1
.end method

.method public x(Lb1/k$c;)Lb1/k;
    .locals 2

    invoke-virtual {p0}, Lb1/k;->v()Lb1/k$b;

    move-result-object v0

    invoke-virtual {p0}, Lb1/k;->r()Lb1/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lb1/k$c;->a(Lb1/c;)Lb1/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb1/k$b;->A(Lb1/c;)Lb1/k$b;

    move-result-object v0

    invoke-virtual {p0}, Lb1/k;->t()Lb1/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lb1/k$c;->a(Lb1/c;)Lb1/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb1/k$b;->E(Lb1/c;)Lb1/k$b;

    move-result-object v0

    invoke-virtual {p0}, Lb1/k;->j()Lb1/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lb1/k$c;->a(Lb1/c;)Lb1/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb1/k$b;->s(Lb1/c;)Lb1/k$b;

    move-result-object v0

    invoke-virtual {p0}, Lb1/k;->l()Lb1/c;

    move-result-object v1

    invoke-interface {p1, v1}, Lb1/k$c;->a(Lb1/c;)Lb1/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb1/k$b;->w(Lb1/c;)Lb1/k$b;

    move-result-object p1

    invoke-virtual {p1}, Lb1/k$b;->m()Lb1/k;

    move-result-object p1

    return-object p1
.end method
