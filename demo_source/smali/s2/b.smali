.class public abstract Ls2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls2/b$a;,
        Ls2/b$b;,
        Ls2/b$d;,
        Ls2/b$f;,
        Ls2/b$g;,
        Ls2/b$c;,
        Ls2/b$e;
    }
.end annotation


# static fields
.field public static b:Ljava/util/concurrent/ExecutorService;

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ls2/b;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-boolean v0, Ls2/b;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs I([Ljava/lang/String;)Ls2/b$d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lt2/g;->h(Z[Ljava/lang/String;)Ls2/b$d;

    move-result-object p0

    return-object p0
.end method

.method public static J()Ls2/b;
    .locals 1

    invoke-static {}, Lt2/g;->c()Lt2/p;

    move-result-object v0

    return-object v0
.end method

.method public static K(Ls2/b$b;)V
    .locals 1

    sget-object v0, Lt2/v;->b:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lt2/g;->d(Ljava/util/concurrent/Executor;Ls2/b$b;)V

    return-void
.end method

.method public static N(Ls2/b$a;)V
    .locals 0

    invoke-static {p0}, Lt2/g;->j(Ls2/b$a;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lt2/w;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract L()I
.end method

.method public M()Z
    .locals 2

    invoke-virtual {p0}, Ls2/b;->L()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
