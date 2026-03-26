.class public final Lp3/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/d;-><init>(Lp3/d$a;Ljava/util/logging/Logger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lp3/d;


# direct methods
.method constructor <init>(Lp3/d;)V
    .locals 0

    iput-object p1, p0, Lp3/d$d;->b:Lp3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :cond_0
    :goto_0
    iget-object v0, p0, Lp3/d$d;->b:Lp3/d;

    invoke-virtual {v0}, Lp3/d;->h()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iget-object v1, p0, Lp3/d$d;->b:Lp3/d;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {v1}, Lp3/d;->c()Lp3/a;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lp3/d$d;->b:Lp3/d;

    invoke-virtual {v0}, Lp3/d;->i()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v1}, Lp3/a;->d()Lp3/c;

    move-result-object v2

    invoke-static {v2}, Le3/f;->b(Ljava/lang/Object;)V

    iget-object v3, p0, Lp3/d$d;->b:Lp3/d;

    const-wide/16 v4, -0x1

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lp3/c;->j()Lp3/d;

    move-result-object v4

    invoke-virtual {v4}, Lp3/d;->f()Lp3/d$a;

    move-result-object v4

    invoke-interface {v4}, Lp3/d$a;->e()J

    move-result-wide v4

    const-string v7, "starting"

    invoke-static {v0, v1, v2, v7}, Lp3/b;->a(Ljava/util/logging/Logger;Lp3/a;Lp3/c;Ljava/lang/String;)V

    :cond_2
    :try_start_1
    invoke-static {v3, v1}, Lp3/d;->a(Lp3/d;Lp3/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v3, Lu2/l;->a:Lu2/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lp3/c;->j()Lp3/d;

    move-result-object v3

    invoke-virtual {v3}, Lp3/d;->f()Lp3/d$a;

    move-result-object v3

    invoke-interface {v3}, Lp3/d$a;->e()J

    move-result-wide v6

    sub-long/2addr v6, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finished run in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lp3/b;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lp3/b;->a(Ljava/util/logging/Logger;Lp3/a;Lp3/c;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_3
    invoke-virtual {v3}, Lp3/d;->h()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Lp3/d;->f()Lp3/d$a;

    move-result-object v9

    invoke-interface {v9, v3, p0}, Lp3/d$a;->b(Lp3/d;Ljava/lang/Runnable;)V

    sget-object v3, Lu2/l;->a:Lu2/l;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    :catchall_2
    move-exception v3

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lp3/c;->j()Lp3/d;

    move-result-object v6

    invoke-virtual {v6}, Lp3/d;->f()Lp3/d$a;

    move-result-object v6

    invoke-interface {v6}, Lp3/d$a;->e()J

    move-result-wide v6

    sub-long/2addr v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed a run in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lp3/b;->b(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lp3/b;->a(Ljava/util/logging/Logger;Lp3/a;Lp3/c;Ljava/lang/String;)V

    :cond_3
    throw v3

    :catchall_3
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
