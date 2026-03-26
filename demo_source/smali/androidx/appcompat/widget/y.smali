.class Landroidx/appcompat/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/y$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroidx/appcompat/widget/u0;

.field private c:Landroidx/appcompat/widget/u0;

.field private d:Landroidx/appcompat/widget/u0;

.field private e:Landroidx/appcompat/widget/u0;

.field private f:Landroidx/appcompat/widget/u0;

.field private g:Landroidx/appcompat/widget/u0;

.field private h:Landroidx/appcompat/widget/u0;

.field private final i:Landroidx/appcompat/widget/a0;

.field private j:I

.field private k:I

.field private l:Landroid/graphics/Typeface;

.field private m:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/y;->j:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/y;->k:I

    iput-object p1, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    new-instance v0, Landroidx/appcompat/widget/a0;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/a0;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    return-void
.end method

.method private A(IF)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/a0;->u(IF)V

    return-void
.end method

.method private C(Landroid/content/Context;Landroidx/appcompat/widget/w0;)V
    .locals 9

    sget v0, La/j;->M2:I

    iget v1, p0, Landroidx/appcompat/widget/y;->j:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/w0;->k(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/y;->j:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_0

    sget v5, La/j;->O2:I

    invoke-virtual {p2, v5, v3}, Landroidx/appcompat/widget/w0;->k(II)I

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/y;->k:I

    if-eq v5, v3, :cond_0

    iget v5, p0, Landroidx/appcompat/widget/y;->j:I

    and-int/2addr v5, v2

    or-int/2addr v5, v4

    iput v5, p0, Landroidx/appcompat/widget/y;->j:I

    :cond_0
    sget v5, La/j;->N2:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_6

    sget v6, La/j;->P2:I

    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    sget p1, La/j;->L2:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Landroidx/appcompat/widget/y;->m:Z

    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/w0;->k(II)I

    move-result p1

    if-eq p1, v7, :cond_4

    if-eq p1, v2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const/4 v6, 0x0

    iput-object v6, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    sget v6, La/j;->P2:I

    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v8

    if-eqz v8, :cond_7

    move v5, v6

    :cond_7
    iget v6, p0, Landroidx/appcompat/widget/y;->k:I

    iget v8, p0, Landroidx/appcompat/widget/y;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_c

    new-instance p1, Landroidx/appcompat/widget/y$a;

    invoke-direct {p1, p0, v6, v8}, Landroidx/appcompat/widget/y$a;-><init>(Landroidx/appcompat/widget/y;II)V

    :try_start_0
    iget v6, p0, Landroidx/appcompat/widget/y;->j:I

    invoke-virtual {p2, v5, v6, p1}, Landroidx/appcompat/widget/w0;->j(IILp/b$a;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_a

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroidx/appcompat/widget/y;->k:I

    if-eq v0, v3, :cond_9

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/widget/y;->k:I

    iget v6, p0, Landroidx/appcompat/widget/y;->j:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_8

    move v6, v7

    goto :goto_3

    :cond_8
    move v6, v4

    :goto_3
    invoke-static {p1, v0, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_b

    move p1, v7

    goto :goto_4

    :cond_b
    move p1, v4

    :goto_4
    iput-boolean p1, p0, Landroidx/appcompat/widget/y;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    if-nez p1, :cond_f

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v1, :cond_e

    iget p2, p0, Landroidx/appcompat/widget/y;->k:I

    if-eq p2, v3, :cond_e

    invoke-static {p1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/y;->k:I

    iget v0, p0, Landroidx/appcompat/widget/y;->j:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    move v4, v7

    :cond_d
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_5

    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/y;->j:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    :cond_f
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/j;->i(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;[I)V

    :cond_0
    return-void
.end method

.method private static d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;
    .locals 0

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/j;->f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Landroidx/appcompat/widget/u0;

    invoke-direct {p1}, Landroidx/appcompat/widget/u0;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/appcompat/widget/u0;->d:Z

    iput-object p0, p1, Landroidx/appcompat/widget/u0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private x(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p5, :cond_a

    if-eqz p6, :cond_0

    goto :goto_7

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_f

    :cond_1
    iget-object p5, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    aget-object p6, p5, v3

    if-nez p6, :cond_7

    aget-object p6, p5, v2

    if-eqz p6, :cond_2

    goto :goto_4

    :cond_2
    iget-object p5, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    iget-object p6, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    aget-object p1, p5, v3

    :goto_0
    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    aget-object p2, p5, v1

    :goto_1
    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    aget-object p3, p5, v2

    :goto_2
    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    aget-object p4, p5, v0

    :goto_3
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_7
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    aget-object p3, p5, v3

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    aget-object p2, p5, v1

    :goto_5
    aget-object p6, p5, v2

    if-eqz p4, :cond_9

    goto :goto_6

    :cond_9
    aget-object p4, p5, v0

    :goto_6
    invoke-virtual {p1, p3, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_a
    :goto_7
    iget-object p1, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p3, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    if-eqz p5, :cond_b

    goto :goto_8

    :cond_b
    aget-object p5, p1, v3

    :goto_8
    if-eqz p2, :cond_c

    goto :goto_9

    :cond_c
    aget-object p2, p1, v1

    :goto_9
    if-eqz p6, :cond_d

    goto :goto_a

    :cond_d
    aget-object p6, p1, v2

    :goto_a
    if-eqz p4, :cond_e

    goto :goto_b

    :cond_e
    aget-object p4, p1, v0

    :goto_b
    invoke-virtual {p3, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_f
    :goto_c
    return-void
.end method

.method private y()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/u0;

    iput-object v0, p0, Landroidx/appcompat/widget/y;->b:Landroidx/appcompat/widget/u0;

    iput-object v0, p0, Landroidx/appcompat/widget/y;->c:Landroidx/appcompat/widget/u0;

    iput-object v0, p0, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/u0;

    iput-object v0, p0, Landroidx/appcompat/widget/y;->e:Landroidx/appcompat/widget/u0;

    iput-object v0, p0, Landroidx/appcompat/widget/y;->f:Landroidx/appcompat/widget/u0;

    iput-object v0, p0, Landroidx/appcompat/widget/y;->g:Landroidx/appcompat/widget/u0;

    return-void
.end method


# virtual methods
.method public B(Landroid/graphics/Typeface;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/y;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method b()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/widget/y;->b:Landroidx/appcompat/widget/u0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/y;->c:Landroidx/appcompat/widget/u0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/u0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/y;->e:Landroidx/appcompat/widget/u0;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/y;->b:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/y;->c:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    const/4 v3, 0x3

    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/y;->e:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/y;->f:Landroidx/appcompat/widget/u0;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/y;->g:Landroidx/appcompat/widget/u0;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/y;->f:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/y;->g:Landroidx/appcompat/widget/u0;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/y;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/u0;)V

    :cond_3
    return-void
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/a0;->a()V

    return-void
.end method

.method e()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/a0;->g()I

    move-result v0

    return v0
.end method

.method f()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/a0;->h()I

    move-result v0

    return v0
.end method

.method g()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/a0;->i()I

    move-result v0

    return v0
.end method

.method h()[I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/a0;->j()[I

    move-result-object v0

    return-object v0
.end method

.method i()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/a0;->k()I

    move-result v0

    return v0
.end method

.method j()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/u0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/u0;->a:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method k()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/u0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/u0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method l()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/a0;->o()Z

    move-result v0

    return v0
.end method

.method m(Landroid/util/AttributeSet;I)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v1, p2

    iget-object v2, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroidx/appcompat/widget/j;->b()Landroidx/appcompat/widget/j;

    move-result-object v3

    sget-object v4, La/j;->a0:[I

    const/4 v5, 0x0

    invoke-static {v2, v0, v4, v1, v5}, Landroidx/appcompat/widget/w0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/w0;

    move-result-object v4

    sget v6, La/j;->b0:I

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v8}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v6

    sget v9, La/j;->e0:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v9

    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/y;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/y;->b:Landroidx/appcompat/widget/u0;

    :cond_0
    sget v9, La/j;->c0:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v9

    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/y;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/y;->c:Landroidx/appcompat/widget/u0;

    :cond_1
    sget v9, La/j;->f0:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v9

    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/y;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/y;->d:Landroidx/appcompat/widget/u0;

    :cond_2
    sget v9, La/j;->d0:I

    invoke-virtual {v4, v9}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v4, v9, v5}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v9

    invoke-static {v2, v3, v9}, Landroidx/appcompat/widget/y;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v9

    iput-object v9, v7, Landroidx/appcompat/widget/y;->e:Landroidx/appcompat/widget/u0;

    :cond_3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v10, La/j;->g0:I

    invoke-virtual {v4, v10}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v4, v10, v5}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v10

    invoke-static {v2, v3, v10}, Landroidx/appcompat/widget/y;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v10

    iput-object v10, v7, Landroidx/appcompat/widget/y;->f:Landroidx/appcompat/widget/u0;

    :cond_4
    sget v10, La/j;->h0:I

    invoke-virtual {v4, v10}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v4, v10, v5}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v10

    invoke-static {v2, v3, v10}, Landroidx/appcompat/widget/y;->d(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/u0;

    move-result-object v10

    iput-object v10, v7, Landroidx/appcompat/widget/y;->g:Landroidx/appcompat/widget/u0;

    :cond_5
    invoke-virtual {v4}, Landroidx/appcompat/widget/w0;->v()V

    iget-object v4, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/16 v10, 0x1a

    if-eq v6, v8, :cond_9

    sget-object v13, La/j;->J2:[I

    invoke-static {v2, v6, v13}, Landroidx/appcompat/widget/w0;->s(Landroid/content/Context;I[I)Landroidx/appcompat/widget/w0;

    move-result-object v6

    if-nez v4, :cond_6

    sget v13, La/j;->R2:I

    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v6, v13, v5}, Landroidx/appcompat/widget/w0;->a(IZ)Z

    move-result v13

    const/4 v14, 0x1

    goto :goto_0

    :cond_6
    move v13, v5

    move v14, v13

    :goto_0
    invoke-direct {v7, v2, v6}, Landroidx/appcompat/widget/y;->C(Landroid/content/Context;Landroidx/appcompat/widget/w0;)V

    sget v15, La/j;->S2:I

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    :cond_7
    const/4 v15, 0x0

    :goto_1
    if-lt v9, v10, :cond_8

    sget v11, La/j;->Q2:I

    invoke-virtual {v6, v11}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v6, v11}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v6}, Landroidx/appcompat/widget/w0;->v()V

    goto :goto_3

    :cond_9
    move v13, v5

    move v14, v13

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_3
    sget-object v6, La/j;->J2:[I

    invoke-static {v2, v0, v6, v1, v5}, Landroidx/appcompat/widget/w0;->u(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/w0;

    move-result-object v6

    if-nez v4, :cond_a

    sget v12, La/j;->R2:I

    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-virtual {v6, v12, v5}, Landroidx/appcompat/widget/w0;->a(IZ)Z

    move-result v13

    const/4 v14, 0x1

    :cond_a
    sget v12, La/j;->S2:I

    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object v15

    :cond_b
    if-lt v9, v10, :cond_c

    sget v10, La/j;->Q2:I

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v6, v10}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object v11

    :cond_c
    const/16 v10, 0x1c

    if-lt v9, v10, :cond_d

    sget v9, La/j;->K2:I

    invoke-virtual {v6, v9}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v6, v9, v8}, Landroidx/appcompat/widget/w0;->f(II)I

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_d
    invoke-direct {v7, v2, v6}, Landroidx/appcompat/widget/y;->C(Landroid/content/Context;Landroidx/appcompat/widget/w0;)V

    invoke-virtual {v6}, Landroidx/appcompat/widget/w0;->v()V

    if-nez v4, :cond_e

    if-eqz v14, :cond_e

    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/y;->r(Z)V

    :cond_e
    iget-object v4, v7, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    if-eqz v4, :cond_10

    iget v6, v7, Landroidx/appcompat/widget/y;->k:I

    if-ne v6, v8, :cond_f

    iget-object v6, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    iget v9, v7, Landroidx/appcompat/widget/y;->j:I

    invoke-virtual {v6, v4, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    :cond_f
    iget-object v6, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    :goto_4
    if-eqz v11, :cond_11

    iget-object v4, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_11
    if-eqz v15, :cond_12

    iget-object v4, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v15}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_12
    iget-object v4, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v4, v0, v1}, Landroidx/appcompat/widget/a0;->p(Landroid/util/AttributeSet;I)V

    sget-boolean v1, Landroidx/core/widget/b;->a:Z

    if-eqz v1, :cond_14

    iget-object v1, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v1}, Landroidx/appcompat/widget/a0;->k()I

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v1}, Landroidx/appcompat/widget/a0;->j()[I

    move-result-object v1

    array-length v4, v1

    if-lez v4, :cond_14

    iget-object v4, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_13

    iget-object v1, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    iget-object v4, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v4}, Landroidx/appcompat/widget/a0;->h()I

    move-result v4

    iget-object v6, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v6}, Landroidx/appcompat/widget/a0;->g()I

    move-result v6

    iget-object v9, v7, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v9}, Landroidx/appcompat/widget/a0;->i()I

    move-result v9

    invoke-virtual {v1, v4, v6, v9, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_5

    :cond_13
    iget-object v4, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_14
    :goto_5
    sget-object v1, La/j;->i0:[I

    invoke-static {v2, v0, v1}, Landroidx/appcompat/widget/w0;->t(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/w0;

    move-result-object v9

    sget v0, La/j;->q0:I

    invoke-virtual {v9, v0, v8}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v8, :cond_15

    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    goto :goto_6

    :cond_15
    const/4 v1, 0x0

    :goto_6
    sget v0, La/j;->v0:I

    invoke-virtual {v9, v0, v8}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v8, :cond_16

    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_7

    :cond_16
    const/4 v4, 0x0

    :goto_7
    sget v0, La/j;->r0:I

    invoke-virtual {v9, v0, v8}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v8, :cond_17

    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_8

    :cond_17
    const/4 v5, 0x0

    :goto_8
    sget v0, La/j;->o0:I

    invoke-virtual {v9, v0, v8}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v8, :cond_18

    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_9

    :cond_18
    const/4 v6, 0x0

    :goto_9
    sget v0, La/j;->s0:I

    invoke-virtual {v9, v0, v8}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v8, :cond_19

    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v10, v0

    goto :goto_a

    :cond_19
    const/4 v10, 0x0

    :goto_a
    sget v0, La/j;->p0:I

    invoke-virtual {v9, v0, v8}, Landroidx/appcompat/widget/w0;->n(II)I

    move-result v0

    if-eq v0, v8, :cond_1a

    invoke-virtual {v3, v2, v0}, Landroidx/appcompat/widget/j;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v11, v0

    goto :goto_b

    :cond_1a
    const/4 v11, 0x0

    :goto_b
    move-object/from16 v0, p0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/y;->x(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v0, La/j;->t0:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v9, v0}, Landroidx/appcompat/widget/w0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/i;->g(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    :cond_1b
    sget v0, La/j;->u0:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v9, v0, v8}, Landroidx/appcompat/widget/w0;->k(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/widget/e0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iget-object v1, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/i;->h(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    :cond_1c
    sget v0, La/j;->w0:I

    invoke-virtual {v9, v0, v8}, Landroidx/appcompat/widget/w0;->f(II)I

    move-result v0

    sget v1, La/j;->x0:I

    invoke-virtual {v9, v1, v8}, Landroidx/appcompat/widget/w0;->f(II)I

    move-result v1

    sget v2, La/j;->y0:I

    invoke-virtual {v9, v2, v8}, Landroidx/appcompat/widget/w0;->f(II)I

    move-result v2

    invoke-virtual {v9}, Landroidx/appcompat/widget/w0;->v()V

    if-eq v0, v8, :cond_1d

    iget-object v3, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v3, v0}, Landroidx/core/widget/i;->j(Landroid/widget/TextView;I)V

    :cond_1d
    if-eq v1, v8, :cond_1e

    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroidx/core/widget/i;->k(Landroid/widget/TextView;I)V

    :cond_1e
    if-eq v2, v8, :cond_1f

    iget-object v0, v7, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/widget/i;->l(Landroid/widget/TextView;I)V

    :cond_1f
    return-void
.end method

.method n(ZIIII)V
    .locals 0

    sget-boolean p1, Landroidx/core/widget/b;->a:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->c()V

    :cond_0
    return-void
.end method

.method o()V
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->b()V

    return-void
.end method

.method p(Landroid/content/Context;I)V
    .locals 4

    sget-object v0, La/j;->J2:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/w0;->s(Landroid/content/Context;I[I)Landroidx/appcompat/widget/w0;

    move-result-object p2

    sget v0, La/j;->R2:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/w0;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/y;->r(Z)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v1, La/j;->K2:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroidx/appcompat/widget/w0;->f(II)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/y;->C(Landroid/content/Context;Landroidx/appcompat/widget/w0;)V

    const/16 p1, 0x1a

    if-lt v0, p1, :cond_2

    sget p1, La/j;->Q2:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/w0;->r(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/w0;->o(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/widget/w0;->v()V

    iget-object p1, p0, Landroidx/appcompat/widget/y;->l:Landroid/graphics/Typeface;

    if-eqz p1, :cond_3

    iget-object p2, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/y;->j:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    return-void
.end method

.method public q(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method r(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method s(IIII)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/a0;->q(IIII)V

    return-void
.end method

.method t([II)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/a0;->r([II)V

    return-void
.end method

.method u(I)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->i:Landroidx/appcompat/widget/a0;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/a0;->s(I)V

    return-void
.end method

.method v(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/u0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/u0;

    invoke-direct {v0}, Landroidx/appcompat/widget/u0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/u0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/u0;

    iput-object p1, v0, Landroidx/appcompat/widget/u0;->a:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/u0;->d:Z

    invoke-direct {p0}, Landroidx/appcompat/widget/y;->y()V

    return-void
.end method

.method w(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/u0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/widget/u0;

    invoke-direct {v0}, Landroidx/appcompat/widget/u0;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/u0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/y;->h:Landroidx/appcompat/widget/u0;

    iput-object p1, v0, Landroidx/appcompat/widget/u0;->b:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/u0;->c:Z

    invoke-direct {p0}, Landroidx/appcompat/widget/y;->y()V

    return-void
.end method

.method z(IF)V
    .locals 1

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/y;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/y;->A(IF)V

    :cond_0
    return-void
.end method
