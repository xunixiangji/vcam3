.class public Lp2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "j"


# instance fields
.field private a:Lq2/g;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private d:Lp2/g;

.field private e:Landroid/os/Handler;

.field private f:Landroid/graphics/Rect;

.field private g:Z

.field private final h:Ljava/lang/Object;

.field private final i:Landroid/os/Handler$Callback;

.field private final j:Lq2/p;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lq2/g;Lp2/g;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp2/j;->g:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp2/j;->h:Ljava/lang/Object;

    new-instance v0, Lp2/j$a;

    invoke-direct {v0, p0}, Lp2/j$a;-><init>(Lp2/j;)V

    iput-object v0, p0, Lp2/j;->i:Landroid/os/Handler$Callback;

    new-instance v0, Lp2/j$b;

    invoke-direct {v0, p0}, Lp2/j$b;-><init>(Lp2/j;)V

    iput-object v0, p0, Lp2/j;->j:Lq2/p;

    invoke-static {}, Lp2/s;->a()V

    iput-object p1, p0, Lp2/j;->a:Lq2/g;

    iput-object p2, p0, Lp2/j;->d:Lp2/g;

    iput-object p3, p0, Lp2/j;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lp2/j;Lp2/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lp2/j;->g(Lp2/r;)V

    return-void
.end method

.method static synthetic b(Lp2/j;)V
    .locals 0

    invoke-direct {p0}, Lp2/j;->h()V

    return-void
.end method

.method static synthetic c(Lp2/j;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp2/j;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lp2/j;)Z
    .locals 0

    iget-boolean p0, p0, Lp2/j;->g:Z

    return p0
.end method

.method static synthetic e(Lp2/j;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lp2/j;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private g(Lp2/r;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lp2/j;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Lp2/r;->d(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lp2/j;->f(Lp2/r;)Lg1/j;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lp2/j;->d:Lp2/g;

    invoke-virtual {v3, v2}, Lp2/g;->c(Lg1/j;)Lg1/q;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lp2/j;->k:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found barcode in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lp2/j;->e:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v0, Lp2/c;

    invoke-direct {v0, v2, p1}, Lp2/c;-><init>(Lg1/q;Lp2/r;)V

    iget-object v1, p0, Lp2/j;->e:Landroid/os/Handler;

    sget v2, Ll1/k;->g:I

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lp2/j;->e:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget v1, Ll1/k;->f:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    iget-object v0, p0, Lp2/j;->e:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lp2/j;->d:Lp2/g;

    invoke-virtual {v0}, Lp2/g;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lp2/c;->e(Ljava/util/List;Lp2/r;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lp2/j;->e:Landroid/os/Handler;

    sget v1, Ll1/k;->h:I

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    invoke-direct {p0}, Lp2/j;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lp2/j;->a:Lq2/g;

    iget-object v1, p0, Lp2/j;->j:Lq2/p;

    invoke-virtual {v0, v1}, Lq2/g;->v(Lq2/p;)V

    return-void
.end method


# virtual methods
.method protected f(Lp2/r;)Lg1/j;
    .locals 1

    iget-object v0, p0, Lp2/j;->f:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lp2/r;->a()Lg1/n;

    move-result-object p1

    return-object p1
.end method

.method public i(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lp2/j;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public j(Lp2/g;)V
    .locals 0

    iput-object p1, p0, Lp2/j;->d:Lp2/g;

    return-void
.end method

.method public k()V
    .locals 3

    invoke-static {}, Lp2/s;->a()V

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lp2/j;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lp2/j;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lp2/j;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lp2/j;->i:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lp2/j;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp2/j;->g:Z

    invoke-direct {p0}, Lp2/j;->h()V

    return-void
.end method

.method public l()V
    .locals 3

    invoke-static {}, Lp2/s;->a()V

    iget-object v0, p0, Lp2/j;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lp2/j;->g:Z

    iget-object v1, p0, Lp2/j;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lp2/j;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
