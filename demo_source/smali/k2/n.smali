.class public Lk2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk2/n$b;
    }
.end annotation


# static fields
.field private static final g:Landroid/os/Handler;


# instance fields
.field private a:Landroid/app/Application;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ll2/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private volatile f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lk2/n;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lk2/n;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lk2/n;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lk2/n;->e:Ljava/lang/Object;

    iput p1, p0, Lk2/n;->c:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please don\'t pass non-existent toast show strategy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lk2/n;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lk2/n;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic d(Lk2/n;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lk2/n;->b:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .locals 1

    iput-object p1, p0, Lk2/n;->a:Landroid/app/Application;

    invoke-static {}, Lk2/a;->b()Lk2/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk2/a;->c(Landroid/app/Application;)V

    return-void
.end method

.method public b(Lk2/m;)V
    .locals 8

    iget v0, p0, Lk2/n;->c:I

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lk2/m;->c:J

    add-long/2addr v4, v6

    add-long/2addr v4, v2

    invoke-virtual {p0, p1}, Lk2/n;->h(Lk2/m;)I

    move-result v0

    int-to-long v2, v0

    iget-wide v6, p0, Lk2/n;->f:J

    add-long/2addr v6, v2

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    iget-wide v4, p0, Lk2/n;->f:J

    add-long/2addr v4, v2

    :cond_1
    sget-object v0, Lk2/n;->g:Landroid/os/Handler;

    new-instance v2, Lk2/n$b;

    invoke-direct {v2, p0, p1, v1}, Lk2/n$b;-><init>(Lk2/n;Lk2/m;Lk2/n$a;)V

    iget-object p1, p0, Lk2/n;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iput-wide v4, p0, Lk2/n;->f:J

    goto :goto_0

    :cond_2
    sget-object v0, Lk2/n;->g:Landroid/os/Handler;

    iget-object v4, p0, Lk2/n;->d:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lk2/m;->c:J

    add-long/2addr v4, v6

    add-long/2addr v4, v2

    new-instance v2, Lk2/n$b;

    invoke-direct {v2, p0, p1, v1}, Lk2/n$b;-><init>(Lk2/n;Lk2/m;Lk2/n$a;)V

    iget-object p1, p0, Lk2/n;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_0
    return-void
.end method

.method protected e(Landroid/content/Context;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p1

    return p1
.end method

.method public f(Ll2/d;)Ll2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/d<",
            "*>;)",
            "Ll2/a;"
        }
    .end annotation

    invoke-static {}, Lk2/a;->b()Lk2/a;

    move-result-object v0

    invoke-virtual {v0}, Lk2/a;->a()Landroid/app/Activity;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, p0, Lk2/n;->a:Landroid/app/Application;

    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lk2/c;

    iget-object v1, p0, Lk2/n;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lk2/c;-><init>(Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lk2/b;

    invoke-direct {v1, v0}, Lk2/b;-><init>(Landroid/app/Activity;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x19

    if-ne v1, v0, :cond_2

    new-instance v0, Lk2/h;

    iget-object v1, p0, Lk2/n;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lk2/h;-><init>(Landroid/app/Application;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1d

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lk2/n;->a:Landroid/app/Application;

    invoke-virtual {p0, v0}, Lk2/n;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lk2/f;

    iget-object v1, p0, Lk2/n;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lk2/f;-><init>(Landroid/app/Application;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lk2/i;

    iget-object v1, p0, Lk2/n;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lk2/i;-><init>(Landroid/app/Application;)V

    :goto_0
    invoke-virtual {p0, v0}, Lk2/n;->j(Ll2/a;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lk2/n;->k()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-virtual {p0, v0, p1}, Lk2/n;->g(Ll2/a;Ll2/d;)V

    :cond_5
    return-object v0
.end method

.method protected g(Ll2/a;Ll2/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/a;",
            "Ll2/d<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lk2/n;->a:Landroid/app/Application;

    invoke-interface {p2, v0}, Ll2/d;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ll2/a;->setView(Landroid/view/View;)V

    invoke-interface {p2}, Ll2/d;->e()I

    move-result v0

    invoke-interface {p2}, Ll2/d;->d()I

    move-result v1

    invoke-interface {p2}, Ll2/d;->f()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Ll2/a;->setGravity(III)V

    invoke-interface {p2}, Ll2/d;->b()F

    move-result v0

    invoke-interface {p2}, Ll2/d;->c()F

    move-result p2

    invoke-interface {p1, v0, p2}, Ll2/a;->setMargin(FF)V

    return-void
.end method

.method protected h(Lk2/m;)I
    .locals 1

    iget p1, p1, Lk2/m;->b:I

    if-nez p1, :cond_0

    const/16 p1, 0x3e8

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x5dc

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected i(J)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "android.app.compat.CompatChanges"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isChangeEnabled"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method protected j(Ll2/a;)Z
    .locals 1

    instance-of p1, p1, Lk2/d;

    if-nez p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lk2/n;->a:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected k()Z
    .locals 2

    const-wide/32 v0, 0x8cf3b87

    invoke-virtual {p0, v0, v1}, Lk2/n;->i(J)Z

    move-result v0

    return v0
.end method
