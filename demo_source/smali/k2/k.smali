.class final Lk2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Landroid/os/Handler;


# instance fields
.field private final a:Lk2/d;

.field private b:Lk2/p;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lk2/k;->h:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lk2/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk2/k;-><init>(Landroid/content/Context;Lk2/d;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lk2/k;->e:Z

    new-instance p2, Lk2/p;

    invoke-direct {p2, p1}, Lk2/p;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lk2/k;->b:Lk2/p;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lk2/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk2/k;-><init>(Landroid/content/Context;Lk2/d;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lk2/k;->e:Z

    new-instance p2, Lk2/p;

    invoke-direct {p2, p1}, Lk2/p;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lk2/k;->b:Lk2/p;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lk2/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk2/k$a;

    invoke-direct {v0, p0}, Lk2/k$a;-><init>(Lk2/k;)V

    iput-object v0, p0, Lk2/k;->f:Ljava/lang/Runnable;

    new-instance v0, Lk2/k$b;

    invoke-direct {v0, p0}, Lk2/k$b;-><init>(Lk2/k;)V

    iput-object v0, p0, Lk2/k;->g:Ljava/lang/Runnable;

    iput-object p2, p0, Lk2/k;->a:Lk2/d;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk2/k;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lk2/k;)Lk2/p;
    .locals 0

    iget-object p0, p0, Lk2/k;->b:Lk2/p;

    return-object p0
.end method

.method static synthetic b(Lk2/k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk2/k;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lk2/k;)Lk2/d;
    .locals 0

    iget-object p0, p0, Lk2/k;->a:Lk2/d;

    return-object p0
.end method

.method static synthetic d(Lk2/k;)Z
    .locals 0

    iget-boolean p0, p0, Lk2/k;->e:Z

    return p0
.end method

.method static synthetic e()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lk2/k;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lk2/k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lk2/k;->l(Landroid/view/View;)V

    return-void
.end method

.method private h()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    const-class v3, Landroid/widget/Toast;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method


# virtual methods
.method g()V
    .locals 2

    invoke-virtual {p0}, Lk2/k;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lk2/k;->h:Landroid/os/Handler;

    iget-object v1, p0, Lk2/k;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lk2/k;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lk2/k;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lk2/k;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lk2/k;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lk2/k;->d:Z

    return v0
.end method

.method j(Z)V
    .locals 0

    iput-boolean p1, p0, Lk2/k;->d:Z

    return-void
.end method

.method k()V
    .locals 2

    invoke-virtual {p0}, Lk2/k;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lk2/k;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk2/k;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget-object v0, Lk2/k;->h:Landroid/os/Handler;

    iget-object v1, p0, Lk2/k;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lk2/k;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
