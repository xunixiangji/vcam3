.class public Ln2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ln2/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/e$b;,
        Ln2/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ln2/e<",
        "*>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ln2/f$a;"
    }
.end annotation


# static fields
.field private static final m:Landroid/os/Handler;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/WindowManager;

.field private e:Landroid/view/WindowManager$LayoutParams;

.field private f:Z

.field private g:I

.field private h:Ln2/a;

.field private i:Lo2/d;

.field private j:Ln2/e$b;

.field private k:Ln2/f;

.field private final l:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ln2/e;->m:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0, p1}, Ln2/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v3, 0x400

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0, v3}, Ln2/e;->d(I)Ln2/e;

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0, v2}, Ln2/e;->B(I)Ln2/e;

    :cond_2
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Ln2/e;->G(I)Ln2/e;

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_4
    new-instance v0, Ln2/a;

    invoke-direct {v0, p0, p1}, Ln2/a;-><init>(Ln2/e;Landroid/app/Activity;)V

    iput-object v0, p0, Ln2/e;->h:Ln2/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0, p1}, Ln2/e;-><init>(Landroid/content/Context;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    const/16 p1, 0x7f6

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d3

    :goto_0
    invoke-virtual {p0, p1}, Ln2/e;->I(I)Ln2/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ln2/b;

    invoke-direct {v0, p0}, Ln2/b;-><init>(Ln2/e;)V

    iput-object v0, p0, Ln2/e;->l:Ljava/lang/Runnable;

    iput-object p1, p0, Ln2/e;->b:Landroid/content/Context;

    new-instance v0, Ln2/h;

    invoke-direct {v0, p1}, Ln2/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Ln2/e;->d:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object p1, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x28

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private D(Landroid/view/View;Ln2/e$a;)Ln2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ln2/e$a<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ln2/e;->s(I)Ln2/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Ln2/g;

    invoke-direct {v0, p0, p2}, Ln2/g;-><init>(Ln2/e;Ln2/e$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public static synthetic b(Ln2/e;)V
    .locals 0

    invoke-direct {p0}, Ln2/e;->l()V

    return-void
.end method

.method public static synthetic c(Ln2/e;)V
    .locals 0

    invoke-direct {p0}, Ln2/e;->k()V

    return-void
.end method

.method private synthetic k()V
    .locals 1

    iget-object v0, p0, Ln2/e;->i:Lo2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo2/d;->n()V

    :cond_0
    return-void
.end method

.method private synthetic l()V
    .locals 1

    iget-object v0, p0, Ln2/e;->i:Lo2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo2/d;->n()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(ILandroid/graphics/drawable/Drawable;)Ln2/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
            ")TX;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ln2/e;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public B(I)Ln2/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Ln2/e;->p()V

    :cond_0
    return-object p0
.end method

.method public C(ILn2/e$a;)Ln2/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ln2/e$a<",
            "+",
            "Landroid/view/View;",
            ">;)TX;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ln2/e;->f(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ln2/e;->D(Landroid/view/View;Ln2/e$a;)Ln2/e;

    move-result-object p1

    return-object p1
.end method

.method public E(Z)Ln2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TX;"
        }
    .end annotation

    const/16 v0, 0x28

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Ln2/e;->d(I)Ln2/e;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ln2/e;->s(I)Ln2/e;

    :goto_0
    invoke-virtual {p0}, Ln2/e;->p()V

    return-object p0
.end method

.method public F(I)Ln2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Ln2/e;->s(I)Ln2/e;

    invoke-virtual {p0}, Ln2/e;->p()V

    return-object p0
.end method

.method public G(I)Ln2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0}, Ln2/e;->p()V

    return-object p0
.end method

.method public H(ILjava/lang/CharSequence;)Ln2/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            ")TX;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ln2/e;->f(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public I(I)Ln2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0}, Ln2/e;->p()V

    return-object p0
.end method

