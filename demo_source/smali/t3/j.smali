.class public final Lt3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/j$a;,
        Lt3/j$b;,
        Lt3/j$c;,
        Lt3/j$d;
    }
.end annotation


# static fields
.field public static final n:Lt3/j$a;


# instance fields
.field private final a:I

.field private final b:Lt3/g;

.field private final c:Lu3/a;

.field private d:J

.field private e:J

.field private final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ll3/u;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private final h:Lt3/j$c;

.field private final i:Lt3/j$b;

.field private final j:Lt3/j$d;

.field private final k:Lt3/j$d;

.field private l:Lt3/b;

.field private m:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lt3/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt3/j$a;-><init>(Le3/d;)V

    sput-object v0, Lt3/j;->n:Lt3/j$a;

    return-void
.end method

.method public constructor <init>(ILt3/g;ZZLl3/u;)V
    .locals 3

    const-string v0, "connection"

    invoke-static {p2, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt3/j;->a:I

    iput-object p2, p0, Lt3/j;->b:Lt3/g;

    new-instance v0, Lu3/a;

    invoke-direct {v0, p1}, Lu3/a;-><init>(I)V

    iput-object v0, p0, Lt3/j;->c:Lu3/a;

    invoke-virtual {p2}, Lt3/g;->i0()Lt3/n;

    move-result-object p1

    invoke-virtual {p1}, Lt3/n;->c()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lt3/j;->e:J

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lt3/j;->f:Ljava/util/ArrayDeque;

    new-instance v0, Lt3/j$c;

    invoke-virtual {p2}, Lt3/g;->h0()Lt3/n;

    move-result-object p2

    invoke-virtual {p2}, Lt3/n;->c()I

    move-result p2

    int-to-long v1, p2

    invoke-direct {v0, p0, v1, v2, p4}, Lt3/j$c;-><init>(Lt3/j;JZ)V

    iput-object v0, p0, Lt3/j;->h:Lt3/j$c;

    new-instance p2, Lt3/j$b;

    invoke-direct {p2, p0, p3}, Lt3/j$b;-><init>(Lt3/j;Z)V

    iput-object p2, p0, Lt3/j;->i:Lt3/j$b;

    new-instance p2, Lt3/j$d;

    invoke-direct {p2, p0}, Lt3/j$d;-><init>(Lt3/j;)V

    iput-object p2, p0, Lt3/j;->j:Lt3/j$d;

    new-instance p2, Lt3/j$d;

    invoke-direct {p2, p0}, Lt3/j$d;-><init>(Lt3/j;)V

    iput-object p2, p0, Lt3/j;->k:Lt3/j$d;

    if-eqz p5, :cond_1

    invoke-virtual {p0}, Lt3/j;->u()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p1, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "locally-initiated streams shouldn\'t have headers yet"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lt3/j;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "remotely-initiated streams should have headers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lt3/j;)Z
    .locals 0

    invoke-direct {p0}, Lt3/j;->h()Z

    move-result p0

    return p0
.end method

.method private final f(Lt3/b;Ljava/io/IOException;)Z
    .locals 2

    sget-boolean v0, Lm3/s;->e:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST NOT hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt3/j;->l:Lt3/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_1
    iput-object p1, p0, Lt3/j;->l:Lt3/b;

    iput-object p2, p0, Lt3/j;->m:Ljava/io/IOException;

    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p1}, Le3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object p1, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {p1}, Lt3/j$c;->I()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lt3/j;->i:Lt3/j$b;

    invoke-virtual {p1}, Lt3/j$b;->J()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    :try_start_2
    sget-object p1, Lu2/l;->a:Lu2/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    iget-object p1, p0, Lt3/j;->b:Lt3/g;

    iget p2, p0, Lt3/j;->a:I

    invoke-virtual {p1, p2}, Lt3/g;->v0(I)Lt3/j;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final h()Z
    .locals 1

    iget-object v0, p0, Lt3/j;->b:Lt3/g;

    invoke-virtual {v0}, Lt3/g;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt3/j;->i:Lt3/j$b;

    invoke-virtual {v0}, Lt3/j$b;->I()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lt3/j;->i:Lt3/j$b;

    invoke-virtual {v0}, Lt3/j$b;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final A(J)V
    .locals 0

    iput-wide p1, p0, Lt3/j;->d:J

    return-void
