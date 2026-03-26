.class public final Lt2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Lt2/p;

.field private static b:Z

.field private static c:Lt2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Lt2/p;

    sput-object v0, Lt2/g;->a:[Lt2/p;

    return-void
.end method

.method public static synthetic a(Ls2/b$b;Ls2/b;)V
    .locals 0

    invoke-static {p0, p1}, Lt2/g;->g(Ls2/b$b;Ls2/b;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/concurrent/Executor;Ls2/b$b;)V
    .locals 0

    invoke-static {p0, p1}, Lt2/g;->f(Ljava/util/concurrent/Executor;Ls2/b$b;)V

    return-void
.end method

.method public static declared-synchronized c()Lt2/p;
    .locals 3

    const-class v0, Lt2/g;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lt2/g;->e()Lt2/p;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Lt2/g;->b:Z

    sget-object v1, Lt2/g;->c:Lt2/a;

    if-nez v1, :cond_0

    new-instance v1, Lt2/a;

    invoke-direct {v1}, Lt2/a;-><init>()V

    sput-object v1, Lt2/g;->c:Lt2/a;

    :cond_0
    sget-object v1, Lt2/g;->c:Lt2/a;

    invoke-virtual {v1}, Lt2/a;->d()Lt2/p;

    move-result-object v1

    const/4 v2, 0x0

    sput-boolean v2, Lt2/g;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d(Ljava/util/concurrent/Executor;Ls2/b$b;)V
    .locals 2

    invoke-static {}, Lt2/g;->e()Lt2/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1}, Lt2/g;->i(Ls2/b;Ljava/util/concurrent/Executor;Ls2/b$b;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ls2/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lt2/e;

    invoke-direct {v1, p0, p1}, Lt2/e;-><init>(Ljava/util/concurrent/Executor;Ls2/b$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static e()Lt2/p;
    .locals 4

    sget-object v0, Lt2/g;->a:[Lt2/p;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lt2/p;->L()I

    move-result v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    aput-object v3, v0, v1

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static synthetic f(Ljava/util/concurrent/Executor;Ls2/b$b;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lt2/g;->c()Lt2/p;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lt2/g;->i(Ls2/b;Ljava/util/concurrent/Executor;Ls2/b$b;)V
    :try_end_0
    .catch Ls2/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static synthetic g(Ls2/b$b;Ls2/b;)V
    .locals 0

    invoke-interface {p0, p1}, Ls2/b$b;->a(Ls2/b;)V

    return-void
.end method

.method public static varargs h(Z[Ljava/lang/String;)Ls2/b$d;
    .locals 1

    new-instance v0, Lt2/k;

    invoke-direct {v0, p0}, Lt2/k;-><init>(Z)V

    invoke-virtual {v0, p1}, Lt2/d;->M([Ljava/lang/String;)Ls2/b$d;

    move-result-object p0

    return-object p0
.end method

.method private static i(Ls2/b;Ljava/util/concurrent/Executor;Ls2/b$b;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-interface {p2, p0}, Ls2/b$b;->a(Ls2/b;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lt2/f;

    invoke-direct {v0, p2, p0}, Lt2/f;-><init>(Ls2/b$b;Ls2/b;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized j(Ls2/b$a;)V
    .locals 2

    const-class v0, Lt2/g;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lt2/g;->b:Z

    if-nez v1, :cond_0

    invoke-static {}, Lt2/g;->e()Lt2/p;

    move-result-object v1

    if-nez v1, :cond_0

    check-cast p0, Lt2/a;

    sput-object p0, Lt2/g;->c:Lt2/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "The main shell was already created"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized k(Lt2/p;)V
    .locals 3

    const-class v0, Lt2/g;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lt2/g;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, Lt2/g;->a:[Lt2/p;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    aput-object p0, v1, v2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
