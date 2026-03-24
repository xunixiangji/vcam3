.class public final Lq3/f$a;
.super Lp3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/f;->g()Lq3/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lq3/n$b;

.field final synthetic f:Lq3/f;


# direct methods
.method constructor <init>(Ljava/lang/String;Lq3/n$b;Lq3/f;)V
    .locals 1

    iput-object p2, p0, Lq3/f$a;->e:Lq3/n$b;

    iput-object p3, p0, Lq3/f$a;->f:Lq3/f;

    const/4 p2, 0x0

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lp3/a;-><init>(Ljava/lang/String;ZILe3/d;)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 7

    :try_start_0
    iget-object v0, p0, Lq3/f$a;->e:Lq3/n$b;

    invoke-interface {v0}, Lq3/n$b;->d()Lq3/n$a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v0

    new-instance v0, Lq3/n$a;

    iget-object v2, p0, Lq3/f$a;->e:Lq3/n$b;

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lq3/n$a;-><init>(Lq3/n$b;Lq3/n$b;Ljava/lang/Throwable;ILe3/d;)V

    :goto_0
    iget-object v1, p0, Lq3/f$a;->f:Lq3/f;

    invoke-static {v1}, Lq3/f;->d(Lq3/f;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget-object v2, p0, Lq3/f$a;->e:Lq3/n$b;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq3/f$a;->f:Lq3/f;

    invoke-static {v1}, Lq3/f;->c(Lq3/f;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