.end method

.method public final declared-synchronized B(Z)Ll3/u;
    .locals 2

    monitor-enter p0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lt3/j;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lt3/j;->l:Lt3/b;

    if-nez v0, :cond_5

    if-nez p1, :cond_2

    invoke-direct {p0}, Lt3/j;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    iget-object v0, p0, Lt3/j;->j:Lt3/j$d;

    invoke-virtual {v0}, Lb4/c;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lt3/j;->D()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    iget-object v0, p0, Lt3/j;->j:Lt3/j$d;

    invoke-virtual {v0}, Lt3/j$d;->C()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lt3/j;->j:Lt3/j$d;

    invoke-virtual {v0}, Lt3/j$d;->C()V

    :cond_4
    throw p1

    :cond_5
    iget-object p1, p0, Lt3/j;->f:Ljava/util/ArrayDeque;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lt3/j;->f:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "removeFirst(...)"

    invoke-static {p1, v0}, Le3/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ll3/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_3
    iget-object p1, p0, Lt3/j;->m:Ljava/io/IOException;

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Lt3/o;

    iget-object v0, p0, Lt3/j;->l:Lt3/b;

    invoke-static {v0}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lt3/o;-><init>(Lt3/b;)V

    :goto_2
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized C()Ll3/u;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {v0}, Lt3/j$c;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {v0}, Lt3/j$c;->K()Lb4/d;

    move-result-object v0

    invoke-virtual {v0}, Lb4/d;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {v0}, Lt3/j$c;->J()Lb4/d;

    move-result-object v0

    invoke-virtual {v0}, Lb4/d;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {v0}, Lt3/j$c;->L()Ll3/u;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lm3/s;->a:Ll3/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lt3/j;->l:Lt3/b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lt3/j;->m:Ljava/io/IOException;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lt3/o;

    iget-object v1, p0, Lt3/j;->l:Lt3/b;

    invoke-static {v1}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lt3/o;-><init>(Lt3/b;)V

    :goto_0
    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too early; can\'t read the trailers yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final D()V
    .locals 1

    :try_start_0
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, v0}, Le3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method

.method public final E()Lb4/h0;
    .locals 1

    iget-object v0, p0, Lt3/j;->k:Lt3/j$d;

    return-object v0
.end method