.method public J(I)Ln2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Ln2/e;->p()V

    new-instance p1, Ln2/c;

    invoke-direct {p1, p0}, Ln2/c;-><init>(Ln2/e;)V

    invoke-virtual {p0, p1}, Ln2/e;->m(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public K()V
    .locals 3

    iget-object v0, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Ln2/e;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln2/e;->L()V

    return-void

    :cond_0
    iget-object v0, p0, Ln2/e;->b:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ln2/e;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Ln2/e;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ln2/e;->f:Z

    iget v0, p0, Ln2/e;->g:I

    if-eqz v0, :cond_4

    invoke-virtual {p0, p0}, Ln2/e;->r(Ljava/lang/Runnable;)V

    iget v0, p0, Ln2/e;->g:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Ln2/e;->o(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v0, p0, Ln2/e;->i:Lo2/d;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p0}, Lo2/d;->o(Ln2/e;)V

    :cond_5
    iget-object v0, p0, Ln2/e;->h:Ln2/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ln2/a;->a()V

    :cond_6
    iget-object v0, p0, Ln2/e;->j:Ln2/e$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Ln2/e$b;->b(Ln2/e;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_7
    :goto_1
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WindowParams and view cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public L()V
    .locals 3

    invoke-virtual {p0}, Ln2/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Ln2/e;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    invoke-virtual {p0}, Ln2/e;->j()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ln2/e;->i:Lo2/d;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lo2/d;->m()V

    return-void
.end method

.method public d(I)Ln2/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Ln2/e;->p()V

    return-object p0
.end method

.method public e()V
    .locals 3

    iget-boolean v0, p0, Ln2/e;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ln2/e;->h:Ln2/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ln2/a;->b()V

    :cond_1
    iget-object v1, p0, Ln2/e;->d:Landroid/view/WindowManager;

    iget-object v2, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    invoke-virtual {p0, p0}, Ln2/e;->r(Ljava/lang/Runnable;)V

    iget-object v1, p0, Ln2/e;->j:Ln2/e$b;

    if-eqz v1, :cond_2

    invoke-interface {v1, p0}, Ln2/e$b;->a(Ln2/e;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    iput-boolean v0, p0, Ln2/e;->f:Z

    return-void

    :goto_2
    iput-boolean v0, p0, Ln2/e;->f:Z

    throw v1
.end method

.method public f(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ln2/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method public h()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public i()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Ln2/e;->f:Z

    return v0
.end method

.method public m(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ln2/e;->o(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public n(Ljava/lang/Runnable;J)Z
    .locals 1

    sget-object v0, Ln2/e;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public o(Ljava/lang/Runnable;J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Ln2/e;->n(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    invoke-virtual {p0}, Ln2/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln2/e;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ln2/e;->r(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ln2/e;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ln2/e;->m(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public q()V
    .locals 2

    invoke-virtual {p0}, Ln2/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln2/e;->e()V

    :cond_0
    iget-object v0, p0, Ln2/e;->k:Ln2/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ln2/e;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ln2/f;->b(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Ln2/e;->j:Ln2/e$b;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Ln2/e$b;->c(Ln2/e;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Ln2/e;->j:Ln2/e$b;

    iput-object v0, p0, Ln2/e;->b:Landroid/content/Context;

    iput-object v0, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    iput-object v0, p0, Ln2/e;->d:Landroid/view/WindowManager;

    iput-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Ln2/e;->h:Ln2/a;

    iput-object v0, p0, Ln2/e;->i:Lo2/d;

    return-void
.end method

.method public r(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Ln2/e;->m:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Ln2/e;->e()V

    return-void
.end method

.method public s(I)Ln2/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int p1, p1

    and-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Ln2/e;->p()V

    return-object p0
.end method

.method public t(F)Ln2/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TX;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v1, 0x2

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Ln2/e;->d(I)Ln2/e;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ln2/e;->s(I)Ln2/e;

    :goto_0
    invoke-virtual {p0}, Ln2/e;->p()V

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "amount must be a value between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(I)Ln2/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/e;->v(Landroid/view/View;)Ln2/e;

    move-result-object p1

    return-object p1
.end method

.method public v(Landroid/view/View;)Ln2/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TX;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Ln2/e;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_1
    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez v1, :cond_4

    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_3

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eq v1, v2, :cond_3

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez v1, :cond_4

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_4
    if-eqz p1, :cond_6

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v3, v2, :cond_5

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_5
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    :goto_1
    invoke-virtual {p0}, Ln2/e;->p()V

    return-object p0
.end method

.method public w(Lo2/d;)Ln2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo2/d;",
            ")TX;"
        }
    .end annotation

    iput-object p1, p0, Ln2/e;->i:Lo2/d;

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ln2/e;->s(I)Ln2/e;

    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Ln2/e;->s(I)Ln2/e;

    invoke-virtual {p0}, Ln2/e;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln2/e;->L()V

    invoke-virtual {p1, p0}, Lo2/d;->o(Ln2/e;)V

    :cond_0
    iget-object p1, p0, Ln2/e;->k:Ln2/f;

    if-nez p1, :cond_1

    new-instance p1, Ln2/f;

    iget-object v0, p0, Ln2/e;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Ln2/f;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Ln2/e;->k:Ln2/f;

    :cond_1
    iget-object p1, p0, Ln2/e;->k:Ln2/f;

    iget-object v0, p0, Ln2/e;->b:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Ln2/f;->a(Landroid/content/Context;Ln2/f$a;)V

    return-object p0
.end method

.method public x(I)Ln2/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iput p1, p0, Ln2/e;->g:I

    invoke-virtual {p0}, Ln2/e;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Ln2/e;->g:I

    if-eqz p1, :cond_0

    invoke-virtual {p0, p0}, Ln2/e;->r(Ljava/lang/Runnable;)V

    iget p1, p0, Ln2/e;->g:I

    int-to-long v0, p1

    invoke-virtual {p0, p0, v0, v1}, Ln2/e;->o(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object p0
.end method

.method public y(I)Ln2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TX;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->e:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Ln2/e;->p()V

    new-instance p1, Ln2/d;

    invoke-direct {p1, p0}, Ln2/d;-><init>(Ln2/e;)V

    invoke-virtual {p0, p1}, Ln2/e;->m(Ljava/lang/Runnable;)Z

    return-object p0
.end method

.method public z(II)Ln2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TX;"
        }
    .end annotation

    iget-object v0, p0, Ln2/e;->b:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ln2/e;->A(ILandroid/graphics/drawable/Drawable;)Ln2/e;

    move-result-object p1

    return-object p1
.end method
