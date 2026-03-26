.class Lt2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls2/b$g;


# static fields
.field static final c:Ljava/lang/String;

.field static final d:[B


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt2/q;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lt2/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lt2/t;->c:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "__RET=$?;echo %1$s;echo %1$s >&2;echo $__RET;unset __RET\n"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lt2/t;->d:[B

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lt2/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lt2/q;",
            ">;",
            "Lt2/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/t;->a:Ljava/util/List;

    iput-object p2, p0, Lt2/t;->b:Lt2/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 3

    sget-object v0, Ls2/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lt2/s$b;

    iget-object v2, p0, Lt2/t;->b:Lt2/m;

    iget-object v2, v2, Lt2/m;->a:Ljava/util/List;

    invoke-direct {v1, p2, v2}, Lt2/s$b;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    sget-object v0, Ls2/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lt2/s$a;

    iget-object v2, p0, Lt2/t;->b:Lt2/m;

    iget-object v2, v2, Lt2/m;->b:Ljava/util/List;

    invoke-direct {v1, p3, v2}, Lt2/s$a;-><init>(Ljava/io/InputStream;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p3

    iget-object v0, p0, Lt2/t;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt2/q;

    invoke-interface {v1, p1}, Lt2/q;->g(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lt2/t;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :try_start_0
    iget-object p1, p0, Lt2/t;->b:Lt2/m;

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lt2/m;->c:I

    invoke-interface {p3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/InterruptedIOException;

    throw p1
.end method