.method public final b(J)V
    .locals 2

    iget-wide v0, p0, Lt3/j;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lt3/j;->e:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p1}, Le3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    sget-boolean v0, Lm3/s;->e:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {v0}, Lt3/j$c;->I()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {v0}, Lt3/j$c;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lt3/j;->i:Lt3/j$b;

    invoke-virtual {v0}, Lt3/j$b;->J()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lt3/j;->i:Lt3/j$b;

    invoke-virtual {v0}, Lt3/j$b;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lt3/j;->v()Z

    move-result v1

    sget-object v2, Lu2/l;->a:Lu2/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_4

    sget-object v0, Lt3/b;->l:Lt3/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lt3/j;->e(Lt3/b;Ljava/io/IOException;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    iget-object v0, p0, Lt3/j;->b:Lt3/g;

    iget v1, p0, Lt3/j;->a:I

    invoke-virtual {v0, v1}, Lt3/g;->v0(I)Lt3/j;

    :cond_5
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lt3/j;->i:Lt3/j$b;

    invoke-virtual {v0}, Lt3/j$b;->I()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lt3/j;->i:Lt3/j$b;

    invoke-virtual {v0}, Lt3/j$b;->J()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lt3/j;->l:Lt3/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt3/j;->m:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lt3/o;

    iget-object v1, p0, Lt3/j;->l:Lt3/b;

    invoke-static {v1}, Le3/f;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lt3/o;-><init>(Lt3/b;)V

    :goto_0
    throw v0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Lt3/b;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "rstStatusCode"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lt3/j;->f(Lt3/b;Ljava/io/IOException;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lt3/j;->b:Lt3/g;

    iget v0, p0, Lt3/j;->a:I

    invoke-virtual {p2, v0, p1}, Lt3/g;->G0(ILt3/b;)V

    return-void
.end method

.method public final g(Lt3/b;)V
    .locals 2

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lt3/j;->f(Lt3/b;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lt3/j;->b:Lt3/g;

    iget v1, p0, Lt3/j;->a:I

    invoke-virtual {v0, v1, p1}, Lt3/g;->H0(ILt3/b;)V

    return-void
.end method

.method public final i()Lt3/g;
    .locals 1

    iget-object v0, p0, Lt3/j;->b:Lt3/g;

    return-object v0
.end method

.method public final declared-synchronized j()Lt3/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt3/j;->l:Lt3/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lt3/j;->m:Ljava/io/IOException;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lt3/j;->a:I

    return v0
.end method

.method public final m()Lu3/a;
    .locals 1

    iget-object v0, p0, Lt3/j;->c:Lu3/a;

    return-object v0
.end method

.method public final n()Lt3/j$d;
    .locals 1

    iget-object v0, p0, Lt3/j;->j:Lt3/j$d;

    return-object v0
.end method

.method public final o()Lb4/e0;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lt3/j;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lt3/j;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lu2/l;->a:Lu2/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Lt3/j;->i:Lt3/j$b;

    return-object v0

    :cond_2
    :try_start_1
    const-string v0, "reply before requesting the sink"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p()Lt3/j$b;
    .locals 1

    iget-object v0, p0, Lt3/j;->i:Lt3/j$b;

    return-object v0
.end method

.method public final q()Lt3/j$c;
    .locals 1

    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    return-object v0
.end method

.method public final r()J
    .locals 2

    iget-wide v0, p0, Lt3/j;->e:J

    return-wide v0
.end method

.method public final s()J
    .locals 2

    iget-wide v0, p0, Lt3/j;->d:J

    return-wide v0
.end method

.method public final t()Lt3/j$d;
    .locals 1

    iget-object v0, p0, Lt3/j;->k:Lt3/j$d;

    return-object v0
.end method

.method public final u()Z
    .locals 4

    iget v0, p0, Lt3/j;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lt3/j;->b:Lt3/g;

    invoke-virtual {v3}, Lt3/g;->b0()Z

    move-result v3

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final declared-synchronized v()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lt3/j;->l:Lt3/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {v0}, Lt3/j$c;->I()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {v0}, Lt3/j$c;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lt3/j;->i:Lt3/j$b;

    invoke-virtual {v0}, Lt3/j$b;->J()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lt3/j;->i:Lt3/j$b;

    invoke-virtual {v0}, Lt3/j$b;->I()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lt3/j;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final w()Lb4/h0;
    .locals 1

    iget-object v0, p0, Lt3/j;->j:Lt3/j$d;

    return-object v0
.end method

.method public final x(Lb4/f;I)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lm3/s;->e:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST NOT hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lt3/j$c;->M(Lb4/f;J)V

    return-void
.end method

.method public final y(Ll3/u;Z)V
    .locals 2

    const-string v0, "headers"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lm3/s;->e:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST NOT hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lt3/j;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const-string v0, ":status"

    invoke-virtual {p1, v0}, Ll3/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ":method"

    invoke-virtual {p1, v0}, Ll3/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {v0, p1}, Lt3/j$c;->O(Ll3/u;)V

    goto :goto_2

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lt3/j;->g:Z

    iget-object v0, p0, Lt3/j;->f:Ljava/util/ArrayDeque;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eqz p2, :cond_4

    iget-object p1, p0, Lt3/j;->h:Lt3/j$c;

    invoke-virtual {p1, v1}, Lt3/j$c;->N(Z)V

    :cond_4
    invoke-virtual {p0}, Lt3/j;->v()Z

    move-result p1

    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p2}, Le3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object p2, Lu2/l;->a:Lu2/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez p1, :cond_5

    iget-object p1, p0, Lt3/j;->b:Lt3/g;

    iget p2, p0, Lt3/j;->a:I

    invoke-virtual {p1, p2}, Lt3/g;->v0(I)Lt3/j;

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized z(Lt3/b;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p1, v0}, Le3/f;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lt3/j;->l:Lt3/b;

    if-nez v0, :cond_0

    iput-object p1, p0, Lt3/j;->l:Lt3/b;

    const-string p1, "null cannot be cast to non-null type java.lang.Object"

    invoke-static {p0, p1}, Le3/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
